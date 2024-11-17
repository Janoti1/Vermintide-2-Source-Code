local settings = DLCSettings.carousel
local buff_perks = require("scripts/unit_extensions/default_player_unit/buffs/settings/buff_perk_names")

local function is_local(unit)
	local player = Managers.player:owner(unit)

	return player and not player.remote
end

local function is_bot(unit)
	local player = Managers.player:owner(unit)

	return player and player.bot_player
end

settings.buff_templates = {
	vs_gutter_runner_allow_dismount = {
		buffs = {
			{
				name = "vs_gutter_runner_allow_dismount"
			}
		}
	},
	vs_gutter_runner_smoke_bomb_invisible = {
		deactivation_effect = "fx/screenspace_ranger_skill_02",
		buffs = {
			{
				remove_buff_func = "end_vs_gutter_runner_smoke_bomb_invisibility",
				name = "vs_gutter_runner_smoke_bomb_invisible",
				apply_buff_func = "start_vs_gutter_runner_smoke_bomb_invisibility",
				duration = 4,
				refresh_durations = true,
				priority_buff = true,
				continuous_effect = "fx/screenspace_ranger_skill_01",
				max_stacks = 1,
				icon = "bardin_ranger_activated_ability",
				perks = {
					buff_perks.invulnerable
				}
			}
		}
	},
	vs_ratling_gunner_slow = {
		buffs = {
			{
				update_func = "update_action_lerp_movement_buff",
				multiplier = 0.5,
				name = "vs_ratling_gunner_slow",
				refresh_durations = true,
				remove_buff_func = "remove_action_lerp_movement_buff",
				apply_buff_func = "apply_action_lerp_movement_buff",
				icon = "troll_vomit_debuff",
				remove_buff_name = "planted_return_to_normal_movement",
				lerp_time = 0.1,
				debuff = true,
				max_stacks = 1,
				duration = 0.8,
				path_to_movement_setting_to_modify = {
					"move_speed"
				}
			},
			{
				update_func = "update_charging_action_lerp_movement_buff",
				multiplier = 0.5,
				name = "decrease_crouch_speed_vs_ratling_gunner",
				refresh_durations = true,
				remove_buff_func = "remove_action_lerp_movement_buff",
				apply_buff_func = "apply_action_lerp_movement_buff",
				remove_buff_name = "planted_return_to_normal_crouch_movement",
				lerp_time = 0.1,
				max_stacks = 1,
				duration = 0.8,
				path_to_movement_setting_to_modify = {
					"crouch_move_speed"
				}
			},
			{
				update_func = "update_charging_action_lerp_movement_buff",
				multiplier = 0.5,
				name = "decrease_walk_speed_vs_ratling_gunner",
				refresh_durations = true,
				remove_buff_func = "remove_action_lerp_movement_buff",
				apply_buff_func = "apply_action_lerp_movement_buff",
				remove_buff_name = "planted_return_to_normal_walk_movement",
				lerp_time = 0.1,
				max_stacks = 1,
				duration = 0.8,
				path_to_movement_setting_to_modify = {
					"walk_move_speed"
				}
			},
			{
				name = "decrease_jump_speed_vs_ratling_gunner",
				multiplier = 0.6,
				duration = 0.8,
				max_stacks = 1,
				remove_buff_func = "remove_movement_buff",
				apply_buff_func = "apply_movement_buff",
				refresh_durations = true,
				path_to_movement_setting_to_modify = {
					"jump",
					"initial_vertical_speed"
				}
			},
			{
				name = "decrease_dodge_speed_vs_ratling_gunner",
				multiplier = 0.8,
				duration = 0.8,
				max_stacks = 1,
				remove_buff_func = "remove_movement_buff",
				apply_buff_func = "apply_movement_buff",
				refresh_durations = true,
				path_to_movement_setting_to_modify = {
					"dodging",
					"speed_modifier"
				}
			},
			{
				name = "decrease_dodge_distance_vs_ratling_gunner",
				multiplier = 0.8,
				duration = 0.8,
				max_stacks = 1,
				remove_buff_func = "remove_movement_buff",
				apply_buff_func = "apply_movement_buff",
				refresh_durations = true,
				path_to_movement_setting_to_modify = {
					"dodging",
					"distance_modifier"
				}
			}
		}
	},
	vs_warpfire_thrower_long_distance_damage = {
		buffs = {
			{
				remove_buff_func = "remove_vs_warpfirethrower_long_distance_damage",
				name = "vs_warpfire_thrower_long_distance_damage",
				icon = "troll_vomit_debuff",
				duration = 0.3,
				refresh_durations = true,
				apply_buff_func = "apply_vs_warpfirethrower_long_distance_damage",
				update_start_delay = 0.1,
				time_between_dot_damages = 0.35,
				timed_status_effect_time = 2,
				update_func = "update_vs_warpfirethrower_long_distance_damage",
				perks = {
					buff_perks.burning_warpfire
				}
			}
		}
	},
	vs_warpfire_thrower_short_distance_damage = {
		buffs = {
			{
				slowdown_buff_name = "warpfire_thrower_fire_slowdown",
				name = "vs_warpfire_thrower_base",
				update_func = "update_warpfirethrower_in_face",
				dormant = true,
				damage_type = "warpfire_ground",
				remove_buff_func = "remove_warpfirethrower_in_face",
				apply_buff_func = "apply_warpfirethrower_in_face_versus",
				fatigue_type = "warpfire_ground",
				duration = 0.15,
				time_between_dot_damages = 0.15,
				timed_status_effect_time = 2,
				debuff = true,
				icon = "troll_vomit_debuff",
				push_speed = 9,
				perks = {
					buff_perks.burning_warpfire
				}
			}
		}
	},
	vs_pactsworn_melee_damage_taken = {
		buffs = {
			{
				multiplier = 1,
				name = "defence_debuff_enemies",
				stat_buff = "damage_taken_melee"
			}
		}
	},
	vs_boss_stagger_immune = {
		buffs = {
			{
				multiplier = -1,
				name = "vs_boss_stagger_immune",
				stat_buff = "impact_vulnerability",
				max_stacks = 1,
				duration = 3
			}
		}
	},
	vs_damage_taken = {
		buffs = {
			{
				multiplier = -1,
				name = "vs_damage_taken",
				stat_buff = "damage_taken",
				duration = 10
			}
		}
	},
	vs_stagger_immune = {
		buffs = {
			{
				multiplier = -1,
				name = "vs_stagger_immune",
				stat_buff = "impact_vulnerability",
				duration = 10
			}
		}
	},
	vs_boss_health_degeneration = {
		buffs = {
			{
				multiplier = 0.1,
				name = "vs_boss_health_degeneration",
				stat_buff = "healing_received"
			}
		}
	},
	vs_boss_mood = {
		buffs = {
			{
				update_func = "update_vs_boss_mood",
				name = "vs_boss_mood",
				mood = "playable_boss"
			}
		}
	},
	vs_ability_buff_chaos_troll_regen = {
		buffs = {
			{
				multiplier = -1,
				name = "vs_stagger_immune",
				stat_buff = "impact_vulnerability",
				duration = 5
			},
			{
				multiplier = -0.5,
				name = "vs_damage_taken",
				stat_buff = "damage_taken",
				duration = 5
			},
			{
				duration = 5,
				name = "vs_chaos_troll_regen",
				particle_vfx = "fx/chr_chaos_troll_healing",
				remove_buff_func = "remove_vs_chaos_troll_regen",
				apply_buff_func = "apply_vs_chaos_troll_regen",
				screen_space_effect = "fx/screenspace_chaos_troll_healing",
				tick_rate = 0.05,
				heal_percentage = 0.5,
				update_func = "update_vs_chaos_troll_regen"
			}
		}
	},
	vs_warpfire_thrower_no_charge_explotion = {
		buffs = {
			{
				name = "vs_warpfire_thrower_no_charge_explotion",
				icon = "sienna_scholar_overcharge_no_slow",
				perks = {
					buff_perks.no_overcharge_explosion
				}
			}
		}
	},
	staff_life_player_target_cooldown = {
		buffs = {
			{
				icon = "icon_wpn_we_life_staff_01",
				name = "staff_life_player_target_cooldown",
				is_cooldown = true,
				duration = 40,
				priority_buff = true,
				perks = {
					buff_perks.sister_no_player_lift
				}
			}
		}
	},
	vs_bile_troll_vomit_face_base = {
		buffs = {
			{
				slowdown_buff_name = "vs_bile_troll_vomit_face_slowdown",
				name = "vs_troll_bile_face",
				debuff = true,
				update_func = "update_vomit_in_face",
				fatigue_type = "vomit_face",
				remove_buff_func = "remove_vomit_in_face",
				apply_buff_func = "apply_vomit_in_face",
				duration = 5,
				time_between_dot_damages = 0.65,
				refresh_durations = true,
				damage_type = "vomit_face",
				max_stacks = 1,
				icon = "troll_vomit_debuff",
				push_speed = 6,
				difficulty_damage = {
					easy = {
						1,
						1,
						0,
						0.5,
						1
					},
					normal = {
						1,
						1,
						0,
						1,
						1
					},
					hard = {
						1,
						1,
						0,
						1,
						1
					},
					harder = {
						1,
						1,
						0,
						2,
						1
					},
					hardest = {
						1,
						1,
						0,
						4,
						1
					},
					cataclysm = {
						1,
						1,
						0,
						4,
						1
					},
					cataclysm_2 = {
						1,
						1,
						0,
						4,
						1
					},
					cataclysm_3 = {
						1,
						1,
						0,
						4,
						1
					},
					versus_base = {
						1,
						1,
						0,
						1,
						1
					}
				}
			},
			{
				name = "decrease_jump_speed",
				multiplier = 0.3,
				duration = 7,
				remove_buff_func = "remove_movement_buff",
				apply_buff_func = "apply_movement_buff",
				path_to_movement_setting_to_modify = {
					"jump",
					"initial_vertical_speed"
				}
			},
			{
				name = "decrease_dodge_speed",
				multiplier = 0.3,
				duration = 7,
				remove_buff_func = "remove_movement_buff",
				apply_buff_func = "apply_movement_buff",
				path_to_movement_setting_to_modify = {
					"dodging",
					"speed_modifier"
				}
			},
			{
				name = "decrease_dodge_distance",
				multiplier = 0.3,
				duration = 7,
				remove_buff_func = "remove_movement_buff",
				apply_buff_func = "apply_movement_buff",
				path_to_movement_setting_to_modify = {
					"dodging",
					"distance_modifier"
				}
			}
		}
	},
	vs_bile_troll_vomit_face_slowdown = {
		buffs = {
			{
				update_func = "update_action_lerp_movement_buff",
				multiplier = 0.3,
				name = "decrease_speed",
				refresh_durations = true,
				remove_buff_func = "remove_action_lerp_movement_buff",
				apply_buff_func = "apply_action_lerp_movement_buff",
				remove_buff_name = "planted_return_to_normal_movement",
				lerp_time = 0.1,
				max_stacks = 1,
				duration = 0.5,
				path_to_movement_setting_to_modify = {
					"move_speed"
				}
			},
			{
				update_func = "update_charging_action_lerp_movement_buff",
				multiplier = 0.3,
				name = "decrease_crouch_speed",
				refresh_durations = true,
				remove_buff_func = "remove_action_lerp_movement_buff",
				apply_buff_func = "apply_action_lerp_movement_buff",
				remove_buff_name = "planted_return_to_normal_crouch_movement",
				lerp_time = 0.1,
				max_stacks = 1,
				duration = 0.5,
				path_to_movement_setting_to_modify = {
					"crouch_move_speed"
				}
			},
			{
				update_func = "update_charging_action_lerp_movement_buff",
				multiplier = 0.3,
				name = "decrease_walk_speed",
				refresh_durations = true,
				remove_buff_func = "remove_action_lerp_movement_buff",
				apply_buff_func = "apply_action_lerp_movement_buff",
				remove_buff_name = "planted_return_to_normal_walk_movement",
				lerp_time = 0.1,
				max_stacks = 1,
				duration = 0.5,
				path_to_movement_setting_to_modify = {
					"walk_move_speed"
				}
			}
		}
	}
}

