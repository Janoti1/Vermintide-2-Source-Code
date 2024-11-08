require("scripts/managers/game_mode/game_modes/game_mode_base")
require("scripts/managers/admin/dedicated_server_commands")
require("scripts/managers/game_mode/spawning_components/simple_spawning")

local COMPLETE_LEVEL_VAR = false
local FAIL_LEVEL_VAR = false

GameModeInnVs = class(GameModeInnVs, GameModeBase)

GameModeInnVs.init = function (self, settings, world, network_server, ...)
	GameModeInnVs.super.init(self, settings, world, network_server, ...)

	self._mechanism = Managers.mechanism:game_mechanism()
	self._adventure_profile_rules = AdventureProfileRules:new(self._profile_synchronizer, self._network_server)

	if DEDICATED_SERVER then
		self._stale_server_time = math.huge
		self._auto_force_start_time = math.huge

		Managers.state.event:register(self, "game_server_reserve_party_slot", "on_game_server_reserve_party_slot")
		Managers.state.event:register(self, "game_server_unreserve_party_slot", "on_game_server_unreserve_party_slot")
	else
		local use_spawn_point_groups = true

		self._simple_spawning = SimpleSpawning:new(self._profile_synchronizer, use_spawn_point_groups)

		Managers.state.event:register(self, "level_start_local_player_spawned", "event_local_player_spawned")
	end

	if self._is_server then
		self._lobby_host = network_server.lobby_host
	end
end

GameModeInnVs.destroy = function (self)
	if DEDICATED_SERVER then
		Managers.state.event:unregister("game_server_reserve_party_slot", self)
		Managers.state.event:unregister("game_server_unreserve_party_slot", self)
	end
end

GameModeInnVs.register_rpcs = function (self, network_event_delegate, network_transmit)
	GameModeInnVs.super.register_rpcs(self, network_event_delegate, network_transmit)
end

GameModeInnVs.unregister_rpcs = function (self)
	GameModeInnVs.super.unregister_rpcs(self)
end

GameModeInnVs.local_player_ready_to_start = function (self)
	return self._game_mode_state ~= "initial_state"
end

GameModeInnVs.local_player_game_starts = function (self, player, loading_context)
	local show_profile_on_startup = loading_context.show_profile_on_startup

	loading_context.show_profile_on_startup = nil

	if show_profile_on_startup and not LEVEL_EDITOR_TEST and not Development.parameter("skip-start-menu") then
		local platform = PLATFORM

		if IS_CONSOLE then
			Managers.ui:handle_transition("initial_character_selection_force", {
				menu_state_name = "character"
			})
		elseif GameSettingsDevelopment.skip_start_screen or Development.parameter("skip_start_screen") then
			local first_hero_selection_made = SaveData.first_hero_selection_made
			local backend_waiting_for_input = Managers.backend:is_waiting_for_user_input()
			local show_hero_selection = not backend_waiting_for_input and not first_hero_selection_made

			Managers.ui:handle_transition("initial_start_menu_view_force", {
				menu_state_name = show_hero_selection and "character" or "overview"
			})
		else
			Managers.ui:handle_transition("initial_character_selection_force", {
				menu_state_name = "character"
			})
		end
	end

	if self._is_initial_spawn then
		LevelHelper:flow_event(self._world, "local_player_spawned")

		if Development.parameter("attract_mode") then
			LevelHelper:flow_event(self._world, "start_benchmark")
		else
			LevelHelper:flow_event(self._world, "level_start_local_player_spawned")
		end
	end
end

GameModeInnVs.evaluate_end_conditions = function (self, round_started)
	if COMPLETE_LEVEL_VAR then
		COMPLETE_LEVEL_VAR = false

		return true, "won"
	end

	if self:_is_time_up() then
		return true, "reload"
	end

	if FAIL_LEVEL_VAR then
		FAIL_LEVEL_VAR = false

		return true, "lost"
	end

	if self._level_completed then
		return true, "start_game"
	else
		return false
	end
end

GameModeInnVs.setup_done = function (self)
	if DEDICATED_SERVER then
		self:change_game_mode_state("dedicated_server_waiting_for_fully_reserved")
		self._mechanism:set_side_order_state(1)
	else
		self:change_game_mode_state("party_lobby")
		self:play_sound("Stop_versus_hud_last_hero_down_riser")
	end
end

GameModeInnVs.COMPLETE_LEVEL = function (self)
	COMPLETE_LEVEL_VAR = true
end

GameModeInnVs.FAIL_LEVEL = function (self)
	FAIL_LEVEL_VAR = true
end

