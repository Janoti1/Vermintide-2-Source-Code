BeastmenStandardTemplates = {
	invincibility_standard = {
		buff_template_name = "invincibility_standard",
		radius = 20,
		astar_check_frequency = 10,
		apply_buff_to_ai = true,
		vfx_picked_up_standard = "fx/chr_beastmen_standard_bearer_end_02",
		ai_buff_proc_vfx_name = "",
		ai_buff_vfx_name = ""
	},
	healing_standard = {
		sfx_taking_damage = "Play_enemy_beastmen_standar_taking_damage",
		radius = 15,
		astar_check_frequency = 10,
		apply_buff_to_ai = true,
		sfx_destroyed = "Play_enemy_beastmen_standar_destroy",
		ai_buff_proc_vfx_name = "fx/chr_beastmen_standard_bearer_buff_02",
		vfx_picked_up_standard = "fx/chr_beastmen_standard_bearer_end_02",
		buff_template_name = "healing_standard",
		sfx_placed = "Play_enemy_standard_bearer_place_standar",
		sfx_loop_stop = "Stop_enemy_beastmen_standar_spell_loop",
		apply_buff_to_player = false,
		ai_buff_vfx_name = "fx/chr_beastmen_standard_bearer_buff_01",
		custom_update_func = function (template, data, t, dt, unit, units_inside)
			if data.is_server and not data.challenge_done and t > data.challenge_time and HEALTH_ALIVE[data.standard_bearer_unit] then
				local stat_name = "scorpion_keep_standard_bearer_alive"
				local stat_name_index = NetworkLookup.statistics[stat_name]
				local statistics_db = Managers.player:statistics_db()
				local local_player = Managers.player:local_player()

				if local_player then
					local stats_id = local_player:stats_id()

					statistics_db:increment_stat(stats_id, stat_name)
					Managers.state.network.network_transmit:send_rpc_clients("rpc_increment_stat", stat_name_index)
				end

				data.challenge_done = true
			end
		end
	},
	horde_standard = {
		radius = 12,
		sfx_loop_stop = "Stop_enemy_beastmen_standar_spell_loop",
		sfx_destroyed = "Play_enemy_beastmen_standar_destroy",
		vfx_picked_up_standard = "fx/chr_beastmen_standard_bearer_end_02",
		sfx_placed = "Play_enemy_standard_bearer_place_standar",
		sfx_taking_damage = "Play_enemy_beastmen_standar_taking_damage",
		astar_check_frequency = 10,
		composition = "standard_bearer_ambush",
		custom_update_func = function (template, data, t, dt, unit, units_inside)
			local next_horde_t = data.next_horde_t or 0

			if next_horde_t < t then
				local conflict_director = Managers.state.conflict
				local override_epicenter_pos = Unit.local_position(unit, 0)
				local override_composition_table = HordeCompositions[template.composition]
				local current_difficulty_rank, difficulty_tweak = Managers.state.difficulty:get_difficulty_rank()
				local composition_difficulty_rank = DifficultyTweak.converters.composition_rank(current_difficulty_rank, difficulty_tweak)
				local override_composition = override_composition_table[composition_difficulty_rank - 1]
				local extra_data = {
					sound_settings = template.horde_sound_settings
				}

				conflict_director.horde_spawner:execute_ambush_horde(extra_data, conflict_director.default_enemy_side_id, false, override_epicenter_pos, override_composition)

				data.next_horde_t = t + 10
			end
		end,
		horde_sound_settings = {
			stinger_sound_event = "enemy_horde_beastmen_stinger",
			music_states = {
				pre_ambush = "pre_ambush_beastmen",
				horde = "horde_beastmen"
			}
		}
	}
}
