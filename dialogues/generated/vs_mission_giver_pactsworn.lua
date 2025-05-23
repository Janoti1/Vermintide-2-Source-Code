return function ()
	define_rule({
		response = "vmg_b_vs_heroes_objective_almost_completed_b",
		name = "vmg_b_vs_heroes_objective_almost_completed_b",
		probability = 0.7,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name",
				OP.EQ,
				"vmg_vs_heroes_objective_almost_completed_a"
			},
			{
				"global_context",
				"game_about_to_end",
				OP.EQ,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"krask_minion"
			}
		}
	})
	define_rule({
		response = "vmg_b_vs_heroes_objective_reached_b",
		name = "vmg_b_vs_heroes_objective_reached_b",
		probability = 0.5,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name",
				OP.EQ,
				"vmg_vs_heroes_objective_reached_a"
			},
			{
				"global_context",
				"game_about_to_end",
				OP.EQ,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"krask_minion"
			}
		}
	})
	define_rule({
		response = "vmg_b_vs_new_spawn_horde_b",
		name = "vmg_b_vs_new_spawn_horde_b",
		probability = 0.4,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name",
				OP.EQ,
				"vmg_vs_new_spawn_horde_a"
			},
			{
				"global_context",
				"game_about_to_end",
				OP.EQ,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"krask_minion"
			}
		}
	})
	define_rule({
		response = "vmg_b_vs_new_spawn_monster_b",
		name = "vmg_b_vs_new_spawn_monster_b",
		probability = 0.4,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name",
				OP.EQ,
				"vmg_vs_new_spawn_monster_a"
			},
			{
				"global_context",
				"game_about_to_end",
				OP.EQ,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"krask_minion"
			}
		}
	})
	define_rule({
		response = "vmg_b_vs_round_start_go_b",
		name = "vmg_b_vs_round_start_go_b",
		probability = 0.7,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name",
				OP.EQ,
				"vmg_vs_round_start_go_a"
			},
			{
				"global_context",
				"game_about_to_end",
				OP.EQ,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"krask_minion"
			}
		}
	})
	define_rule({
		response = "vmg_b_vs_round_start_rant_b",
		name = "vmg_b_vs_round_start_rant_b",
		probability = 0.7,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name",
				OP.EQ,
				"vmg_vs_round_start_rant_a"
			},
			{
				"global_context",
				"game_about_to_end",
				OP.EQ,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"krask_minion"
			}
		}
	})
	define_rule({
		response = "vmg_vs_about_to_early_loss_a",
		name = "vmg_vs_about_to_early_loss_a",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_mg_about_to_early_loss"
			},
			{
				"global_context",
				"game_about_to_end",
				OP.EQ,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_pactsworn_mission_giver"
			}
		}
	})
	define_rule({
		response = "vmg_vs_about_to_early_win_a",
		name = "vmg_vs_about_to_early_win_a",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_mg_about_to_early_win"
			},
			{
				"global_context",
				"game_about_to_end",
				OP.EQ,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_pactsworn_mission_giver"
			}
		}
	})
	define_rule({
		response = "vmg_vs_early_loss_a",
		name = "vmg_vs_early_loss_a",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_mg_early_loss"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_pactsworn_mission_giver"
			}
		}
	})
	define_rule({
		response = "vmg_vs_early_win_a",
		name = "vmg_vs_early_win_a",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_mg_early_win"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_pactsworn_mission_giver"
			}
		}
	})
	define_rule({
		probability = 1,
		name = "vmg_vs_hero_bright_wizard_dead_a",
		response = "vmg_vs_hero_bright_wizard_dead_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"player_death"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_pactsworn_mission_giver"
			},
			{
				"global_context",
				"game_about_to_end",
				OP.EQ,
				0
			},
			{
				"user_memory",
				"mg_hero_bright_wizard_dead",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"user_memory",
				"mg_hero_bright_wizard_dead",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "vmg_vs_hero_bright_wizard_rushing_a",
		response = "vmg_vs_hero_bright_wizard_rushing_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_mg_hero_rushing"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"global_context",
				"game_about_to_end",
				OP.EQ,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_pactsworn_mission_giver"
			},
			{
				"user_memory",
				"mg_hero_rushing",
				OP.LT,
				3
			}
		},
		on_done = {
			{
				"user_memory",
				"mg_hero_rushing",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "vmg_vs_hero_dwarf_ranger_dead_a",
		response = "vmg_vs_hero_dwarf_ranger_dead_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"player_death"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_pactsworn_mission_giver"
			},
			{
				"global_context",
				"game_about_to_end",
				OP.EQ,
				0
			},
			{
				"user_memory",
				"mg_hero_dwarf_ranger_dead",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"user_memory",
				"mg_hero_dwarf_ranger_dead",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "vmg_vs_hero_dwarf_ranger_rushing_a",
		response = "vmg_vs_hero_dwarf_ranger_rushing_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_mg_hero_rushing"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"global_context",
				"game_about_to_end",
				OP.EQ,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_pactsworn_mission_giver"
			},
			{
				"user_memory",
				"mg_hero_rushing",
				OP.LT,
				3
			}
		},
		on_done = {
			{
				"user_memory",
				"mg_hero_rushing",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "vmg_vs_hero_empire_soldier_dead_a",
		response = "vmg_vs_hero_empire_soldier_dead_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"player_death"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_pactsworn_mission_giver"
			},
			{
				"global_context",
				"game_about_to_end",
				OP.EQ,
				0
			},
			{
				"user_memory",
				"mg_hero_empire_soldier_dead",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"user_memory",
				"mg_hero_empire_soldier_dead",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "vmg_vs_hero_empire_soldier_rushing_a",
		response = "vmg_vs_hero_empire_soldier_rushing_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_mg_hero_rushing"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"global_context",
				"game_about_to_end",
				OP.EQ,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_pactsworn_mission_giver"
			},
			{
				"user_memory",
				"mg_hero_rushing",
				OP.LT,
				3
			}
		},
		on_done = {
			{
				"user_memory",
				"mg_hero_rushing",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "vmg_vs_hero_witch_hunter_dead_a",
		response = "vmg_vs_hero_witch_hunter_dead_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"player_death"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_pactsworn_mission_giver"
			},
			{
				"global_context",
				"game_about_to_end",
				OP.EQ,
				0
			},
			{
				"user_memory",
				"mg_hero_witch_hunter_dead",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"user_memory",
				"mg_hero_witch_hunter_dead",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "vmg_vs_hero_witch_hunter_rushing_a",
		response = "vmg_vs_hero_witch_hunter_rushing_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_mg_hero_rushing"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"global_context",
				"game_about_to_end",
				OP.EQ,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_pactsworn_mission_giver"
			},
			{
				"user_memory",
				"mg_hero_rushing",
				OP.LT,
				3
			}
		},
		on_done = {
			{
				"user_memory",
				"mg_hero_rushing",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "vmg_vs_hero_wood_elf_dead_a",
		response = "vmg_vs_hero_wood_elf_dead_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"player_death"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_pactsworn_mission_giver"
			},
			{
				"global_context",
				"game_about_to_end",
				OP.EQ,
				0
			},
			{
				"user_memory",
				"mg_hero_wood_elf_dead",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"user_memory",
				"mg_hero_wood_elf_dead",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "vmg_vs_hero_wood_elf_rushing_a",
		response = "vmg_vs_hero_wood_elf_rushing_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_mg_hero_rushing"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"global_context",
				"game_about_to_end",
				OP.EQ,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_pactsworn_mission_giver"
			},
			{
				"user_memory",
				"mg_hero_rushing",
				OP.LT,
				3
			}
		},
		on_done = {
			{
				"user_memory",
				"mg_hero_rushing",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		response = "vmg_vs_heroes_last_man_standing_a",
		name = "vmg_vs_heroes_last_man_standing_a",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"last_man_standing_pact_dummy"
			},
			{
				"global_context",
				"game_about_to_end",
				OP.EQ,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_pactsworn_mission_giver"
			}
		}
	})
	define_rule({
		response = "vmg_vs_heroes_objective_almost_completed_a",
		name = "vmg_vs_heroes_objective_almost_completed_a",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_mg_heroes_objective_almost_completed"
			},
			{
				"global_context",
				"game_about_to_end",
				OP.EQ,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_pactsworn_mission_giver"
			}
		}
	})
	define_rule({
		response = "vmg_vs_heroes_objective_completed_a",
		name = "vmg_vs_heroes_objective_completed_a",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_mg_heroes_objective_completed"
			},
			{
				"global_context",
				"game_about_to_end",
				OP.EQ,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_pactsworn_mission_giver"
			}
		}
	})
	define_rule({
		response = "vmg_vs_heroes_objective_completed_b",
		name = "vmg_vs_heroes_objective_completed_b",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vmg_vs_heroes_objective_completed_a_done"
			},
			{
				"global_context",
				"game_about_to_end",
				OP.EQ,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_pactsworn_mission_giver"
			}
		}
	})
	define_rule({
		response = "vmg_vs_heroes_objective_reached_a",
		name = "vmg_vs_heroes_objective_reached_a",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_mg_heroes_objective_reached"
			},
			{
				"global_context",
				"game_about_to_end",
				OP.EQ,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_pactsworn_mission_giver"
			}
		}
	})
	define_rule({
		response = "vmg_vs_heroes_reached_safe_room_a",
		name = "vmg_vs_heroes_reached_safe_room_a",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_mg_heroes_reached_safe_room"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_pactsworn_mission_giver"
			}
		}
	})
	define_rule({
		response = "vmg_vs_heroes_reached_waystone_a",
		name = "vmg_vs_heroes_reached_waystone_a",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_mg_heroes_reached_waystone"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_pactsworn_mission_giver"
			}
		}
	})
	define_rule({
		response = "vmg_vs_heroes_team_wipe_a",
		name = "vmg_vs_heroes_team_wipe_a",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_mg_heroes_team_wipe"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_pactsworn_mission_giver"
			}
		}
	})
	define_rule({
		response = "vmg_vs_match_draw_a",
		name = "vmg_vs_match_draw_a",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_mg_match_draw"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_pactsworn_mission_giver"
			}
		}
	})
	define_rule({
		probability = 0.3,
		name = "vmg_vs_new_spawn_horde_a",
		response = "vmg_vs_new_spawn_horde_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"horde"
			},
			{
				"global_context",
				"game_about_to_end",
				OP.EQ,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_pactsworn_mission_giver"
			},
			{
				"user_memory",
				"time_since_mg_horde",
				OP.TIMEDIFF,
				OP.GT,
				60
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_mg_horde",
				OP.TIMESET
			}
		}
	})
	define_rule({
		response = "vmg_vs_new_spawn_monster_a",
		name = "vmg_vs_new_spawn_monster_a",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_mg_new_spawn_monster"
			},
			{
				"global_context",
				"game_about_to_end",
				OP.EQ,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_pactsworn_mission_giver"
			}
		}
	})
	define_rule({
		probability = 1,
		name = "vmg_vs_pactsworn_wipe_a",
		response = "vmg_vs_pactsworn_wipe_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_mg_pactsworn_wipe"
			},
			{
				"global_context",
				"game_about_to_end",
				OP.EQ,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_pactsworn_mission_giver"
			},
			{
				"user_memory",
				"mg_pactsworn_wipe",
				OP.LT,
				2
			}
		},
		on_done = {
			{
				"user_memory",
				"mg_pactsworn_wipe",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		response = "vmg_vs_round_start_go_a",
		name = "vmg_vs_round_start_go_a",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_mg_heroes_left_safe_room"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_pactsworn_mission_giver"
			}
		}
	})
	define_rule({
		response = "vmg_vs_round_start_rant_a",
		name = "vmg_vs_round_start_rant_a",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_mg_round_start"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_pactsworn_mission_giver"
			}
		}
	})
	add_dialogues({
		vmg_b_vs_heroes_objective_almost_completed_b = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 5,
			database = "vs_mission_giver_pactsworn",
			sound_events_n = 5,
			category = "player_feedback",
			dialogue_animations_n = 5,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"vmg_b_vs_heroes_objective_almost_completed_b_01",
				"vmg_b_vs_heroes_objective_almost_completed_b_02",
				"vmg_b_vs_heroes_objective_almost_completed_b_03",
				"vmg_b_vs_heroes_objective_almost_completed_b_04",
				"vmg_b_vs_heroes_objective_almost_completed_b_05"
			},
			randomize_indexes = {},
			sound_events = {
				"vmg_b_vs_heroes_objective_almost_completed_b_01",
				"vmg_b_vs_heroes_objective_almost_completed_b_02",
				"vmg_b_vs_heroes_objective_almost_completed_b_03",
				"vmg_b_vs_heroes_objective_almost_completed_b_04",
				"vmg_b_vs_heroes_objective_almost_completed_b_05"
			},
			sound_events_duration = {
				2.9818136692047,
				2.2425589561462,
				2.051359295845,
				2.4497580528259,
				3.1373598575592
			}
		},
		vmg_b_vs_heroes_objective_reached_b = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "vs_mission_giver_pactsworn",
			sound_events_n = 8,
			category = "player_feedback",
			dialogue_animations_n = 8,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"vmg_b_vs_heroes_objective_reached_b_01",
				"vmg_b_vs_heroes_objective_reached_b_02",
				"vmg_b_vs_heroes_objective_reached_b_03",
				"vmg_b_vs_heroes_objective_reached_b_04",
				"vmg_b_vs_heroes_objective_reached_b_05",
				"vmg_b_vs_heroes_objective_reached_b_06",
				"vmg_b_vs_heroes_objective_reached_b_07",
				"vmg_b_vs_heroes_objective_reached_b_08"
			},
			randomize_indexes = {},
			sound_events = {
				"vmg_b_vs_heroes_objective_reached_b_01",
				"vmg_b_vs_heroes_objective_reached_b_02",
				"vmg_b_vs_heroes_objective_reached_b_03",
				"vmg_b_vs_heroes_objective_reached_b_04",
				"vmg_b_vs_heroes_objective_reached_b_05",
				"vmg_b_vs_heroes_objective_reached_b_06",
				"vmg_b_vs_heroes_objective_reached_b_07",
				"vmg_b_vs_heroes_objective_reached_b_08"
			},
			sound_events_duration = {
				3.4281820058823,
				2.8371767997742,
				4.6396923065186,
				3.342009305954,
				5.624481678009,
				3.2585182189941,
				3.5895471572876,
				3.255117893219
			}
		},
		vmg_b_vs_new_spawn_horde_b = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 5,
			database = "vs_mission_giver_pactsworn",
			sound_events_n = 5,
			category = "player_feedback",
			dialogue_animations_n = 5,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"vmg_b_vs_new_spawn_horde_b_01",
				"vmg_b_vs_new_spawn_horde_b_02",
				"vmg_b_vs_new_spawn_horde_b_03",
				"vmg_b_vs_new_spawn_horde_b_04",
				"vmg_b_vs_new_spawn_horde_b_05"
			},
			randomize_indexes = {},
			sound_events = {
				"vmg_b_vs_new_spawn_horde_b_01",
				"vmg_b_vs_new_spawn_horde_b_02",
				"vmg_b_vs_new_spawn_horde_b_03",
				"vmg_b_vs_new_spawn_horde_b_04",
				"vmg_b_vs_new_spawn_horde_b_05"
			},
			sound_events_duration = {
				4.3920731544495,
				2.9734950065613,
				2.4987295269966,
				2.6711864471435,
				3.325695514679
			}
		},
		vmg_b_vs_new_spawn_monster_b = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 5,
			database = "vs_mission_giver_pactsworn",
			sound_events_n = 5,
			category = "player_feedback",
			dialogue_animations_n = 5,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"vmg_b_vs_new_spawn_monster_b_01",
				"vmg_b_vs_new_spawn_monster_b_02",
				"vmg_b_vs_new_spawn_monster_b_03",
				"vmg_b_vs_new_spawn_monster_b_04",
				"vmg_b_vs_new_spawn_monster_b_05"
			},
			randomize_indexes = {},
			sound_events = {
				"vmg_b_vs_new_spawn_monster_b_01",
				"vmg_b_vs_new_spawn_monster_b_02",
				"vmg_b_vs_new_spawn_monster_b_03",
				"vmg_b_vs_new_spawn_monster_b_04",
				"vmg_b_vs_new_spawn_monster_b_05"
			},
			sound_events_duration = {
				2.0985493659973,
				3.9596807956696,
				3.115419626236,
				2.9979047775269,
				3.7588367462158
			}
		},
		vmg_b_vs_round_start_go_b = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "vs_mission_giver_pactsworn",
			sound_events_n = 6,
			category = "player_feedback",
			dialogue_animations_n = 6,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"vmg_b_vs_round_start_go_b_01",
				"vmg_b_vs_round_start_go_b_02",
				"vmg_b_vs_round_start_go_b_03",
				"vmg_b_vs_round_start_go_b_04",
				"vmg_b_vs_round_start_go_b_05",
				"vmg_b_vs_round_start_go_b_06"
			},
			randomize_indexes = {},
			sound_events = {
				"vmg_b_vs_round_start_go_b_01",
				"vmg_b_vs_round_start_go_b_02",
				"vmg_b_vs_round_start_go_b_03",
				"vmg_b_vs_round_start_go_b_04",
				"vmg_b_vs_round_start_go_b_05",
				"vmg_b_vs_round_start_go_b_06"
			},
			sound_events_duration = {
				2.4934365749359,
				3.6929547786713,
				2.6567957401276,
				2.8300116062164,
				3.2130584716797,
				2.7264018058777
			}
		},
		vmg_b_vs_round_start_rant_b = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "vs_mission_giver_pactsworn",
			sound_events_n = 6,
			category = "player_feedback",
			dialogue_animations_n = 6,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"vmg_b_vs_round_start_rant_b_01",
				"vmg_b_vs_round_start_rant_b_02",
				"vmg_b_vs_round_start_rant_b_03",
				"vmg_b_vs_round_start_rant_b_04",
				"vmg_b_vs_round_start_rant_b_05",
				"vmg_b_vs_round_start_rant_b_06"
			},
			randomize_indexes = {},
			sound_events = {
				"vmg_b_vs_round_start_rant_b_01",
				"vmg_b_vs_round_start_rant_b_02",
				"vmg_b_vs_round_start_rant_b_03",
				"vmg_b_vs_round_start_rant_b_04",
				"vmg_b_vs_round_start_rant_b_05",
				"vmg_b_vs_round_start_rant_b_06"
			},
			sound_events_duration = {
				3.0592932701111,
				3.6164059638977,
				2.3163750171661,
				3.6876921653748,
				4.3758606910706,
				3.5059549808502
			}
		},
		vmg_vs_about_to_early_loss_a = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "vs_mission_giver_pactsworn",
			sound_events_n = 6,
			category = "npc_talk",
			dialogue_animations_n = 6,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"vmg_a_vs_about_to_early_loss_a_01",
				"vmg_a_vs_about_to_early_loss_a_02",
				"vmg_a_vs_about_to_early_loss_a_03",
				"vmg_a_vs_about_to_early_loss_a_04",
				"vmg_a_vs_about_to_early_loss_a_05",
				"vmg_a_vs_about_to_early_loss_a_06"
			},
			randomize_indexes = {},
			sound_events = {
				"vmg_a_vs_about_to_early_loss_a_01",
				"vmg_a_vs_about_to_early_loss_a_02",
				"vmg_a_vs_about_to_early_loss_a_03",
				"vmg_a_vs_about_to_early_loss_a_04",
				"vmg_a_vs_about_to_early_loss_a_05",
				"vmg_a_vs_about_to_early_loss_a_06"
			},
			sound_events_duration = {
				5.0921483039856,
				4.9371690750122,
				5.288640499115,
				5.4122476577759,
				4.6121106147766,
				5.8663582801819
			}
		},
		vmg_vs_about_to_early_win_a = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 3,
			database = "vs_mission_giver_pactsworn",
			sound_events_n = 3,
			category = "npc_talk",
			dialogue_animations_n = 3,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"vmg_a_vs_about_to_early_win_a_01",
				"vmg_a_vs_about_to_early_win_a_02",
				"vmg_a_vs_about_to_early_win_a_03"
			},
			randomize_indexes = {},
			sound_events = {
				"vmg_a_vs_about_to_early_win_a_01",
				"vmg_a_vs_about_to_early_win_a_02",
				"vmg_a_vs_about_to_early_win_a_03"
			},
			sound_events_duration = {
				4.3818573951721,
				5.4352812767029,
				5.129937171936
			}
		},
		vmg_vs_early_loss_a = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "vs_mission_giver_pactsworn",
			sound_events_n = 6,
			category = "cut_scene_interrupt_three",
			dialogue_animations_n = 6,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"vmg_a_vs_early_loss_a_01",
				"vmg_a_vs_early_loss_a_02",
				"vmg_a_vs_early_loss_a_03",
				"vmg_a_vs_early_loss_a_04",
				"vmg_a_vs_early_loss_a_05",
				"vmg_a_vs_early_loss_a_06"
			},
			randomize_indexes = {},
			sound_events = {
				"vmg_a_vs_early_loss_a_01",
				"vmg_a_vs_early_loss_a_02",
				"vmg_a_vs_early_loss_a_03",
				"vmg_a_vs_early_loss_a_04",
				"vmg_a_vs_early_loss_a_05",
				"vmg_a_vs_early_loss_a_06"
			},
			sound_events_duration = {
				6.5328288078308,
				4.7937870025635,
				5.3922505378723,
				8.4626159667969,
				7.5255727767944,
				5.4068236351013
			}
		},
		vmg_vs_early_win_a = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 3,
			database = "vs_mission_giver_pactsworn",
			sound_events_n = 3,
			category = "cut_scene_interrupt_three",
			dialogue_animations_n = 3,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"vmg_a_vs_early_win_a_01",
				"vmg_a_vs_early_win_a_02",
				"vmg_a_vs_early_win_a_03"
			},
			randomize_indexes = {},
			sound_events = {
				"vmg_a_vs_early_win_a_01",
				"vmg_a_vs_early_win_a_02",
				"vmg_a_vs_early_win_a_03"
			},
			sound_events_duration = {
				4.6561532020569,
				5.4573431015015,
				4.4790105819702
			}
		},
		vmg_vs_hero_bright_wizard_dead_a = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 3,
			database = "vs_mission_giver_pactsworn",
			sound_events_n = 3,
			category = "npc_talk",
			dialogue_animations_n = 3,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"vmg_a_vs_hero_bright_wizard_dead_a_01",
				"vmg_a_vs_hero_bright_wizard_dead_a_02",
				"vmg_a_vs_hero_bright_wizard_dead_a_03"
			},
			randomize_indexes = {},
			sound_events = {
				"vmg_a_vs_hero_bright_wizard_dead_a_01",
				"vmg_a_vs_hero_bright_wizard_dead_a_02",
				"vmg_a_vs_hero_bright_wizard_dead_a_03"
			},
			sound_events_duration = {
				3.0907000303268,
				3.0907000303268,
				3.0907000303268
			}
		},
		vmg_vs_hero_bright_wizard_rushing_a = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "vs_mission_giver_pactsworn",
			sound_events_n = 4,
			category = "npc_talk",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"vmg_a_vs_hero_bright_wizard_rushing_a_01",
				"vmg_a_vs_hero_bright_wizard_rushing_a_02",
				"vmg_a_vs_hero_bright_wizard_rushing_a_03",
				"vmg_a_vs_hero_bright_wizard_rushing_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"vmg_a_vs_hero_bright_wizard_rushing_a_01",
				"vmg_a_vs_hero_bright_wizard_rushing_a_02",
				"vmg_a_vs_hero_bright_wizard_rushing_a_03",
				"vmg_a_vs_hero_bright_wizard_rushing_a_04"
			},
			sound_events_duration = {
				3.7202441692352,
				3.4433574676514,
				3.0907000303268,
				3.0907000303268
			}
		},
		vmg_vs_hero_dwarf_ranger_dead_a = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 3,
			database = "vs_mission_giver_pactsworn",
			sound_events_n = 3,
			category = "npc_talk",
			dialogue_animations_n = 3,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"vmg_a_vs_hero_dwarf_ranger_dead_a_01",
				"vmg_a_vs_hero_dwarf_ranger_dead_a_02",
				"vmg_a_vs_hero_dwarf_ranger_dead_a_03"
			},
			randomize_indexes = {},
			sound_events = {
				"vmg_a_vs_hero_dwarf_ranger_dead_a_01",
				"vmg_a_vs_hero_dwarf_ranger_dead_a_02",
				"vmg_a_vs_hero_dwarf_ranger_dead_a_03"
			},
			sound_events_duration = {
				3.0907000303268,
				3.2422504425049,
				3.2675104141235
			}
		},
		vmg_vs_hero_dwarf_ranger_rushing_a = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "vs_mission_giver_pactsworn",
			sound_events_n = 4,
			category = "npc_talk",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"vmg_a_vs_hero_dwarf_ranger_rushing_a_01",
				"vmg_a_vs_hero_dwarf_ranger_rushing_a_02",
				"vmg_a_vs_hero_dwarf_ranger_rushing_a_03",
				"vmg_a_vs_hero_dwarf_ranger_rushing_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"vmg_a_vs_hero_dwarf_ranger_rushing_a_01",
				"vmg_a_vs_hero_dwarf_ranger_rushing_a_02",
				"vmg_a_vs_hero_dwarf_ranger_rushing_a_03",
				"vmg_a_vs_hero_dwarf_ranger_rushing_a_04"
			},
			sound_events_duration = {
				3.4313957691193,
				3.3207015991211,
				3.9172425270081,
				4.1341166496277
			}
		},
		vmg_vs_hero_empire_soldier_dead_a = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 3,
			database = "vs_mission_giver_pactsworn",
			sound_events_n = 3,
			category = "npc_talk",
			dialogue_animations_n = 3,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"vmg_a_vs_hero_empire_soldier_dead_a_01",
				"vmg_a_vs_hero_empire_soldier_dead_a_02",
				"vmg_a_vs_hero_empire_soldier_dead_a_03"
			},
			randomize_indexes = {},
			sound_events = {
				"vmg_a_vs_hero_empire_soldier_dead_a_01",
				"vmg_a_vs_hero_empire_soldier_dead_a_02",
				"vmg_a_vs_hero_empire_soldier_dead_a_03"
			},
			sound_events_duration = {
				3.0907000303268,
				3.0907000303268,
				4.5402173995972
			}
		},
		vmg_vs_hero_empire_soldier_rushing_a = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "vs_mission_giver_pactsworn",
			sound_events_n = 4,
			category = "npc_talk",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"vmg_a_vs_hero_empire_soldier_rushing_a_01",
				"vmg_a_vs_hero_empire_soldier_rushing_a_02",
				"vmg_a_vs_hero_empire_soldier_rushing_a_03",
				"vmg_a_vs_hero_empire_soldier_rushing_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"vmg_a_vs_hero_empire_soldier_rushing_a_01",
				"vmg_a_vs_hero_empire_soldier_rushing_a_02",
				"vmg_a_vs_hero_empire_soldier_rushing_a_03",
				"vmg_a_vs_hero_empire_soldier_rushing_a_04"
			},
			sound_events_duration = {
				3.9689562320709,
				3.3908948898315,
				4.4896974563599,
				3.0907000303268
			}
		},
		vmg_vs_hero_witch_hunter_dead_a = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 3,
			database = "vs_mission_giver_pactsworn",
			sound_events_n = 3,
			category = "npc_talk",
			dialogue_animations_n = 3,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"vmg_a_vs_hero_witch_hunter_dead_a_01",
				"vmg_a_vs_hero_witch_hunter_dead_a_02",
				"vmg_a_vs_hero_witch_hunter_dead_a_03"
			},
			randomize_indexes = {},
			sound_events = {
				"vmg_a_vs_hero_witch_hunter_dead_a_01",
				"vmg_a_vs_hero_witch_hunter_dead_a_02",
				"vmg_a_vs_hero_witch_hunter_dead_a_03"
			},
			sound_events_duration = {
				3.0907000303268,
				3.0907000303268,
				3.0907000303268
			}
		},
		vmg_vs_hero_witch_hunter_rushing_a = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "vs_mission_giver_pactsworn",
			sound_events_n = 4,
			category = "npc_talk",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"vmg_a_vs_hero_witch_hunter_rushing_a_01",
				"vmg_a_vs_hero_witch_hunter_rushing_a_02",
				"vmg_a_vs_hero_witch_hunter_rushing_a_03",
				"vmg_a_vs_hero_witch_hunter_rushing_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"vmg_a_vs_hero_witch_hunter_rushing_a_01",
				"vmg_a_vs_hero_witch_hunter_rushing_a_02",
				"vmg_a_vs_hero_witch_hunter_rushing_a_03",
				"vmg_a_vs_hero_witch_hunter_rushing_a_04"
			},
			sound_events_duration = {
				3.3666064739227,
				3.0907000303268,
				3.3932023048401,
				3.4414143562317
			}
		},
		vmg_vs_hero_wood_elf_dead_a = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 3,
			database = "vs_mission_giver_pactsworn",
			sound_events_n = 3,
			category = "npc_talk",
			dialogue_animations_n = 3,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"vmg_a_vs_hero_wood_elf_dead_a_01",
				"vmg_a_vs_hero_wood_elf_dead_a_02",
				"vmg_a_vs_hero_wood_elf_dead_a_03"
			},
			randomize_indexes = {},
			sound_events = {
				"vmg_a_vs_hero_wood_elf_dead_a_01",
				"vmg_a_vs_hero_wood_elf_dead_a_02",
				"vmg_a_vs_hero_wood_elf_dead_a_03"
			},
			sound_events_duration = {
				3.0907000303268,
				3.0907000303268,
				3.0907000303268
			}
		},
		vmg_vs_hero_wood_elf_rushing_a = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "vs_mission_giver_pactsworn",
			sound_events_n = 4,
			category = "npc_talk",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"vmg_a_vs_hero_wood_elf_rushing_a_01",
				"vmg_a_vs_hero_wood_elf_rushing_a_02",
				"vmg_a_vs_hero_wood_elf_rushing_a_03",
				"vmg_a_vs_hero_wood_elf_rushing_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"vmg_a_vs_hero_wood_elf_rushing_a_01",
				"vmg_a_vs_hero_wood_elf_rushing_a_02",
				"vmg_a_vs_hero_wood_elf_rushing_a_03",
				"vmg_a_vs_hero_wood_elf_rushing_a_04"
			},
			sound_events_duration = {
				3.1351389884949,
				3.7490663528442,
				4.1506328582764,
				3.7455039024353
			}
		},
		vmg_vs_heroes_last_man_standing_a = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 3,
			database = "vs_mission_giver_pactsworn",
			sound_events_n = 3,
			category = "npc_talk",
			dialogue_animations_n = 3,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"vmg_a_vs_heroes_last_man_standing_a_01",
				"vmg_a_vs_heroes_last_man_standing_a_02",
				"vmg_a_vs_heroes_last_man_standing_a_03"
			},
			randomize_indexes = {},
			sound_events = {
				"vmg_a_vs_heroes_last_man_standing_a_01",
				"vmg_a_vs_heroes_last_man_standing_a_02",
				"vmg_a_vs_heroes_last_man_standing_a_03"
			},
			sound_events_duration = {
				4.4560174942017,
				4.2448711395264,
				6.1743335723877
			}
		},
		vmg_vs_heroes_objective_almost_completed_a = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 5,
			database = "vs_mission_giver_pactsworn",
			category = "npc_talk",
			dialogue_animations_n = 5,
			sound_events_n = 5,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"vmg_a_vs_heroes_objective_almost_completed_a_01",
				"vmg_a_vs_heroes_objective_almost_completed_a_02",
				"vmg_a_vs_heroes_objective_almost_completed_a_03",
				"vmg_a_vs_heroes_objective_almost_completed_a_04",
				"vmg_a_vs_heroes_objective_almost_completed_a_05"
			},
			randomize_indexes = {},
			sound_distance = math.huge,
			sound_events = {
				"vmg_a_vs_heroes_objective_almost_completed_a_01",
				"vmg_a_vs_heroes_objective_almost_completed_a_02",
				"vmg_a_vs_heroes_objective_almost_completed_a_03",
				"vmg_a_vs_heroes_objective_almost_completed_a_04",
				"vmg_a_vs_heroes_objective_almost_completed_a_05"
			},
			sound_events_duration = {
				3.1276097297669,
				4.0865116119385,
				3.4948487281799,
				3.0907000303268,
				3.8076820373535
			}
		},
		vmg_vs_heroes_objective_completed_a = {
			only_allies = true,
			override_awareness = "vmg_vs_heroes_objective_completed_a_done",
			randomize_indexes_n = 0,
			face_animations_n = 5,
			database = "vs_mission_giver_pactsworn",
			category = "npc_talk",
			dialogue_animations_n = 5,
			sound_events_n = 5,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"vmg_a_vs_heroes_objective_completed_a_01",
				"vmg_a_vs_heroes_objective_completed_a_02",
				"vmg_a_vs_heroes_objective_completed_a_03",
				"vmg_a_vs_heroes_objective_completed_a_04",
				"vmg_a_vs_heroes_objective_completed_a_05"
			},
			randomize_indexes = {},
			sound_events = {
				"vmg_a_vs_heroes_objective_completed_a_01",
				"vmg_a_vs_heroes_objective_completed_a_02",
				"vmg_a_vs_heroes_objective_completed_a_03",
				"vmg_a_vs_heroes_objective_completed_a_04",
				"vmg_a_vs_heroes_objective_completed_a_05"
			},
			sound_events_duration = {
				4.9278583526611,
				5.2698378562927,
				5.6943969726563,
				8.1368284225464,
				6.1519885063171
			}
		},
		vmg_vs_heroes_objective_completed_b = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 5,
			database = "vs_mission_giver_pactsworn",
			sound_events_n = 5,
			category = "npc_talk",
			dialogue_animations_n = 5,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"vmg_a_vs_heroes_objective_completed_b_01",
				"vmg_a_vs_heroes_objective_completed_b_02",
				"vmg_a_vs_heroes_objective_completed_b_03",
				"vmg_a_vs_heroes_objective_completed_b_04",
				"vmg_a_vs_heroes_objective_completed_b_05"
			},
			randomize_indexes = {},
			sound_events = {
				"vmg_a_vs_heroes_objective_completed_b_01",
				"vmg_a_vs_heroes_objective_completed_b_02",
				"vmg_a_vs_heroes_objective_completed_b_03",
				"vmg_a_vs_heroes_objective_completed_b_04",
				"vmg_a_vs_heroes_objective_completed_b_05"
			},
			sound_events_duration = {
				3.8776323795319,
				5.015296459198,
				4.7937870025635,
				5.0084958076477,
				3.9232943058014
			}
		},
		vmg_vs_heroes_objective_reached_a = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "vs_mission_giver_pactsworn",
			sound_events_n = 8,
			category = "npc_talk",
			dialogue_animations_n = 8,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"vmg_a_vs_heroes_objective_reached_a_01",
				"vmg_a_vs_heroes_objective_reached_a_02",
				"vmg_a_vs_heroes_objective_reached_a_03",
				"vmg_a_vs_heroes_objective_reached_a_04",
				"vmg_a_vs_heroes_objective_reached_a_05",
				"vmg_a_vs_heroes_objective_reached_a_06",
				"vmg_a_vs_heroes_objective_reached_a_07",
				"vmg_a_vs_heroes_objective_reached_a_08"
			},
			randomize_indexes = {},
			sound_events = {
				"vmg_a_vs_heroes_objective_reached_a_01",
				"vmg_a_vs_heroes_objective_reached_a_02",
				"vmg_a_vs_heroes_objective_reached_a_03",
				"vmg_a_vs_heroes_objective_reached_a_04",
				"vmg_a_vs_heroes_objective_reached_a_05",
				"vmg_a_vs_heroes_objective_reached_a_06",
				"vmg_a_vs_heroes_objective_reached_a_07",
				"vmg_a_vs_heroes_objective_reached_a_08"
			},
			sound_events_duration = {
				5.2295074462891,
				5.2434129714966,
				6.4028549194336,
				3.5362813472748,
				4.2516722679138,
				4.2128109931946,
				3.8484864234924,
				4.8676233291626
			}
		},
		vmg_vs_heroes_reached_safe_room_a = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "vs_mission_giver_pactsworn",
			sound_events_n = 6,
			category = "cut_scene_interrupt_three",
			dialogue_animations_n = 6,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"vmg_a_vs_heroes_reached_safe_room_a_01",
				"vmg_a_vs_heroes_reached_safe_room_a_02",
				"vmg_a_vs_heroes_reached_safe_room_a_03",
				"vmg_a_vs_heroes_reached_safe_room_a_04",
				"vmg_a_vs_heroes_reached_safe_room_a_05",
				"vmg_a_vs_heroes_reached_safe_room_a_06"
			},
			randomize_indexes = {},
			sound_events = {
				"vmg_a_vs_heroes_reached_safe_room_a_01",
				"vmg_a_vs_heroes_reached_safe_room_a_02",
				"vmg_a_vs_heroes_reached_safe_room_a_03",
				"vmg_a_vs_heroes_reached_safe_room_a_04",
				"vmg_a_vs_heroes_reached_safe_room_a_05",
				"vmg_a_vs_heroes_reached_safe_room_a_06"
			},
			sound_events_duration = {
				5.478129863739,
				8.6326942443848,
				6.5274848937988,
				6.3774847984314,
				5.1765704154968,
				5.8585858345032
			}
		},
		vmg_vs_heroes_reached_waystone_a = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 3,
			database = "vs_mission_giver_pactsworn",
			sound_events_n = 3,
			category = "cut_scene_interrupt_three",
			dialogue_animations_n = 3,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"vmg_a_vs_heroes_reached_waystone_a_01",
				"vmg_a_vs_heroes_reached_waystone_a_02",
				"vmg_a_vs_heroes_reached_waystone_a_03"
			},
			randomize_indexes = {},
			sound_events = {
				"vmg_a_vs_heroes_reached_waystone_a_01",
				"vmg_a_vs_heroes_reached_waystone_a_02",
				"vmg_a_vs_heroes_reached_waystone_a_03"
			},
			sound_events_duration = {
				6.5149564743042,
				7.8856468200684,
				7.2414603233337
			}
		},
		vmg_vs_heroes_team_wipe_a = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "vs_mission_giver_pactsworn",
			sound_events_n = 8,
			category = "cut_scene_interrupt_three",
			dialogue_animations_n = 8,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"vmg_a_vs_heroes_team_wipe_a_01",
				"vmg_a_vs_heroes_team_wipe_a_02",
				"vmg_a_vs_heroes_team_wipe_a_03",
				"vmg_a_vs_heroes_team_wipe_a_04",
				"vmg_a_vs_heroes_team_wipe_a_05",
				"vmg_a_vs_heroes_team_wipe_a_06",
				"vmg_a_vs_heroes_team_wipe_a_07",
				"vmg_a_vs_heroes_team_wipe_a_08"
			},
			randomize_indexes = {},
			sound_events = {
				"vmg_a_vs_heroes_team_wipe_a_01",
				"vmg_a_vs_heroes_team_wipe_a_02",
				"vmg_a_vs_heroes_team_wipe_a_03",
				"vmg_a_vs_heroes_team_wipe_a_04",
				"vmg_a_vs_heroes_team_wipe_a_05",
				"vmg_a_vs_heroes_team_wipe_a_06",
				"vmg_a_vs_heroes_team_wipe_a_07",
				"vmg_a_vs_heroes_team_wipe_a_08"
			},
			sound_events_duration = {
				8.1236114501953,
				5.4314961433411,
				7.6631050109863,
				7.4786763191223,
				9.6329879760742,
				10.054633140564,
				10.800768852234,
				8.9529151916504
			}
		},
		vmg_vs_match_draw_a = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 3,
			database = "vs_mission_giver_pactsworn",
			sound_events_n = 3,
			category = "cut_scene_interrupt_three",
			dialogue_animations_n = 3,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"vmg_a_vs_match_draw_a_01",
				"vmg_a_vs_match_draw_a_02",
				"vmg_a_vs_match_draw_a_03"
			},
			randomize_indexes = {},
			sound_events = {
				"vmg_a_vs_match_draw_a_01",
				"vmg_a_vs_match_draw_a_02",
				"vmg_a_vs_match_draw_a_03"
			},
			sound_events_duration = {
				5.8158793449402,
				7.4531326293945,
				4.3964304924011
			}
		},
		vmg_vs_new_spawn_horde_a = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 5,
			database = "vs_mission_giver_pactsworn",
			sound_events_n = 5,
			category = "npc_talk",
			dialogue_animations_n = 5,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"vmg_a_vs_new_spawn_horde_a_01",
				"vmg_a_vs_new_spawn_horde_a_02",
				"vmg_a_vs_new_spawn_horde_a_03",
				"vmg_a_vs_new_spawn_horde_a_04",
				"vmg_a_vs_new_spawn_horde_a_05"
			},
			randomize_indexes = {},
			sound_events = {
				"vmg_a_vs_new_spawn_horde_a_01",
				"vmg_a_vs_new_spawn_horde_a_02",
				"vmg_a_vs_new_spawn_horde_a_03",
				"vmg_a_vs_new_spawn_horde_a_04",
				"vmg_a_vs_new_spawn_horde_a_05"
			},
			sound_events_duration = {
				4.9109778404236,
				5.0483283996582,
				7.3498873710632,
				6.5493049621582,
				4.8365345001221
			}
		},
		vmg_vs_new_spawn_monster_a = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 5,
			database = "vs_mission_giver_pactsworn",
			sound_events_n = 5,
			category = "npc_talk",
			dialogue_animations_n = 5,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"vmg_a_vs_new_spawn_monster_a_01",
				"vmg_a_vs_new_spawn_monster_a_02",
				"vmg_a_vs_new_spawn_monster_a_03",
				"vmg_a_vs_new_spawn_monster_a_04",
				"vmg_a_vs_new_spawn_monster_a_05"
			},
			randomize_indexes = {},
			sound_events = {
				"vmg_a_vs_new_spawn_monster_a_01",
				"vmg_a_vs_new_spawn_monster_a_02",
				"vmg_a_vs_new_spawn_monster_a_03",
				"vmg_a_vs_new_spawn_monster_a_04",
				"vmg_a_vs_new_spawn_monster_a_05"
			},
			sound_events_duration = {
				4.2196116447449,
				3.0907000303268,
				3.0907000303268,
				4.4887261390686,
				6.230682849884
			}
		},
		vmg_vs_pactsworn_wipe_a = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 5,
			database = "vs_mission_giver_pactsworn",
			sound_events_n = 5,
			category = "npc_talk",
			dialogue_animations_n = 5,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"vmg_a_vs_pactsworn_wipe_a_01",
				"vmg_a_vs_pactsworn_wipe_a_02",
				"vmg_a_vs_pactsworn_wipe_a_03",
				"vmg_a_vs_pactsworn_wipe_a_04",
				"vmg_a_vs_pactsworn_wipe_a_05"
			},
			randomize_indexes = {},
			sound_events = {
				"vmg_a_vs_pactsworn_wipe_a_01",
				"vmg_a_vs_pactsworn_wipe_a_02",
				"vmg_a_vs_pactsworn_wipe_a_03",
				"vmg_a_vs_pactsworn_wipe_a_04",
				"vmg_a_vs_pactsworn_wipe_a_05"
			},
			sound_events_duration = {
				4.9327158927917,
				6.7193632125855,
				5.8048887252808,
				5.8048887252808,
				6.2433123588562
			}
		},
		vmg_vs_round_start_go_a = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "vs_mission_giver_pactsworn",
			sound_events_n = 6,
			category = "npc_talk",
			dialogue_animations_n = 6,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"vmg_a_vs_round_start_go_a_01",
				"vmg_a_vs_round_start_go_a_02",
				"vmg_a_vs_round_start_go_a_03",
				"vmg_a_vs_round_start_go_a_04",
				"vmg_a_vs_round_start_go_a_05",
				"vmg_a_vs_round_start_go_a_06"
			},
			randomize_indexes = {},
			sound_events = {
				"vmg_a_vs_round_start_go_a_01",
				"vmg_a_vs_round_start_go_a_02",
				"vmg_a_vs_round_start_go_a_03",
				"vmg_a_vs_round_start_go_a_04",
				"vmg_a_vs_round_start_go_a_05",
				"vmg_a_vs_round_start_go_a_06"
			},
			sound_events_duration = {
				3.8100295066834,
				3.5243787765503,
				3.5982291698456,
				4.1700229644775,
				4.6130819320679,
				5.6759376525879
			}
		},
		vmg_vs_round_start_rant_a = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "vs_mission_giver_pactsworn",
			sound_events_n = 6,
			category = "npc_talk",
			dialogue_animations_n = 6,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"vmg_a_vs_round_start_rant_a_01",
				"vmg_a_vs_round_start_rant_a_02",
				"vmg_a_vs_round_start_rant_a_03",
				"vmg_a_vs_round_start_rant_a_04",
				"vmg_a_vs_round_start_rant_a_05",
				"vmg_a_vs_round_start_rant_a_06"
			},
			randomize_indexes = {},
			sound_events = {
				"vmg_a_vs_round_start_rant_a_01",
				"vmg_a_vs_round_start_rant_a_02",
				"vmg_a_vs_round_start_rant_a_03",
				"vmg_a_vs_round_start_rant_a_04",
				"vmg_a_vs_round_start_rant_a_05",
				"vmg_a_vs_round_start_rant_a_06"
			},
			sound_events_duration = {
				8.5326251983643,
				9.2640886306763,
				8.0429744720459,
				9.062334060669,
				8.0503625869751,
				8.2468748092651
			}
		}
	})
end
