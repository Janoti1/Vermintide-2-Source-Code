require("scripts/entity_system/systems/ghost_mode/ghost_mode_utils")

PlayerUnitGhostModeExtension = class(PlayerUnitGhostModeExtension)

PlayerUnitGhostModeExtension.init = function (self, extension_init_context, unit, extension_init_data)
	self._unit = unit
	self._world = extension_init_context.world
	self._network_transmit = extension_init_context.network_transmit
	self._is_server = self._network_transmit.is_server
	self._unit_storage = extension_init_context.unit_storage
	self._teleport_target_unit = nil
	self._teleport_target_index_fallback = 1
	self._player = extension_init_data.player

	local side_id = extension_init_data.side_id

	self._side = Managers.state.side:get_side(side_id)

	fassert(self._side, "no side assigned.")

	self._allowed_to_leave = false
	self._ghost_mode_active = false
	self._allowed_to_enter = false
	self._reason_not_allowed_to_leave = nil
	self._reason_allowed_to_enter = nil

	self:_set_teleport_target_type("disabled")

	self._has_teleported = false
	self._has_left_once = false
	self._external_no_spawn_reasons = {}
	self._enter_ghost_mode_allowance_check_time = 0
	self._leave_ghost_mode_allowance_check_time = 0
	self._is_husk = false
	self._latest_range_update = math.huge
	self._range = math.huge
	self._minimum_spawn_distance = GameModeSettings.versus.dark_pact_minimum_spawn_distance
	self._prev_round_started = Managers.state.game_mode:is_round_started()
end

PlayerUnitGhostModeExtension.extensions_ready = function (self)
	self._locomotion_extension = ScriptUnit.extension(self._unit, "locomotion_system")
	self._inventory_extension = ScriptUnit.extension(self._unit, "inventory_system")
	self._career_extension = ScriptUnit.extension(self._unit, "career_system")
	self._breed = Unit.get_data(self._unit, "breed")
end

PlayerUnitGhostModeExtension.game_object_initialized = function (self, unit, go_id)
	local start_in_ghost_mode = true

	if start_in_ghost_mode then
		local teleport_player = false

		self:_enter_ghost_mode(teleport_player)
	end
end

PlayerUnitGhostModeExtension.destroy = function (self)
	return
end

PlayerUnitGhostModeExtension.update = function (self, unit, input, dt, context, t)
	if self:is_in_ghost_mode() then
		self:_update_allowed_to_leave(t)
	else
		self:_update_allowed_to_enter(t)
	end
end