GameModeInnVs.player_entered_game_session = function (self, peer_id, local_player_id, wanted_party_index)
	wanted_party_index = 1

	local current_party_id, wanted_party_id = self._mechanism:handle_party_assignment_for_joining_peer(peer_id, local_player_id, wanted_party_index)

	wanted_party_id = 1

	if LAUNCH_MODE ~= "attract_benchmark" then
		self._adventure_profile_rules:handle_profile_delegation_for_joining_player(peer_id, local_player_id)
	end

	if wanted_party_index ~= current_party_id then
		Managers.party:request_join_party(peer_id, local_player_id, wanted_party_index)
	elseif wanted_party_id ~= current_party_id then
		Managers.party:request_join_party(peer_id, local_player_id, wanted_party_id)
	end
end

GameModeInnVs.player_left_game_session = function (self, peer_id, local_player_id)
	local party_manager = Managers.party
	local status = party_manager:get_player_status(peer_id, local_player_id)

	if status then
		status.game_mode_data = {}
	end
end

GameModeInnVs.player_joined_party = function (self, peer_id, local_player_id, party_id, slot_id)
	if not DEDICATED_SERVER then
		self._simple_spawning:setup_data(peer_id, local_player_id)
	end
end

GameModeInnVs.player_left_party = function (self, peer_id, local_player_id, party_id, slot_id)
	return
end

GameModeInnVs.on_game_server_reserve_party_slot = function (self, index, peer_id, is_reserver)
	local t = Managers.time:time("game")

	self._stale_server_time = t + 60 + Math.random_range(-5, 5)
end

GameModeInnVs.on_game_server_unreserve_party_slot = function (self, slot_index, peer_id)
	if DEDICATED_SERVER and self._mechanism:get_slot_reservation_handler():is_empty() then
		self._transition_state = "restart_game_server"
	end
end

GameModeInnVs.flow_callback_add_spawn_point = function (self, unit)
	if not DEDICATED_SERVER then
		self._simple_spawning:flow_callback_add_spawn_point(unit)
	end
end

GameModeInnVs.hero_profile_available_for_party = function (self, party_id, profile_index, peer_id, local_player_id, ignore_bots)
	local profile = SPProfiles[profile_index]
	local profile_synchronizer = Managers.mechanism:profile_synchronizer()
	local reserver_peer_id = profile_synchronizer:get_profile_index_reservation(profile_index)

	return not reserver_peer_id or reserver_peer_id == peer_id
end

GameModeInnVs.profile_available = function (self, profile_synchronizer, profile_name, career_name)
	local profile_index = FindProfileIndex(profile_name)
	local party = Managers.party:get_party(1)
	local occupied_slots = party.occupied_slots

	for i = 1, #occupied_slots do
		local status = occupied_slots[i]
		local peer_id = status.peer_id
		local local_player_id = status.local_player_id
		local player_profile_id, player_career_id = profile_synchronizer:profile_by_peer(peer_id, local_player_id)

		if player_profile_id == profile_index then
			return false
		end
	end

	return true
end

GameModeInnVs.get_initial_inventory = function (self, healthkit, potion, grenade, additional_items, profile)
	local initial_inventory

	if profile.affiliation == "heroes" then
		initial_inventory = {
			slot_packmaster_claw = "packmaster_claw",
			slot_healthkit = healthkit,
			slot_potion = potion,
			slot_grenade = grenade,
			additional_items = additional_items
		}
	else
		initial_inventory = {}
	end

	return initial_inventory
end

GameModeInnVs.profile_available_for_peer = function (self, peer_id, local_player_id, profile_name, career_name)
	return true
end

GameModeInnVs.hot_join_sync = function (self, sender)
	GameModeInnVs.super.hot_join_sync(self, sender)
end

GameModeInnVs._send_system_message = function (self, message, ...)
	local localize_parameters = false
	local pop_chat = true

	Managers.chat:send_system_chat_message(1, message, nil, localize_parameters, pop_chat)
end

GameModeInnVs.force_map_pool = function (self, pool)
	self._force_map_pool = pool
end

GameModeInnVs.event_local_player_spawned = function (self, is_initial_spawn)
	self._local_player_spawned = true
	self._is_initial_spawn = is_initial_spawn
end

GameModeInnVs.server_update = function (self, t, dt)
	if DEDICATED_SERVER then
		self:_handle_dedicated_start_game(t, dt)
		self:_handle_dedicated_input(t, dt)
		self:_handle_kick_idle_players(t, dt)
		self:_handle_auto_force_start(t, dt)
	else
		local parties = Managers.party:parties()

		for party_id = 1, #parties do
			local party = parties[party_id]

			self._simple_spawning:update(t, dt, party)
		end
	end
end

GameModeInnVs._game_mode_state_changed = function (self, new_state)
	if self._is_server and new_state == "dedicated_server_starting_game" then
		self:_start_hosting_server()
	end
end

GameModeInnVs._handle_dedicated_start_game = function (self, t, dt)
	if self._game_mode_state == "dedicated_server_waiting_for_fully_reserved" and self._mechanism:should_game_server_start_game() then
		self:change_game_mode_state("dedicated_server_starting_game")
	end
