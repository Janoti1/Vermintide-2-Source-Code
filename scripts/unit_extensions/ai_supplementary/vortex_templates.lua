VortexTemplates = {
	standard = {
		player_ejected_bliss_time = 5,
		outer_fx_z_scale_multiplier = 0.1,
		min_inner_radius = 0.38,
		inner_fx_z_scale_multiplier = 0.1,
		player_ascend_speed = 1,
		full_outer_radius = 8,
		player_actions_allowed = false,
		player_eject_distance = 12,
		player_eject_height = 2.5,
		min_outer_radius = 2,
		high_cost_nav_cost_map_cost_type = "vortex_danger_zone",
		windup_time = 0.5,
		random_wander = false,
		stop_and_process_player = true,
		ai_rotation_speed = 15,
		player_eject_speed = 12,
		max_height = 10,
		ai_attractable = true,
		damage = 5,
		post_vortex_buff = "vortex_base",
		medium_cost_nav_cost_map_cost_type = "vortex_near",
		player_in_vortex_max_duration = 5,
		player_attract_speed = 15,
		player_attractable = true,
		breed_name = "chaos_vortex",
		start_radius = 0.1,
		min_fx_radius = 2,
		outer_fx_name = "fx/wpn_chaos_plague_vortex_small_outer",
		ai_attract_speed = 20,
		inner_fx_name = "fx/wpn_chaos_plague_vortex_small",
		full_inner_radius = 3.5,
		ai_radius_change_speed = 1,
		player_rotation_speed = 10,
		forced_standing_still = false,
		use_nav_cost_map_volumes = true,
		ai_ascension_speed = 3,
		max_allowed_inner_radius_dist = 1.5,
		player_radius_change_speed = 1,
		full_fx_radius = 8,
		ai_eject_height = {
			3,
			5
		},
		time_of_life = {
			20,
			22
		}
	},
	boss_sorcerer = {
		player_ejected_bliss_time = 5,
		outer_fx_z_scale_multiplier = 0.1,
		min_inner_radius = 6,
		inner_fx_z_scale_multiplier = 0.1,
		player_ascend_speed = 1,
		full_outer_radius = 9,
		player_actions_allowed = false,
		player_eject_distance = 6,
		player_eject_height = 3.5,
		high_cost_nav_cost_map_cost_type = "vortex_danger_zone",
		windup_time = 1,
		random_wander = false,
		stop_and_process_player = true,
		ai_rotation_speed = 15,
		player_eject_speed = 12,
		max_height = 20,
		ai_attractable = true,
		damage = 5,
		post_vortex_buff = "vortex_base",
		medium_cost_nav_cost_map_cost_type = "vortex_near",
		min_outer_radius = 7,
		player_in_vortex_max_duration = 5,
		player_attract_speed = 15,
		player_attractable = true,
		breed_name = "chaos_vortex",
		start_radius = 0.1,
		min_fx_radius = 7,
		outer_fx_name = "fx/wpn_chaos_plague_vortex_small_outer",
		ai_attract_speed = 20,
		inner_fx_name = "fx/wpn_chaos_plague_vortex",
		full_inner_radius = 7.5,
		ai_radius_change_speed = 1,
		player_rotation_speed = 10,
		forced_standing_still = true,
		use_nav_cost_map_volumes = true,
		ai_ascension_speed = 3,
		max_allowed_inner_radius_dist = 1.5,
		player_radius_change_speed = 1,
		full_fx_radius = 9,
		ai_eject_height = {
			3,
			4
		},
		time_of_life = {
			7,
			8
		},
		suck_in_ai_func = function (blackboard)
			local stat_names = {
				"halescourge_tornado_enemies",
				"halescourge_tornado_enemies_cata"
			}

			for i = 1, #stat_names do
				local current_difficulty = Managers.state.difficulty:get_difficulty()
				local allowed_difficulties = QuestSettings.allowed_difficulties[stat_names[i]]
				local allowed_difficulty = allowed_difficulties[current_difficulty]

				if allowed_difficulty and not blackboard.completed_vortex_suck_in_challenge then
					if not blackboard.num_ai_units_sucked_in then
						blackboard.num_ai_units_sucked_in = 0
					end

					local num_ai_units_sucked_in = blackboard.num_ai_units_sucked_in or 0

					blackboard.num_ai_units_sucked_in = num_ai_units_sucked_in + 1

					if blackboard.num_ai_units_sucked_in >= QuestSettings.halescourge_tornado_enemies then
						local statistics_db = Managers.player:statistics_db()

						statistics_db:increment_stat_and_sync_to_clients(stat_names[i])

						blackboard.completed_vortex_suck_in_challenge = true
					end
				end
			end
		end
	},
	elite_mutator = {
		player_ejected_bliss_time = 5,
		outer_fx_z_scale_multiplier = 0.1,
		min_inner_radius = 0.38,
		inner_fx_z_scale_multiplier = 0.1,
		player_ascend_speed = 1,
		full_outer_radius = 8,
		player_actions_allowed = false,
		player_eject_distance = 20,
		player_eject_height = 2.5,
		min_outer_radius = 2,
		high_cost_nav_cost_map_cost_type = "vortex_danger_zone",
		windup_time = 0.5,
		random_wander = false,
		stop_and_process_player = true,
		ai_rotation_speed = 15,
		player_eject_speed = 16,
		max_height = 10,
		ai_attractable = true,
		damage = 5,
		post_vortex_buff = "vortex_base",
		medium_cost_nav_cost_map_cost_type = "vortex_near",
		player_in_vortex_max_duration = 5,
		player_attract_speed = 15,
		player_attractable = true,
		breed_name = "chaos_vortex",
		start_radius = 0.1,
		min_fx_radius = 2,
		outer_fx_name = "fx/wpn_chaos_plague_vortex_small_outer",
		ai_attract_speed = 20,
		inner_fx_name = "fx/wpn_chaos_plague_vortex_small",
		full_inner_radius = 3.5,
		ai_radius_change_speed = 1,
		player_rotation_speed = 10,
		forced_standing_still = false,
		use_nav_cost_map_volumes = true,
		ai_ascension_speed = 3,
		max_allowed_inner_radius_dist = 1.5,
		player_radius_change_speed = 1,
		full_fx_radius = 8,
		ai_eject_height = {
			3,
			5
		},
		time_of_life = {
			20,
			22
		}
	},
	carousel = {
		player_eject_height = 2.5,
		ai_rotation_speed = 15,
		min_inner_radius = 0.38,
		inner_fx_z_scale_multiplier = 0.1,
		player_ascend_speed = 1,
		player_eject_distance = 12,
		player_actions_allowed = false,
		outer_fx_name = "fx/wpn_chaos_plague_vortex_small_outer",
		player_ejected_bliss_time = 5,
		min_outer_radius = 2,
		high_cost_nav_cost_map_cost_type = "vortex_danger_zone",
		windup_time = 0.5,
		random_wander = false,
		stop_and_process_player = true,
		outer_fx_z_scale_multiplier = 0.1,
		player_eject_speed = 12,
		max_height = 10,
		ai_attractable = true,
		damage = 5,
		post_vortex_buff = "vortex_base",
		medium_cost_nav_cost_map_cost_type = "vortex_near",
		player_in_vortex_max_duration = 5,
		player_attract_speed = 15,
		player_attractable = true,
		breed_name = "chaos_vortex",
		start_radius = 0.1,
		min_fx_radius = 2,
		full_outer_radius = 8,
		ai_attract_speed = 20,
		inner_fx_name = "fx/wpn_chaos_plague_vortex_small",
		full_inner_radius = 3.5,
		ai_radius_change_speed = 1,
		player_rotation_speed = 10,
		forced_standing_still = false,
		use_nav_cost_map_volumes = true,
		ai_ascension_speed = 3,
		max_allowed_inner_radius_dist = 1.5,
		player_radius_change_speed = 1,
		full_fx_radius = 8,
		breed = Breeds.chaos_vortex,
		ai_eject_height = {
			3,
			5
		},
		time_of_life = {
			5,
			8
		}
	}
}

DLCUtils.merge("vortex_templates", VortexTemplates)