PlayerUnitGhostModeExtension._update_allowed_to_leave = function (self, t, force_update)
	local unit = self._unit

	self._range = math.ceil(self:get_distance_from_players(unit))

	if self._range and self._range ~= self._latest_range_update then
		Managers.state.event:trigger("update_range_to_spawn", self._range)

		self._latest_range_update = self._range
	end

	if not force_update and t < self._leave_ghost_mode_allowance_check_time then
		return
	end

	self._leave_ghost_mode_allowance_check_time = t + 0.2

	local world = self._world
	local always_allow_leave_ghost_mode = script_data.always_allow_leave_ghost_mode or Development.parameter("disable_ghost_mode")
	local side = self._side
	local units = side.ENEMY_PLAYER_AND_BOT_UNITS
	local enemy_positions = {}

	for i = 1, #units do
		local player_unit = units[i]
		local status_extension = ScriptUnit.extension(player_unit, "status_system")

		if not status_extension:is_knocked_down() then
			enemy_positions[#enemy_positions + 1] = POSITION_LOOKUP[player_unit]
		end
	end

	local physics_world = World.get_data(world, "physics_world")
	local in_los = GhostModeUtils.in_line_of_sight_of_enemies(unit, enemy_positions, physics_world)
	local profile_index = self._player:profile_index()
	local profile = SPProfiles[profile_index]
	local is_boss = profile.enemy_role and profile.enemy_role == "boss"
	local in_range = GhostModeUtils.in_range_of_enemies(POSITION_LOOKUP[unit], self._side, is_boss)
	local round_started = GhostModeUtils.pact_sworn_round_started(unit)
	local enemies_using_transport = GhostModeUtils.enemy_players_using_transport(unit)
	local in_safe_zone = GhostModeUtils.in_safe_zone(unit)
	local external_no_spawn_reason = self:_external_no_spawn_reason()
	local teleport_target_type = "player"

	if not always_allow_leave_ghost_mode and (enemies_using_transport or not round_started) then
		teleport_target_type = "disabled"
	end

	if teleport_target_type ~= self._teleport_target_type then
		self:_set_teleport_target_type(teleport_target_type)
	end

	local _, reason_prev = self:allowed_to_leave()
	local owner = self._player
	local status = Managers.party:get_player_status(owner.peer_id, owner:local_player_id())
	local spawn_timer = status and status.game_mode_data.spawn_timer or 0
	local reason = "allowed"

	if enemies_using_transport then
		reason = "transport"
	elseif in_range then
		reason = "range"
	elseif in_los then
		reason = "los"
	elseif spawn_timer - t > 0 then
		reason = "w8_to_spawn"
	elseif not round_started then
		reason = "start_zone"
	elseif in_safe_zone then
		reason = "in_safe_zone"
	elseif external_no_spawn_reason then
		reason = "external_no_spawn_reason"
	end

	if reason ~= reason_prev then
		local allowed_to_leave = reason == "allowed"

		self:_set_allowed_to_leave(allowed_to_leave, reason)

		if self:is_in_ghost_mode() then
			self:_update_allowed_to_leave_ui()
		end
	end
end

PlayerUnitGhostModeExtension._update_allowed_to_enter = function (self, t, force_update)
	if not force_update and t < self._enter_ghost_mode_allowance_check_time then
		return
	end

	self._enter_ghost_mode_allowance_check_time = t + 0.2

	self:_update_allowed_to_leave(t, true, true)

	local unit = self._unit
	local enemies_using_transport = GhostModeUtils.enemy_players_using_transport(unit)
	local far_away_enough = GhostModeUtils.far_enough_to_enter_ghost_mode(unit)
	local status_extension = ScriptUnit.extension(unit, "status_system")
	local unit_alive = not not HEALTH_ALIVE[unit] and not status_extension:is_dead()
	local blocking_action = false
	local _, right_hand_weapon_extension, left_hand_weapon_extension = CharacterStateHelper.get_item_data_and_weapon_extensions(self._inventory_extension)
	local current_action_settings = CharacterStateHelper.get_current_action_data(left_hand_weapon_extension, right_hand_weapon_extension)

	if current_action_settings and current_action_settings.disallow_ghost_mode then
		blocking_action = true
	end

	local allowed_to_enter = unit_alive and (far_away_enough or enemies_using_transport) and not blocking_action and self:allowed_to_leave()
	local allowed_to_enter_prev, reason_allowed_to_enter_prev = self:allowed_to_enter()
	local reason = not unit_alive and "dead" or far_away_enough and "distance" or enemies_using_transport and "transport" or blocking_action and "blocking_action"

	if allowed_to_enter ~= allowed_to_enter_prev or not allowed_to_enter and reason ~= reason_allowed_to_enter_prev then
		self:_set_allowed_to_enter(allowed_to_enter, reason)
	end
end

PlayerUnitGhostModeExtension._set_allowed_to_leave = function (self, allowed_to_leave, reason)
	self._allowed_to_leave = allowed_to_leave
	self._reason_not_allowed_to_leave = reason
end

PlayerUnitGhostModeExtension._update_allowed_to_leave_ui = function (self, skip_sound)
	local allowed_to_leave = self._allowed_to_leave
	local reason = self._reason_not_allowed_to_leave
	local round_started = Managers.state.game_mode:is_round_started()

	if round_started then
		local target_unit = self:_get_target_teleport_unit()

		Managers.state.event:trigger("add_gameplay_info_event", "ghost_catchup", true, nil, target_unit)
	end

	if allowed_to_leave then
		Managers.state.event:trigger("add_gameplay_info_event", "ghost_spawn", true)

		if not skip_sound then
			self:_play_sound("versus_ghost_mode_spawn_indicator")
		end
	else
		if not round_started then
			Managers.state.event:trigger("add_gameplay_info_event", "hide_teleport", true, reason)
		end

		Managers.state.event:trigger("add_gameplay_info_event", "ghost_cantspawn", true, reason)
	end
end

PlayerUnitGhostModeExtension.get_distance_from_players = function (self, unit)
	local side = self._side
	local enemy_positions = side.ENEMY_PLAYER_AND_BOT_POSITIONS
	local unit_position = POSITION_LOOKUP[unit]
	local distance_to_spawn = math.huge
	local profile_index = self._player:profile_index()
	local profile = SPProfiles[profile_index]
	local is_boss = profile.enemy_role and profile.enemy_role == "boss"
	local min_dist = is_boss and GameModeSettings.versus.boss_minimum_spawn_distance or GameModeSettings.versus.dark_pact_minimum_spawn_distance
	local setting_name = is_boss and "boss_spawn_range_distance" or "special_spawn_range_distance"
	local mechanism_ok, custom_setting_distance_override, custom_settings_enabled = Managers.mechanism:mechanism_try_call("get_custom_game_setting", setting_name)

	if mechanism_ok and custom_settings_enabled then
		min_dist = custom_setting_distance_override
	end

	for i = 1, #enemy_positions do
		local enemy_position = enemy_positions[i]
		local distance = Vector3.distance(enemy_position, unit_position)

		if distance < min_dist and distance < distance_to_spawn then
			distance_to_spawn = min_dist - distance
		end
	end

	if distance_to_spawn < 0 or min_dist < distance_to_spawn then
		return 0
	else
		return distance_to_spawn
	end
end

PlayerUnitGhostModeExtension.allowed_to_leave = function (self)
	if Development.parameter("disable_ghost_mode") then
		return true
	else
		return self._allowed_to_leave, self._reason_not_allowed_to_leave
	end
end

PlayerUnitGhostModeExtension._get_target_teleport_unit = function (self)
	if ALIVE[self._teleport_target_unit] then
		return self._teleport_target_unit
	end

	self:_progress_teleport_target()

	return self._teleport_target_unit
end

PlayerUnitGhostModeExtension._progress_teleport_target = function (self, last_target)
	local side = self._side
	local enemy_units = side.ENEMY_PLAYER_AND_BOT_UNITS
	local num_enemy_units = #enemy_units
	local target_index

	if last_target then
		for i = 1, num_enemy_units do
			if enemy_units[i] == last_target then
				target_index = i

				break
			end
		end
	end

	target_index = target_index or math.min(self._teleport_target_index_fallback, num_enemy_units)
	target_index = math.index_wrapper(target_index + 1, num_enemy_units)
	self._teleport_target_unit = enemy_units[target_index]
	self._teleport_target_index_fallback = target_index
end

PlayerUnitGhostModeExtension._set_allowed_to_enter = function (self, allowed_to_enter, reason)
	if allowed_to_enter then
		local target_unit = self:_get_target_teleport_unit()

		Managers.state.event:trigger("add_gameplay_info_event", "ghost_catchup", true, nil, target_unit)
		Managers.state.event:trigger("add_gameplay_info_event", "hide_text", true, nil, target_unit)
	else
		Managers.state.event:trigger("add_gameplay_info_event", "ghost_catchup", false, nil)
		Managers.state.event:trigger("add_gameplay_info_event", "hide_teleport", true, nil)
	end

	self._allowed_to_enter = allowed_to_enter
	self._reason_allowed_to_enter = reason
end

PlayerUnitGhostModeExtension.allowed_to_enter = function (self)
	return self._allowed_to_enter, self._reason_allowed_to_enter
end

PlayerUnitGhostModeExtension.is_in_ghost_mode = function (self)
	return self._ghost_mode_active, self._has_left_once
end

PlayerUnitGhostModeExtension.is_husk = function (self)
	return self._is_husk
end

PlayerUnitGhostModeExtension.teleport_player = function (self, find_furthest_player)
	if self._teleport_target_type == "player" then
		self:_teleport_to_next_enemy(find_furthest_player)
	elseif self._teleport_target_type == "safe_spot" then
		self:_teleport_to_safe_spot()
	end

	if false then
		-- Nothing
	end
end

PlayerUnitGhostModeExtension._furthest_player_enemy_unit = function (self)
	local own_pos = POSITION_LOOKUP[self._unit]
	local side = self._side
	local enemy_units = side.ENEMY_PLAYER_AND_BOT_UNITS
	local furthest_dist, furthest_unit = 0

	for i = 1, #enemy_units do
		local position = POSITION_LOOKUP[enemy_units[i]]
		local distance_sq = Vector3.distance_squared(position, own_pos)

		if furthest_dist < distance_sq then
			furthest_dist = distance_sq
			furthest_unit = enemy_units[i]
		end
	end

	return furthest_unit
end

PlayerUnitGhostModeExtension._teleport_to_next_enemy = function (self, find_furthest_player)
	local side = self._side
	local enemy_units = side.ENEMY_PLAYER_AND_BOT_UNITS
	local num_enemy_units = #enemy_units

	if num_enemy_units == 0 then
		return
	end

	self:_set_allowed_to_leave(false, "los", true)

	local target_unit = find_furthest_player and self:_furthest_player_enemy_unit() or self:_get_target_teleport_unit()
	local target_pos = POSITION_LOOKUP[target_unit] + Vector3(0, 0, 0.2)

	self._locomotion_extension:teleport_to(target_pos)

	self._has_teleported = true

	self:_progress_teleport_target(target_unit)
	self:_update_allowed_to_leave_ui(true)
end

PlayerUnitGhostModeExtension._teleport_to_safe_spot = function (self)
	self._locomotion_extension:teleport_to(self._safe_spot:unbox() + Vector3(0, 0, 0.2))
end

PlayerUnitGhostModeExtension._enter_ghost_mode = function (self, teleport_player)
	self._ghost_mode_active = true

	if not DEDICATED_SERVER then
		local skin_unit = CosmeticsUtils.get_third_person_mesh_unit(self._unit)

		Unit.flow_event(skin_unit, "lua_entered_ghost_mode")
	end

	local equipment = self._inventory_extension:equipment()
	local weapon_unit = equipment.right_hand_wielded_unit or equipment.left_hand_wielded_unit

	if not DEDICATED_SERVER and weapon_unit then
		Unit.flow_event(weapon_unit, "lua_entered_ghost_mode")
	end

	Managers.state.camera:set_mood("ghost_mode", self, true)

	if teleport_player then
		local find_furthest_player = true

		self:teleport_player(find_furthest_player)
	end

	local status_extension = ScriptUnit.extension(self._unit, "status_system")

	status_extension:set_ghost_mode(true)
	status_extension:set_invisible(true, nil, "ghost_mode")
	GhostModeSystem.set_sweep_actors(self._unit, self._breed, false)
	self._locomotion_extension:set_mover_filter_property("dark_pact_noclip", true)

	local unit_go_id = self._unit_storage:go_id(self._unit)

	if self._is_server then
		self._network_transmit:send_rpc_clients("rpc_entered_ghost_mode", unit_go_id)
	else
		self._network_transmit:send_rpc_server("rpc_entered_ghost_mode", unit_go_id)
	end

	Managers.state.event:trigger("enter_ghostmode", true, self._unit)
	Managers.state.event:trigger("set_new_enemy_role")
	self:_play_sound("versus_enter_ghost_mode")

	local dialogue_context_system = Managers.state.entity:system("dialogue_context_system")

	dialogue_context_system:set_context_value(self._unit, "is_in_ghost_mode", true)
end

PlayerUnitGhostModeExtension._leave_ghost_mode = function (self)
	self._ghost_mode_active = false
	self._has_teleported = false
	self._has_left_once = true

	local player_unit = self._unit
	local equipment = self._inventory_extension:equipment()
	local weapon_unit = equipment.right_hand_wielded_unit or equipment.left_hand_wielded_unit
	local status_extension = ScriptUnit.extension(self._unit, "status_system")

	status_extension:set_ghost_mode(false)
	status_extension:set_invisible(false, nil, "ghost_mode")
	GhostModeSystem.set_sweep_actors(self._unit, self._breed, true)
	Managers.telemetry_events:left_ghost_mode(self._breed.name, POSITION_LOOKUP[self._unit])

	if not DEDICATED_SERVER then
		if weapon_unit then
			Unit.flow_event(weapon_unit, "lua_left_ghost_mode")
		end

		local skin_unit = CosmeticsUtils.get_third_person_mesh_unit(self._unit)

		Unit.flow_event(skin_unit, "lua_left_ghost_mode")
	end

	Managers.state.camera:set_mood("ghost_mode", self, false)
	self._locomotion_extension:set_mover_filter_property("dark_pact_noclip", false)
	Managers.state.event:trigger("enter_ghostmode", false, player_unit)
	Managers.state.event:trigger("add_gameplay_info_event", "hide_text", true, {
		"los",
		"start_zone",
		"transport"
	})

	if not self._display_equipment then
		self._display_equipment = true
	end

	self:_play_sound("menu_versus_pactsworn_spawn")

	if self._is_server then
		local dialogue_input = ScriptUnit.extension_input(player_unit, "dialogue_system")

		dialogue_input:trigger_dialogue_event("spawning")

		if not self._has_played_boss_sound and self._breed.boss then
			local dialogue_system = Managers.state.entity:system("dialogue_system")

			dialogue_system:queue_mission_giver_event("vs_mg_new_spawn_monster")

			self._has_played_boss_sound = true
		end
	end

	local unit_go_id = self._unit_storage:go_id(self._unit)

	if self._is_server then
		self._network_transmit:send_rpc_clients("rpc_left_ghost_mode", unit_go_id)
	else
		self._network_transmit:send_rpc_server("rpc_left_ghost_mode", unit_go_id)
	end

	local dialogue_context_system = Managers.state.entity:system("dialogue_context_system")

	dialogue_context_system:set_context_value(player_unit, "is_in_ghost_mode", false)

	local profile_index = self._career_extension:profile_index()
	local career_index = self._career_extension:career_index()
	local abilities = CareerUtils.get_abilities(profile_index, career_index)

	for i = 1, #abilities do
		local ability = abilities[i]

		if ability.unpause_on_leave_ghost_mode then
			self._career_extension:set_activated_ability_cooldown_unpaused(i)
		end
	end
end

PlayerUnitGhostModeExtension.try_enter_ghost_mode = function (self)
	fassert(not self:is_in_ghost_mode(), "In ghost mode already.")

	local t = Managers.time:time("game")

	self:_update_allowed_to_enter(t, true)

	if self:allowed_to_enter() then
		local teleport_player = true

		self:_enter_ghost_mode(teleport_player)
	end
end

PlayerUnitGhostModeExtension.try_leave_ghost_mode = function (self, force_leave)
	fassert(self:is_in_ghost_mode(), "In ghost mode already.")

	local t = Managers.time:time("game")

	self:_update_allowed_to_leave(t, true)

	if force_leave or self:allowed_to_leave() then
		self:_leave_ghost_mode()
	end
end

PlayerUnitGhostModeExtension.set_safe_spot = function (self, safe_spot)
	self._safe_spot = safe_spot
end

PlayerUnitGhostModeExtension._set_teleport_target_type = function (self, teleport_target_type)
	if self:allowed_to_enter() and teleport_target_type ~= "player" then
		print(self:allowed_to_enter(), teleport_target_type)
		Crashify.print_exception("GhostModeSystem", "Allowed to enter ghost mode while not allowed to teleport.")
	end

	self._teleport_target_type = teleport_target_type
end

PlayerUnitGhostModeExtension._play_sound = function (self, name)
	local world = Managers.world:world("level_world")
	local wwise_world = Managers.world:wwise_world(world)

	WwiseWorld.trigger_event(wwise_world, name)
end

PlayerUnitGhostModeExtension.set_external_no_spawn_reason = function (self, reason, value)
	self._external_no_spawn_reasons[reason] = value or nil

	local t = Managers.time:time("game")
	local force_update = true

	self:_update_allowed_to_leave(t, force_update)
end

PlayerUnitGhostModeExtension._external_no_spawn_reason = function (self)
	return next(self._external_no_spawn_reasons)
end