end

GameModeInnVs._handle_dedicated_input = function (self, t, dt)
	CommandWindow.update()

	local input = CommandWindow.read_line()

	if input then
		Managers.admin:execute_command(input)
	end
end

GameModeInnVs._verify_stale_state = function (self)
	local peers_to_be_kicked = self._stale_kicking_peers
	local num_active_peers = Managers.state.network.network_server.peer_state_machines

	for peer_id in pairs(num_active_peers) do
		fassert(peers_to_be_kicked[peer_id], "[GameModeInnVs] A peer %s was added while server was stale. This may lead to a race condition where servers start while going stale.", peer_id)
	end
end

GameModeInnVs._handle_kick_idle_players = function (self, t, dt)
	local network_manager = Managers.state.network

	if self._stale_kicking_peers then
		self:_verify_stale_state()

		local num_active_peers = network_manager.network_server:num_active_peers()

		if num_active_peers > 0 then
			return
		end

		self._stale_kicking_peers = nil
	end

	if self._game_mode_state ~= "dedicated_server_waiting_for_fully_reserved" or self._mechanism:should_game_server_start_game() then
		return
	end

	local force_start_scheduled = t + self._settings.auto_force_start.start_after_seconds > self._auto_force_start_time

	if t < self._stale_server_time or force_start_scheduled then
		return
	end

	local mechanism = Managers.mechanism:game_mechanism()
	local reservation_handler = mechanism:get_slot_reservation_handler()

	self._stale_server_time = math.huge
	self._stale_kicking_peers = {}

	cprintf("[GameMode] Stale Server - Restarting")

	local reserved_peer_ids = reservation_handler:reservers()

	self._lobby_host:kick_all_except(table.mirror_array(reserved_peer_ids))

	for _, peer_id in pairs(reserved_peer_ids) do
		self._stale_kicking_peers[peer_id] = true

		network_manager.network_server:kick_peer(peer_id)
	end
end

GameModeInnVs._start_hosting_server = function (self)
	local map_pool = self._force_map_pool or Managers.mechanism:mechanism_setting_for_title("map_pool")
	local difficulty = self._settings.forced_difficulty
	local override_level_key = Managers.mechanism:game_mechanism():get_level_override_key()
	local override_map_pool = override_level_key and {
		override_level_key
	}
	local search_config = {
		skip_waystone = true,
		private_game = true,
		matchmaking_type = "versus",
		always_host = true,
		game_mode = "versus",
		dedicated_server = false,
		mechanism = "versus",
		quick_game = false,
		preferred_level_keys = override_map_pool or table.clone(map_pool),
		difficulty = difficulty
	}

	Managers.matchmaking:find_game(search_config)

	self._force_map_pool = nil
end

GameModeInnVs.wanted_transition = function (self)
	local state = self._transition_state

	if state == "restart_game_server" then
		return "restart_game_server"
	end
end

GameModeInnVs.is_reservable = function (self)
	return not self._stale_kicking_peers
end

GameModeInnVs.is_joinable = function (self)
	return self:is_reservable() and self:game_mode_state() ~= "dedicated_server_waiting_for_fully_reserved"
end

GameModeInnVs.update_auto_force_start_conditions = function (self)
	local slot_reservation_handler = self._mechanism:get_slot_reservation_handler()
	local balanced_teams = slot_reservation_handler:is_evenly_distributed() or slot_reservation_handler:try_balance_teams()

	if balanced_teams then
		self:_set_auto_force_start_time()
	end
end

GameModeInnVs._set_auto_force_start_time = function (self)
	local settings = self._settings.auto_force_start

	if not settings.enabled then
		return
	end

	if self._auto_force_start_time < math.huge then
		return
	end

	local start_after_seconds = settings.start_after_seconds
	local t = Managers.time:time("game")

	self._auto_force_start_time = t + start_after_seconds

	printf("[GameModeInnVS:_set_auto_force_start_time]: Automatic force start in %s seconds if teams remain unchanged", settings.start_after_seconds)
end

GameModeInnVs._handle_auto_force_start = function (self, t, dt)
	if t < self._auto_force_start_time then
		return
	end

	local slot_reservation_handler = self._mechanism:get_slot_reservation_handler()

	if slot_reservation_handler:is_evenly_distributed() or slot_reservation_handler:try_balance_teams() then
		printf("[GameModeInnVS:_handle_auto_force_start]: Automatically force starting game after %s seconds", self._settings.auto_force_start.start_after_seconds)
		self._mechanism:force_start_dedicated_server()

		self._stale_server_time = math.huge
	end

	self._auto_force_start_time = math.huge
end

GameModeInnVs.play_sound = function (self, event)
	local wwise_world = Managers.world:wwise_world(self._world)

	WwiseWorld.trigger_event(wwise_world, event)
end