local function is_grail_knight_blocking(unit, attacker_unit, buff, params, world)
	local unit_id = Managers.state.unit_storage:go_id(unit)
	local game = Managers.state.network:game()
	local unit_forward = GameSession.game_object_field(game, unit_id, "aim_direction")
	local unit_pos = POSITION_LOOKUP[unit]
	local attacker_pos = POSITION_LOOKUP[attacker_unit]
	local to_attacker = Vector3.flat(attacker_pos - unit_pos)
	local to_attacker_normalized, distance = Vector3.direction_length(to_attacker)

	if distance < math.epsilon then
		return true, 1
	end

	local unit_facing_attacker_dot = Vector3.dot(unit_forward, to_attacker_normalized)
	local max_block_angle = math.cos(math.pi * 0.6666666666666666)
	local is_power_blocking = max_block_angle < unit_facing_attacker_dot

	return is_power_blocking
end

settings.buff_function_templates = {
	apply_vs_chaos_troll_regen = function (unit, buff, params, world)
		local buff_template = buff.template
		local health_extension = ScriptUnit.extension(unit, "health_system")
		local max_health = health_extension:get_max_health()
		local current_health = health_extension:current_permanent_health()
		local missing_health = max_health - current_health
		local health_to_heal = missing_health * buff_template.heal_percentage
		local health_to_heal_per_sec = health_to_heal / buff.duration

		params.health_to_heal = health_to_heal
		params.tick_rate = buff_template.tick_rate
		params.health_to_heal_per_tick = buff_template.tick_rate and health_to_heal_per_sec * buff_template.tick_rate
		params.missing_health = missing_health
		params.next_tick = params.t + buff_template.tick_rate

		local particle_vfx = buff_template.particle_vfx

		if not DEDICATED_SERVER then
			local player = Managers.player:unit_owner(unit)

			if player and player.remote then
				local skin_unit = CosmeticsUtils.get_third_person_mesh_unit(unit)
				local node = 0

				params.particle_id = ScriptWorld.create_particles_linked(world, particle_vfx, skin_unit, node, "destroy")

				World.set_particles_life_time(world, params.particle_id, buff.duration)
			elseif player and player.local_player and not player.bot_player then
				local screen_space_effect = buff_template.screen_space_effect
				local first_person_extension = ScriptUnit.has_extension(unit, "first_person_system")

				params.screen_space_id = first_person_extension:create_screen_particles(screen_space_effect)

				World.set_particles_life_time(world, params.screen_space_id, buff.duration)
			end
		end
	end,
	update_vs_chaos_troll_regen = function (unit, buff, params, world)
		if params.t > params.next_tick then
			params.next_tick = params.t + params.tick_rate

			local is_server = Managers.state.network.is_server

			if is_server then
				DamageUtils.heal_network(unit, unit, params.health_to_heal_per_tick, "health_regen")
			end
		end
	end,
	remove_vs_chaos_troll_regen = function (unit, buff, params, world)
		return
	end,
	update_vs_boss_mood = function (unit, buff, params, world)
		if is_local(unit) then
			local buff_template = buff.template
			local player = Managers.player:unit_owner(unit)
			local camera_system = Managers.state.entity:system("camera_system")
			local camera_unit = camera_system and player and camera_system.camera_units and camera_system.camera_units[player]
			local camera_state

			if camera_unit then
				local camera_state_ext = ScriptUnit.extension(camera_unit, "camera_state_machine_system")

				camera_state = camera_state_ext.state_machine.state_current and camera_state_ext.state_machine.state_current.name
			end

			if camera_state and camera_state ~= params.previous_camera_state then
				Managers.state.camera:set_mood(buff_template.mood, buff, camera_state == "follow")
			end

			params.previous_camera_state = camera_state
		end
	end,
	start_vs_gutter_runner_smoke_bomb_invisibility = function (unit, buff, params, world)
		if is_local(unit) then
			local status_extension = ScriptUnit.extension(unit, "status_system")

			status_extension:set_invisible(true, nil, buff)
			Managers.state.camera:set_mood("gutter_runner_f", buff, true)
		end
	end,
	end_vs_gutter_runner_smoke_bomb_invisibility = function (unit, buff, params, world)
		if is_local(unit) then
			local first_person_extension = ScriptUnit.extension(unit, "first_person_system")

			first_person_extension:play_unit_sound_event("Play_versus_gutterrunner_vanish_fps_end", unit, 0)

			local career_extension = ScriptUnit.extension(unit, "career_system")

			career_extension:set_state("default")
			career_extension:start_activated_ability_cooldown(1)

			local status_extension = ScriptUnit.extension(unit, "status_system")

			status_extension:set_invisible(false, nil, buff)

			if Managers.state.network:game() then
				local status_extension = ScriptUnit.extension(unit, "status_system")

				status_extension:set_is_dodging(false)

				local network_manager = Managers.state.network
				local network_transmit = network_manager.network_transmit
				local unit_id = network_manager:unit_game_object_id(unit)

				network_transmit:send_rpc_server("rpc_status_change_bool", NetworkLookup.statuses.dodging, false, unit_id, 0)
			end

			Managers.state.camera:set_mood("gutter_runner_f", buff, false)
		end
	end,
	apply_vs_warpfirethrower_long_distance_damage = function (unit, buff, params, world)
		local breed = Unit.get_data(unit, "breed")

		buff.armor_type = breed.armor_category or 1

		local first_person_extension = ScriptUnit.has_extension(unit, "first_person_system")

		if first_person_extension then
			buff.warpfire_particle_id = first_person_extension:create_screen_particles("fx/screenspace_warpfire_hit_onfeet")
		end

		local attacker_unit_is_alive = ALIVE[params.attacker_unit]
		local attacker_unit = attacker_unit_is_alive and params.attacker_unit or unit

		if Unit.alive(attacker_unit) then
			local warpfire_unit_breed = Unit.get_data(attacker_unit, "breed")
			local damage = warpfire_unit_breed.shoot_warpfire_long_attack_damage

			buff.damage = damage
			buff.damage_source = warpfire_unit_breed and warpfire_unit_breed.name or "dot_debuff"
		end
	end,
	update_vs_warpfirethrower_long_distance_damage = function (unit, buff, params, world)
		local t = params.t
		local buff_template = buff.template

		if Managers.state.network.is_server then
			local attacker_unit = params.attacker_unit
			local target_buff_extension = ScriptUnit.has_extension(unit, "buff_system")
			local target_power_block_perk = target_buff_extension:has_buff_perk("power_block")
			local is_power_blocking = false

			if target_power_block_perk then
				is_power_blocking = is_grail_knight_blocking(unit, attacker_unit, buff, params, world)
			end

			if (not is_power_blocking or not DamageUtils.check_ranged_block(attacker_unit, unit, "blocked_berzerker")) and HEALTH_ALIVE[unit] then
				local armor_type = buff.armor_type
				local damage_type = buff_template.damage_type
				local damage = buff.damage[armor_type]
				local damage_source = buff.damage_source

				DamageUtils.add_damage_network(unit, attacker_unit, damage, "torso", damage_type, nil, Vector3(1, 0, 0), damage_source)
			end
		end

		local first_person_extension = ScriptUnit.has_extension(unit, "first_person_system")

		if first_person_extension then
			first_person_extension:play_hud_sound_event("Play_player_damage_puke")
		end

		local warpfire_next_t = t + buff_template.time_between_dot_damages

		return warpfire_next_t
	end,
	remove_vs_warpfirethrower_long_distance_damage = function (unit, buff, params, world)
		local first_person_extension = ScriptUnit.has_extension(unit, "first_person_system")

		if first_person_extension then
			first_person_extension:stop_spawning_screen_particles(buff.warpfire_particle_id)
		end
	end,
	apply_warpfirethrower_in_face_versus = function (unit, buff, params, world)
		local buff_template = buff.template
		local first_person_extension = ScriptUnit.has_extension(unit, "first_person_system")

		if first_person_extension then
			buff.warpfire_particle_id = first_person_extension:create_screen_particles("fx/screenspace_warpfire_flamethrower_01")
			buff.warpfire_particle_id_2 = first_person_extension:create_screen_particles("fx/screenspace_warpfire_hit_inface")

			first_person_extension:play_hud_sound_event("Play_player_hit_warpfire_thrower")
		end

		local attacker_unit = params.attacker_unit

		if Unit.alive(attacker_unit) then
			local warpfire_unit_breed = Unit.get_data(attacker_unit, "breed")
			local damage = warpfire_unit_breed.shoot_warpfire_long_attack_damage

			buff.damage = damage
			buff.damage_source = warpfire_unit_breed and warpfire_unit_breed.name or "dot_debuff"
		end

		local breed = Unit.get_data(unit, "breed")

		buff.armor_type = breed.armor_category or 1

		if breed.is_hero and first_person_extension then
			local buff_extension = ScriptUnit.has_extension(unit, "buff_system")
			local status_extension = ScriptUnit.has_extension(unit, "status_system")
			local no_ranged_knockback = buff_extension and buff_extension:has_buff_perk("no_ranged_knockback")
			local is_valid_push_target = not no_ranged_knockback and not status_extension:is_disabled() and not status_extension:has_noclip()

			if is_valid_push_target then
				local locomotion_extension = ScriptUnit.extension(unit, "locomotion_system")
				local push_speed = buff_template.push_speed
				local pushed_direction

				if ALIVE[attacker_unit] then
					local victim_position = POSITION_LOOKUP[unit]
					local attacker_position = POSITION_LOOKUP[attacker_unit]
					local to_victim = victim_position - attacker_position

					pushed_direction = Vector3.normalize(to_victim)
				else
					pushed_direction = Vector3.backward()
				end

				local pushed_velocity = pushed_direction * push_speed

				locomotion_extension:add_external_velocity(pushed_velocity)
			end
		end
	end
}
