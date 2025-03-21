return function ()
	define_rule({
		response = "nfl_morris_arena_altar",
		name = "nfl_morris_arena_altar",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"nfl_oleysa_arena_altar"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"ferry_lady"
			}
		}
	})
	define_rule({
		response = "nfl_morris_arena_scroll",
		name = "nfl_morris_arena_scroll",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"arena_scroll"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"ferry_lady"
			}
		}
	})
	define_rule({
		response = "nfl_morris_barrel_challenge",
		name = "nfl_morris_barrel_challenge",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"barrel_challenge"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"ferry_lady"
			}
		}
	})
	define_rule({
		response = "nfl_morris_cursed_chest_complete",
		name = "nfl_morris_cursed_chest_complete",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"cursed_chest_purified"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"ferry_lady"
			}
		}
	})
	define_rule({
		response = "nfl_morris_intro_curse_abundance_of_life",
		name = "nfl_morris_intro_curse_abundance_of_life",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"curse_intro"
			},
			{
				"global_context",
				"deus_current_curse",
				OP.EQ,
				"curse_abundance_of_life"
			}
		}
	})
	define_rule({
		response = "nfl_morris_intro_curse_blood_storm",
		name = "nfl_morris_intro_curse_blood_storm",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"curse_intro"
			},
			{
				"global_context",
				"deus_current_curse",
				OP.EQ,
				"curse_blood_storm"
			}
		}
	})
	define_rule({
		response = "nfl_morris_intro_curse_bolt_of_change",
		name = "nfl_morris_intro_curse_bolt_of_change",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"curse_intro"
			},
			{
				"global_context",
				"deus_current_curse",
				OP.EQ,
				"curse_bolt_of_change"
			}
		}
	})
	define_rule({
		response = "nfl_morris_intro_curse_champions",
		name = "nfl_morris_intro_curse_champions",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"curse_intro"
			},
			{
				"global_context",
				"deus_current_curse",
				OP.EQ,
				"curse_khorne_champions"
			}
		}
	})
	define_rule({
		response = "nfl_morris_intro_curse_change_of_tzeentch",
		name = "nfl_morris_intro_curse_change_of_tzeentch",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"curse_intro"
			},
			{
				"global_context",
				"deus_current_curse",
				OP.EQ,
				"curse_change_of_tzeentch"
			}
		}
	})
	define_rule({
		response = "nfl_morris_intro_curse_corrupted_flesh",
		name = "nfl_morris_intro_curse_corrupted_flesh",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"curse_intro"
			},
			{
				"global_context",
				"deus_current_curse",
				OP.EQ,
				"curse_corrupted_flesh"
			}
		}
	})
	define_rule({
		response = "nfl_morris_intro_curse_egg_of_tzeentch",
		name = "nfl_morris_intro_curse_egg_of_tzeentch",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"curse_intro"
			},
			{
				"global_context",
				"deus_current_curse",
				OP.EQ,
				"curse_egg_of_tzeentch"
			}
		}
	})
	define_rule({
		response = "nfl_morris_intro_curse_empathy",
		name = "nfl_morris_intro_curse_empathy",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"curse_intro"
			},
			{
				"global_context",
				"deus_current_curse",
				OP.EQ,
				"curse_empathy"
			}
		}
	})
	define_rule({
		response = "nfl_morris_intro_curse_greed_pinata",
		name = "nfl_morris_intro_curse_greed_pinata",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"curse_intro"
			},
			{
				"global_context",
				"deus_current_curse",
				OP.EQ,
				"curse_greed_pinata"
			}
		}
	})
	define_rule({
		response = "nfl_morris_intro_curse_miasma",
		name = "nfl_morris_intro_curse_miasma",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"curse_intro"
			},
			{
				"global_context",
				"deus_current_curse",
				OP.EQ,
				"curse_rotten_miasma"
			}
		}
	})
	define_rule({
		response = "nfl_morris_intro_curse_skulking_sorcerer",
		name = "nfl_morris_intro_curse_skulking_sorcerer",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"curse_intro"
			},
			{
				"global_context",
				"deus_current_curse",
				OP.EQ,
				"curse_skulking_sorcerer"
			}
		}
	})
	define_rule({
		response = "nfl_morris_intro_curse_skulls_of_fury",
		name = "nfl_morris_intro_curse_skulls_of_fury",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"curse_intro"
			},
			{
				"global_context",
				"deus_current_curse",
				OP.EQ,
				"curse_skulls_of_fury"
			}
		}
	})
	define_rule({
		response = "nfl_morris_intro_no_curse",
		name = "nfl_morris_intro_no_curse",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"no_curse_intro"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"ferry_lady"
			}
		}
	})
	define_rule({
		response = "nfl_morris_ritual_challenge",
		name = "nfl_morris_ritual_challenge",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"ritual_challenge"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"ferry_lady"
			}
		}
	})
	define_rule({
		response = "nfl_morris_ship_challenge",
		name = "nfl_morris_ship_challenge",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"ship_challenge"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"ferry_lady"
			}
		}
	})
	define_rule({
		response = "nfl_morris_survival_challenge",
		name = "nfl_morris_survival_challenge",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"survival_challenge"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"ferry_lady"
			}
		}
	})
	define_rule({
		response = "nfl_morris_winch_challenge",
		name = "nfl_morris_winch_challenge",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"winch_challenge"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"ferry_lady"
			}
		}
	})
	define_rule({
		response = "ngp_morris_arena_complete",
		name = "ngp_morris_arena_complete",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"morris_arena_complete"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"player_gods"
			}
		}
	})
	define_rule({
		response = "ngp_morris_arena_intro",
		name = "ngp_morris_arena_intro",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"morris_arena_intro"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"player_gods"
			}
		}
	})
	define_rule({
		response = "ngp_morris_final_arena_complete",
		name = "ngp_morris_final_arena_complete",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"morris_final_arena_complete"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"player_gods"
			}
		}
	})
	define_rule({
		response = "ngp_morris_final_arena_intro",
		name = "ngp_morris_final_arena_intro",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"morris_final_arena_intro"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"player_gods"
			}
		}
	})
	define_rule({
		response = "pbw_arena_citadel_continue",
		name = "pbw_arena_citadel_continue",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"arena_citadel_continue"
			},
			{
				"user_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			}
		}
	})
	define_rule({
		response = "pbw_arena_citadel_final",
		name = "pbw_arena_citadel_final",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"arena_citadel_final"
			},
			{
				"user_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			}
		}
	})
	define_rule({
		response = "pbw_arena_citadel_start",
		name = "pbw_arena_citadel_start",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"query_context",
				"dialogue_name",
				OP.EQ,
				"ngp_morris_final_arena_intro"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			}
		}
	})
	define_rule({
		response = "pbw_arena_ice_continue",
		name = "pbw_arena_ice_continue",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"arena_ice_continue"
			},
			{
				"user_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			}
		}
	})
	define_rule({
		response = "pbw_bay_ship_challenge_cross",
		name = "pbw_bay_ship_challenge_cross",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"bay_challenge_cross"
			},
			{
				"user_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			}
		}
	})
	define_rule({
		response = "pbw_bay_ship_challenge_response",
		name = "pbw_bay_ship_challenge_response",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"query_context",
				"dialogue_name",
				OP.EQ,
				"nfl_morris_ship_challenge"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			}
		}
	})
	define_rule({
		response = "pbw_gameplay_blessing_grimnir_killed",
		name = "pbw_gameplay_blessing_grimnir_killed",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"blessing_grimnir_monster_killed"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			}
		}
	})
	define_rule({
		response = "pbw_gameplay_blessing_grimnir_spotted",
		name = "pbw_gameplay_blessing_grimnir_spotted",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"blessing_grimnir_monster_spotted"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pbw_gameplay_collecting_a_faith_coin",
		response = "pbw_gameplay_collecting_a_faith_coin",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"on_pickup"
			},
			{
				"query_context",
				"pickup_name",
				OP.EQ,
				"deus_soft_currency"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_pilgrims_coins",
				OP.TIMEDIFF,
				OP.GT,
				40
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pilgrims_coins",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pbw_gameplay_curse_damage_taken",
		response = "pbw_gameplay_curse_damage_taken",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"curse_damage_taken"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_last_curse_damage",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_last_curse_damage",
				OP.TIMESET
			},
			{
				"faction_memory",
				"time_since_taking_heavy_damage",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pbw_gameplay_curse_killed_marked_enemy",
		response = "pbw_gameplay_curse_killed_marked_enemy",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"curse_killed_marked_enemy"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_killed_marked_enemy",
				OP.TIMEDIFF,
				OP.GT,
				20
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_killed_marked_enemy",
				OP.TIMESET
			}
		}
	})
	define_rule({
		response = "pbw_gameplay_curse_move_on",
		name = "pbw_gameplay_curse_move_on",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"curse_move_on"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pbw_gameplay_curse_negative_effect_happened",
		response = "pbw_gameplay_curse_negative_effect_happened",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"curse_negative_effect_happened"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_last_curse_positive_effect",
				OP.TIMEDIFF,
				OP.GT,
				20
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_last_curse_positive_effect",
				OP.TIMESET
			}
		}
	})
	define_rule({
		response = "pbw_gameplay_curse_objective_achieved",
		name = "pbw_gameplay_curse_objective_achieved",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"curse_objective_achieved"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pbw_gameplay_curse_positive_effect_happened",
		response = "pbw_gameplay_curse_positive_effect_happened",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"curse_positive_effect_happened"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_last_curse_positive_effect",
				OP.TIMEDIFF,
				OP.GT,
				20
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_last_curse_positive_effect",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pbw_gameplay_curse_see_danger",
		response = "pbw_gameplay_curse_see_danger",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"curse_danger"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_spotting_curse_danger",
				OP.TIMEDIFF,
				OP.GT,
				60
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_spotting_curse_danger",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pbw_gameplay_curse_see_danger_event",
		response = "pbw_gameplay_curse_see_danger_event",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"curse_danger_spotted"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_spotting_curse_danger",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_spotting_curse_danger",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pbw_gameplay_curse_see_objective",
		response = "pbw_gameplay_curse_see_objective",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"curse_see_objective"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_spotting_curse_objective",
				OP.TIMEDIFF,
				OP.GT,
				90
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_spotting_curse_objective",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pbw_gameplay_curse_see_objective_event",
		response = "pbw_gameplay_curse_see_objective_event",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"curse_see_objective"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_spotting_curse_objective",
				OP.TIMEDIFF,
				OP.GT,
				15
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_spotting_curse_objective",
				OP.TIMESET
			}
		}
	})
	define_rule({
		response = "pbw_gameplay_curse_very_negative_effect_happened",
		name = "pbw_gameplay_curse_very_negative_effect_happened",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"curse_very_negative_effect_happened"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pbw_gameplay_curse_very_positive_effect_happened",
		response = "pbw_gameplay_curse_very_positive_effect_happened",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"curse_very_positive_effect_happened"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_curse_very_positive_effect_happened",
				OP.TIMEDIFF,
				OP.GT,
				30
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_curse_very_positive_effect_happened",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pbw_gameplay_cursed_chest",
		response = "pbw_gameplay_cursed_chest",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"deus_cursed_chest"
			},
			{
				"query_context",
				"distance",
				OP.LT,
				15
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_cursed_chest",
				OP.TIMEDIFF,
				OP.GT,
				240
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_cursed_chest",
				OP.TIMESET
			}
		}
	})
	define_rule({
		response = "pbw_gameplay_cursed_chest_activated",
		name = "pbw_gameplay_cursed_chest_activated",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"deus_cursed_chest_activated"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pbw_gameplay_cursed_chest_ping",
		response = "pbw_gameplay_cursed_chest_ping",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"deus_cursed_chest"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_cursed_chest",
				OP.TIMEDIFF,
				OP.GT,
				30
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_cursed_chest",
				OP.TIMESET
			}
		}
	})
	define_rule({
		response = "pbw_gameplay_isha_blessing",
		name = "pbw_gameplay_isha_blessing",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"blessing_isha_resurrected"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			}
		}
	})
	define_rule({
		response = "pbw_gameplay_orb_of_morgrim",
		name = "pbw_gameplay_orb_of_morgrim",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"on_holy_grenade"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			}
		}
	})
	define_rule({
		response = "pbw_gameplay_rally_flag",
		name = "pbw_gameplay_rally_flag",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"blessing_rally_flag_placed"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pbw_gameplay_seeing_a_faith_coin",
		response = "pbw_gameplay_seeing_a_faith_coin",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"deus_pilgrims_coins"
			},
			{
				"query_context",
				"distance",
				OP.GT,
				7
			},
			{
				"query_context",
				"distance",
				OP.LT,
				12
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_pilgrims_coins",
				OP.TIMEDIFF,
				OP.GT,
				50
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pilgrims_coins",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pbw_gameplay_using_a_weapon_shrine",
		response = "pbw_gameplay_using_a_weapon_shrine",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"deus_using_a_weapon_shrine"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_using_a_weapon_shrine",
				OP.TIMEDIFF,
				OP.GT,
				40
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_using_a_weapon_shrine",
				OP.TIMESET
			}
		}
	})
	define_rule({
		response = "pbw_gorge_event_start",
		name = "pbw_gorge_event_start",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"query_context",
				"dialogue_name",
				OP.EQ,
				"nfl_morris_barrel_challenge"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			}
		}
	})
	define_rule({
		response = "pbw_mines_event_start",
		name = "pbw_mines_event_start",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"mines_start"
			},
			{
				"user_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			}
		}
	})
	define_rule({
		response = "pbw_morris_arena_survive_a",
		name = "pbw_morris_arena_survive_a",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"query_context",
				"dialogue_name",
				OP.EQ,
				"nfl_morris_winch_challenge"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			}
		}
	})
	define_rule({
		response = "pbw_morris_arena_survive_b",
		name = "pbw_morris_arena_survive_b",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"query_context",
				"dialogue_name",
				OP.EQ,
				"nfl_morris_survival_challenge"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			}
		}
	})
	define_rule({
		response = "pbw_morris_citadel_altar",
		name = "pbw_morris_citadel_altar",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"run_citadel_complete"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pbw_morris_curse_tzeentch_egg",
		response = "pbw_morris_curse_tzeentch_egg",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"curse_tzeentch_egg"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_spotting_curse_objective",
				OP.TIMEDIFF,
				OP.GT,
				90
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_spotting_curse_objective",
				OP.TIMESET
			}
		}
	})
	define_rule({
		response = "pbw_morris_foreboding",
		name = "pbw_morris_foreboding",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"foreboding"
			},
			{
				"user_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			}
		}
	})
	define_rule({
		response = "pbw_morris_ritual_start",
		name = "pbw_morris_ritual_start",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"query_context",
				"dialogue_name",
				OP.EQ,
				"nfl_morris_ritual_challenge"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			}
		}
	})
	define_rule({
		response = "pbw_morris_run_complete",
		name = "pbw_morris_run_complete",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"run_complete"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pbw_skulking_sorcerer_spotted",
		response = "pbw_skulking_sorcerer_spotted",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"chaos_mutator_sorcerer"
			},
			{
				"query_context",
				"distance",
				OP.GTEQ,
				5
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_spotting_curse_danger",
				OP.TIMEDIFF,
				OP.GT,
				60
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_spotting_curse_danger",
				OP.TIMESET
			}
		}
	})
	define_rule({
		response = "pdr_arena_citadel_continue",
		name = "pdr_arena_citadel_continue",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"arena_citadel_continue"
			},
			{
				"user_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			}
		}
	})
	define_rule({
		response = "pdr_arena_citadel_final",
		name = "pdr_arena_citadel_final",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"arena_citadel_final"
			},
			{
				"user_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			}
		}
	})
	define_rule({
		response = "pdr_arena_citadel_start",
		name = "pdr_arena_citadel_start",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"query_context",
				"dialogue_name",
				OP.EQ,
				"ngp_morris_final_arena_intro"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			}
		}
	})
	define_rule({
		response = "pdr_arena_ice_continue",
		name = "pdr_arena_ice_continue",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"arena_ice_continue"
			},
			{
				"user_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			}
		}
	})
	define_rule({
		response = "pdr_bay_ship_challenge_cross",
		name = "pdr_bay_ship_challenge_cross",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"bay_challenge_cross"
			},
			{
				"user_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			}
		}
	})
	define_rule({
		response = "pdr_bay_ship_challenge_response",
		name = "pdr_bay_ship_challenge_response",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"query_context",
				"dialogue_name",
				OP.EQ,
				"nfl_morris_ship_challenge"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			}
		}
	})
	define_rule({
		response = "pdr_gameplay_blessing_grimnir_killed",
		name = "pdr_gameplay_blessing_grimnir_killed",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"blessing_grimnir_monster_killed"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			}
		}
	})
	define_rule({
		response = "pdr_gameplay_blessing_grimnir_spotted",
		name = "pdr_gameplay_blessing_grimnir_spotted",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"blessing_grimnir_monster_spotted"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_collecting_a_faith_coin",
		response = "pdr_gameplay_collecting_a_faith_coin",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"on_pickup"
			},
			{
				"query_context",
				"pickup_name",
				OP.EQ,
				"deus_soft_currency"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_pilgrims_coins",
				OP.TIMEDIFF,
				OP.GT,
				40
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pilgrims_coins",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_curse_damage_taken",
		response = "pdr_gameplay_curse_damage_taken",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"curse_damage_taken"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"time_since_last_curse_damage",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_last_curse_damage",
				OP.TIMESET
			},
			{
				"faction_memory",
				"time_since_taking_heavy_damage",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_curse_killed_marked_enemy",
		response = "pdr_gameplay_curse_killed_marked_enemy",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"curse_killed_marked_enemy"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"time_since_killed_marked_enemy",
				OP.TIMEDIFF,
				OP.GT,
				20
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_killed_marked_enemy",
				OP.TIMESET
			}
		}
	})
	define_rule({
		response = "pdr_gameplay_curse_move_on",
		name = "pdr_gameplay_curse_move_on",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"curse_move_on"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_curse_negative_effect_happened",
		response = "pdr_gameplay_curse_negative_effect_happened",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"curse_negative_effect_happened"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"time_since_last_curse_positive_effect",
				OP.TIMEDIFF,
				OP.GT,
				20
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_last_curse_positive_effect",
				OP.TIMESET
			}
		}
	})
	define_rule({
		response = "pdr_gameplay_curse_objective_achieved",
		name = "pdr_gameplay_curse_objective_achieved",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"curse_objective_achieved"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_curse_positive_effect_happened",
		response = "pdr_gameplay_curse_positive_effect_happened",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"curse_positive_effect_happened"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"time_since_last_curse_positive_effect",
				OP.TIMEDIFF,
				OP.GT,
				20
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_last_curse_positive_effect",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_curse_see_danger",
		response = "pdr_gameplay_curse_see_danger",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"curse_danger"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"time_since_spotting_curse_danger",
				OP.TIMEDIFF,
				OP.GT,
				60
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_spotting_curse_danger",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_curse_see_danger_event",
		response = "pdr_gameplay_curse_see_danger_event",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"curse_danger_spotted"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"time_since_spotting_curse_danger",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_spotting_curse_danger",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_curse_see_objective",
		response = "pdr_gameplay_curse_see_objective",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"curse_see_objective"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"time_since_spotting_curse_objective",
				OP.TIMEDIFF,
				OP.GT,
				90
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_spotting_curse_objective",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_curse_see_objective_event",
		response = "pdr_gameplay_curse_see_objective_event",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"curse_see_objective"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"time_since_spotting_curse_objective",
				OP.TIMEDIFF,
				OP.GT,
				15
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_spotting_curse_objective",
				OP.TIMESET
			}
		}
	})
	define_rule({
		response = "pdr_gameplay_curse_very_negative_effect_happened",
		name = "pdr_gameplay_curse_very_negative_effect_happened",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"curse_very_negative_effect_happened"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_curse_very_positive_effect_happened",
		response = "pdr_gameplay_curse_very_positive_effect_happened",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"curse_very_positive_effect_happened"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"time_since_curse_very_positive_effect_happened",
				OP.TIMEDIFF,
				OP.GT,
				30
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_curse_very_positive_effect_happened",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_cursed_chest",
		response = "pdr_gameplay_cursed_chest",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"deus_cursed_chest"
			},
			{
				"query_context",
				"distance",
				OP.LT,
				15
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_cursed_chest",
				OP.TIMEDIFF,
				OP.GT,
				240
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_cursed_chest",
				OP.TIMESET
			}
		}
	})
	define_rule({
		response = "pdr_gameplay_cursed_chest_activated",
		name = "pdr_gameplay_cursed_chest_activated",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"deus_cursed_chest_activated"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_cursed_chest_ping",
		response = "pdr_gameplay_cursed_chest_ping",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"deus_cursed_chest"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_cursed_chest",
				OP.TIMEDIFF,
				OP.GT,
				30
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_cursed_chest",
				OP.TIMESET
			}
		}
	})
	define_rule({
		response = "pdr_gameplay_isha_blessing",
		name = "pdr_gameplay_isha_blessing",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"blessing_isha_resurrected"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			}
		}
	})
	define_rule({
		response = "pdr_gameplay_orb_of_morgrim",
		name = "pdr_gameplay_orb_of_morgrim",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"on_holy_grenade"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			}
		}
	})
	define_rule({
		response = "pdr_gameplay_rally_flag",
		name = "pdr_gameplay_rally_flag",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"blessing_rally_flag_placed"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_seeing_a_faith_coin",
		response = "pdr_gameplay_seeing_a_faith_coin",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"deus_pilgrims_coins"
			},
			{
				"query_context",
				"distance",
				OP.GT,
				7
			},
			{
				"query_context",
				"distance",
				OP.LT,
				12
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_pilgrims_coins",
				OP.TIMEDIFF,
				OP.GT,
				50
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pilgrims_coins",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_using_a_weapon_shrine",
		response = "pdr_gameplay_using_a_weapon_shrine",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"deus_using_a_weapon_shrine"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"time_since_using_a_weapon_shrine",
				OP.TIMEDIFF,
				OP.GT,
				40
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_using_a_weapon_shrine",
				OP.TIMESET
			}
		}
	})
	define_rule({
		response = "pdr_gorge_event_start",
		name = "pdr_gorge_event_start",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"query_context",
				"dialogue_name",
				OP.EQ,
				"nfl_morris_barrel_challenge"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			}
		}
	})
	define_rule({
		response = "pdr_mines_event_start",
		name = "pdr_mines_event_start",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"mines_start"
			},
			{
				"user_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			}
		}
	})
	define_rule({
		response = "pdr_morris_arena_survive_a",
		name = "pdr_morris_arena_survive_a",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"query_context",
				"dialogue_name",
				OP.EQ,
				"nfl_morris_winch_challenge"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			}
		}
	})
	define_rule({
		response = "pdr_morris_arena_survive_b",
		name = "pdr_morris_arena_survive_b",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"query_context",
				"dialogue_name",
				OP.EQ,
				"nfl_morris_survival_challenge"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			}
		}
	})
	define_rule({
		response = "pdr_morris_citadel_altar",
		name = "pdr_morris_citadel_altar",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"run_citadel_complete"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_morris_curse_tzeentch_egg",
		response = "pdr_morris_curse_tzeentch_egg",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"curse_tzeentch_egg"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"time_since_spotting_curse_objective",
				OP.TIMEDIFF,
				OP.GT,
				90
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_spotting_curse_objective",
				OP.TIMESET
			}
		}
	})
	define_rule({
		response = "pdr_morris_foreboding",
		name = "pdr_morris_foreboding",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"foreboding"
			},
			{
				"user_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			}
		}
	})
	define_rule({
		response = "pdr_morris_ritual_start",
		name = "pdr_morris_ritual_start",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"query_context",
				"dialogue_name",
				OP.EQ,
				"nfl_morris_ritual_challenge"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			}
		}
	})
	define_rule({
		response = "pdr_morris_run_complete",
		name = "pdr_morris_run_complete",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"run_complete"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_skulking_sorcerer_spotted",
		response = "pdr_skulking_sorcerer_spotted",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"chaos_mutator_sorcerer"
			},
			{
				"query_context",
				"distance",
				OP.GTEQ,
				5
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"time_since_spotting_curse_danger",
				OP.TIMEDIFF,
				OP.GT,
				60
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_spotting_curse_danger",
				OP.TIMESET
			}
		}
	})
	define_rule({
		response = "pes_arena_citadel_continue",
		name = "pes_arena_citadel_continue",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"arena_citadel_continue"
			},
			{
				"user_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			}
		}
	})
	define_rule({
		response = "pes_arena_citadel_final",
		name = "pes_arena_citadel_final",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"arena_citadel_final"
			},
			{
				"user_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			}
		}
	})
	define_rule({
		response = "pes_arena_citadel_start",
		name = "pes_arena_citadel_start",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"query_context",
				"dialogue_name",
				OP.EQ,
				"ngp_morris_final_arena_intro"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			}
		}
	})
	define_rule({
		response = "pes_arena_ice_continue",
		name = "pes_arena_ice_continue",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"arena_ice_continue"
			},
			{
				"user_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			}
		}
	})
	define_rule({
		response = "pes_bay_ship_challenge_cross",
		name = "pes_bay_ship_challenge_cross",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"bay_challenge_cross"
			},
			{
				"user_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			}
		}
	})
	define_rule({
		response = "pes_bay_ship_challenge_response",
		name = "pes_bay_ship_challenge_response",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"query_context",
				"dialogue_name",
				OP.EQ,
				"nfl_morris_ship_challenge"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			}
		}
	})
	define_rule({
		response = "pes_gameplay_blessing_grimnir_killed",
		name = "pes_gameplay_blessing_grimnir_killed",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"blessing_grimnir_monster_killed"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			}
		}
	})
	define_rule({
		response = "pes_gameplay_blessing_grimnir_spotted",
		name = "pes_gameplay_blessing_grimnir_spotted",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"blessing_grimnir_monster_spotted"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pes_gameplay_collecting_a_faith_coin",
		response = "pes_gameplay_collecting_a_faith_coin",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"on_pickup"
			},
			{
				"query_context",
				"pickup_name",
				OP.EQ,
				"deus_soft_currency"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_pilgrims_coins",
				OP.TIMEDIFF,
				OP.GT,
				40
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pilgrims_coins",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pes_gameplay_curse_damage_taken",
		response = "pes_gameplay_curse_damage_taken",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"curse_damage_taken"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"faction_memory",
				"time_since_last_curse_damage",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_last_curse_damage",
				OP.TIMESET
			},
			{
				"faction_memory",
				"time_since_taking_heavy_damage",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pes_gameplay_curse_killed_marked_enemy",
		response = "pes_gameplay_curse_killed_marked_enemy",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"curse_killed_marked_enemy"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"faction_memory",
				"time_since_killed_marked_enemy",
				OP.TIMEDIFF,
				OP.GT,
				20
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_killed_marked_enemy",
				OP.TIMESET
			}
		}
	})
	define_rule({
		response = "pes_gameplay_curse_move_on",
		name = "pes_gameplay_curse_move_on",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"curse_move_on"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pes_gameplay_curse_negative_effect_happened",
		response = "pes_gameplay_curse_negative_effect_happened",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"curse_negative_effect_happened"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"faction_memory",
				"time_since_last_curse_positive_effect",
				OP.TIMEDIFF,
				OP.GT,
				20
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_last_curse_positive_effect",
				OP.TIMESET
			}
		}
	})
	define_rule({
		response = "pes_gameplay_curse_objective_achieved",
		name = "pes_gameplay_curse_objective_achieved",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"curse_objective_achieved"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pes_gameplay_curse_positive_effect_happened",
		response = "pes_gameplay_curse_positive_effect_happened",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"curse_positive_effect_happened"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"faction_memory",
				"time_since_last_curse_positive_effect",
				OP.TIMEDIFF,
				OP.GT,
				20
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_last_curse_positive_effect",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pes_gameplay_curse_see_danger",
		response = "pes_gameplay_curse_see_danger",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"curse_danger"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"faction_memory",
				"time_since_spotting_curse_danger",
				OP.TIMEDIFF,
				OP.GT,
				60
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_spotting_curse_danger",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pes_gameplay_curse_see_danger_event",
		response = "pes_gameplay_curse_see_danger_event",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"curse_danger_spotted"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"faction_memory",
				"time_since_spotting_curse_danger",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_spotting_curse_danger",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pes_gameplay_curse_see_objective",
		response = "pes_gameplay_curse_see_objective",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"curse_see_objective"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"faction_memory",
				"time_since_spotting_curse_objective",
				OP.TIMEDIFF,
				OP.GT,
				90
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_spotting_curse_objective",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pes_gameplay_curse_see_objective_event",
		response = "pes_gameplay_curse_see_objective_event",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"curse_see_objective"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"faction_memory",
				"time_since_spotting_curse_objective",
				OP.TIMEDIFF,
				OP.GT,
				15
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_spotting_curse_objective",
				OP.TIMESET
			}
		}
	})
	define_rule({
		response = "pes_gameplay_curse_very_negative_effect_happened",
		name = "pes_gameplay_curse_very_negative_effect_happened",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"curse_very_negative_effect_happened"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pes_gameplay_curse_very_positive_effect_happened",
		response = "pes_gameplay_curse_very_positive_effect_happened",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"curse_very_positive_effect_happened"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"faction_memory",
				"time_since_curse_very_positive_effect_happened",
				OP.TIMEDIFF,
				OP.GT,
				30
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_curse_very_positive_effect_happened",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pes_gameplay_cursed_chest",
		response = "pes_gameplay_cursed_chest",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"deus_cursed_chest"
			},
			{
				"query_context",
				"distance",
				OP.LT,
				15
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_cursed_chest",
				OP.TIMEDIFF,
				OP.GT,
				240
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_cursed_chest",
				OP.TIMESET
			}
		}
	})
	define_rule({
		response = "pes_gameplay_cursed_chest_activated",
		name = "pes_gameplay_cursed_chest_activated",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"deus_cursed_chest_activated"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pes_gameplay_cursed_chest_ping",
		response = "pes_gameplay_cursed_chest_ping",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"deus_cursed_chest"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_cursed_chest",
				OP.TIMEDIFF,
				OP.GT,
				30
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_cursed_chest",
				OP.TIMESET
			}
		}
	})
	define_rule({
		response = "pes_gameplay_isha_blessing",
		name = "pes_gameplay_isha_blessing",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"blessing_isha_resurrected"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			}
		}
	})
	define_rule({
		response = "pes_gameplay_orb_of_morgrim",
		name = "pes_gameplay_orb_of_morgrim",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"on_holy_grenade"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			}
		}
	})
	define_rule({
		response = "pes_gameplay_rally_flag",
		name = "pes_gameplay_rally_flag",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"blessing_rally_flag_placed"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pes_gameplay_seeing_a_faith_coin",
		response = "pes_gameplay_seeing_a_faith_coin",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"deus_pilgrims_coins"
			},
			{
				"query_context",
				"distance",
				OP.GT,
				7
			},
			{
				"query_context",
				"distance",
				OP.LT,
				12
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_pilgrims_coins",
				OP.TIMEDIFF,
				OP.GT,
				50
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pilgrims_coins",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pes_gameplay_using_a_weapon_shrine",
		response = "pes_gameplay_using_a_weapon_shrine",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"deus_using_a_weapon_shrine"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"faction_memory",
				"time_since_using_a_weapon_shrine",
				OP.TIMEDIFF,
				OP.GT,
				40
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_using_a_weapon_shrine",
				OP.TIMESET
			}
		}
	})
	define_rule({
		response = "pes_gorge_event_start",
		name = "pes_gorge_event_start",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"query_context",
				"dialogue_name",
				OP.EQ,
				"nfl_morris_barrel_challenge"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			}
		}
	})
	define_rule({
		response = "pes_mines_event_start",
		name = "pes_mines_event_start",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"mines_start"
			},
			{
				"user_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			}
		}
	})
	define_rule({
		response = "pes_morris_arena_survive_a",
		name = "pes_morris_arena_survive_a",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"query_context",
				"dialogue_name",
				OP.EQ,
				"nfl_morris_winch_challenge"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			}
		}
	})
	define_rule({
		response = "pes_morris_arena_survive_b",
		name = "pes_morris_arena_survive_b",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"query_context",
				"dialogue_name",
				OP.EQ,
				"nfl_morris_survival_challenge"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			}
		}
	})
	define_rule({
		response = "pes_morris_citadel_altar",
		name = "pes_morris_citadel_altar",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"run_citadel_complete"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pes_morris_curse_tzeentch_egg",
		response = "pes_morris_curse_tzeentch_egg",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"curse_tzeentch_egg"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"faction_memory",
				"time_since_spotting_curse_objective",
				OP.TIMEDIFF,
				OP.GT,
				90
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_spotting_curse_objective",
				OP.TIMESET
			}
		}
	})
	define_rule({
		response = "pes_morris_foreboding",
		name = "pes_morris_foreboding",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"foreboding"
			},
			{
				"user_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			}
		}
	})
	define_rule({
		response = "pes_morris_ritual_start",
		name = "pes_morris_ritual_start",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"query_context",
				"dialogue_name",
				OP.EQ,
				"nfl_morris_ritual_challenge"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			}
		}
	})
	define_rule({
		response = "pes_morris_run_complete",
		name = "pes_morris_run_complete",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"run_complete"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pes_skulking_sorcerer_spotted",
		response = "pes_skulking_sorcerer_spotted",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"chaos_mutator_sorcerer"
			},
			{
				"query_context",
				"distance",
				OP.GTEQ,
				5
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"faction_memory",
				"time_since_spotting_curse_danger",
				OP.TIMEDIFF,
				OP.GT,
				60
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_spotting_curse_danger",
				OP.TIMESET
			}
		}
	})
	define_rule({
		response = "pwe_arena_citadel_continue",
		name = "pwe_arena_citadel_continue",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"arena_citadel_continue"
			},
			{
				"user_context",
				"source_name",
				OP.EQ,
				"wood_elf"
			}
		}
	})
	define_rule({
		response = "pwe_arena_citadel_final",
		name = "pwe_arena_citadel_final",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"arena_citadel_final"
			},
			{
				"user_context",
				"source_name",
				OP.EQ,
				"wood_elf"
			}
		}
	})
	define_rule({
		response = "pwe_arena_citadel_start",
		name = "pwe_arena_citadel_start",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"query_context",
				"dialogue_name",
				OP.EQ,
				"ngp_morris_final_arena_intro"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			}
		}
	})
	define_rule({
		response = "pwe_arena_ice_continue",
		name = "pwe_arena_ice_continue",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"arena_ice_continue"
			},
			{
				"user_context",
				"source_name",
				OP.EQ,
				"wood_elf"
			}
		}
	})
	define_rule({
		response = "pwe_bay_ship_challenge_cross",
		name = "pwe_bay_ship_challenge_cross",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"bay_challenge_cross"
			},
			{
				"user_context",
				"source_name",
				OP.EQ,
				"wood_elf"
			}
		}
	})
	define_rule({
		response = "pwe_bay_ship_challenge_response",
		name = "pwe_bay_ship_challenge_response",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"query_context",
				"dialogue_name",
				OP.EQ,
				"nfl_morris_ship_challenge"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			}
		}
	})
	define_rule({
		response = "pwe_gameplay_blessing_grimnir_killed",
		name = "pwe_gameplay_blessing_grimnir_killed",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"blessing_grimnir_monster_killed"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			}
		}
	})
	define_rule({
		response = "pwe_gameplay_blessing_grimnir_spotted",
		name = "pwe_gameplay_blessing_grimnir_spotted",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"blessing_grimnir_monster_spotted"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwe_gameplay_collecting_a_faith_coin",
		response = "pwe_gameplay_collecting_a_faith_coin",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"on_pickup"
			},
			{
				"query_context",
				"pickup_name",
				OP.EQ,
				"deus_soft_currency"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_pilgrims_coins",
				OP.TIMEDIFF,
				OP.GT,
				40
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pilgrims_coins",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwe_gameplay_curse_damage_taken",
		response = "pwe_gameplay_curse_damage_taken",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"curse_damage_taken"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			},
			{
				"faction_memory",
				"time_since_last_curse_damage",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_last_curse_damage",
				OP.TIMESET
			},
			{
				"faction_memory",
				"time_since_taking_heavy_damage",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwe_gameplay_curse_killed_marked_enemy",
		response = "pwe_gameplay_curse_killed_marked_enemy",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"curse_killed_marked_enemy"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			},
			{
				"faction_memory",
				"time_since_killed_marked_enemy",
				OP.TIMEDIFF,
				OP.GT,
				20
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_killed_marked_enemy",
				OP.TIMESET
			}
		}
	})
	define_rule({
		response = "pwe_gameplay_curse_move_on",
		name = "pwe_gameplay_curse_move_on",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"curse_move_on"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwe_gameplay_curse_negative_effect_happened",
		response = "pwe_gameplay_curse_negative_effect_happened",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"curse_negative_effect_happened"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			},
			{
				"faction_memory",
				"time_since_last_curse_positive_effect",
				OP.TIMEDIFF,
				OP.GT,
				20
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_last_curse_positive_effect",
				OP.TIMESET
			}
		}
	})
	define_rule({
		response = "pwe_gameplay_curse_objective_achieved",
		name = "pwe_gameplay_curse_objective_achieved",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"curse_objective_achieved"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwe_gameplay_curse_positive_effect_happened",
		response = "pwe_gameplay_curse_positive_effect_happened",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"curse_positive_effect_happened"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			},
			{
				"faction_memory",
				"time_since_last_curse_positive_effect",
				OP.TIMEDIFF,
				OP.GT,
				20
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_last_curse_positive_effect",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwe_gameplay_curse_see_danger",
		response = "pwe_gameplay_curse_see_danger",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"curse_danger"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			},
			{
				"faction_memory",
				"time_since_spotting_curse_danger",
				OP.TIMEDIFF,
				OP.GT,
				60
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_spotting_curse_danger",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwe_gameplay_curse_see_danger_event",
		response = "pwe_gameplay_curse_see_danger_event",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"curse_danger_spotted"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			},
			{
				"faction_memory",
				"time_since_spotting_curse_danger",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_spotting_curse_danger",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwe_gameplay_curse_see_objective",
		response = "pwe_gameplay_curse_see_objective",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"curse_see_objective"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			},
			{
				"faction_memory",
				"time_since_spotting_curse_objective",
				OP.TIMEDIFF,
				OP.GT,
				90
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_spotting_curse_objective",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwe_gameplay_curse_see_objective_event",
		response = "pwe_gameplay_curse_see_objective_event",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"curse_see_objective"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			},
			{
				"faction_memory",
				"time_since_spotting_curse_objective",
				OP.TIMEDIFF,
				OP.GT,
				15
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_spotting_curse_objective",
				OP.TIMESET
			}
		}
	})
	define_rule({
		response = "pwe_gameplay_curse_very_negative_effect_happened",
		name = "pwe_gameplay_curse_very_negative_effect_happened",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"curse_very_negative_effect_happened"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwe_gameplay_curse_very_positive_effect_happened",
		response = "pwe_gameplay_curse_very_positive_effect_happened",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"curse_very_positive_effect_happened"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			},
			{
				"faction_memory",
				"time_since_curse_very_positive_effect_happened",
				OP.TIMEDIFF,
				OP.GT,
				30
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_curse_very_positive_effect_happened",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwe_gameplay_cursed_chest",
		response = "pwe_gameplay_cursed_chest",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"deus_cursed_chest"
			},
			{
				"query_context",
				"distance",
				OP.LT,
				15
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_cursed_chest",
				OP.TIMEDIFF,
				OP.GT,
				240
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_cursed_chest",
				OP.TIMESET
			}
		}
	})
	define_rule({
		response = "pwe_gameplay_cursed_chest_activated",
		name = "pwe_gameplay_cursed_chest_activated",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"deus_cursed_chest_activated"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwe_gameplay_cursed_chest_ping",
		response = "pwe_gameplay_cursed_chest_ping",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"deus_cursed_chest"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_cursed_chest",
				OP.TIMEDIFF,
				OP.GT,
				30
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_cursed_chest",
				OP.TIMESET
			}
		}
	})
	define_rule({
		response = "pwe_gameplay_isha_blessing",
		name = "pwe_gameplay_isha_blessing",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"blessing_isha_resurrected"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			}
		}
	})
	define_rule({
		response = "pwe_gameplay_orb_of_morgrim",
		name = "pwe_gameplay_orb_of_morgrim",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"on_holy_grenade"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			}
		}
	})
	define_rule({
		response = "pwe_gameplay_rally_flag",
		name = "pwe_gameplay_rally_flag",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"blessing_rally_flag_placed"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwe_gameplay_seeing_a_faith_coin",
		response = "pwe_gameplay_seeing_a_faith_coin",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"deus_pilgrims_coins"
			},
			{
				"query_context",
				"distance",
				OP.GT,
				7
			},
			{
				"query_context",
				"distance",
				OP.LT,
				12
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_pilgrims_coins",
				OP.TIMEDIFF,
				OP.GT,
				50
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pilgrims_coins",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwe_gameplay_using_a_weapon_shrine",
		response = "pwe_gameplay_using_a_weapon_shrine",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"deus_using_a_weapon_shrine"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			},
			{
				"faction_memory",
				"time_since_using_a_weapon_shrine",
				OP.TIMEDIFF,
				OP.GT,
				40
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_using_a_weapon_shrine",
				OP.TIMESET
			}
		}
	})
	define_rule({
		response = "pwe_gorge_event_start",
		name = "pwe_gorge_event_start",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"query_context",
				"dialogue_name",
				OP.EQ,
				"nfl_morris_barrel_challenge"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			}
		}
	})
	define_rule({
		response = "pwe_mines_event_start",
		name = "pwe_mines_event_start",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"mines_start"
			},
			{
				"user_context",
				"source_name",
				OP.EQ,
				"wood_elf"
			}
		}
	})
	define_rule({
		response = "pwe_morris_arena_survive_a",
		name = "pwe_morris_arena_survive_a",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"query_context",
				"dialogue_name",
				OP.EQ,
				"nfl_morris_winch_challenge"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			}
		}
	})
	define_rule({
		response = "pwe_morris_arena_survive_b",
		name = "pwe_morris_arena_survive_b",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"query_context",
				"dialogue_name",
				OP.EQ,
				"nfl_morris_survival_challenge"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			}
		}
	})
	define_rule({
		response = "pwe_morris_citadel_altar",
		name = "pwe_morris_citadel_altar",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"run_citadel_complete"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwe_morris_curse_tzeentch_egg",
		response = "pwe_morris_curse_tzeentch_egg",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"curse_tzeentch_egg"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			},
			{
				"faction_memory",
				"time_since_spotting_curse_objective",
				OP.TIMEDIFF,
				OP.GT,
				90
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_spotting_curse_objective",
				OP.TIMESET
			}
		}
	})
	define_rule({
		response = "pwe_morris_foreboding",
		name = "pwe_morris_foreboding",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"foreboding"
			},
			{
				"user_context",
				"source_name",
				OP.EQ,
				"wood_elf"
			}
		}
	})
	define_rule({
		response = "pwe_morris_ritual_start",
		name = "pwe_morris_ritual_start",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"query_context",
				"dialogue_name",
				OP.EQ,
				"nfl_morris_ritual_challenge"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			}
		}
	})
	define_rule({
		response = "pwe_morris_run_complete",
		name = "pwe_morris_run_complete",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"run_complete"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwe_skulking_sorcerer_spotted",
		response = "pwe_skulking_sorcerer_spotted",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"chaos_mutator_sorcerer"
			},
			{
				"query_context",
				"distance",
				OP.GTEQ,
				5
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			},
			{
				"faction_memory",
				"time_since_spotting_curse_danger",
				OP.TIMEDIFF,
				OP.GT,
				60
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_spotting_curse_danger",
				OP.TIMESET
			}
		}
	})
	define_rule({
		response = "pwh_arena_citadel_continue",
		name = "pwh_arena_citadel_continue",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"arena_citadel_continue"
			},
			{
				"user_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			}
		}
	})
	define_rule({
		response = "pwh_arena_citadel_final",
		name = "pwh_arena_citadel_final",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"arena_citadel_final"
			},
			{
				"user_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			}
		}
	})
	define_rule({
		response = "pwh_arena_citadel_start",
		name = "pwh_arena_citadel_start",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"query_context",
				"dialogue_name",
				OP.EQ,
				"ngp_morris_final_arena_intro"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			}
		}
	})
	define_rule({
		response = "pwh_arena_ice_continue",
		name = "pwh_arena_ice_continue",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"arena_ice_continue"
			},
			{
				"user_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			}
		}
	})
	define_rule({
		response = "pwh_bay_ship_challenge_cross",
		name = "pwh_bay_ship_challenge_cross",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"bay_challenge_cross"
			},
			{
				"user_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			}
		}
	})
	define_rule({
		response = "pwh_bay_ship_challenge_response",
		name = "pwh_bay_ship_challenge_response",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"query_context",
				"dialogue_name",
				OP.EQ,
				"nfl_morris_ship_challenge"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			}
		}
	})
	define_rule({
		response = "pwh_gameplay_blessing_grimnir_killed",
		name = "pwh_gameplay_blessing_grimnir_killed",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"blessing_grimnir_monster_killed"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			}
		}
	})
	define_rule({
		response = "pwh_gameplay_blessing_grimnir_spotted",
		name = "pwh_gameplay_blessing_grimnir_spotted",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"blessing_grimnir_monster_spotted"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwh_gameplay_collecting_a_faith_coin",
		response = "pwh_gameplay_collecting_a_faith_coin",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"on_pickup"
			},
			{
				"query_context",
				"pickup_name",
				OP.EQ,
				"deus_soft_currency"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_pilgrims_coins",
				OP.TIMEDIFF,
				OP.GT,
				40
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pilgrims_coins",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwh_gameplay_curse_damage_taken",
		response = "pwh_gameplay_curse_damage_taken",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"curse_damage_taken"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"time_since_last_curse_damage",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_last_curse_damage",
				OP.TIMESET
			},
			{
				"faction_memory",
				"time_since_taking_heavy_damage",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwh_gameplay_curse_killed_marked_enemy",
		response = "pwh_gameplay_curse_killed_marked_enemy",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"curse_killed_marked_enemy"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"time_since_killed_marked_enemy",
				OP.TIMEDIFF,
				OP.GT,
				20
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_killed_marked_enemy",
				OP.TIMESET
			}
		}
	})
	define_rule({
		response = "pwh_gameplay_curse_move_on",
		name = "pwh_gameplay_curse_move_on",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"curse_move_on"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwh_gameplay_curse_negative_effect_happened",
		response = "pwh_gameplay_curse_negative_effect_happened",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"curse_negative_effect_happened"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"time_since_last_curse_positive_effect",
				OP.TIMEDIFF,
				OP.GT,
				20
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_last_curse_positive_effect",
				OP.TIMESET
			}
		}
	})
	define_rule({
		response = "pwh_gameplay_curse_objective_achieved",
		name = "pwh_gameplay_curse_objective_achieved",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"curse_objective_achieved"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwh_gameplay_curse_positive_effect_happened",
		response = "pwh_gameplay_curse_positive_effect_happened",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"curse_positive_effect_happened"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"time_since_last_curse_positive_effect",
				OP.TIMEDIFF,
				OP.GT,
				20
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_last_curse_positive_effect",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwh_gameplay_curse_see_danger",
		response = "pwh_gameplay_curse_see_danger",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"curse_danger"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"time_since_spotting_curse_danger",
				OP.TIMEDIFF,
				OP.GT,
				60
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_spotting_curse_danger",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwh_gameplay_curse_see_danger_event",
		response = "pwh_gameplay_curse_see_danger_event",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"curse_danger_spotted"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"time_since_spotting_curse_danger",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_spotting_curse_danger",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwh_gameplay_curse_see_objective",
		response = "pwh_gameplay_curse_see_objective",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"curse_see_objective"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"time_since_spotting_curse_objective",
				OP.TIMEDIFF,
				OP.GT,
				90
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_spotting_curse_objective",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwh_gameplay_curse_see_objective_event",
		response = "pwh_gameplay_curse_see_objective_event",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"curse_see_objective"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"time_since_spotting_curse_objective",
				OP.TIMEDIFF,
				OP.GT,
				15
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_spotting_curse_objective",
				OP.TIMESET
			}
		}
	})
	define_rule({
		response = "pwh_gameplay_curse_very_negative_effect_happened",
		name = "pwh_gameplay_curse_very_negative_effect_happened",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"curse_very_negative_effect_happened"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwh_gameplay_curse_very_positive_effect_happened",
		response = "pwh_gameplay_curse_very_positive_effect_happened",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"curse_very_positive_effect_happened"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"time_since_curse_very_positive_effect_happened",
				OP.TIMEDIFF,
				OP.GT,
				30
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_curse_very_positive_effect_happened",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwh_gameplay_cursed_chest",
		response = "pwh_gameplay_cursed_chest",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"deus_cursed_chest"
			},
			{
				"query_context",
				"distance",
				OP.LT,
				15
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_cursed_chest",
				OP.TIMEDIFF,
				OP.GT,
				240
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_cursed_chest",
				OP.TIMESET
			}
		}
	})
	define_rule({
		response = "pwh_gameplay_cursed_chest_activated",
		name = "pwh_gameplay_cursed_chest_activated",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"deus_cursed_chest_activated"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwh_gameplay_cursed_chest_ping",
		response = "pwh_gameplay_cursed_chest_ping",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"deus_cursed_chest"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_cursed_chest",
				OP.TIMEDIFF,
				OP.GT,
				30
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_cursed_chest",
				OP.TIMESET
			}
		}
	})
	define_rule({
		response = "pwh_gameplay_isha_blessing",
		name = "pwh_gameplay_isha_blessing",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"blessing_isha_resurrected"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			}
		}
	})
	define_rule({
		response = "pwh_gameplay_orb_of_morgrim",
		name = "pwh_gameplay_orb_of_morgrim",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"on_holy_grenade"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			}
		}
	})
	define_rule({
		response = "pwh_gameplay_rally_flag",
		name = "pwh_gameplay_rally_flag",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"blessing_rally_flag_placed"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwh_gameplay_seeing_a_faith_coin",
		response = "pwh_gameplay_seeing_a_faith_coin",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"deus_pilgrims_coins"
			},
			{
				"query_context",
				"distance",
				OP.GT,
				7
			},
			{
				"query_context",
				"distance",
				OP.LT,
				12
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_pilgrims_coins",
				OP.TIMEDIFF,
				OP.GT,
				50
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pilgrims_coins",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwh_gameplay_using_a_weapon_shrine",
		response = "pwh_gameplay_using_a_weapon_shrine",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"deus_using_a_weapon_shrine"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"time_since_using_a_weapon_shrine",
				OP.TIMEDIFF,
				OP.GT,
				40
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_using_a_weapon_shrine",
				OP.TIMESET
			}
		}
	})
	define_rule({
		response = "pwh_gorge_event_start",
		name = "pwh_gorge_event_start",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"query_context",
				"dialogue_name",
				OP.EQ,
				"nfl_morris_barrel_challenge"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			}
		}
	})
	define_rule({
		response = "pwh_mines_event_start",
		name = "pwh_mines_event_start",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"mines_start"
			},
			{
				"user_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			}
		}
	})
	define_rule({
		response = "pwh_morris_arena_survive_a",
		name = "pwh_morris_arena_survive_a",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"query_context",
				"dialogue_name",
				OP.EQ,
				"nfl_morris_winch_challenge"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			}
		}
	})
	define_rule({
		response = "pwh_morris_arena_survive_b",
		name = "pwh_morris_arena_survive_b",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"query_context",
				"dialogue_name",
				OP.EQ,
				"nfl_morris_survival_challenge"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			}
		}
	})
	define_rule({
		response = "pwh_morris_citadel_altar",
		name = "pwh_morris_citadel_altar",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"run_citadel_complete"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwh_morris_curse_tzeentch_egg",
		response = "pwh_morris_curse_tzeentch_egg",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"curse_tzeentch_egg"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"time_since_spotting_curse_objective",
				OP.TIMEDIFF,
				OP.GT,
				90
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_spotting_curse_objective",
				OP.TIMESET
			}
		}
	})
	define_rule({
		response = "pwh_morris_foreboding",
		name = "pwh_morris_foreboding",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"foreboding"
			},
			{
				"user_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			}
		}
	})
	define_rule({
		response = "pwh_morris_ritual_start",
		name = "pwh_morris_ritual_start",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"query_context",
				"dialogue_name",
				OP.EQ,
				"nfl_morris_ritual_challenge"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			}
		}
	})
	define_rule({
		response = "pwh_morris_run_complete",
		name = "pwh_morris_run_complete",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"run_complete"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwh_skulking_sorcerer_spotted",
		response = "pwh_skulking_sorcerer_spotted",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"chaos_mutator_sorcerer"
			},
			{
				"query_context",
				"distance",
				OP.GTEQ,
				5
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"time_since_spotting_curse_danger",
				OP.TIMEDIFF,
				OP.GT,
				60
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_spotting_curse_danger",
				OP.TIMESET
			}
		}
	})
	add_dialogues({
		nfl_morris_arena_altar = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "level_talk",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"nfl_morris_arena_altar_01",
				"nfl_morris_arena_altar_02",
				"nfl_morris_arena_altar_03",
				"nfl_morris_arena_altar_04"
			},
			randomize_indexes = {},
			sound_events = {
				"nfl_morris_arena_altar_01",
				"nfl_morris_arena_altar_02",
				"nfl_morris_arena_altar_03",
				"nfl_morris_arena_altar_04"
			},
			sound_events_duration = {
				4.7042708396912,
				3.5787291526794,
				5.5193958282471,
				3.8166875839233
			}
		},
		nfl_morris_arena_scroll = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "level_talk",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"nfl_morris_arena_scroll_01",
				"nfl_morris_arena_scroll_02",
				"nfl_morris_arena_scroll_03",
				"nfl_morris_arena_scroll_04"
			},
			randomize_indexes = {},
			sound_events = {
				"nfl_morris_arena_scroll_01",
				"nfl_morris_arena_scroll_02",
				"nfl_morris_arena_scroll_03",
				"nfl_morris_arena_scroll_04"
			},
			sound_events_duration = {
				5.7993960380554,
				5.7723541259766,
				5.147958278656,
				5.987687587738
			}
		},
		nfl_morris_barrel_challenge = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "level_talk",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"nfl_morris_barrel_challenge_01",
				"nfl_morris_barrel_challenge_02",
				"nfl_morris_barrel_challenge_03",
				"nfl_morris_barrel_challenge_04"
			},
			randomize_indexes = {},
			sound_events = {
				"nfl_morris_barrel_challenge_01",
				"nfl_morris_barrel_challenge_02",
				"nfl_morris_barrel_challenge_03",
				"nfl_morris_barrel_challenge_04"
			},
			sound_events_duration = {
				4.3630208969116,
				3.8609375953674,
				3.2307708263397,
				4.0526041984558
			}
		},
		nfl_morris_cursed_chest_complete = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "enemy_high_prio",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"nfl_morris_cursed_chest_complete_01",
				"nfl_morris_cursed_chest_complete_02",
				"nfl_morris_cursed_chest_complete_03",
				"nfl_morris_cursed_chest_complete_04"
			},
			randomize_indexes = {},
			sound_events = {
				"nfl_morris_cursed_chest_complete_01",
				"nfl_morris_cursed_chest_complete_02",
				"nfl_morris_cursed_chest_complete_03",
				"nfl_morris_cursed_chest_complete_04"
			},
			sound_events_duration = {
				3.5177707672119,
				2.8076667785645,
				2.5606458187103,
				3.493958234787
			}
		},
		nfl_morris_intro_curse_abundance_of_life = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 2,
			category = "level_talk",
			dialogue_animations_n = 2,
			dialogue_animations = {
				[1] = "dialogue_talk",
				[2] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_calm",
				[2] = "face_calm"
			},
			localization_strings = {
				[1] = "nfl_morris_curse_abundance_of_life_01",
				[2] = "nfl_morris_curse_abundance_of_life_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "nfl_morris_curse_abundance_of_life_01",
				[2] = "nfl_morris_curse_abundance_of_life_02"
			},
			sound_events_duration = {
				[1] = 5.2103748321533,
				[2] = 5.0710625648499
			}
		},
		nfl_morris_intro_curse_blood_storm = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 2,
			category = "level_talk",
			dialogue_animations_n = 2,
			dialogue_animations = {
				[1] = "dialogue_talk",
				[2] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_calm",
				[2] = "face_calm"
			},
			localization_strings = {
				[1] = "nfl_morris_curse_blood_storm_01",
				[2] = "nfl_morris_curse_blood_storm_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "nfl_morris_curse_blood_storm_01",
				[2] = "nfl_morris_curse_blood_storm_02"
			},
			sound_events_duration = {
				[1] = 4.7586874961853,
				[2] = 3.8275415897369
			}
		},
		nfl_morris_intro_curse_bolt_of_change = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 2,
			category = "level_talk",
			dialogue_animations_n = 2,
			dialogue_animations = {
				[1] = "dialogue_talk",
				[2] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_calm",
				[2] = "face_calm"
			},
			localization_strings = {
				[1] = "nfl_morris_curse_bolt_of_change_01",
				[2] = "nfl_morris_curse_bolt_of_change_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "nfl_morris_curse_bolt_of_change_01",
				[2] = "nfl_morris_curse_bolt_of_change_02"
			},
			sound_events_duration = {
				[1] = 4.1705832481384,
				[2] = 3.8960208892822
			}
		},
		nfl_morris_intro_curse_champions = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 2,
			category = "level_talk",
			dialogue_animations_n = 2,
			dialogue_animations = {
				[1] = "dialogue_talk",
				[2] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_calm",
				[2] = "face_calm"
			},
			localization_strings = {
				[1] = "nfl_morris_curse_champions_01",
				[2] = "nfl_morris_curse_champions_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "nfl_morris_curse_champions_01",
				[2] = "nfl_morris_curse_champions_02"
			},
			sound_events_duration = {
				[1] = 4.4516043663025,
				[2] = 5.4481043815613
			}
		},
		nfl_morris_intro_curse_change_of_tzeentch = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 2,
			category = "level_talk",
			dialogue_animations_n = 2,
			dialogue_animations = {
				[1] = "dialogue_talk",
				[2] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_calm",
				[2] = "face_calm"
			},
			localization_strings = {
				[1] = "nfl_morris_curse_change_of_tzeentch_01",
				[2] = "nfl_morris_curse_change_of_tzeentch_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "nfl_morris_curse_change_of_tzeentch_01",
				[2] = "nfl_morris_curse_change_of_tzeentch_02"
			},
			sound_events_duration = {
				[1] = 5.7876667976379,
				[2] = 3.9842500686645
			}
		},
		nfl_morris_intro_curse_corrupted_flesh = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 2,
			category = "level_talk",
			dialogue_animations_n = 2,
			dialogue_animations = {
				[1] = "dialogue_talk",
				[2] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_calm",
				[2] = "face_calm"
			},
			localization_strings = {
				[1] = "nfl_morris_curse_corrupted_flesh_01",
				[2] = "nfl_morris_curse_corrupted_flesh_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "nfl_morris_curse_corrupted_flesh_01",
				[2] = "nfl_morris_curse_corrupted_flesh_02"
			},
			sound_events_duration = {
				[1] = 4.4607081413269,
				[2] = 3.8061873912811
			}
		},
		nfl_morris_intro_curse_egg_of_tzeentch = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 2,
			category = "level_talk",
			dialogue_animations_n = 2,
			dialogue_animations = {
				[1] = "dialogue_talk",
				[2] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_calm",
				[2] = "face_calm"
			},
			localization_strings = {
				[1] = "nfl_morris_curse_egg_of_tzeentch_01",
				[2] = "nfl_morris_curse_egg_of_tzeentch_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "nfl_morris_curse_egg_of_tzeentch_01",
				[2] = "nfl_morris_curse_egg_of_tzeentch_02"
			},
			sound_events_duration = {
				[1] = 4.4198541641235,
				[2] = 5.6421251296997
			}
		},
		nfl_morris_intro_curse_empathy = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 2,
			category = "level_talk",
			dialogue_animations_n = 2,
			dialogue_animations = {
				[1] = "dialogue_talk",
				[2] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_calm",
				[2] = "face_calm"
			},
			localization_strings = {
				[1] = "nfl_morris_curse_empathy_01",
				[2] = "nfl_morris_curse_empathy_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "nfl_morris_curse_empathy_01",
				[2] = "nfl_morris_curse_empathy_02"
			},
			sound_events_duration = {
				[1] = 5.3992500305176,
				[2] = 5.4444375038147
			}
		},
		nfl_morris_intro_curse_greed_pinata = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 2,
			category = "level_talk",
			dialogue_animations_n = 2,
			dialogue_animations = {
				[1] = "dialogue_talk",
				[2] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_calm",
				[2] = "face_calm"
			},
			localization_strings = {
				[1] = "nfl_morris_curse_greed_pinata_01",
				[2] = "nfl_morris_curse_greed_pinata_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "nfl_morris_curse_greed_pinata_01",
				[2] = "nfl_morris_curse_greed_pinata_02"
			},
			sound_events_duration = {
				[1] = 4.776978969574,
				[2] = 4.8175001144409
			}
		},
		nfl_morris_intro_curse_miasma = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 2,
			category = "level_talk",
			dialogue_animations_n = 2,
			dialogue_animations = {
				[1] = "dialogue_talk",
				[2] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_calm",
				[2] = "face_calm"
			},
			localization_strings = {
				[1] = "nfl_morris_curse_miasma_01",
				[2] = "nfl_morris_curse_miasma_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "nfl_morris_curse_miasma_01",
				[2] = "nfl_morris_curse_miasma_02"
			},
			sound_events_duration = {
				[1] = 4.4775624275208,
				[2] = 4.3573331832886
			}
		},
		nfl_morris_intro_curse_skulking_sorcerer = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 2,
			category = "level_talk",
			dialogue_animations_n = 2,
			dialogue_animations = {
				[1] = "dialogue_talk",
				[2] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_calm",
				[2] = "face_calm"
			},
			localization_strings = {
				[1] = "nfl_morris_curse_skulking_sorcerer_01",
				[2] = "nfl_morris_curse_skulking_sorcerer_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "nfl_morris_curse_skulking_sorcerer_01",
				[2] = "nfl_morris_curse_skulking_sorcerer_02"
			},
			sound_events_duration = {
				[1] = 3.8352708816528,
				[2] = 6.3974165916443
			}
		},
		nfl_morris_intro_curse_skulls_of_fury = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 2,
			category = "level_talk",
			dialogue_animations_n = 2,
			dialogue_animations = {
				[1] = "dialogue_talk",
				[2] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_calm",
				[2] = "face_calm"
			},
			localization_strings = {
				[1] = "nfl_morris_curse_skulls_01",
				[2] = "nfl_morris_curse_skulls_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "nfl_morris_curse_skulls_01",
				[2] = "nfl_morris_curse_skulls_02"
			},
			sound_events_duration = {
				[1] = 4.9832916259766,
				[2] = 4.1490416526794
			}
		},
		nfl_morris_intro_no_curse = {
			randomize_indexes_n = 0,
			face_animations_n = 12,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 12,
			category = "level_talk",
			dialogue_animations_n = 12,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
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
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"nfl_morris_no_curse_intro_01",
				"nfl_morris_no_curse_intro_02",
				"nfl_morris_no_curse_intro_03",
				"nfl_morris_no_curse_intro_04",
				"nfl_morris_no_curse_intro_05",
				"nfl_morris_no_curse_intro_06",
				"nfl_morris_no_curse_intro_07",
				"nfl_morris_no_curse_intro_08",
				"nfl_morris_no_curse_intro_09",
				"nfl_morris_no_curse_intro_10",
				"nfl_morris_no_curse_intro_11",
				"nfl_morris_no_curse_intro_12"
			},
			randomize_indexes = {},
			sound_events = {
				"nfl_morris_no_curse_intro_01",
				"nfl_morris_no_curse_intro_02",
				"nfl_morris_no_curse_intro_03",
				"nfl_morris_no_curse_intro_04",
				"nfl_morris_no_curse_intro_05",
				"nfl_morris_no_curse_intro_06",
				"nfl_morris_no_curse_intro_07",
				"nfl_morris_no_curse_intro_08",
				"nfl_morris_no_curse_intro_09",
				"nfl_morris_no_curse_intro_10",
				"nfl_morris_no_curse_intro_11",
				"nfl_morris_no_curse_intro_12"
			},
			sound_events_duration = {
				5.9194793701172,
				7.1238126754761,
				6.7389373779297,
				5.5948543548584,
				5.2623333930969,
				5.6346874237061,
				5.2453126907349,
				6.8815627098083,
				6.4141249656677,
				5.4942708015442,
				7.4162502288818,
				7.3927707672119
			}
		},
		nfl_morris_ritual_challenge = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "level_talk",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"nfl_morris_ritual_challenge_01",
				"nfl_morris_ritual_challenge_02",
				"nfl_morris_ritual_challenge_03",
				"nfl_morris_ritual_challenge_04"
			},
			randomize_indexes = {},
			sound_events = {
				"nfl_morris_ritual_challenge_01",
				"nfl_morris_ritual_challenge_02",
				"nfl_morris_ritual_challenge_03",
				"nfl_morris_ritual_challenge_04"
			},
			sound_events_duration = {
				4.8441457748413,
				3.3897082805634,
				3.9295415878296,
				3.2584583759308
			}
		},
		nfl_morris_ship_challenge = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "level_talk",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"nfl_morris_ship_challenge_01",
				"nfl_morris_ship_challenge_02",
				"nfl_morris_ship_challenge_03",
				"nfl_morris_ship_challenge_04"
			},
			randomize_indexes = {},
			sound_events = {
				"nfl_morris_ship_challenge_01",
				"nfl_morris_ship_challenge_02",
				"nfl_morris_ship_challenge_03",
				"nfl_morris_ship_challenge_04"
			},
			sound_events_duration = {
				4.1550626754761,
				5.3981251716614,
				2.5300624370575,
				3.6335625648499
			}
		},
		nfl_morris_survival_challenge = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "level_talk",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"nfl_morris_survival_challenge_01",
				"nfl_morris_survival_challenge_02",
				"nfl_morris_survival_challenge_03",
				"nfl_morris_survival_challenge_04"
			},
			randomize_indexes = {},
			sound_events = {
				"nfl_morris_survival_challenge_01",
				"nfl_morris_survival_challenge_02",
				"nfl_morris_survival_challenge_03",
				"nfl_morris_survival_challenge_04"
			},
			sound_events_duration = {
				4.1779999732971,
				4.243145942688,
				3.5159375667572,
				3.5287916660309
			}
		},
		nfl_morris_winch_challenge = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "level_talk",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"nfl_morris_winch_challenge_01",
				"nfl_morris_winch_challenge_02",
				"nfl_morris_winch_challenge_03",
				"nfl_morris_winch_challenge_04"
			},
			randomize_indexes = {},
			sound_events = {
				"nfl_morris_winch_challenge_01",
				"nfl_morris_winch_challenge_02",
				"nfl_morris_winch_challenge_03",
				"nfl_morris_winch_challenge_04"
			},
			sound_events_duration = {
				2.8238749504089,
				1.6642708778381,
				1.6887500286102,
				2.4508540630341
			}
		},
		ngp_morris_arena_complete = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "special_occasion",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"morris_run_arena_complete_01",
				"morris_run_arena_complete_02",
				"morris_run_arena_complete_03",
				"morris_run_arena_complete_04"
			},
			randomize_indexes = {},
			sound_events = {
				"morris_run_arena_complete_01",
				"morris_run_arena_complete_02",
				"morris_run_arena_complete_03",
				"morris_run_arena_complete_04"
			},
			sound_events_duration = {
				22.492353439331,
				22.492353439331,
				22.492353439331,
				22.492353439331
			}
		},
		ngp_morris_arena_intro = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "special_occasion",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"morris_run_arena_start_01",
				"morris_run_arena_start_02",
				"morris_run_arena_start_03",
				"morris_run_arena_start_04"
			},
			randomize_indexes = {},
			sound_events = {
				"morris_run_arena_start_01",
				"morris_run_arena_start_02",
				"morris_run_arena_start_03",
				"morris_run_arena_start_04"
			},
			sound_events_duration = {
				8.4609527587891,
				7.6430840492249,
				6.987913608551,
				9.0117912292481
			}
		},
		ngp_morris_final_arena_complete = {
			override_awareness = "nfl_oleysa_arena_altar",
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "special_occasion",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"morris_run_final_arena_complete_01",
				"morris_run_final_arena_complete_02",
				"morris_run_final_arena_complete_03",
				"morris_run_final_arena_complete_04"
			},
			randomize_indexes = {},
			sound_events = {
				"morris_run_final_arena_complete_01",
				"morris_run_final_arena_complete_02",
				"morris_run_final_arena_complete_03",
				"morris_run_final_arena_complete_04"
			},
			sound_events_duration = {
				10.381859779358,
				9.9925394058228,
				9.0951471328735,
				8.5757369995117
			}
		},
		ngp_morris_final_arena_intro = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "special_occasion",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"morris_run_final_arena_start_01",
				"morris_run_final_arena_start_02",
				"morris_run_final_arena_start_03",
				"morris_run_final_arena_start_04"
			},
			randomize_indexes = {},
			sound_events = {
				"morris_run_final_arena_start_01",
				"morris_run_final_arena_start_02",
				"morris_run_final_arena_start_03",
				"morris_run_final_arena_start_04"
			},
			sound_events_duration = {
				6.4398641586304,
				7.4548754692078,
				8.1399097442627,
				8.4305219650269
			}
		},
		pbw_arena_citadel_continue = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "special_occasion",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pbw_arena_citadel_continue_01",
				"pbw_arena_citadel_continue_02",
				"pbw_arena_citadel_continue_03",
				"pbw_arena_citadel_continue_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_arena_citadel_continue_01",
				"pbw_arena_citadel_continue_02",
				"pbw_arena_citadel_continue_03",
				"pbw_arena_citadel_continue_04"
			},
			sound_events_duration = {
				1.3867083787918,
				1.8410832881927,
				2.6074376106262,
				2.4352707862854
			}
		},
		pbw_arena_citadel_final = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "special_occasion",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pbw_arena_citadel_final_01",
				"pbw_arena_citadel_final_02",
				"pbw_arena_citadel_final_03",
				"pbw_arena_citadel_final_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_arena_citadel_final_01",
				"pbw_arena_citadel_final_02",
				"pbw_arena_citadel_final_03",
				"pbw_arena_citadel_final_04"
			},
			sound_events_duration = {
				2.1518332958221,
				2.3691666126251,
				2.7935416698456,
				4.2419791221619
			}
		},
		pbw_arena_citadel_start = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "special_occasion",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pbw_arena_citadel_start_01",
				"pbw_arena_citadel_start_02",
				"pbw_arena_citadel_start_03",
				"pbw_arena_citadel_start_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_arena_citadel_start_01",
				"pbw_arena_citadel_start_02",
				"pbw_arena_citadel_start_03",
				"pbw_arena_citadel_start_04"
			},
			sound_events_duration = {
				2.4790832996368,
				4.8578748703003,
				2.3124375343323,
				2.5159375667572
			}
		},
		pbw_arena_ice_continue = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "special_occasion",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pbw_arena_ice_continue_01",
				"pbw_arena_ice_continue_02",
				"pbw_arena_ice_continue_03",
				"pbw_arena_ice_continue_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_arena_ice_continue_01",
				"pbw_arena_ice_continue_02",
				"pbw_arena_ice_continue_03",
				"pbw_arena_ice_continue_04"
			},
			sound_events_duration = {
				1.4616667032242,
				1.5536667108536,
				1.4691874980927,
				1.6439167261124
			}
		},
		pbw_bay_ship_challenge_cross = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "special_occasion",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pbw_bay_ship_challenge_cross_01",
				"pbw_bay_ship_challenge_cross_02",
				"pbw_bay_ship_challenge_cross_03",
				"pbw_bay_ship_challenge_cross_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_bay_ship_challenge_cross_01",
				"pbw_bay_ship_challenge_cross_02",
				"pbw_bay_ship_challenge_cross_03",
				"pbw_bay_ship_challenge_cross_04"
			},
			sound_events_duration = {
				4.169499874115,
				4.2008543014526,
				3.1950209140778,
				3.3291459083557
			}
		},
		pbw_bay_ship_challenge_response = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "special_occasion",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pbw_bay_ship_challenge_response_01",
				"pbw_bay_ship_challenge_response_02",
				"pbw_bay_ship_challenge_response_03",
				"pbw_bay_ship_challenge_response_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_bay_ship_challenge_response_01",
				"pbw_bay_ship_challenge_response_02",
				"pbw_bay_ship_challenge_response_03",
				"pbw_bay_ship_challenge_response_04"
			},
			sound_events_duration = {
				2.8195834159851,
				3.7980415821075,
				4.0389790534973,
				2.4433333873749
			}
		},
		pbw_gameplay_blessing_grimnir_killed = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "player_alerts",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pbw_gameplay_blessing_grimnir_killed_01",
				"pbw_gameplay_blessing_grimnir_killed_02",
				"pbw_gameplay_blessing_grimnir_killed_03",
				"pbw_gameplay_blessing_grimnir_killed_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_gameplay_blessing_grimnir_killed_01",
				"pbw_gameplay_blessing_grimnir_killed_02",
				"pbw_gameplay_blessing_grimnir_killed_03",
				"pbw_gameplay_blessing_grimnir_killed_04"
			},
			sound_events_duration = {
				2.5446667671204,
				3.5185208320618,
				2.6667082309723,
				3.2521874904633
			}
		},
		pbw_gameplay_blessing_grimnir_spotted = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "player_alerts",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pbw_gameplay_blessing_grimnir_spotted_01",
				"pbw_gameplay_blessing_grimnir_spotted_02",
				"pbw_gameplay_blessing_grimnir_spotted_03",
				"pbw_gameplay_blessing_grimnir_spotted_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_gameplay_blessing_grimnir_spotted_01",
				"pbw_gameplay_blessing_grimnir_spotted_02",
				"pbw_gameplay_blessing_grimnir_spotted_03",
				"pbw_gameplay_blessing_grimnir_spotted_04"
			},
			sound_events_duration = {
				2.5534584522247,
				3.0207500457764,
				3.0790417194366,
				2.109833240509
			}
		},
		pbw_gameplay_collecting_a_faith_coin = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "seen_items",
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
				"pbw_gameplay_collecting_a_faith_coin_01",
				"pbw_gameplay_collecting_a_faith_coin_02",
				"pbw_gameplay_collecting_a_faith_coin_03",
				"pbw_gameplay_collecting_a_faith_coin_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_gameplay_collecting_a_faith_coin_01",
				"pbw_gameplay_collecting_a_faith_coin_02",
				"pbw_gameplay_collecting_a_faith_coin_03",
				"pbw_gameplay_collecting_a_faith_coin_04"
			},
			sound_events_duration = {
				2.7822291851044,
				1.528520822525,
				1.9693541526794,
				2.0327084064484
			}
		},
		pbw_gameplay_curse_damage_taken = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "player_alerts",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_pain",
				"face_pain",
				"face_pain",
				"face_pain"
			},
			localization_strings = {
				"pbw_gameplay_curse_damage_taken_01",
				"pbw_gameplay_curse_damage_taken_02",
				"pbw_gameplay_curse_damage_taken_03",
				"pbw_gameplay_curse_damage_taken_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_gameplay_curse_damage_taken_01",
				"pbw_gameplay_curse_damage_taken_02",
				"pbw_gameplay_curse_damage_taken_03",
				"pbw_gameplay_curse_damage_taken_04"
			},
			sound_events_duration = {
				3.7841458320618,
				2.3801457881927,
				2.6862499713898,
				2.9189374446869
			}
		},
		pbw_gameplay_curse_killed_marked_enemy = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "enemy_alerts",
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
				"pbw_gameplay_curse_killed_marked_enemy_01",
				"pbw_gameplay_curse_killed_marked_enemy_02",
				"pbw_gameplay_curse_killed_marked_enemy_03",
				"pbw_gameplay_curse_killed_marked_enemy_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_gameplay_curse_killed_marked_enemy_01",
				"pbw_gameplay_curse_killed_marked_enemy_02",
				"pbw_gameplay_curse_killed_marked_enemy_03",
				"pbw_gameplay_curse_killed_marked_enemy_04"
			},
			sound_events_duration = {
				2.7473750114441,
				2.3719582557678,
				3.384583234787,
				1.8449167013168
			}
		},
		pbw_gameplay_curse_move_on = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "level_talk",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pbw_gameplay_curse_move_on_01",
				"pbw_gameplay_curse_move_on_02",
				"pbw_gameplay_curse_move_on_03",
				"pbw_gameplay_curse_move_on_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_gameplay_curse_move_on_01",
				"pbw_gameplay_curse_move_on_02",
				"pbw_gameplay_curse_move_on_03",
				"pbw_gameplay_curse_move_on_04"
			},
			sound_events_duration = {
				1.8765833377838,
				1.4995625019074,
				0.921875,
				1.663125038147
			}
		},
		pbw_gameplay_curse_negative_effect_happened = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "enemy_alerts",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pbw_gameplay_curse_negative_effect_happened_01",
				"pbw_gameplay_curse_negative_effect_happened_02",
				"pbw_gameplay_curse_negative_effect_happened_03",
				"pbw_gameplay_curse_negative_effect_happened_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_gameplay_curse_negative_effect_happened_01",
				"pbw_gameplay_curse_negative_effect_happened_02",
				"pbw_gameplay_curse_negative_effect_happened_03",
				"pbw_gameplay_curse_negative_effect_happened_04"
			},
			sound_events_duration = {
				1.1484166383743,
				2.2274582386017,
				2.5356042385101,
				2.2469375133514
			}
		},
		pbw_gameplay_curse_objective_achieved = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "special_occasion",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pbw_gameplay_curse_objective_achieved_01",
				"pbw_gameplay_curse_objective_achieved_02",
				"pbw_gameplay_curse_objective_achieved_03",
				"pbw_gameplay_curse_objective_achieved_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_gameplay_curse_objective_achieved_01",
				"pbw_gameplay_curse_objective_achieved_02",
				"pbw_gameplay_curse_objective_achieved_03",
				"pbw_gameplay_curse_objective_achieved_04"
			},
			sound_events_duration = {
				0.79929167032242,
				2.800062417984,
				2.7795207500458,
				2.2835209369659
			}
		},
		pbw_gameplay_curse_positive_effect_happened = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "player_alerts",
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
				"pbw_gameplay_curse_positive_effect_happened_01",
				"pbw_gameplay_curse_positive_effect_happened_02",
				"pbw_gameplay_curse_positive_effect_happened_03",
				"pbw_gameplay_curse_positive_effect_happened_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_gameplay_curse_positive_effect_happened_01",
				"pbw_gameplay_curse_positive_effect_happened_02",
				"pbw_gameplay_curse_positive_effect_happened_03",
				"pbw_gameplay_curse_positive_effect_happened_04"
			},
			sound_events_duration = {
				1.3673958778381,
				1.0751458406448,
				2.25745844841,
				1.6223958730698
			}
		},
		pbw_gameplay_curse_see_danger = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "player_alerts",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_pain",
				"face_pain",
				"face_pain",
				"face_pain"
			},
			localization_strings = {
				"pbw_gameplay_curse_see_danger_01",
				"pbw_gameplay_curse_see_danger_02",
				"pbw_gameplay_curse_see_danger_03",
				"pbw_gameplay_curse_see_danger_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_gameplay_curse_see_danger_01",
				"pbw_gameplay_curse_see_danger_02",
				"pbw_gameplay_curse_see_danger_03",
				"pbw_gameplay_curse_see_danger_04"
			},
			sound_events_duration = {
				2.560250043869,
				2.1131250858307,
				0.70899999141693,
				1.2602708339691
			}
		},
		pbw_gameplay_curse_see_danger_event = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "player_alerts",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_pain",
				"face_pain",
				"face_pain",
				"face_pain"
			},
			localization_strings = {
				"pbw_gameplay_curse_see_danger_01",
				"pbw_gameplay_curse_see_danger_02",
				"pbw_gameplay_curse_see_danger_03",
				"pbw_gameplay_curse_see_danger_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_gameplay_curse_see_danger_01",
				"pbw_gameplay_curse_see_danger_02",
				"pbw_gameplay_curse_see_danger_03",
				"pbw_gameplay_curse_see_danger_04"
			},
			sound_events_duration = {
				2.560250043869,
				2.1131250858307,
				0.70899999141693,
				1.2602708339691
			}
		},
		pbw_gameplay_curse_see_objective = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "seen_items",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pbw_gameplay_curse_see_objective_01",
				"pbw_gameplay_curse_see_objective_02",
				"pbw_gameplay_curse_see_objective_03",
				"pbw_gameplay_curse_see_objective_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_gameplay_curse_see_objective_01",
				"pbw_gameplay_curse_see_objective_02",
				"pbw_gameplay_curse_see_objective_03",
				"pbw_gameplay_curse_see_objective_04"
			},
			sound_events_duration = {
				1.6485416889191,
				1.5517916679382,
				2.2111041545868,
				1.7640416622162
			}
		},
		pbw_gameplay_curse_see_objective_event = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "seen_items",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pbw_gameplay_curse_see_objective_01",
				"pbw_gameplay_curse_see_objective_02",
				"pbw_gameplay_curse_see_objective_03",
				"pbw_gameplay_curse_see_objective_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_gameplay_curse_see_objective_01",
				"pbw_gameplay_curse_see_objective_02",
				"pbw_gameplay_curse_see_objective_03",
				"pbw_gameplay_curse_see_objective_04"
			},
			sound_events_duration = {
				1.6485416889191,
				1.5517916679382,
				2.2111041545868,
				1.7640416622162
			}
		},
		pbw_gameplay_curse_very_negative_effect_happened = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "special_occasion",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			},
			localization_strings = {
				"pbw_gameplay_curse_very_negative_effect_happened_01",
				"pbw_gameplay_curse_very_negative_effect_happened_02",
				"pbw_gameplay_curse_very_negative_effect_happened_03",
				"pbw_gameplay_curse_very_negative_effect_happened_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_gameplay_curse_very_negative_effect_happened_01",
				"pbw_gameplay_curse_very_negative_effect_happened_02",
				"pbw_gameplay_curse_very_negative_effect_happened_03",
				"pbw_gameplay_curse_very_negative_effect_happened_04"
			},
			sound_events_duration = {
				1.3157082796097,
				1.7308541536331,
				2.1701250076294,
				1.4394583702087
			}
		},
		pbw_gameplay_curse_very_positive_effect_happened = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "level_talk",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pbw_gameplay_curse_very_positive_effect_happened_01",
				"pbw_gameplay_curse_very_positive_effect_happened_02",
				"pbw_gameplay_curse_very_positive_effect_happened_03",
				"pbw_gameplay_curse_very_positive_effect_happened_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_gameplay_curse_very_positive_effect_happened_01",
				"pbw_gameplay_curse_very_positive_effect_happened_02",
				"pbw_gameplay_curse_very_positive_effect_happened_03",
				"pbw_gameplay_curse_very_positive_effect_happened_04"
			},
			sound_events_duration = {
				3.4429376125336,
				1.6438125371933,
				1.1643542051315,
				1.9585000276566
			}
		},
		pbw_gameplay_cursed_chest = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "player_feedback",
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
				"pbw_gameplay_cursed_chest_01",
				"pbw_gameplay_cursed_chest_02",
				"pbw_gameplay_cursed_chest_03",
				"pbw_gameplay_cursed_chest_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_gameplay_cursed_chest_01",
				"pbw_gameplay_cursed_chest_02",
				"pbw_gameplay_cursed_chest_03",
				"pbw_gameplay_cursed_chest_04"
			},
			sound_events_duration = {
				1.6746875047684,
				1.903416633606,
				2.6049375534058,
				4.1546459197998
			}
		},
		pbw_gameplay_cursed_chest_activated = {
			randomize_indexes_n = 0,
			face_animations_n = 3,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 3,
			category = "player_feedback",
			dialogue_animations_n = 3,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pbw_gameplay_cursed_chest_activated_01",
				"pbw_gameplay_cursed_chest_activated_02",
				"pbw_gameplay_cursed_chest_activated_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_gameplay_cursed_chest_activated_01",
				"pbw_gameplay_cursed_chest_activated_02",
				"pbw_gameplay_cursed_chest_activated_04"
			},
			sound_events_duration = {
				1.5962500572205,
				1.352041721344,
				2.9738957881927
			}
		},
		pbw_gameplay_cursed_chest_ping = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "player_feedback",
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
				"pbw_gameplay_cursed_chest_01",
				"pbw_gameplay_cursed_chest_02",
				"pbw_gameplay_cursed_chest_03",
				"pbw_gameplay_cursed_chest_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_gameplay_cursed_chest_01",
				"pbw_gameplay_cursed_chest_02",
				"pbw_gameplay_cursed_chest_03",
				"pbw_gameplay_cursed_chest_04"
			},
			sound_events_duration = {
				1.6746875047684,
				1.903416633606,
				2.6049375534058,
				4.1546459197998
			}
		},
		pbw_gameplay_isha_blessing = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "mutator_special_occasion",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pbw_gameplay_isha_blessing_01",
				"pbw_gameplay_isha_blessing_02",
				"pbw_gameplay_isha_blessing_03",
				"pbw_gameplay_isha_blessing_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_gameplay_isha_blessing_01",
				"pbw_gameplay_isha_blessing_02",
				"pbw_gameplay_isha_blessing_03",
				"pbw_gameplay_isha_blessing_04"
			},
			sound_events_duration = {
				2.8324167728424,
				1.4570416212082,
				3.0130832195282,
				2.8957500457764
			}
		},
		pbw_gameplay_orb_of_morgrim = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "activate_ability",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_curious",
				"face_curious",
				"face_curious",
				"face_curious"
			},
			localization_strings = {
				"pbw_gameplay_orb_of_morgrim_01",
				"pbw_gameplay_orb_of_morgrim_02",
				"pbw_gameplay_orb_of_morgrim_03",
				"pbw_gameplay_orb_of_morgrim_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_gameplay_orb_of_morgrim_01",
				"pbw_gameplay_orb_of_morgrim_02",
				"pbw_gameplay_orb_of_morgrim_03",
				"pbw_gameplay_orb_of_morgrim_04"
			},
			sound_events_duration = {
				2.4402916431427,
				2.6656250953674,
				2.3701250553131,
				2.2303125858307
			}
		},
		pbw_gameplay_rally_flag = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "player_alerts",
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
				"pbw_gameplay_rally_flag_01",
				"pbw_gameplay_rally_flag_02",
				"pbw_gameplay_rally_flag_03",
				"pbw_gameplay_rally_flag_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_gameplay_rally_flag_01",
				"pbw_gameplay_rally_flag_02",
				"pbw_gameplay_rally_flag_03",
				"pbw_gameplay_rally_flag_04"
			},
			sound_events_duration = {
				2.8081457614899,
				1.6410000324249,
				3.120854139328,
				3.2895624637604
			}
		},
		pbw_gameplay_seeing_a_faith_coin = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "seen_items",
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
				"pbw_gameplay_seeing_a_faith_coin_01",
				"pbw_gameplay_seeing_a_faith_coin_02",
				"pbw_gameplay_seeing_a_faith_coin_03",
				"pbw_gameplay_seeing_a_faith_coin_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_gameplay_seeing_a_faith_coin_01",
				"pbw_gameplay_seeing_a_faith_coin_02",
				"pbw_gameplay_seeing_a_faith_coin_03",
				"pbw_gameplay_seeing_a_faith_coin_04"
			},
			sound_events_duration = {
				1.7675833702087,
				2.1841042041779,
				1.4639791250229,
				2.0814583301544
			}
		},
		pbw_gameplay_using_a_weapon_shrine = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "seen_items",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pbw_gameplay_using_a_weapon_shrine_01",
				"pbw_gameplay_using_a_weapon_shrine_02",
				"pbw_gameplay_using_a_weapon_shrine_03",
				"pbw_gameplay_using_a_weapon_shrine_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_gameplay_using_a_weapon_shrine_01",
				"pbw_gameplay_using_a_weapon_shrine_02",
				"pbw_gameplay_using_a_weapon_shrine_03",
				"pbw_gameplay_using_a_weapon_shrine_04"
			},
			sound_events_duration = {
				2.6681458950043,
				2.4331667423248,
				3.5095417499542,
				2.2817709445953
			}
		},
		pbw_gorge_event_start = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "special_occasion",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pbw_gorge_event_start_01",
				"pbw_gorge_event_start_02",
				"pbw_gorge_event_start_03",
				"pbw_gorge_event_start_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_gorge_event_start_01",
				"pbw_gorge_event_start_02",
				"pbw_gorge_event_start_03",
				"pbw_gorge_event_start_04"
			},
			sound_events_duration = {
				3.2612500190735,
				3.6427083015442,
				4.7266039848328,
				3.5017292499542
			}
		},
		pbw_mines_event_start = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "special_occasion",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pbw_mines_event_start_01",
				"pbw_mines_event_start_02",
				"pbw_mines_event_start_03",
				"pbw_mines_event_start_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_mines_event_start_01",
				"pbw_mines_event_start_02",
				"pbw_mines_event_start_03",
				"pbw_mines_event_start_04"
			},
			sound_events_duration = {
				2.7057292461395,
				2.439291715622,
				2.5895209312439,
				2.5467083454132
			}
		},
		pbw_morris_arena_survive_a = {
			randomize_indexes_n = 0,
			face_animations_n = 16,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 16,
			category = "special_occasion",
			dialogue_animations_n = 16,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
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
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pbw_morris_arena_survive_01",
				"pbw_morris_arena_survive_02",
				"pbw_morris_arena_survive_03",
				"pbw_morris_arena_survive_04",
				"pbw_morris_arena_survive_05",
				"pbw_morris_arena_survive_06",
				"pbw_morris_arena_survive_07",
				"pbw_morris_arena_survive_08",
				"pbw_morris_arena_survive_09",
				"pbw_morris_arena_survive_10",
				"pbw_morris_arena_survive_11",
				"pbw_morris_arena_survive_12",
				"pbw_morris_arena_survive_13",
				"pbw_morris_arena_survive_14",
				"pbw_morris_arena_survive_15",
				"pbw_morris_arena_survive_16"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_morris_arena_survive_01",
				"pbw_morris_arena_survive_02",
				"pbw_morris_arena_survive_03",
				"pbw_morris_arena_survive_04",
				"pbw_morris_arena_survive_05",
				"pbw_morris_arena_survive_06",
				"pbw_morris_arena_survive_07",
				"pbw_morris_arena_survive_08",
				"pbw_morris_arena_survive_09",
				"pbw_morris_arena_survive_10",
				"pbw_morris_arena_survive_11",
				"pbw_morris_arena_survive_12",
				"pbw_morris_arena_survive_13",
				"pbw_morris_arena_survive_14",
				"pbw_morris_arena_survive_15",
				"pbw_morris_arena_survive_16"
			},
			sound_events_duration = {
				2.4935207366943,
				3.6568124294281,
				2.1202917098999,
				2.6449792385101,
				2.7157707214356,
				2.9162499904633,
				3.6136250495911,
				3.3842916488648,
				3.5898749828339,
				2.9825832843781,
				4.2754373550415,
				2.0491459369659,
				3.4406249523163,
				2.8259999752045,
				2.9868957996368,
				3.364354133606
			}
		},
		pbw_morris_arena_survive_b = {
			randomize_indexes_n = 0,
			face_animations_n = 16,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 16,
			category = "special_occasion",
			dialogue_animations_n = 16,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
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
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pbw_morris_arena_survive_01",
				"pbw_morris_arena_survive_02",
				"pbw_morris_arena_survive_03",
				"pbw_morris_arena_survive_04",
				"pbw_morris_arena_survive_05",
				"pbw_morris_arena_survive_06",
				"pbw_morris_arena_survive_07",
				"pbw_morris_arena_survive_08",
				"pbw_morris_arena_survive_09",
				"pbw_morris_arena_survive_10",
				"pbw_morris_arena_survive_11",
				"pbw_morris_arena_survive_12",
				"pbw_morris_arena_survive_13",
				"pbw_morris_arena_survive_14",
				"pbw_morris_arena_survive_15",
				"pbw_morris_arena_survive_16"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_morris_arena_survive_01",
				"pbw_morris_arena_survive_02",
				"pbw_morris_arena_survive_03",
				"pbw_morris_arena_survive_04",
				"pbw_morris_arena_survive_05",
				"pbw_morris_arena_survive_06",
				"pbw_morris_arena_survive_07",
				"pbw_morris_arena_survive_08",
				"pbw_morris_arena_survive_09",
				"pbw_morris_arena_survive_10",
				"pbw_morris_arena_survive_11",
				"pbw_morris_arena_survive_12",
				"pbw_morris_arena_survive_13",
				"pbw_morris_arena_survive_14",
				"pbw_morris_arena_survive_15",
				"pbw_morris_arena_survive_16"
			},
			sound_events_duration = {
				2.4935207366943,
				3.6568124294281,
				2.1202917098999,
				2.6449792385101,
				2.7157707214356,
				2.9162499904633,
				3.6136250495911,
				3.3842916488648,
				3.5898749828339,
				2.9825832843781,
				4.2754373550415,
				2.0491459369659,
				3.4406249523163,
				2.8259999752045,
				2.9868957996368,
				3.364354133606
			}
		},
		pbw_morris_citadel_altar = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "special_occasion",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pbw_morris_citadel_altar_01",
				"pbw_morris_citadel_altar_02",
				"pbw_morris_citadel_altar_03",
				"pbw_morris_citadel_altar_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_morris_citadel_altar_01",
				"pbw_morris_citadel_altar_02",
				"pbw_morris_citadel_altar_03",
				"pbw_morris_citadel_altar_04"
			},
			sound_events_duration = {
				3.7532708644867,
				3.5312917232513,
				3.4600207805634,
				1.7867292165756
			}
		},
		pbw_morris_curse_tzeentch_egg = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "seen_items",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry"
			},
			localization_strings = {
				"pbw_morris_tzeentch_egg_a_01",
				"pbw_morris_tzeentch_egg_a_02",
				"pbw_morris_tzeentch_egg_a_03",
				"pbw_morris_tzeentch_egg_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_morris_tzeentch_egg_a_01",
				"pbw_morris_tzeentch_egg_a_02",
				"pbw_morris_tzeentch_egg_a_03",
				"pbw_morris_tzeentch_egg_a_04"
			},
			sound_events_duration = {
				2.0299999713898,
				1.4052292108536,
				1.4514374732971,
				2.1391041278839
			}
		},
		pbw_morris_foreboding = {
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 8,
			category = "special_occasion",
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
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pbw_morris_foreboding_01",
				"pbw_morris_foreboding_02",
				"pbw_morris_foreboding_03",
				"pbw_morris_foreboding_04",
				"pbw_morris_foreboding_05",
				"pbw_morris_foreboding_06",
				"pbw_morris_foreboding_07",
				"pbw_morris_foreboding_08"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_morris_foreboding_01",
				"pbw_morris_foreboding_02",
				"pbw_morris_foreboding_03",
				"pbw_morris_foreboding_04",
				"pbw_morris_foreboding_05",
				"pbw_morris_foreboding_06",
				"pbw_morris_foreboding_07",
				"pbw_morris_foreboding_08"
			},
			sound_events_duration = {
				2.2307500839233,
				2.6768124103546,
				4.2926249504089,
				3.5808124542236,
				2.8562707901001,
				3.4896042346954,
				3.8009791374206,
				4.3542914390564
			}
		},
		pbw_morris_ritual_start = {
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 8,
			category = "special_occasion",
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
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pbw_morris_ritual_start_01",
				"pbw_morris_ritual_start_02",
				"pbw_morris_ritual_start_03",
				"pbw_morris_ritual_start_04",
				"pbw_morris_ritual_start_05",
				"pbw_morris_ritual_start_06",
				"pbw_morris_ritual_start_07",
				"pbw_morris_ritual_start_08"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_morris_ritual_start_01",
				"pbw_morris_ritual_start_02",
				"pbw_morris_ritual_start_03",
				"pbw_morris_ritual_start_04",
				"pbw_morris_ritual_start_05",
				"pbw_morris_ritual_start_06",
				"pbw_morris_ritual_start_07",
				"pbw_morris_ritual_start_08"
			},
			sound_events_duration = {
				4.6552710533142,
				3.1808333396912,
				4.1608333587647,
				2.0306251049042,
				3.8183751106262,
				4.4638543128967,
				3.8336040973663,
				4.2863125801086
			}
		},
		pbw_morris_run_complete = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "special_occasion",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pbw_morris_run_complete_01",
				"pbw_morris_run_complete_02",
				"pbw_morris_run_complete_03",
				"pbw_morris_run_complete_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_morris_run_complete_01",
				"pbw_morris_run_complete_02",
				"pbw_morris_run_complete_03",
				"pbw_morris_run_complete_04"
			},
			sound_events_duration = {
				4.1156668663025,
				3.0619165897369,
				3.6683125495911,
				2.3650207519531
			}
		},
		pbw_skulking_sorcerer_spotted = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "player_alerts",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pbw_gameplay_curse_see_danger_01",
				"pbw_gameplay_curse_see_danger_02",
				"pbw_gameplay_curse_see_danger_03",
				"pbw_gameplay_curse_see_danger_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_gameplay_curse_see_danger_01",
				"pbw_gameplay_curse_see_danger_02",
				"pbw_gameplay_curse_see_danger_03",
				"pbw_gameplay_curse_see_danger_04"
			},
			sound_events_duration = {
				2.560250043869,
				2.1131250858307,
				0.70899999141693,
				1.2602708339691
			}
		},
		pdr_arena_citadel_continue = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "special_occasion",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pdr_arena_citadel_continue_01",
				"pdr_arena_citadel_continue_02",
				"pdr_arena_citadel_continue_03",
				"pdr_arena_citadel_continue_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_arena_citadel_continue_01",
				"pdr_arena_citadel_continue_02",
				"pdr_arena_citadel_continue_03",
				"pdr_arena_citadel_continue_04"
			},
			sound_events_duration = {
				1.8955416679382,
				1.449979186058,
				1.6187916994095,
				3.0232915878296
			}
		},
		pdr_arena_citadel_final = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "special_occasion",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pdr_arena_citadel_final_01",
				"pdr_arena_citadel_final_02",
				"pdr_arena_citadel_final_03",
				"pdr_arena_citadel_final_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_arena_citadel_final_01",
				"pdr_arena_citadel_final_02",
				"pdr_arena_citadel_final_03",
				"pdr_arena_citadel_final_04"
			},
			sound_events_duration = {
				3.4748125076294,
				3.0709582567215,
				3.614572763443,
				2.9122395515442
			}
		},
		pdr_arena_citadel_start = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "special_occasion",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pdr_arena_citadel_start_01",
				"pdr_arena_citadel_start_02",
				"pdr_arena_citadel_start_03",
				"pdr_arena_citadel_start_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_arena_citadel_start_01",
				"pdr_arena_citadel_start_02",
				"pdr_arena_citadel_start_03",
				"pdr_arena_citadel_start_04"
			},
			sound_events_duration = {
				1.8458541631699,
				2.8737709522247,
				2.1000208854675,
				2.5869166851044
			}
		},
		pdr_arena_ice_continue = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "special_occasion",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pdr_arena_ice_continue_01",
				"pdr_arena_ice_continue_02",
				"pdr_arena_ice_continue_03",
				"pdr_arena_ice_continue_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_arena_ice_continue_01",
				"pdr_arena_ice_continue_02",
				"pdr_arena_ice_continue_03",
				"pdr_arena_ice_continue_04"
			},
			sound_events_duration = {
				1.9748958349228,
				1.737104177475,
				2.297708272934,
				2.8956875801086
			}
		},
		pdr_bay_ship_challenge_cross = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "special_occasion",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pdr_bay_ship_challenge_cross_01",
				"pdr_bay_ship_challenge_cross_02",
				"pdr_bay_ship_challenge_cross_03",
				"pdr_bay_ship_challenge_cross_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_bay_ship_challenge_cross_01",
				"pdr_bay_ship_challenge_cross_02",
				"pdr_bay_ship_challenge_cross_03",
				"pdr_bay_ship_challenge_cross_04"
			},
			sound_events_duration = {
				3.4053229093552,
				3.3211145401001,
				3.7245104312897,
				4.2256457805634
			}
		},
		pdr_bay_ship_challenge_response = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "special_occasion",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pdr_bay_ship_challenge_response_01",
				"pdr_bay_ship_challenge_response_02",
				"pdr_bay_ship_challenge_response_03",
				"pdr_bay_ship_challenge_response_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_bay_ship_challenge_response_01",
				"pdr_bay_ship_challenge_response_02",
				"pdr_bay_ship_challenge_response_03",
				"pdr_bay_ship_challenge_response_04"
			},
			sound_events_duration = {
				2.4766249656677,
				2.0490832328796,
				2.2858958244324,
				2.1279792785645
			}
		},
		pdr_gameplay_blessing_grimnir_killed = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "player_alerts",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pdr_gameplay_blessing_grimnir_killed_01",
				"pdr_gameplay_blessing_grimnir_killed_02",
				"pdr_gameplay_blessing_grimnir_killed_03",
				"pdr_gameplay_blessing_grimnir_killed_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_blessing_grimnir_killed_01",
				"pdr_gameplay_blessing_grimnir_killed_02",
				"pdr_gameplay_blessing_grimnir_killed_03",
				"pdr_gameplay_blessing_grimnir_killed_04"
			},
			sound_events_duration = {
				2.1756665706634,
				2.3226873874664,
				2.2588958740234,
				4.0699791908264
			}
		},
		pdr_gameplay_blessing_grimnir_spotted = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "player_alerts",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pdr_gameplay_blessing_grimnir_spotted_01",
				"pdr_gameplay_blessing_grimnir_spotted_02",
				"pdr_gameplay_blessing_grimnir_spotted_03",
				"pdr_gameplay_blessing_grimnir_spotted_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_blessing_grimnir_spotted_01",
				"pdr_gameplay_blessing_grimnir_spotted_02",
				"pdr_gameplay_blessing_grimnir_spotted_03",
				"pdr_gameplay_blessing_grimnir_spotted_04"
			},
			sound_events_duration = {
				2.967916727066,
				1.2590208053589,
				1.9298541545868,
				3.0012083053589
			}
		},
		pdr_gameplay_collecting_a_faith_coin = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "seen_items",
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
				"pdr_gameplay_collecting_a_faith_coin_01",
				"pdr_gameplay_collecting_a_faith_coin_02",
				"pdr_gameplay_collecting_a_faith_coin_03",
				"pdr_gameplay_collecting_a_faith_coin_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_collecting_a_faith_coin_01",
				"pdr_gameplay_collecting_a_faith_coin_02",
				"pdr_gameplay_collecting_a_faith_coin_03",
				"pdr_gameplay_collecting_a_faith_coin_04"
			},
			sound_events_duration = {
				2.8169584274292,
				1.3796458244324,
				1.5495417118073,
				2.001770734787
			}
		},
		pdr_gameplay_curse_damage_taken = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "player_alerts",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_pain",
				"face_pain",
				"face_pain",
				"face_pain"
			},
			localization_strings = {
				"pdr_gameplay_curse_damage_taken_01",
				"pdr_gameplay_curse_damage_taken_02",
				"pdr_gameplay_curse_damage_taken_03",
				"pdr_gameplay_curse_damage_taken_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_curse_damage_taken_01",
				"pdr_gameplay_curse_damage_taken_02",
				"pdr_gameplay_curse_damage_taken_03",
				"pdr_gameplay_curse_damage_taken_04"
			},
			sound_events_duration = {
				1.1487499475479,
				0.98260414600372,
				1.2416042089462,
				2.0807707309723
			}
		},
		pdr_gameplay_curse_killed_marked_enemy = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "enemy_alerts",
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
				"pdr_gameplay_curse_killed_marked_enemy_01",
				"pdr_gameplay_curse_killed_marked_enemy_02",
				"pdr_gameplay_curse_killed_marked_enemy_03",
				"pdr_gameplay_curse_killed_marked_enemy_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_curse_killed_marked_enemy_01",
				"pdr_gameplay_curse_killed_marked_enemy_02",
				"pdr_gameplay_curse_killed_marked_enemy_03",
				"pdr_gameplay_curse_killed_marked_enemy_04"
			},
			sound_events_duration = {
				2.919979095459,
				2.3648540973663,
				2.5236248970032,
				2.6341457366943
			}
		},
		pdr_gameplay_curse_move_on = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "level_talk",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pdr_gameplay_curse_move_on_01",
				"pdr_gameplay_curse_move_on_02",
				"pdr_gameplay_curse_move_on_03",
				"pdr_gameplay_curse_move_on_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_curse_move_on_01",
				"pdr_gameplay_curse_move_on_02",
				"pdr_gameplay_curse_move_on_03",
				"pdr_gameplay_curse_move_on_04"
			},
			sound_events_duration = {
				1.5112708806992,
				1.8614166975021,
				1.3019791841507,
				2.6180624961853
			}
		},
		pdr_gameplay_curse_negative_effect_happened = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "enemy_alerts",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pdr_gameplay_curse_negative_effect_happened_01",
				"pdr_gameplay_curse_negative_effect_happened_02",
				"pdr_gameplay_curse_negative_effect_happened_03",
				"pdr_gameplay_curse_negative_effect_happened_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_curse_negative_effect_happened_01",
				"pdr_gameplay_curse_negative_effect_happened_02",
				"pdr_gameplay_curse_negative_effect_happened_03",
				"pdr_gameplay_curse_negative_effect_happened_04"
			},
			sound_events_duration = {
				0.5886458158493,
				0.87454164028168,
				1.3980417251587,
				2.1384582519531
			}
		},
		pdr_gameplay_curse_objective_achieved = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "special_occasion",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pdr_gameplay_curse_objective_achieved_01",
				"pdr_gameplay_curse_objective_achieved_02",
				"pdr_gameplay_curse_objective_achieved_03",
				"pdr_gameplay_curse_objective_achieved_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_curse_objective_achieved_01",
				"pdr_gameplay_curse_objective_achieved_02",
				"pdr_gameplay_curse_objective_achieved_03",
				"pdr_gameplay_curse_objective_achieved_04"
			},
			sound_events_duration = {
				1.4773958921433,
				1.504145860672,
				1.490770816803,
				1.8493958711624
			}
		},
		pdr_gameplay_curse_positive_effect_happened = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "player_alerts",
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
				"pdr_gameplay_curse_positive_effect_happened_01",
				"pdr_gameplay_curse_positive_effect_happened_02",
				"pdr_gameplay_curse_positive_effect_happened_03",
				"pdr_gameplay_curse_positive_effect_happened_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_curse_positive_effect_happened_01",
				"pdr_gameplay_curse_positive_effect_happened_02",
				"pdr_gameplay_curse_positive_effect_happened_03",
				"pdr_gameplay_curse_positive_effect_happened_04"
			},
			sound_events_duration = {
				1.4072083234787,
				1.6263333559036,
				1.6723124980927,
				2.4612500667572
			}
		},
		pdr_gameplay_curse_see_danger = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "player_alerts",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_pain",
				"face_pain",
				"face_pain",
				"face_pain"
			},
			localization_strings = {
				"pdr_gameplay_curse_see_danger_01",
				"pdr_gameplay_curse_see_danger_02",
				"pdr_gameplay_curse_see_danger_03",
				"pdr_gameplay_curse_see_danger_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_curse_see_danger_01",
				"pdr_gameplay_curse_see_danger_02",
				"pdr_gameplay_curse_see_danger_03",
				"pdr_gameplay_curse_see_danger_04"
			},
			sound_events_duration = {
				1.0249999761581,
				1.5710624456406,
				0.69854164123535,
				1.3971041440964
			}
		},
		pdr_gameplay_curse_see_danger_event = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "player_alerts",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_pain",
				"face_pain",
				"face_pain",
				"face_pain"
			},
			localization_strings = {
				"pdr_gameplay_curse_see_danger_01",
				"pdr_gameplay_curse_see_danger_02",
				"pdr_gameplay_curse_see_danger_03",
				"pdr_gameplay_curse_see_danger_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_curse_see_danger_01",
				"pdr_gameplay_curse_see_danger_02",
				"pdr_gameplay_curse_see_danger_03",
				"pdr_gameplay_curse_see_danger_04"
			},
			sound_events_duration = {
				1.0249999761581,
				1.5710624456406,
				0.69854164123535,
				1.3971041440964
			}
		},
		pdr_gameplay_curse_see_objective = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "seen_items",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pdr_gameplay_curse_see_objective_01",
				"pdr_gameplay_curse_see_objective_02",
				"pdr_gameplay_curse_see_objective_03",
				"pdr_gameplay_curse_see_objective_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_curse_see_objective_01",
				"pdr_gameplay_curse_see_objective_02",
				"pdr_gameplay_curse_see_objective_03",
				"pdr_gameplay_curse_see_objective_04"
			},
			sound_events_duration = {
				2.2193748950958,
				1.7477083206177,
				1.9939374923706,
				1.4158333539963
			}
		},
		pdr_gameplay_curse_see_objective_event = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "seen_items",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pdr_gameplay_curse_see_objective_01",
				"pdr_gameplay_curse_see_objective_02",
				"pdr_gameplay_curse_see_objective_03",
				"pdr_gameplay_curse_see_objective_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_curse_see_objective_01",
				"pdr_gameplay_curse_see_objective_02",
				"pdr_gameplay_curse_see_objective_03",
				"pdr_gameplay_curse_see_objective_04"
			},
			sound_events_duration = {
				2.2193748950958,
				1.7477083206177,
				1.9939374923706,
				1.4158333539963
			}
		},
		pdr_gameplay_curse_very_negative_effect_happened = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "special_occasion",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			},
			localization_strings = {
				"pdr_gameplay_curse_very_negative_effect_happened_01",
				"pdr_gameplay_curse_very_negative_effect_happened_02",
				"pdr_gameplay_curse_very_negative_effect_happened_03",
				"pdr_gameplay_curse_very_negative_effect_happened_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_curse_very_negative_effect_happened_01",
				"pdr_gameplay_curse_very_negative_effect_happened_02",
				"pdr_gameplay_curse_very_negative_effect_happened_03",
				"pdr_gameplay_curse_very_negative_effect_happened_04"
			},
			sound_events_duration = {
				2.5207707881927,
				0.64947915077209,
				1.4730207920075,
				1.3049792051315
			}
		},
		pdr_gameplay_curse_very_positive_effect_happened = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "level_talk",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pdr_gameplay_curse_very_positive_effect_happened_01",
				"pdr_gameplay_curse_very_positive_effect_happened_02",
				"pdr_gameplay_curse_very_positive_effect_happened_03",
				"pdr_gameplay_curse_very_positive_effect_happened_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_curse_very_positive_effect_happened_01",
				"pdr_gameplay_curse_very_positive_effect_happened_02",
				"pdr_gameplay_curse_very_positive_effect_happened_03",
				"pdr_gameplay_curse_very_positive_effect_happened_04"
			},
			sound_events_duration = {
				3.538229227066,
				2.4174582958221,
				2.2069792747498,
				2.7195625305176
			}
		},
		pdr_gameplay_cursed_chest = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "player_feedback",
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
				"pdr_gameplay_cursed_chest_01",
				"pdr_gameplay_cursed_chest_02",
				"pdr_gameplay_cursed_chest_03",
				"pdr_gameplay_cursed_chest_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_cursed_chest_01",
				"pdr_gameplay_cursed_chest_02",
				"pdr_gameplay_cursed_chest_03",
				"pdr_gameplay_cursed_chest_04"
			},
			sound_events_duration = {
				1.9468958377838,
				2.2876875400543,
				1.9732500314713,
				1.6199791431427
			}
		},
		pdr_gameplay_cursed_chest_activated = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "player_feedback",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pdr_gameplay_cursed_chest_activated_01",
				"pdr_gameplay_cursed_chest_activated_02",
				"pdr_gameplay_cursed_chest_activated_03",
				"pdr_gameplay_cursed_chest_activated_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_cursed_chest_activated_01",
				"pdr_gameplay_cursed_chest_activated_02",
				"pdr_gameplay_cursed_chest_activated_03",
				"pdr_gameplay_cursed_chest_activated_04"
			},
			sound_events_duration = {
				2.1813957691193,
				2.0827915668488,
				2.9801666736603,
				2.1557083129883
			}
		},
		pdr_gameplay_cursed_chest_ping = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "player_feedback",
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
				"pdr_gameplay_cursed_chest_01",
				"pdr_gameplay_cursed_chest_02",
				"pdr_gameplay_cursed_chest_03",
				"pdr_gameplay_cursed_chest_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_cursed_chest_01",
				"pdr_gameplay_cursed_chest_02",
				"pdr_gameplay_cursed_chest_03",
				"pdr_gameplay_cursed_chest_04"
			},
			sound_events_duration = {
				1.9468958377838,
				2.2876875400543,
				1.9732500314713,
				1.6199791431427
			}
		},
		pdr_gameplay_isha_blessing = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "mutator_special_occasion",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pdr_gameplay_isha_blessing_01",
				"pdr_gameplay_isha_blessing_02",
				"pdr_gameplay_isha_blessing_03",
				"pdr_gameplay_isha_blessing_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_isha_blessing_01",
				"pdr_gameplay_isha_blessing_02",
				"pdr_gameplay_isha_blessing_03",
				"pdr_gameplay_isha_blessing_04"
			},
			sound_events_duration = {
				1.9439791440964,
				2.5308332443237,
				2.9771249294281,
				1.778937458992
			}
		},
		pdr_gameplay_orb_of_morgrim = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "activate_ability",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_curious",
				"face_curious",
				"face_curious",
				"face_curious"
			},
			localization_strings = {
				"pdr_gameplay_orb_of_morgrim_01",
				"pdr_gameplay_orb_of_morgrim_02",
				"pdr_gameplay_orb_of_morgrim_03",
				"pdr_gameplay_orb_of_morgrim_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_orb_of_morgrim_01",
				"pdr_gameplay_orb_of_morgrim_02",
				"pdr_gameplay_orb_of_morgrim_03",
				"pdr_gameplay_orb_of_morgrim_04"
			},
			sound_events_duration = {
				2.3740208148956,
				4.0432500839233,
				2.3775625228882,
				2.0601458549499
			}
		},
		pdr_gameplay_rally_flag = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "player_alerts",
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
				"pdr_gameplay_rally_flag_01",
				"pdr_gameplay_rally_flag_02",
				"pdr_gameplay_rally_flag_03",
				"pdr_gameplay_rally_flag_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_rally_flag_01",
				"pdr_gameplay_rally_flag_02",
				"pdr_gameplay_rally_flag_03",
				"pdr_gameplay_rally_flag_04"
			},
			sound_events_duration = {
				2.4168334007263,
				2.8671250343323,
				3.0489375591278,
				2.6952707767487
			}
		},
		pdr_gameplay_seeing_a_faith_coin = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "seen_items",
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
				"pdr_gameplay_seeing_a_faith_coin_01",
				"pdr_gameplay_seeing_a_faith_coin_02",
				"pdr_gameplay_seeing_a_faith_coin_03",
				"pdr_gameplay_seeing_a_faith_coin_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_seeing_a_faith_coin_01",
				"pdr_gameplay_seeing_a_faith_coin_02",
				"pdr_gameplay_seeing_a_faith_coin_03",
				"pdr_gameplay_seeing_a_faith_coin_04"
			},
			sound_events_duration = {
				2.8790624141693,
				1.6751041412354,
				1.8892500400543,
				1.9747500419617
			}
		},
		pdr_gameplay_using_a_weapon_shrine = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "seen_items",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pdr_gameplay_using_a_weapon_shrine_01",
				"pdr_gameplay_using_a_weapon_shrine_02",
				"pdr_gameplay_using_a_weapon_shrine_03",
				"pdr_gameplay_using_a_weapon_shrine_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_using_a_weapon_shrine_01",
				"pdr_gameplay_using_a_weapon_shrine_02",
				"pdr_gameplay_using_a_weapon_shrine_03",
				"pdr_gameplay_using_a_weapon_shrine_04"
			},
			sound_events_duration = {
				1.3035833835602,
				1.9350625276566,
				1.5041667222977,
				3.2759375572205
			}
		},
		pdr_gorge_event_start = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "special_occasion",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pdr_gorge_event_start_01",
				"pdr_gorge_event_start_02",
				"pdr_gorge_event_start_03",
				"pdr_gorge_event_start_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gorge_event_start_01",
				"pdr_gorge_event_start_02",
				"pdr_gorge_event_start_03",
				"pdr_gorge_event_start_04"
			},
			sound_events_duration = {
				2.8710312843323,
				3.7684791088104,
				3.3118646144867,
				4.4033541679382
			}
		},
		pdr_mines_event_start = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "special_occasion",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pdr_mines_event_start_01",
				"pdr_mines_event_start_02",
				"pdr_mines_event_start_03",
				"pdr_mines_event_start_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_mines_event_start_01",
				"pdr_mines_event_start_02",
				"pdr_mines_event_start_03",
				"pdr_mines_event_start_04"
			},
			sound_events_duration = {
				3.1956042051315,
				3.5977916717529,
				3.2799166440964,
				3.8164687156677
			}
		},
		pdr_morris_arena_survive_a = {
			randomize_indexes_n = 0,
			face_animations_n = 16,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 16,
			category = "special_occasion",
			dialogue_animations_n = 16,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
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
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pdr_morris_arena_survive_01",
				"pdr_morris_arena_survive_02",
				"pdr_morris_arena_survive_03",
				"pdr_morris_arena_survive_04",
				"pdr_morris_arena_survive_05",
				"pdr_morris_arena_survive_06",
				"pdr_morris_arena_survive_07",
				"pdr_morris_arena_survive_08",
				"pdr_morris_arena_survive_09",
				"pdr_morris_arena_survive_10",
				"pdr_morris_arena_survive_11",
				"pdr_morris_arena_survive_12",
				"pdr_morris_arena_survive_13",
				"pdr_morris_arena_survive_14",
				"pdr_morris_arena_survive_15",
				"pdr_morris_arena_survive_16"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_morris_arena_survive_01",
				"pdr_morris_arena_survive_02",
				"pdr_morris_arena_survive_03",
				"pdr_morris_arena_survive_04",
				"pdr_morris_arena_survive_05",
				"pdr_morris_arena_survive_06",
				"pdr_morris_arena_survive_07",
				"pdr_morris_arena_survive_08",
				"pdr_morris_arena_survive_09",
				"pdr_morris_arena_survive_10",
				"pdr_morris_arena_survive_11",
				"pdr_morris_arena_survive_12",
				"pdr_morris_arena_survive_13",
				"pdr_morris_arena_survive_14",
				"pdr_morris_arena_survive_15",
				"pdr_morris_arena_survive_16"
			},
			sound_events_duration = {
				2.8389166593552,
				2.3398541212082,
				3.030593752861,
				2.2453437447548,
				2.6799062490463,
				2.9219686985016,
				3.0172708034515,
				3.4922708272934,
				4.6229584217071,
				3.4598541259766,
				3.9331769943237,
				4.1483854055405,
				3.0424791574478,
				3.7705311775208,
				3.303968667984,
				2.9035104513168
			}
		},
		pdr_morris_arena_survive_b = {
			randomize_indexes_n = 0,
			face_animations_n = 16,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 16,
			category = "special_occasion",
			dialogue_animations_n = 16,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
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
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pdr_morris_arena_survive_01",
				"pdr_morris_arena_survive_02",
				"pdr_morris_arena_survive_03",
				"pdr_morris_arena_survive_04",
				"pdr_morris_arena_survive_05",
				"pdr_morris_arena_survive_06",
				"pdr_morris_arena_survive_07",
				"pdr_morris_arena_survive_08",
				"pdr_morris_arena_survive_09",
				"pdr_morris_arena_survive_10",
				"pdr_morris_arena_survive_11",
				"pdr_morris_arena_survive_12",
				"pdr_morris_arena_survive_13",
				"pdr_morris_arena_survive_14",
				"pdr_morris_arena_survive_15",
				"pdr_morris_arena_survive_16"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_morris_arena_survive_01",
				"pdr_morris_arena_survive_02",
				"pdr_morris_arena_survive_03",
				"pdr_morris_arena_survive_04",
				"pdr_morris_arena_survive_05",
				"pdr_morris_arena_survive_06",
				"pdr_morris_arena_survive_07",
				"pdr_morris_arena_survive_08",
				"pdr_morris_arena_survive_09",
				"pdr_morris_arena_survive_10",
				"pdr_morris_arena_survive_11",
				"pdr_morris_arena_survive_12",
				"pdr_morris_arena_survive_13",
				"pdr_morris_arena_survive_14",
				"pdr_morris_arena_survive_15",
				"pdr_morris_arena_survive_16"
			},
			sound_events_duration = {
				2.8389166593552,
				2.3398541212082,
				3.030593752861,
				2.2453437447548,
				2.6799062490463,
				2.9219686985016,
				3.0172708034515,
				3.4922708272934,
				4.6229584217071,
				3.4598541259766,
				3.9331769943237,
				4.1483854055405,
				3.0424791574478,
				3.7705311775208,
				3.303968667984,
				2.9035104513168
			}
		},
		pdr_morris_citadel_altar = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "special_occasion",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pdr_morris_citadel_altar_01",
				"pdr_morris_citadel_altar_02",
				"pdr_morris_citadel_altar_03",
				"pdr_morris_citadel_altar_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_morris_citadel_altar_01",
				"pdr_morris_citadel_altar_02",
				"pdr_morris_citadel_altar_03",
				"pdr_morris_citadel_altar_04"
			},
			sound_events_duration = {
				4.1328959465027,
				2.9963958263397,
				3.2206666469574,
				4.5878958702087
			}
		},
		pdr_morris_curse_tzeentch_egg = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "seen_items",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry"
			},
			localization_strings = {
				"pdr_morris_tzeentch_egg_a_01",
				"pdr_morris_tzeentch_egg_a_02",
				"pdr_morris_tzeentch_egg_a_03",
				"pdr_morris_tzeentch_egg_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_morris_tzeentch_egg_a_01",
				"pdr_morris_tzeentch_egg_a_02",
				"pdr_morris_tzeentch_egg_a_03",
				"pdr_morris_tzeentch_egg_a_04"
			},
			sound_events_duration = {
				1.325291633606,
				1.614041686058,
				1.5673333406448,
				1.9264792203903
			}
		},
		pdr_morris_foreboding = {
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 8,
			category = "special_occasion",
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
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pdr_morris_foreboding_01",
				"pdr_morris_foreboding_02",
				"pdr_morris_foreboding_03",
				"pdr_morris_foreboding_04",
				"pdr_morris_foreboding_05",
				"pdr_morris_foreboding_06",
				"pdr_morris_foreboding_07",
				"pdr_morris_foreboding_08"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_morris_foreboding_01",
				"pdr_morris_foreboding_02",
				"pdr_morris_foreboding_03",
				"pdr_morris_foreboding_04",
				"pdr_morris_foreboding_05",
				"pdr_morris_foreboding_06",
				"pdr_morris_foreboding_07",
				"pdr_morris_foreboding_08"
			},
			sound_events_duration = {
				2.3682708740234,
				2.8443124294281,
				3.0351042747498,
				3.1879999637604,
				3.3568959236145,
				4.4812293052673,
				3.8666250705719,
				2.0756042003632
			}
		},
		pdr_morris_ritual_start = {
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 8,
			category = "special_occasion",
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
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pdr_morris_ritual_start_01",
				"pdr_morris_ritual_start_02",
				"pdr_morris_ritual_start_03",
				"pdr_morris_ritual_start_04",
				"pdr_morris_ritual_start_05",
				"pdr_morris_ritual_start_06",
				"pdr_morris_ritual_start_07",
				"pdr_morris_ritual_start_08"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_morris_ritual_start_01",
				"pdr_morris_ritual_start_02",
				"pdr_morris_ritual_start_03",
				"pdr_morris_ritual_start_04",
				"pdr_morris_ritual_start_05",
				"pdr_morris_ritual_start_06",
				"pdr_morris_ritual_start_07",
				"pdr_morris_ritual_start_08"
			},
			sound_events_duration = {
				2.3675208091736,
				3.4047915935516,
				3.5093333721161,
				3.8721041679382,
				3.3770000934601,
				2.6381666660309,
				3.4096667766571,
				3.0508749485016
			}
		},
		pdr_morris_run_complete = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "special_occasion",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pdr_morris_run_complete_01",
				"pdr_morris_run_complete_02",
				"pdr_morris_run_complete_03",
				"pdr_morris_run_complete_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_morris_run_complete_01",
				"pdr_morris_run_complete_02",
				"pdr_morris_run_complete_03",
				"pdr_morris_run_complete_04"
			},
			sound_events_duration = {
				3.26527094841,
				2.6123332977295,
				3.4860625267029,
				2.1901249885559
			}
		},
		pdr_skulking_sorcerer_spotted = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "player_alerts",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pdr_gameplay_curse_see_danger_01",
				"pdr_gameplay_curse_see_danger_02",
				"pdr_gameplay_curse_see_danger_03",
				"pdr_gameplay_curse_see_danger_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_curse_see_danger_01",
				"pdr_gameplay_curse_see_danger_02",
				"pdr_gameplay_curse_see_danger_03",
				"pdr_gameplay_curse_see_danger_04"
			},
			sound_events_duration = {
				1.0249999761581,
				1.5710624456406,
				0.69854164123535,
				1.3971041440964
			}
		},
		pes_arena_citadel_continue = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "special_occasion",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pes_arena_citadel_continue_01",
				"pes_arena_citadel_continue_02",
				"pes_arena_citadel_continue_03",
				"pes_arena_citadel_continue_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_arena_citadel_continue_01",
				"pes_arena_citadel_continue_02",
				"pes_arena_citadel_continue_03",
				"pes_arena_citadel_continue_04"
			},
			sound_events_duration = {
				0.75322914123535,
				1.1678333282471,
				1.2448542118073,
				1.5294791460037
			}
		},
		pes_arena_citadel_final = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "special_occasion",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pes_arena_citadel_final_01",
				"pes_arena_citadel_final_02",
				"pes_arena_citadel_final_03",
				"pes_arena_citadel_final_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_arena_citadel_final_01",
				"pes_arena_citadel_final_02",
				"pes_arena_citadel_final_03",
				"pes_arena_citadel_final_04"
			},
			sound_events_duration = {
				2.6779687404633,
				3.3551042079926,
				2.4658750295639,
				4.8615938425064
			}
		},
		pes_arena_citadel_start = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "special_occasion",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pes_arena_citadel_start_01",
				"pes_arena_citadel_start_02",
				"pes_arena_citadel_start_03",
				"pes_arena_citadel_start_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_arena_citadel_start_01",
				"pes_arena_citadel_start_02",
				"pes_arena_citadel_start_03",
				"pes_arena_citadel_start_04"
			},
			sound_events_duration = {
				2.1979999542236,
				1.792208313942,
				4.9842915534973,
				2.6618957519531
			}
		},
		pes_arena_ice_continue = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "special_occasion",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pes_arena_ice_continue_01",
				"pes_arena_ice_continue_02",
				"pes_arena_ice_continue_03",
				"pes_arena_ice_continue_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_arena_ice_continue_01",
				"pes_arena_ice_continue_02",
				"pes_arena_ice_continue_03",
				"pes_arena_ice_continue_04"
			},
			sound_events_duration = {
				1.644770860672,
				1.2259374856949,
				1.5412291288376,
				1.7996666431427
			}
		},
		pes_bay_ship_challenge_cross = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "special_occasion",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pes_bay_ship_challenge_cross_01",
				"pes_bay_ship_challenge_cross_02",
				"pes_bay_ship_challenge_cross_03",
				"pes_bay_ship_challenge_cross_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_bay_ship_challenge_cross_01",
				"pes_bay_ship_challenge_cross_02",
				"pes_bay_ship_challenge_cross_03",
				"pes_bay_ship_challenge_cross_04"
			},
			sound_events_duration = {
				2.3604791164398,
				4.285749912262,
				3.9596874713898,
				2.8056874275208
			}
		},
		pes_bay_ship_challenge_response = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "special_occasion",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pes_bay_ship_challenge_response_01",
				"pes_bay_ship_challenge_response_02",
				"pes_bay_ship_challenge_response_03",
				"pes_bay_ship_challenge_response_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_bay_ship_challenge_response_01",
				"pes_bay_ship_challenge_response_02",
				"pes_bay_ship_challenge_response_03",
				"pes_bay_ship_challenge_response_04"
			},
			sound_events_duration = {
				1.6398124694824,
				2.1698124408722,
				2.7613332271576,
				2.8057291507721
			}
		},
		pes_gameplay_blessing_grimnir_killed = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "player_alerts",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pes_gameplay_blessing_grimnir_killed_01",
				"pes_gameplay_blessing_grimnir_killed_02",
				"pes_gameplay_blessing_grimnir_killed_03",
				"pes_gameplay_blessing_grimnir_killed_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_gameplay_blessing_grimnir_killed_01",
				"pes_gameplay_blessing_grimnir_killed_02",
				"pes_gameplay_blessing_grimnir_killed_03",
				"pes_gameplay_blessing_grimnir_killed_04"
			},
			sound_events_duration = {
				2.8980624675751,
				4.1500625610352,
				2.2353959083557,
				4.3015623092651
			}
		},
		pes_gameplay_blessing_grimnir_spotted = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "player_alerts",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pes_gameplay_blessing_grimnir_spotted_01",
				"pes_gameplay_blessing_grimnir_spotted_02",
				"pes_gameplay_blessing_grimnir_spotted_03",
				"pes_gameplay_blessing_grimnir_spotted_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_gameplay_blessing_grimnir_spotted_01",
				"pes_gameplay_blessing_grimnir_spotted_02",
				"pes_gameplay_blessing_grimnir_spotted_03",
				"pes_gameplay_blessing_grimnir_spotted_04"
			},
			sound_events_duration = {
				1.886895775795,
				2.5570833683014,
				2.3369791507721,
				3.8898334503174
			}
		},
		pes_gameplay_collecting_a_faith_coin = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "seen_items",
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
				"pes_gameplay_collecting_a_faith_coin_01",
				"pes_gameplay_collecting_a_faith_coin_02",
				"pes_gameplay_collecting_a_faith_coin_03",
				"pes_gameplay_collecting_a_faith_coin_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_gameplay_collecting_a_faith_coin_01",
				"pes_gameplay_collecting_a_faith_coin_02",
				"pes_gameplay_collecting_a_faith_coin_03",
				"pes_gameplay_collecting_a_faith_coin_04"
			},
			sound_events_duration = {
				1.4999375343323,
				1.4994167089462,
				1.4373124837875,
				1.4276041984558
			}
		},
		pes_gameplay_curse_damage_taken = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "player_alerts",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_pain",
				"face_pain",
				"face_pain",
				"face_pain"
			},
			localization_strings = {
				"pes_gameplay_curse_damage_taken_01",
				"pes_gameplay_curse_damage_taken_02",
				"pes_gameplay_curse_damage_taken_03",
				"pes_gameplay_curse_damage_taken_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_gameplay_curse_damage_taken_01",
				"pes_gameplay_curse_damage_taken_02",
				"pes_gameplay_curse_damage_taken_03",
				"pes_gameplay_curse_damage_taken_04"
			},
			sound_events_duration = {
				0.89399999380112,
				1.2193332910538,
				1.6179583072662,
				2.3842709064484
			}
		},
		pes_gameplay_curse_killed_marked_enemy = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "enemy_alerts",
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
				"pes_gameplay_curse_killed_marked_enemy_01",
				"pes_gameplay_curse_killed_marked_enemy_02",
				"pes_gameplay_curse_killed_marked_enemy_03",
				"pes_gameplay_curse_killed_marked_enemy_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_gameplay_curse_killed_marked_enemy_01",
				"pes_gameplay_curse_killed_marked_enemy_02",
				"pes_gameplay_curse_killed_marked_enemy_03",
				"pes_gameplay_curse_killed_marked_enemy_04"
			},
			sound_events_duration = {
				2.190333366394,
				3.7052292823791,
				1.9904791116715,
				2.0142707824707
			}
		},
		pes_gameplay_curse_move_on = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "level_talk",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pes_gameplay_curse_move_on_01",
				"pes_gameplay_curse_move_on_02",
				"pes_gameplay_curse_move_on_03",
				"pes_gameplay_curse_move_on_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_gameplay_curse_move_on_01",
				"pes_gameplay_curse_move_on_02",
				"pes_gameplay_curse_move_on_03",
				"pes_gameplay_curse_move_on_04"
			},
			sound_events_duration = {
				0.82349997758865,
				1.3216041326523,
				0.84285414218903,
				1.2031874656677
			}
		},
		pes_gameplay_curse_negative_effect_happened = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "enemy_alerts",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pes_gameplay_curse_negative_effect_happened_01",
				"pes_gameplay_curse_negative_effect_happened_02",
				"pes_gameplay_curse_negative_effect_happened_03",
				"pes_gameplay_curse_negative_effect_happened_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_gameplay_curse_negative_effect_happened_01",
				"pes_gameplay_curse_negative_effect_happened_02",
				"pes_gameplay_curse_negative_effect_happened_03",
				"pes_gameplay_curse_negative_effect_happened_04"
			},
			sound_events_duration = {
				1.4340624809265,
				1.2374792098999,
				2.1275417804718,
				2.3162291049957
			}
		},
		pes_gameplay_curse_objective_achieved = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "special_occasion",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pes_gameplay_curse_objective_achieved_01",
				"pes_gameplay_curse_objective_achieved_02",
				"pes_gameplay_curse_objective_achieved_03",
				"pes_gameplay_curse_objective_achieved_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_gameplay_curse_objective_achieved_01",
				"pes_gameplay_curse_objective_achieved_02",
				"pes_gameplay_curse_objective_achieved_03",
				"pes_gameplay_curse_objective_achieved_04"
			},
			sound_events_duration = {
				1.2237083911896,
				0.62658333778381,
				2.3635001182556,
				2.3210625648499
			}
		},
		pes_gameplay_curse_positive_effect_happened = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "player_alerts",
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
				"pes_gameplay_curse_positive_effect_happened_01",
				"pes_gameplay_curse_positive_effect_happened_02",
				"pes_gameplay_curse_positive_effect_happened_03",
				"pes_gameplay_curse_positive_effect_happened_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_gameplay_curse_positive_effect_happened_01",
				"pes_gameplay_curse_positive_effect_happened_02",
				"pes_gameplay_curse_positive_effect_happened_03",
				"pes_gameplay_curse_positive_effect_happened_04"
			},
			sound_events_duration = {
				1.3726249933243,
				1.7856667041779,
				1.6700208187103,
				2.0830209255219
			}
		},
		pes_gameplay_curse_see_danger = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "player_alerts",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_pain",
				"face_pain",
				"face_pain",
				"face_pain"
			},
			localization_strings = {
				"pes_gameplay_curse_see_danger_01",
				"pes_gameplay_curse_see_danger_02",
				"pes_gameplay_curse_see_danger_03",
				"pes_gameplay_curse_see_danger_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_gameplay_curse_see_danger_01",
				"pes_gameplay_curse_see_danger_02",
				"pes_gameplay_curse_see_danger_03",
				"pes_gameplay_curse_see_danger_04"
			},
			sound_events_duration = {
				0.80231249332428,
				0.55881249904633,
				1.1438541412354,
				0.84329164028168
			}
		},
		pes_gameplay_curse_see_danger_event = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "player_alerts",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_pain",
				"face_pain",
				"face_pain",
				"face_pain"
			},
			localization_strings = {
				"pes_gameplay_curse_see_danger_01",
				"pes_gameplay_curse_see_danger_02",
				"pes_gameplay_curse_see_danger_03",
				"pes_gameplay_curse_see_danger_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_gameplay_curse_see_danger_01",
				"pes_gameplay_curse_see_danger_02",
				"pes_gameplay_curse_see_danger_03",
				"pes_gameplay_curse_see_danger_04"
			},
			sound_events_duration = {
				0.80231249332428,
				0.55881249904633,
				1.1438541412354,
				0.84329164028168
			}
		},
		pes_gameplay_curse_see_objective = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "seen_items",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pes_gameplay_curse_see_objective_01",
				"pes_gameplay_curse_see_objective_02",
				"pes_gameplay_curse_see_objective_03",
				"pes_gameplay_curse_see_objective_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_gameplay_curse_see_objective_01",
				"pes_gameplay_curse_see_objective_02",
				"pes_gameplay_curse_see_objective_03",
				"pes_gameplay_curse_see_objective_04"
			},
			sound_events_duration = {
				1.335458278656,
				0.97327083349228,
				2.1147084236145,
				1.5168958902359
			}
		},
		pes_gameplay_curse_see_objective_event = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "seen_items",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pes_gameplay_curse_see_objective_01",
				"pes_gameplay_curse_see_objective_02",
				"pes_gameplay_curse_see_objective_03",
				"pes_gameplay_curse_see_objective_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_gameplay_curse_see_objective_01",
				"pes_gameplay_curse_see_objective_02",
				"pes_gameplay_curse_see_objective_03",
				"pes_gameplay_curse_see_objective_04"
			},
			sound_events_duration = {
				1.335458278656,
				0.97327083349228,
				2.1147084236145,
				1.5168958902359
			}
		},
		pes_gameplay_curse_very_negative_effect_happened = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "special_occasion",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			},
			localization_strings = {
				"pes_gameplay_curse_very_negative_effect_happened_01",
				"pes_gameplay_curse_very_negative_effect_happened_02",
				"pes_gameplay_curse_very_negative_effect_happened_03",
				"pes_gameplay_curse_very_negative_effect_happened_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_gameplay_curse_very_negative_effect_happened_01",
				"pes_gameplay_curse_very_negative_effect_happened_02",
				"pes_gameplay_curse_very_negative_effect_happened_03",
				"pes_gameplay_curse_very_negative_effect_happened_04"
			},
			sound_events_duration = {
				1.3209791183472,
				0.82564580440521,
				1.9049999713898,
				1.4463541507721
			}
		},
		pes_gameplay_curse_very_positive_effect_happened = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "level_talk",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pes_gameplay_curse_very_positive_effect_happened_01",
				"pes_gameplay_curse_very_positive_effect_happened_02",
				"pes_gameplay_curse_very_positive_effect_happened_03",
				"pes_gameplay_curse_very_positive_effect_happened_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_gameplay_curse_very_positive_effect_happened_01",
				"pes_gameplay_curse_very_positive_effect_happened_02",
				"pes_gameplay_curse_very_positive_effect_happened_03",
				"pes_gameplay_curse_very_positive_effect_happened_04"
			},
			sound_events_duration = {
				1.7305417060852,
				1.4795833826065,
				1.8535000085831,
				2.3200416564941
			}
		},
		pes_gameplay_cursed_chest = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "player_feedback",
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
				"pes_gameplay_cursed_chest_01",
				"pes_gameplay_cursed_chest_02",
				"pes_gameplay_cursed_chest_03",
				"pes_gameplay_cursed_chest_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_gameplay_cursed_chest_01",
				"pes_gameplay_cursed_chest_02",
				"pes_gameplay_cursed_chest_03",
				"pes_gameplay_cursed_chest_04"
			},
			sound_events_duration = {
				1.2037916183472,
				1.2703750133514,
				1.4178541898727,
				1.6454792022705
			}
		},
		pes_gameplay_cursed_chest_activated = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "player_feedback",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pes_gameplay_cursed_chest_activated_01",
				"pes_gameplay_cursed_chest_activated_02",
				"pes_gameplay_cursed_chest_activated_03",
				"pes_gameplay_cursed_chest_activated_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_gameplay_cursed_chest_activated_01",
				"pes_gameplay_cursed_chest_activated_02",
				"pes_gameplay_cursed_chest_activated_03",
				"pes_gameplay_cursed_chest_activated_04"
			},
			sound_events_duration = {
				1.4681041240692,
				1.02889585495,
				1.3423750400543,
				1.9064375162125
			}
		},
		pes_gameplay_cursed_chest_ping = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "player_feedback",
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
				"pes_gameplay_cursed_chest_01",
				"pes_gameplay_cursed_chest_02",
				"pes_gameplay_cursed_chest_03",
				"pes_gameplay_cursed_chest_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_gameplay_cursed_chest_01",
				"pes_gameplay_cursed_chest_02",
				"pes_gameplay_cursed_chest_03",
				"pes_gameplay_cursed_chest_04"
			},
			sound_events_duration = {
				1.2037916183472,
				1.2703750133514,
				1.4178541898727,
				1.6454792022705
			}
		},
		pes_gameplay_isha_blessing = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "mutator_special_occasion",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pes_gameplay_isha_blessing_01",
				"pes_gameplay_isha_blessing_02",
				"pes_gameplay_isha_blessing_03",
				"pes_gameplay_isha_blessing_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_gameplay_isha_blessing_01",
				"pes_gameplay_isha_blessing_02",
				"pes_gameplay_isha_blessing_03",
				"pes_gameplay_isha_blessing_04"
			},
			sound_events_duration = {
				3.0148124694824,
				2.3020832538605,
				2.9415209293366,
				3.4503126144409
			}
		},
		pes_gameplay_orb_of_morgrim = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "activate_ability",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_curious",
				"face_curious",
				"face_curious",
				"face_curious"
			},
			localization_strings = {
				"pes_gameplay_orb_of_morgrim_01",
				"pes_gameplay_orb_of_morgrim_02",
				"pes_gameplay_orb_of_morgrim_03",
				"pes_gameplay_orb_of_morgrim_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_gameplay_orb_of_morgrim_01",
				"pes_gameplay_orb_of_morgrim_02",
				"pes_gameplay_orb_of_morgrim_03",
				"pes_gameplay_orb_of_morgrim_04"
			},
			sound_events_duration = {
				2.4555625915527,
				1.7689167261124,
				1.2282916307449,
				2.9562916755676
			}
		},
		pes_gameplay_rally_flag = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "player_alerts",
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
				"pes_gameplay_rally_flag_01",
				"pes_gameplay_rally_flag_02",
				"pes_gameplay_rally_flag_03",
				"pes_gameplay_rally_flag_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_gameplay_rally_flag_01",
				"pes_gameplay_rally_flag_02",
				"pes_gameplay_rally_flag_03",
				"pes_gameplay_rally_flag_04"
			},
			sound_events_duration = {
				3.0437500476837,
				2.9084167480469,
				2.7862501144409,
				4.4114999771118
			}
		},
		pes_gameplay_seeing_a_faith_coin = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "seen_items",
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
				"pes_gameplay_seeing_a_faith_coin_01",
				"pes_gameplay_seeing_a_faith_coin_02",
				"pes_gameplay_seeing_a_faith_coin_03",
				"pes_gameplay_seeing_a_faith_coin_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_gameplay_seeing_a_faith_coin_01",
				"pes_gameplay_seeing_a_faith_coin_02",
				"pes_gameplay_seeing_a_faith_coin_03",
				"pes_gameplay_seeing_a_faith_coin_04"
			},
			sound_events_duration = {
				1.0264375209808,
				1.6376667022705,
				1.9759792089462,
				2.1858332157135
			}
		},
		pes_gameplay_using_a_weapon_shrine = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "seen_items",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pes_gameplay_using_a_weapon_shrine_01",
				"pes_gameplay_using_a_weapon_shrine_02",
				"pes_gameplay_using_a_weapon_shrine_03",
				"pes_gameplay_using_a_weapon_shrine_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_gameplay_using_a_weapon_shrine_01",
				"pes_gameplay_using_a_weapon_shrine_02",
				"pes_gameplay_using_a_weapon_shrine_03",
				"pes_gameplay_using_a_weapon_shrine_04"
			},
			sound_events_duration = {
				1.4069374799728,
				1.8567500114441,
				2.3390624523163,
				2.7241249084473
			}
		},
		pes_gorge_event_start = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "special_occasion",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pes_gorge_event_start_01",
				"pes_gorge_event_start_02",
				"pes_gorge_event_start_03",
				"pes_gorge_event_start_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_gorge_event_start_01",
				"pes_gorge_event_start_02",
				"pes_gorge_event_start_03",
				"pes_gorge_event_start_04"
			},
			sound_events_duration = {
				1.6848333477974,
				2.2493853569031,
				3.1255415678024,
				3.5554792881012
			}
		},
		pes_mines_event_start = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "special_occasion",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pes_mines_event_start_01",
				"pes_mines_event_start_02",
				"pes_mines_event_start_03",
				"pes_mines_event_start_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_mines_event_start_01",
				"pes_mines_event_start_02",
				"pes_mines_event_start_03",
				"pes_mines_event_start_04"
			},
			sound_events_duration = {
				4.5126979351044,
				2.8014062643051,
				2.3561354875565,
				3.5947290658951
			}
		},
		pes_morris_arena_survive_a = {
			randomize_indexes_n = 0,
			face_animations_n = 16,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 16,
			category = "special_occasion",
			dialogue_animations_n = 16,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
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
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pes_morris_arena_survive_01",
				"pes_morris_arena_survive_02",
				"pes_morris_arena_survive_03",
				"pes_morris_arena_survive_04",
				"pes_morris_arena_survive_05",
				"pes_morris_arena_survive_06",
				"pes_morris_arena_survive_07",
				"pes_morris_arena_survive_08",
				"pes_morris_arena_survive_09",
				"pes_morris_arena_survive_10",
				"pes_morris_arena_survive_11",
				"pes_morris_arena_survive_12",
				"pes_morris_arena_survive_13",
				"pes_morris_arena_survive_14",
				"pes_morris_arena_survive_15",
				"pes_morris_arena_survive_16"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_morris_arena_survive_01",
				"pes_morris_arena_survive_02",
				"pes_morris_arena_survive_03",
				"pes_morris_arena_survive_04",
				"pes_morris_arena_survive_05",
				"pes_morris_arena_survive_06",
				"pes_morris_arena_survive_07",
				"pes_morris_arena_survive_08",
				"pes_morris_arena_survive_09",
				"pes_morris_arena_survive_10",
				"pes_morris_arena_survive_11",
				"pes_morris_arena_survive_12",
				"pes_morris_arena_survive_13",
				"pes_morris_arena_survive_14",
				"pes_morris_arena_survive_15",
				"pes_morris_arena_survive_16"
			},
			sound_events_duration = {
				1.8906249403954,
				1.9516249895096,
				2.8393124938011,
				2.4355521202087,
				2.6985000371933,
				2.3333644866943,
				2.8598853349686,
				2.4124270677567,
				3.8484271764755,
				3.0583020448685,
				3.2421666383743,
				2.7815417051315,
				2.2382500171661,
				3.1645833253861,
				1.8767083883286,
				4.0451146364212
			}
		},
		pes_morris_arena_survive_b = {
			randomize_indexes_n = 0,
			face_animations_n = 16,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 16,
			category = "special_occasion",
			dialogue_animations_n = 16,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
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
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pes_morris_arena_survive_01",
				"pes_morris_arena_survive_02",
				"pes_morris_arena_survive_03",
				"pes_morris_arena_survive_04",
				"pes_morris_arena_survive_05",
				"pes_morris_arena_survive_06",
				"pes_morris_arena_survive_07",
				"pes_morris_arena_survive_08",
				"pes_morris_arena_survive_09",
				"pes_morris_arena_survive_10",
				"pes_morris_arena_survive_11",
				"pes_morris_arena_survive_12",
				"pes_morris_arena_survive_13",
				"pes_morris_arena_survive_14",
				"pes_morris_arena_survive_15",
				"pes_morris_arena_survive_16"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_morris_arena_survive_01",
				"pes_morris_arena_survive_02",
				"pes_morris_arena_survive_03",
				"pes_morris_arena_survive_04",
				"pes_morris_arena_survive_05",
				"pes_morris_arena_survive_06",
				"pes_morris_arena_survive_07",
				"pes_morris_arena_survive_08",
				"pes_morris_arena_survive_09",
				"pes_morris_arena_survive_10",
				"pes_morris_arena_survive_11",
				"pes_morris_arena_survive_12",
				"pes_morris_arena_survive_13",
				"pes_morris_arena_survive_14",
				"pes_morris_arena_survive_15",
				"pes_morris_arena_survive_16"
			},
			sound_events_duration = {
				1.8906249403954,
				1.9516249895096,
				2.8393124938011,
				2.4355521202087,
				2.6985000371933,
				2.3333644866943,
				2.8598853349686,
				2.4124270677567,
				3.8484271764755,
				3.0583020448685,
				3.2421666383743,
				2.7815417051315,
				2.2382500171661,
				3.1645833253861,
				1.8767083883286,
				4.0451146364212
			}
		},
		pes_morris_citadel_altar = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "special_occasion",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pes_morris_citadel_altar_01",
				"pes_morris_citadel_altar_02",
				"pes_morris_citadel_altar_03",
				"pes_morris_citadel_altar_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_morris_citadel_altar_01",
				"pes_morris_citadel_altar_02",
				"pes_morris_citadel_altar_03",
				"pes_morris_citadel_altar_04"
			},
			sound_events_duration = {
				2.8004374504089,
				3.857479095459,
				3.1690208911896,
				3.9386875629425
			}
		},
		pes_morris_curse_tzeentch_egg = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "seen_items",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry"
			},
			localization_strings = {
				"pes_morris_tzeentch_egg_a_01",
				"pes_morris_tzeentch_egg_a_02",
				"pes_morris_tzeentch_egg_a_03",
				"pes_morris_tzeentch_egg_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_morris_tzeentch_egg_a_01",
				"pes_morris_tzeentch_egg_a_02",
				"pes_morris_tzeentch_egg_a_03",
				"pes_morris_tzeentch_egg_a_04"
			},
			sound_events_duration = {
				1.2598541975021,
				1.2313333749771,
				1.6694791316986,
				1.7224583625793
			}
		},
		pes_morris_foreboding = {
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 8,
			category = "special_occasion",
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
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pes_morris_foreboding_01",
				"pes_morris_foreboding_02",
				"pes_morris_foreboding_03",
				"pes_morris_foreboding_04",
				"pes_morris_foreboding_05",
				"pes_morris_foreboding_06",
				"pes_morris_foreboding_07",
				"pes_morris_foreboding_08"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_morris_foreboding_01",
				"pes_morris_foreboding_02",
				"pes_morris_foreboding_03",
				"pes_morris_foreboding_04",
				"pes_morris_foreboding_05",
				"pes_morris_foreboding_06",
				"pes_morris_foreboding_07",
				"pes_morris_foreboding_08"
			},
			sound_events_duration = {
				1.7613020539284,
				3.1308020353317,
				2.7886145114899,
				2.1678958535194,
				3.1287083625794,
				4.7691876888275,
				4.1234687566757,
				3.1316562891007
			}
		},
		pes_morris_ritual_start = {
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 8,
			category = "special_occasion",
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
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pes_morris_ritual_start_01",
				"pes_morris_ritual_start_02",
				"pes_morris_ritual_start_03",
				"pes_morris_ritual_start_04",
				"pes_morris_ritual_start_05",
				"pes_morris_ritual_start_06",
				"pes_morris_ritual_start_07",
				"pes_morris_ritual_start_08"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_morris_ritual_start_01",
				"pes_morris_ritual_start_02",
				"pes_morris_ritual_start_03",
				"pes_morris_ritual_start_04",
				"pes_morris_ritual_start_05",
				"pes_morris_ritual_start_06",
				"pes_morris_ritual_start_07",
				"pes_morris_ritual_start_08"
			},
			sound_events_duration = {
				2.6123021841049,
				3.4607915878296,
				2.9405000209808,
				2.7893124818802,
				3.3859063386917,
				3.0211563110352,
				3.4684479236603,
				4.1114165782929
			}
		},
		pes_morris_run_complete = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "special_occasion",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pes_morris_run_complete_01",
				"pes_morris_run_complete_02",
				"pes_morris_run_complete_03",
				"pes_morris_run_complete_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_morris_run_complete_01",
				"pes_morris_run_complete_02",
				"pes_morris_run_complete_03",
				"pes_morris_run_complete_04"
			},
			sound_events_duration = {
				3.3342707157135,
				3.4146873950958,
				3.0885207653046,
				2.7983124256134
			}
		},
		pes_skulking_sorcerer_spotted = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "player_alerts",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pes_gameplay_curse_see_danger_01",
				"pes_gameplay_curse_see_danger_02",
				"pes_gameplay_curse_see_danger_03",
				"pes_gameplay_curse_see_danger_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_gameplay_curse_see_danger_01",
				"pes_gameplay_curse_see_danger_02",
				"pes_gameplay_curse_see_danger_03",
				"pes_gameplay_curse_see_danger_04"
			},
			sound_events_duration = {
				0.80231249332428,
				0.55881249904633,
				1.1438541412354,
				0.84329164028168
			}
		},
		pwe_arena_citadel_continue = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "special_occasion",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pwe_arena_citadel_continue_01",
				"pwe_arena_citadel_continue_02",
				"pwe_arena_citadel_continue_03",
				"pwe_arena_citadel_continue_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_arena_citadel_continue_01",
				"pwe_arena_citadel_continue_02",
				"pwe_arena_citadel_continue_03",
				"pwe_arena_citadel_continue_04"
			},
			sound_events_duration = {
				0.61500000953674,
				1.8486875295639,
				1.4252916574478,
				2.0787291526794
			}
		},
		pwe_arena_citadel_final = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "special_occasion",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pwe_arena_citadel_final_01",
				"pwe_arena_citadel_final_02",
				"pwe_arena_citadel_final_03",
				"pwe_arena_citadel_final_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_arena_citadel_final_01",
				"pwe_arena_citadel_final_02",
				"pwe_arena_citadel_final_03",
				"pwe_arena_citadel_final_04"
			},
			sound_events_duration = {
				4.3528228998184,
				2.6076562404633,
				2.4838229417801,
				3.2421146631241
			}
		},
		pwe_arena_citadel_start = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "special_occasion",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pwe_arena_citadel_start_01",
				"pwe_arena_citadel_start_02",
				"pwe_arena_citadel_start_03",
				"pwe_arena_citadel_start_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_arena_citadel_start_01",
				"pwe_arena_citadel_start_02",
				"pwe_arena_citadel_start_03",
				"pwe_arena_citadel_start_04"
			},
			sound_events_duration = {
				5.2721250057221,
				4.068062543869,
				4.0153332948685,
				4.8068227767944
			}
		},
		pwe_arena_ice_continue = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "special_occasion",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pwe_arena_ice_continue_01",
				"pwe_arena_ice_continue_02",
				"pwe_arena_ice_continue_03",
				"pwe_arena_ice_continue_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_arena_ice_continue_01",
				"pwe_arena_ice_continue_02",
				"pwe_arena_ice_continue_03",
				"pwe_arena_ice_continue_04"
			},
			sound_events_duration = {
				1.8559166193008,
				1.980229139328,
				1.3808749914169,
				1.8733750581741
			}
		},
		pwe_bay_ship_challenge_cross = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "special_occasion",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pwe_bay_ship_challenge_cross_01",
				"pwe_bay_ship_challenge_cross_02",
				"pwe_bay_ship_challenge_cross_03",
				"pwe_bay_ship_challenge_cross_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_bay_ship_challenge_cross_01",
				"pwe_bay_ship_challenge_cross_02",
				"pwe_bay_ship_challenge_cross_03",
				"pwe_bay_ship_challenge_cross_04"
			},
			sound_events_duration = {
				2.2522082328796,
				3.0202083587647,
				3.9160625934601,
				5.2458748817444
			}
		},
		pwe_bay_ship_challenge_response = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "special_occasion",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pwe_bay_ship_challenge_response_01",
				"pwe_bay_ship_challenge_response_02",
				"pwe_bay_ship_challenge_response_03",
				"pwe_bay_ship_challenge_response_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_bay_ship_challenge_response_01",
				"pwe_bay_ship_challenge_response_02",
				"pwe_bay_ship_challenge_response_03",
				"pwe_bay_ship_challenge_response_04"
			},
			sound_events_duration = {
				3.0893957614899,
				2.1511249542236,
				3.3801667690277,
				2.576708316803
			}
		},
		pwe_gameplay_blessing_grimnir_killed = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "player_alerts",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pwe_gameplay_blessing_grimnir_killed_01",
				"pwe_gameplay_blessing_grimnir_killed_02",
				"pwe_gameplay_blessing_grimnir_killed_03",
				"pwe_gameplay_blessing_grimnir_killed_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_gameplay_blessing_grimnir_killed_01",
				"pwe_gameplay_blessing_grimnir_killed_02",
				"pwe_gameplay_blessing_grimnir_killed_03",
				"pwe_gameplay_blessing_grimnir_killed_04"
			},
			sound_events_duration = {
				3.0260417461395,
				4.6751666069031,
				4.232958316803,
				2.8413333892822
			}
		},
		pwe_gameplay_blessing_grimnir_spotted = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "player_alerts",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pwe_gameplay_blessing_grimnir_spotted_01",
				"pwe_gameplay_blessing_grimnir_spotted_02",
				"pwe_gameplay_blessing_grimnir_spotted_03",
				"pwe_gameplay_blessing_grimnir_spotted_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_gameplay_blessing_grimnir_spotted_01",
				"pwe_gameplay_blessing_grimnir_spotted_02",
				"pwe_gameplay_blessing_grimnir_spotted_03",
				"pwe_gameplay_blessing_grimnir_spotted_04"
			},
			sound_events_duration = {
				0.92377084493637,
				1.4732291698456,
				2.3513541221619,
				2.3893332481384
			}
		},
		pwe_gameplay_collecting_a_faith_coin = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "seen_items",
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
				"pwe_gameplay_collecting_a_faith_coin_01",
				"pwe_gameplay_collecting_a_faith_coin_02",
				"pwe_gameplay_collecting_a_faith_coin_03",
				"pwe_gameplay_collecting_a_faith_coin_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_gameplay_collecting_a_faith_coin_01",
				"pwe_gameplay_collecting_a_faith_coin_02",
				"pwe_gameplay_collecting_a_faith_coin_03",
				"pwe_gameplay_collecting_a_faith_coin_04"
			},
			sound_events_duration = {
				0.94066667556763,
				1.6174374818802,
				1.3417708873749,
				1.9100625514984
			}
		},
		pwe_gameplay_curse_damage_taken = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "player_alerts",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_pain",
				"face_pain",
				"face_pain",
				"face_pain"
			},
			localization_strings = {
				"pwe_gameplay_curse_damage_taken_01",
				"pwe_gameplay_curse_damage_taken_02",
				"pwe_gameplay_curse_damage_taken_03",
				"pwe_gameplay_curse_damage_taken_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_gameplay_curse_damage_taken_01",
				"pwe_gameplay_curse_damage_taken_02",
				"pwe_gameplay_curse_damage_taken_03",
				"pwe_gameplay_curse_damage_taken_04"
			},
			sound_events_duration = {
				1.5973333120346,
				1.716916680336,
				1.8300000429153,
				2.3550624847412
			}
		},
		pwe_gameplay_curse_killed_marked_enemy = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "enemy_alerts",
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
				"pwe_gameplay_curse_killed_marked_enemy_01",
				"pwe_gameplay_curse_killed_marked_enemy_02",
				"pwe_gameplay_curse_killed_marked_enemy_03",
				"pwe_gameplay_curse_killed_marked_enemy_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_gameplay_curse_killed_marked_enemy_01",
				"pwe_gameplay_curse_killed_marked_enemy_02",
				"pwe_gameplay_curse_killed_marked_enemy_03",
				"pwe_gameplay_curse_killed_marked_enemy_04"
			},
			sound_events_duration = {
				2.1176874637604,
				2.8084166049957,
				2.0029375553131,
				3.3490417003632
			}
		},
		pwe_gameplay_curse_move_on = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "level_talk",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pwe_gameplay_curse_move_on_01",
				"pwe_gameplay_curse_move_on_02",
				"pwe_gameplay_curse_move_on_03",
				"pwe_gameplay_curse_move_on_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_gameplay_curse_move_on_01",
				"pwe_gameplay_curse_move_on_02",
				"pwe_gameplay_curse_move_on_03",
				"pwe_gameplay_curse_move_on_04"
			},
			sound_events_duration = {
				1.4359686970711,
				1.7481875419617,
				1.2278958559036,
				1.88045835495
			}
		},
		pwe_gameplay_curse_negative_effect_happened = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "enemy_alerts",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pwe_gameplay_curse_negative_effect_happened_01",
				"pwe_gameplay_curse_negative_effect_happened_02",
				"pwe_gameplay_curse_negative_effect_happened_03",
				"pwe_gameplay_curse_negative_effect_happened_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_gameplay_curse_negative_effect_happened_01",
				"pwe_gameplay_curse_negative_effect_happened_02",
				"pwe_gameplay_curse_negative_effect_happened_03",
				"pwe_gameplay_curse_negative_effect_happened_04"
			},
			sound_events_duration = {
				0.92941665649414,
				0.49695834517479,
				0.99618750810623,
				1.5255000591278
			}
		},
		pwe_gameplay_curse_objective_achieved = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "special_occasion",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pwe_gameplay_curse_objective_achieved_01",
				"pwe_gameplay_curse_objective_achieved_02",
				"pwe_gameplay_curse_objective_achieved_03",
				"pwe_gameplay_curse_objective_achieved_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_gameplay_curse_objective_achieved_01",
				"pwe_gameplay_curse_objective_achieved_02",
				"pwe_gameplay_curse_objective_achieved_03",
				"pwe_gameplay_curse_objective_achieved_04"
			},
			sound_events_duration = {
				0.61102086305618,
				1.1826875209808,
				2.835000038147,
				1.5572082996368
			}
		},
		pwe_gameplay_curse_positive_effect_happened = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "player_alerts",
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
				"pwe_gameplay_curse_positive_effect_happened_01",
				"pwe_gameplay_curse_positive_effect_happened_02",
				"pwe_gameplay_curse_positive_effect_happened_03",
				"pwe_gameplay_curse_positive_effect_happened_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_gameplay_curse_positive_effect_happened_01",
				"pwe_gameplay_curse_positive_effect_happened_02",
				"pwe_gameplay_curse_positive_effect_happened_03",
				"pwe_gameplay_curse_positive_effect_happened_04"
			},
			sound_events_duration = {
				0.76018750667572,
				1.0087916851044,
				1.0195624828339,
				1.5709999799728
			}
		},
		pwe_gameplay_curse_see_danger = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "player_alerts",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_pain",
				"face_pain",
				"face_pain",
				"face_pain"
			},
			localization_strings = {
				"pwe_gameplay_curse_see_danger_01",
				"pwe_gameplay_curse_see_danger_02",
				"pwe_gameplay_curse_see_danger_03",
				"pwe_gameplay_curse_see_danger_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_gameplay_curse_see_danger_01",
				"pwe_gameplay_curse_see_danger_02",
				"pwe_gameplay_curse_see_danger_03",
				"pwe_gameplay_curse_see_danger_04"
			},
			sound_events_duration = {
				1.3602291345596,
				0.74000000953674,
				1.2258229255676,
				1.4561250209808
			}
		},
		pwe_gameplay_curse_see_danger_event = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "player_alerts",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_pain",
				"face_pain",
				"face_pain",
				"face_pain"
			},
			localization_strings = {
				"pwe_gameplay_curse_see_danger_01",
				"pwe_gameplay_curse_see_danger_02",
				"pwe_gameplay_curse_see_danger_03",
				"pwe_gameplay_curse_see_danger_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_gameplay_curse_see_danger_01",
				"pwe_gameplay_curse_see_danger_02",
				"pwe_gameplay_curse_see_danger_03",
				"pwe_gameplay_curse_see_danger_04"
			},
			sound_events_duration = {
				1.3602291345596,
				0.74000000953674,
				1.2258229255676,
				1.4561250209808
			}
		},
		pwe_gameplay_curse_see_objective = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "seen_items",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pwe_gameplay_curse_see_objective_01",
				"pwe_gameplay_curse_see_objective_02",
				"pwe_gameplay_curse_see_objective_03",
				"pwe_gameplay_curse_see_objective_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_gameplay_curse_see_objective_01",
				"pwe_gameplay_curse_see_objective_02",
				"pwe_gameplay_curse_see_objective_03",
				"pwe_gameplay_curse_see_objective_04"
			},
			sound_events_duration = {
				1.7870625257492,
				2.042375087738,
				3.8581459522247,
				1.6373958587647
			}
		},
		pwe_gameplay_curse_see_objective_event = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "seen_items",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pwe_gameplay_curse_see_objective_01",
				"pwe_gameplay_curse_see_objective_02",
				"pwe_gameplay_curse_see_objective_03",
				"pwe_gameplay_curse_see_objective_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_gameplay_curse_see_objective_01",
				"pwe_gameplay_curse_see_objective_02",
				"pwe_gameplay_curse_see_objective_03",
				"pwe_gameplay_curse_see_objective_04"
			},
			sound_events_duration = {
				1.7870625257492,
				2.042375087738,
				3.8581459522247,
				1.6373958587647
			}
		},
		pwe_gameplay_curse_very_negative_effect_happened = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "special_occasion",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			},
			localization_strings = {
				"pwe_gameplay_curse_very_negative_effect_happened_01",
				"pwe_gameplay_curse_very_negative_effect_happened_02",
				"pwe_gameplay_curse_very_negative_effect_happened_03",
				"pwe_gameplay_curse_very_negative_effect_happened_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_gameplay_curse_very_negative_effect_happened_01",
				"pwe_gameplay_curse_very_negative_effect_happened_02",
				"pwe_gameplay_curse_very_negative_effect_happened_03",
				"pwe_gameplay_curse_very_negative_effect_happened_04"
			},
			sound_events_duration = {
				1.6041666269302,
				2.2971251010895,
				1.0410416126251,
				2.037166595459
			}
		},
		pwe_gameplay_curse_very_positive_effect_happened = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "level_talk",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pwe_gameplay_curse_very_positive_effect_happened_01",
				"pwe_gameplay_curse_very_positive_effect_happened_02",
				"pwe_gameplay_curse_very_positive_effect_happened_03",
				"pwe_gameplay_curse_very_positive_effect_happened_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_gameplay_curse_very_positive_effect_happened_01",
				"pwe_gameplay_curse_very_positive_effect_happened_02",
				"pwe_gameplay_curse_very_positive_effect_happened_03",
				"pwe_gameplay_curse_very_positive_effect_happened_04"
			},
			sound_events_duration = {
				0.9296875,
				2.1389167308807,
				2.0734167098999,
				2.0300624370575
			}
		},
		pwe_gameplay_cursed_chest = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "player_feedback",
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
				"pwe_gameplay_cursed_chest_01",
				"pwe_gameplay_cursed_chest_02",
				"pwe_gameplay_cursed_chest_03",
				"pwe_gameplay_cursed_chest_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_gameplay_cursed_chest_01",
				"pwe_gameplay_cursed_chest_02",
				"pwe_gameplay_cursed_chest_03",
				"pwe_gameplay_cursed_chest_04"
			},
			sound_events_duration = {
				2.0908124446869,
				1.7935832738876,
				1.4074167013168,
				2.2584166526794
			}
		},
		pwe_gameplay_cursed_chest_activated = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "player_feedback",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pwe_gameplay_cursed_chest_activated_01",
				"pwe_gameplay_cursed_chest_activated_02",
				"pwe_gameplay_cursed_chest_activated_03",
				"pwe_gameplay_cursed_chest_activated_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_gameplay_cursed_chest_activated_01",
				"pwe_gameplay_cursed_chest_activated_02",
				"pwe_gameplay_cursed_chest_activated_03",
				"pwe_gameplay_cursed_chest_activated_04"
			},
			sound_events_duration = {
				2.7307915687561,
				2.9798333644867,
				3.121791601181,
				2.9169375896454
			}
		},
		pwe_gameplay_cursed_chest_ping = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "player_feedback",
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
				"pwe_gameplay_cursed_chest_01",
				"pwe_gameplay_cursed_chest_02",
				"pwe_gameplay_cursed_chest_03",
				"pwe_gameplay_cursed_chest_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_gameplay_cursed_chest_01",
				"pwe_gameplay_cursed_chest_02",
				"pwe_gameplay_cursed_chest_03",
				"pwe_gameplay_cursed_chest_04"
			},
			sound_events_duration = {
				2.0908124446869,
				1.7935832738876,
				1.4074167013168,
				2.2584166526794
			}
		},
		pwe_gameplay_isha_blessing = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "mutator_special_occasion",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pwe_gameplay_isha_blessing_01",
				"pwe_gameplay_isha_blessing_02",
				"pwe_gameplay_isha_blessing_03",
				"pwe_gameplay_isha_blessing_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_gameplay_isha_blessing_01",
				"pwe_gameplay_isha_blessing_02",
				"pwe_gameplay_isha_blessing_03",
				"pwe_gameplay_isha_blessing_04"
			},
			sound_events_duration = {
				1.9808958768845,
				2.1719374656677,
				2.1133124828339,
				2.5807292461395
			}
		},
		pwe_gameplay_orb_of_morgrim = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "activate_ability",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_curious",
				"face_curious",
				"face_curious",
				"face_curious"
			},
			localization_strings = {
				"pwe_gameplay_orb_of_morgrim_01",
				"pwe_gameplay_orb_of_morgrim_02",
				"pwe_gameplay_orb_of_morgrim_03",
				"pwe_gameplay_orb_of_morgrim_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_gameplay_orb_of_morgrim_01",
				"pwe_gameplay_orb_of_morgrim_02",
				"pwe_gameplay_orb_of_morgrim_03",
				"pwe_gameplay_orb_of_morgrim_04"
			},
			sound_events_duration = {
				1.1597291231155,
				2.0784583091736,
				1.8505208492279,
				2.3696458339691
			}
		},
		pwe_gameplay_rally_flag = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "player_alerts",
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
				"pwe_gameplay_rally_flag_01",
				"pwe_gameplay_rally_flag_02",
				"pwe_gameplay_rally_flag_03",
				"pwe_gameplay_rally_flag_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_gameplay_rally_flag_01",
				"pwe_gameplay_rally_flag_02",
				"pwe_gameplay_rally_flag_03",
				"pwe_gameplay_rally_flag_04"
			},
			sound_events_duration = {
				2.1099584102631,
				2.4144582748413,
				1.8509896397591,
				5.1466040611267
			}
		},
		pwe_gameplay_seeing_a_faith_coin = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "seen_items",
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
				"pwe_gameplay_seeing_a_faith_coin_01",
				"pwe_gameplay_seeing_a_faith_coin_02",
				"pwe_gameplay_seeing_a_faith_coin_03",
				"pwe_gameplay_seeing_a_faith_coin_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_gameplay_seeing_a_faith_coin_01",
				"pwe_gameplay_seeing_a_faith_coin_02",
				"pwe_gameplay_seeing_a_faith_coin_03",
				"pwe_gameplay_seeing_a_faith_coin_04"
			},
			sound_events_duration = {
				1.3475416898727,
				1.9762500524521,
				2.0613541603088,
				2.5646667480469
			}
		},
		pwe_gameplay_using_a_weapon_shrine = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "seen_items",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pwe_gameplay_using_a_weapon_shrine_01",
				"pwe_gameplay_using_a_weapon_shrine_02",
				"pwe_gameplay_using_a_weapon_shrine_03",
				"pwe_gameplay_using_a_weapon_shrine_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_gameplay_using_a_weapon_shrine_01",
				"pwe_gameplay_using_a_weapon_shrine_02",
				"pwe_gameplay_using_a_weapon_shrine_03",
				"pwe_gameplay_using_a_weapon_shrine_04"
			},
			sound_events_duration = {
				1.5598332881927,
				2.4627916812897,
				2.6427707672119,
				3.4636874198914
			}
		},
		pwe_gorge_event_start = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "special_occasion",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pwe_gorge_event_start_01",
				"pwe_gorge_event_start_02",
				"pwe_gorge_event_start_03",
				"pwe_gorge_event_start_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_gorge_event_start_01",
				"pwe_gorge_event_start_02",
				"pwe_gorge_event_start_03",
				"pwe_gorge_event_start_04"
			},
			sound_events_duration = {
				2.0188541412353,
				2.0582082271576,
				5.1899166107178,
				3.5519165992737
			}
		},
		pwe_mines_event_start = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "special_occasion",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pwe_mines_event_start_01",
				"pwe_mines_event_start_02",
				"pwe_mines_event_start_03",
				"pwe_mines_event_start_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_mines_event_start_01",
				"pwe_mines_event_start_02",
				"pwe_mines_event_start_03",
				"pwe_mines_event_start_04"
			},
			sound_events_duration = {
				2.4170104265213,
				3.5452916622162,
				3.1433229446411,
				5.2178957462311
			}
		},
		pwe_morris_arena_survive_a = {
			randomize_indexes_n = 0,
			face_animations_n = 16,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 16,
			category = "special_occasion",
			dialogue_animations_n = 16,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
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
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pwe_morris_arena_survive_01",
				"pwe_morris_arena_survive_02",
				"pwe_morris_arena_survive_03",
				"pwe_morris_arena_survive_04",
				"pwe_morris_arena_survive_05",
				"pwe_morris_arena_survive_06",
				"pwe_morris_arena_survive_07",
				"pwe_morris_arena_survive_08",
				"pwe_morris_arena_survive_09",
				"pwe_morris_arena_survive_10",
				"pwe_morris_arena_survive_11",
				"pwe_morris_arena_survive_12",
				"pwe_morris_arena_survive_13",
				"pwe_morris_arena_survive_14",
				"pwe_morris_arena_survive_15",
				"pwe_morris_arena_survive_16"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_morris_arena_survive_01",
				"pwe_morris_arena_survive_02",
				"pwe_morris_arena_survive_03",
				"pwe_morris_arena_survive_04",
				"pwe_morris_arena_survive_05",
				"pwe_morris_arena_survive_06",
				"pwe_morris_arena_survive_07",
				"pwe_morris_arena_survive_08",
				"pwe_morris_arena_survive_09",
				"pwe_morris_arena_survive_10",
				"pwe_morris_arena_survive_11",
				"pwe_morris_arena_survive_12",
				"pwe_morris_arena_survive_13",
				"pwe_morris_arena_survive_14",
				"pwe_morris_arena_survive_15",
				"pwe_morris_arena_survive_16"
			},
			sound_events_duration = {
				3.1642291545868,
				3.3595104217529,
				3.846041560173,
				2.6761146783829,
				3.2477707862854,
				3.5394479036331,
				2.9100208282471,
				3.7761147022247,
				2.512635409832,
				3.3015103340149,
				2.5878645181656,
				3.508114695549,
				3.1479375362396,
				2.8618125915527,
				3.1301666498184,
				3.334343791008
			}
		},
		pwe_morris_arena_survive_b = {
			randomize_indexes_n = 0,
			face_animations_n = 16,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 16,
			category = "special_occasion",
			dialogue_animations_n = 16,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
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
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pwe_morris_arena_survive_01",
				"pwe_morris_arena_survive_02",
				"pwe_morris_arena_survive_03",
				"pwe_morris_arena_survive_04",
				"pwe_morris_arena_survive_05",
				"pwe_morris_arena_survive_06",
				"pwe_morris_arena_survive_07",
				"pwe_morris_arena_survive_08",
				"pwe_morris_arena_survive_09",
				"pwe_morris_arena_survive_10",
				"pwe_morris_arena_survive_11",
				"pwe_morris_arena_survive_12",
				"pwe_morris_arena_survive_13",
				"pwe_morris_arena_survive_14",
				"pwe_morris_arena_survive_15",
				"pwe_morris_arena_survive_16"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_morris_arena_survive_01",
				"pwe_morris_arena_survive_02",
				"pwe_morris_arena_survive_03",
				"pwe_morris_arena_survive_04",
				"pwe_morris_arena_survive_05",
				"pwe_morris_arena_survive_06",
				"pwe_morris_arena_survive_07",
				"pwe_morris_arena_survive_08",
				"pwe_morris_arena_survive_09",
				"pwe_morris_arena_survive_10",
				"pwe_morris_arena_survive_11",
				"pwe_morris_arena_survive_12",
				"pwe_morris_arena_survive_13",
				"pwe_morris_arena_survive_14",
				"pwe_morris_arena_survive_15",
				"pwe_morris_arena_survive_16"
			},
			sound_events_duration = {
				3.1642291545868,
				3.3595104217529,
				3.846041560173,
				2.6761146783829,
				3.2477707862854,
				3.5394479036331,
				2.9100208282471,
				3.7761147022247,
				2.512635409832,
				3.3015103340149,
				2.5878645181656,
				3.508114695549,
				3.1479375362396,
				2.8618125915527,
				3.1301666498184,
				3.334343791008
			}
		},
		pwe_morris_citadel_altar = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "special_occasion",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pwe_morris_citadel_altar_01",
				"pwe_morris_citadel_altar_02",
				"pwe_morris_citadel_altar_03",
				"pwe_morris_citadel_altar_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_morris_citadel_altar_01",
				"pwe_morris_citadel_altar_02",
				"pwe_morris_citadel_altar_03",
				"pwe_morris_citadel_altar_04"
			},
			sound_events_duration = {
				3.4664375782013,
				4.9646043777466,
				5.7408957481384,
				6.001437664032
			}
		},
		pwe_morris_curse_tzeentch_egg = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "seen_items",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry"
			},
			localization_strings = {
				"pwe_morris_tzeentch_egg_a_01",
				"pwe_morris_tzeentch_egg_a_02",
				"pwe_morris_tzeentch_egg_a_03",
				"pwe_morris_tzeentch_egg_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_morris_tzeentch_egg_a_01",
				"pwe_morris_tzeentch_egg_a_02",
				"pwe_morris_tzeentch_egg_a_03",
				"pwe_morris_tzeentch_egg_a_04"
			},
			sound_events_duration = {
				2.1853749752045,
				2.0611457824707,
				1.4969166517258,
				1.5841875076294
			}
		},
		pwe_morris_foreboding = {
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 8,
			category = "special_occasion",
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
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pwe_morris_foreboding_01",
				"pwe_morris_foreboding_02",
				"pwe_morris_foreboding_03",
				"pwe_morris_foreboding_04",
				"pwe_morris_foreboding_05",
				"pwe_morris_foreboding_06",
				"pwe_morris_foreboding_07",
				"pwe_morris_foreboding_08"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_morris_foreboding_01",
				"pwe_morris_foreboding_02",
				"pwe_morris_foreboding_03",
				"pwe_morris_foreboding_04",
				"pwe_morris_foreboding_05",
				"pwe_morris_foreboding_06",
				"pwe_morris_foreboding_07",
				"pwe_morris_foreboding_08"
			},
			sound_events_duration = {
				2.6435104012489,
				3.5034478902817,
				3.6550312042236,
				2.7031667232513,
				3.6438437700272,
				3.6100417375565,
				3.2811459302902,
				3.7175312042236
			}
		},
		pwe_morris_ritual_start = {
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 8,
			category = "special_occasion",
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
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pwe_morris_ritual_start_01",
				"pwe_morris_ritual_start_02",
				"pwe_morris_ritual_start_03",
				"pwe_morris_ritual_start_04",
				"pwe_morris_ritual_start_05",
				"pwe_morris_ritual_start_06",
				"pwe_morris_ritual_start_07",
				"pwe_morris_ritual_start_08"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_morris_ritual_start_01",
				"pwe_morris_ritual_start_02",
				"pwe_morris_ritual_start_03",
				"pwe_morris_ritual_start_04",
				"pwe_morris_ritual_start_05",
				"pwe_morris_ritual_start_06",
				"pwe_morris_ritual_start_07",
				"pwe_morris_ritual_start_08"
			},
			sound_events_duration = {
				3.4855833053589,
				4.4064061641693,
				4.1941146850586,
				2.6705833673477,
				4.0554480552673,
				3.7705415487289,
				3.422156214714,
				4.6004791259766
			}
		},
		pwe_morris_run_complete = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "special_occasion",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pwe_morris_run_complete_01",
				"pwe_morris_run_complete_02",
				"pwe_morris_run_complete_03",
				"pwe_morris_run_complete_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_morris_run_complete_01",
				"pwe_morris_run_complete_02",
				"pwe_morris_run_complete_03",
				"pwe_morris_run_complete_04"
			},
			sound_events_duration = {
				5.6873540878296,
				1.862208366394,
				2.7751250267029,
				2.7387082576752
			}
		},
		pwe_skulking_sorcerer_spotted = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "player_alerts",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pwe_gameplay_curse_see_danger_01",
				"pwe_gameplay_curse_see_danger_02",
				"pwe_gameplay_curse_see_danger_03",
				"pwe_gameplay_curse_see_danger_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_gameplay_curse_see_danger_01",
				"pwe_gameplay_curse_see_danger_02",
				"pwe_gameplay_curse_see_danger_03",
				"pwe_gameplay_curse_see_danger_04"
			},
			sound_events_duration = {
				1.3602291345596,
				0.74000000953674,
				1.2258229255676,
				1.4561250209808
			}
		},
		pwh_arena_citadel_continue = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "special_occasion",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pwh_arena_citadel_continue_01",
				"pwh_arena_citadel_continue_02",
				"pwh_arena_citadel_continue_03",
				"pwh_arena_citadel_continue_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_arena_citadel_continue_01",
				"pwh_arena_citadel_continue_02",
				"pwh_arena_citadel_continue_03",
				"pwh_arena_citadel_continue_04"
			},
			sound_events_duration = {
				1.3554791212082,
				1.3280625343323,
				1.5929374694824,
				2.4340832233429
			}
		},
		pwh_arena_citadel_final = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "special_occasion",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pwh_arena_citadel_final_01",
				"pwh_arena_citadel_final_02",
				"pwh_arena_citadel_final_03",
				"pwh_arena_citadel_final_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_arena_citadel_final_01",
				"pwh_arena_citadel_final_02",
				"pwh_arena_citadel_final_03",
				"pwh_arena_citadel_final_04"
			},
			sound_events_duration = {
				5.8980624675751,
				2.2556250095367,
				3.8483543395996,
				3.7335312366486
			}
		},
		pwh_arena_citadel_start = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "special_occasion",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pwh_arena_citadel_start_01",
				"pwh_arena_citadel_start_02",
				"pwh_arena_citadel_start_03",
				"pwh_arena_citadel_start_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_arena_citadel_start_01",
				"pwh_arena_citadel_start_02",
				"pwh_arena_citadel_start_03",
				"pwh_arena_citadel_start_04"
			},
			sound_events_duration = {
				3.777760386467,
				2.2425624132156,
				3.4404896497726,
				4.1853333711624
			}
		},
		pwh_arena_ice_continue = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "special_occasion",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pwh_arena_ice_continue_01",
				"pwh_arena_ice_continue_02",
				"pwh_arena_ice_continue_03",
				"pwh_arena_ice_continue_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_arena_ice_continue_01",
				"pwh_arena_ice_continue_02",
				"pwh_arena_ice_continue_03",
				"pwh_arena_ice_continue_04"
			},
			sound_events_duration = {
				3.0496249198914,
				4.0964999198914,
				2.2105207443237,
				2.3577291965485
			}
		},
		pwh_bay_ship_challenge_cross = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "special_occasion",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pwh_bay_ship_challenge_cross_01",
				"pwh_bay_ship_challenge_cross_02",
				"pwh_bay_ship_challenge_cross_03",
				"pwh_bay_ship_challenge_cross_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_bay_ship_challenge_cross_01",
				"pwh_bay_ship_challenge_cross_02",
				"pwh_bay_ship_challenge_cross_03",
				"pwh_bay_ship_challenge_cross_04"
			},
			sound_events_duration = {
				5.902708530426,
				4.2199792861939,
				4.3814582824707,
				5.7230000495911
			}
		},
		pwh_bay_ship_challenge_response = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "special_occasion",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pwh_bay_ship_challenge_response_01",
				"pwh_bay_ship_challenge_response_02",
				"pwh_bay_ship_challenge_response_03",
				"pwh_bay_ship_challenge_response_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_bay_ship_challenge_response_01",
				"pwh_bay_ship_challenge_response_02",
				"pwh_bay_ship_challenge_response_03",
				"pwh_bay_ship_challenge_response_04"
			},
			sound_events_duration = {
				1.8647708892822,
				1.7668124437332,
				4.2301249504089,
				2.8314166069031
			}
		},
		pwh_gameplay_blessing_grimnir_killed = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "player_alerts",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pwh_gameplay_blessing_grimnir_killed_01",
				"pwh_gameplay_blessing_grimnir_killed_02",
				"pwh_gameplay_blessing_grimnir_killed_03",
				"pwh_gameplay_blessing_grimnir_killed_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_gameplay_blessing_grimnir_killed_01",
				"pwh_gameplay_blessing_grimnir_killed_02",
				"pwh_gameplay_blessing_grimnir_killed_03",
				"pwh_gameplay_blessing_grimnir_killed_04"
			},
			sound_events_duration = {
				3.0155208110809,
				1.5738958120346,
				2.0487084388733,
				3.3547291755676
			}
		},
		pwh_gameplay_blessing_grimnir_spotted = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "player_alerts",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pwh_gameplay_blessing_grimnir_spotted_01",
				"pwh_gameplay_blessing_grimnir_spotted_02",
				"pwh_gameplay_blessing_grimnir_spotted_03",
				"pwh_gameplay_blessing_grimnir_spotted_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_gameplay_blessing_grimnir_spotted_01",
				"pwh_gameplay_blessing_grimnir_spotted_02",
				"pwh_gameplay_blessing_grimnir_spotted_03",
				"pwh_gameplay_blessing_grimnir_spotted_04"
			},
			sound_events_duration = {
				2.3102917671204,
				2.0651249885559,
				4.5376873016357,
				2.1793959140778
			}
		},
		pwh_gameplay_collecting_a_faith_coin = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "seen_items",
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
				"pwh_gameplay_collecting_a_faith_coin_01",
				"pwh_gameplay_collecting_a_faith_coin_02",
				"pwh_gameplay_collecting_a_faith_coin_03",
				"pwh_gameplay_collecting_a_faith_coin_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_gameplay_collecting_a_faith_coin_01",
				"pwh_gameplay_collecting_a_faith_coin_02",
				"pwh_gameplay_collecting_a_faith_coin_03",
				"pwh_gameplay_collecting_a_faith_coin_04"
			},
			sound_events_duration = {
				1.3749166727066,
				2.3473124504089,
				1.7409166097641,
				2.4567084312439
			}
		},
		pwh_gameplay_curse_damage_taken = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "player_alerts",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_pain",
				"face_pain",
				"face_pain",
				"face_pain"
			},
			localization_strings = {
				"pwh_gameplay_curse_damage_taken_01",
				"pwh_gameplay_curse_damage_taken_02",
				"pwh_gameplay_curse_damage_taken_03",
				"pwh_gameplay_curse_damage_taken_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_gameplay_curse_damage_taken_01",
				"pwh_gameplay_curse_damage_taken_02",
				"pwh_gameplay_curse_damage_taken_03",
				"pwh_gameplay_curse_damage_taken_04"
			},
			sound_events_duration = {
				2.3702499866486,
				2.4748332500458,
				3.0705208778381,
				3.8092083930969
			}
		},
		pwh_gameplay_curse_killed_marked_enemy = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "enemy_alerts",
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
				"pwh_gameplay_curse_killed_marked_enemy_01",
				"pwh_gameplay_curse_killed_marked_enemy_02",
				"pwh_gameplay_curse_killed_marked_enemy_03",
				"pwh_gameplay_curse_killed_marked_enemy_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_gameplay_curse_killed_marked_enemy_01",
				"pwh_gameplay_curse_killed_marked_enemy_02",
				"pwh_gameplay_curse_killed_marked_enemy_03",
				"pwh_gameplay_curse_killed_marked_enemy_04"
			},
			sound_events_duration = {
				2.5655624866486,
				3.0089583396912,
				2.618979215622,
				2.5822501182556
			}
		},
		pwh_gameplay_curse_move_on = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "level_talk",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pwh_gameplay_curse_move_on_01",
				"pwh_gameplay_curse_move_on_02",
				"pwh_gameplay_curse_move_on_03",
				"pwh_gameplay_curse_move_on_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_gameplay_curse_move_on_01",
				"pwh_gameplay_curse_move_on_02",
				"pwh_gameplay_curse_move_on_03",
				"pwh_gameplay_curse_move_on_04"
			},
			sound_events_duration = {
				0.7793333530426,
				1.5006874799728,
				2.2438957691193,
				3.5060000419617
			}
		},
		pwh_gameplay_curse_negative_effect_happened = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "enemy_alerts",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pwh_gameplay_curse_negative_effect_happened_01",
				"pwh_gameplay_curse_negative_effect_happened_02",
				"pwh_gameplay_curse_negative_effect_happened_03",
				"pwh_gameplay_curse_negative_effect_happened_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_gameplay_curse_negative_effect_happened_01",
				"pwh_gameplay_curse_negative_effect_happened_02",
				"pwh_gameplay_curse_negative_effect_happened_03",
				"pwh_gameplay_curse_negative_effect_happened_04"
			},
			sound_events_duration = {
				0.66074997186661,
				1.1119999885559,
				2.5488123893738,
				1.8278750181198
			}
		},
		pwh_gameplay_curse_objective_achieved = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "special_occasion",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pwh_gameplay_curse_objective_achieved_01",
				"pwh_gameplay_curse_objective_achieved_02",
				"pwh_gameplay_curse_objective_achieved_03",
				"pwh_gameplay_curse_objective_achieved_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_gameplay_curse_objective_achieved_01",
				"pwh_gameplay_curse_objective_achieved_02",
				"pwh_gameplay_curse_objective_achieved_03",
				"pwh_gameplay_curse_objective_achieved_04"
			},
			sound_events_duration = {
				2.4007916450501,
				3.724687576294,
				3.0721459388733,
				3.49183344841
			}
		},
		pwh_gameplay_curse_positive_effect_happened = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "player_alerts",
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
				"pwh_gameplay_curse_positive_effect_happened_01",
				"pwh_gameplay_curse_positive_effect_happened_02",
				"pwh_gameplay_curse_positive_effect_happened_03",
				"pwh_gameplay_curse_positive_effect_happened_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_gameplay_curse_positive_effect_happened_01",
				"pwh_gameplay_curse_positive_effect_happened_02",
				"pwh_gameplay_curse_positive_effect_happened_03",
				"pwh_gameplay_curse_positive_effect_happened_04"
			},
			sound_events_duration = {
				0.97589582204819,
				1.6476875543594,
				2.7343542575836,
				2.7669999599457
			}
		},
		pwh_gameplay_curse_see_danger = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "player_alerts",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_pain",
				"face_pain",
				"face_pain",
				"face_pain"
			},
			localization_strings = {
				"pwh_gameplay_curse_see_danger_01",
				"pwh_gameplay_curse_see_danger_02",
				"pwh_gameplay_curse_see_danger_03",
				"pwh_gameplay_curse_see_danger_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_gameplay_curse_see_danger_01",
				"pwh_gameplay_curse_see_danger_02",
				"pwh_gameplay_curse_see_danger_03",
				"pwh_gameplay_curse_see_danger_04"
			},
			sound_events_duration = {
				2.1496040821075,
				2.513854265213,
				1.7603125572205,
				3.0945415496826
			}
		},
		pwh_gameplay_curse_see_danger_event = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "player_alerts",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_pain",
				"face_pain",
				"face_pain",
				"face_pain"
			},
			localization_strings = {
				"pwh_gameplay_curse_see_danger_01",
				"pwh_gameplay_curse_see_danger_02",
				"pwh_gameplay_curse_see_danger_03",
				"pwh_gameplay_curse_see_danger_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_gameplay_curse_see_danger_01",
				"pwh_gameplay_curse_see_danger_02",
				"pwh_gameplay_curse_see_danger_03",
				"pwh_gameplay_curse_see_danger_04"
			},
			sound_events_duration = {
				2.1496040821075,
				2.513854265213,
				1.7603125572205,
				3.0945415496826
			}
		},
		pwh_gameplay_curse_see_objective = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "seen_items",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pwh_gameplay_curse_see_objective_01",
				"pwh_gameplay_curse_see_objective_02",
				"pwh_gameplay_curse_see_objective_03",
				"pwh_gameplay_curse_see_objective_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_gameplay_curse_see_objective_01",
				"pwh_gameplay_curse_see_objective_02",
				"pwh_gameplay_curse_see_objective_03",
				"pwh_gameplay_curse_see_objective_04"
			},
			sound_events_duration = {
				2.2146875858307,
				2.3281457424164,
				2.3449165821075,
				2.6082291603088
			}
		},
		pwh_gameplay_curse_see_objective_event = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "seen_items",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pwh_gameplay_curse_see_objective_01",
				"pwh_gameplay_curse_see_objective_02",
				"pwh_gameplay_curse_see_objective_03",
				"pwh_gameplay_curse_see_objective_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_gameplay_curse_see_objective_01",
				"pwh_gameplay_curse_see_objective_02",
				"pwh_gameplay_curse_see_objective_03",
				"pwh_gameplay_curse_see_objective_04"
			},
			sound_events_duration = {
				2.2146875858307,
				2.3281457424164,
				2.3449165821075,
				2.6082291603088
			}
		},
		pwh_gameplay_curse_very_negative_effect_happened = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "special_occasion",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			},
			localization_strings = {
				"pwh_gameplay_curse_very_negative_effect_happened_01",
				"pwh_gameplay_curse_very_negative_effect_happened_02",
				"pwh_gameplay_curse_very_negative_effect_happened_03",
				"pwh_gameplay_curse_very_negative_effect_happened_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_gameplay_curse_very_negative_effect_happened_01",
				"pwh_gameplay_curse_very_negative_effect_happened_02",
				"pwh_gameplay_curse_very_negative_effect_happened_03",
				"pwh_gameplay_curse_very_negative_effect_happened_04"
			},
			sound_events_duration = {
				2.0137083530426,
				0.56424999237061,
				3.1373958587647,
				0.71543747186661
			}
		},
		pwh_gameplay_curse_very_positive_effect_happened = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "level_talk",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pwh_gameplay_curse_very_positive_effect_happened_01",
				"pwh_gameplay_curse_very_positive_effect_happened_02",
				"pwh_gameplay_curse_very_positive_effect_happened_03",
				"pwh_gameplay_curse_very_positive_effect_happened_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_gameplay_curse_very_positive_effect_happened_01",
				"pwh_gameplay_curse_very_positive_effect_happened_02",
				"pwh_gameplay_curse_very_positive_effect_happened_03",
				"pwh_gameplay_curse_very_positive_effect_happened_04"
			},
			sound_events_duration = {
				1.7341666221619,
				2.5079584121704,
				3.7618749141693,
				1.971895813942
			}
		},
		pwh_gameplay_cursed_chest = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "player_feedback",
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
				"pwh_gameplay_cursed_chest_01",
				"pwh_gameplay_cursed_chest_02",
				"pwh_gameplay_cursed_chest_03",
				"pwh_gameplay_cursed_chest_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_gameplay_cursed_chest_01",
				"pwh_gameplay_cursed_chest_02",
				"pwh_gameplay_cursed_chest_03",
				"pwh_gameplay_cursed_chest_04"
			},
			sound_events_duration = {
				2.8473958969116,
				3.5376665592194,
				2.2244167327881,
				3.929229259491
			}
		},
		pwh_gameplay_cursed_chest_activated = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "player_feedback",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pwh_gameplay_cursed_chest_activated_01",
				"pwh_gameplay_cursed_chest_activated_02",
				"pwh_gameplay_cursed_chest_activated_03",
				"pwh_gameplay_cursed_chest_activated_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_gameplay_cursed_chest_activated_01",
				"pwh_gameplay_cursed_chest_activated_02",
				"pwh_gameplay_cursed_chest_activated_03",
				"pwh_gameplay_cursed_chest_activated_04"
			},
			sound_events_duration = {
				2.479395866394,
				1.6554374694824,
				2.2098541259766,
				3.0337083339691
			}
		},
		pwh_gameplay_cursed_chest_ping = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "player_feedback",
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
				"pwh_gameplay_cursed_chest_01",
				"pwh_gameplay_cursed_chest_02",
				"pwh_gameplay_cursed_chest_03",
				"pwh_gameplay_cursed_chest_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_gameplay_cursed_chest_01",
				"pwh_gameplay_cursed_chest_02",
				"pwh_gameplay_cursed_chest_03",
				"pwh_gameplay_cursed_chest_04"
			},
			sound_events_duration = {
				2.8473958969116,
				3.5376665592194,
				2.2244167327881,
				3.929229259491
			}
		},
		pwh_gameplay_isha_blessing = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "mutator_special_occasion",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pwh_gameplay_isha_blessing_01",
				"pwh_gameplay_isha_blessing_02",
				"pwh_gameplay_isha_blessing_03",
				"pwh_gameplay_isha_blessing_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_gameplay_isha_blessing_01",
				"pwh_gameplay_isha_blessing_02",
				"pwh_gameplay_isha_blessing_03",
				"pwh_gameplay_isha_blessing_04"
			},
			sound_events_duration = {
				4.2016458511353,
				3.3542709350586,
				4.0434789657593,
				4.1358122825623
			}
		},
		pwh_gameplay_orb_of_morgrim = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "activate_ability",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_curious",
				"face_curious",
				"face_curious",
				"face_curious"
			},
			localization_strings = {
				"pwh_gameplay_orb_of_morgrim_01",
				"pwh_gameplay_orb_of_morgrim_02",
				"pwh_gameplay_orb_of_morgrim_03",
				"pwh_gameplay_orb_of_morgrim_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_gameplay_orb_of_morgrim_01",
				"pwh_gameplay_orb_of_morgrim_02",
				"pwh_gameplay_orb_of_morgrim_03",
				"pwh_gameplay_orb_of_morgrim_04"
			},
			sound_events_duration = {
				2.9333958625794,
				2.5714583396912,
				2.2033541202545,
				1.3423124551773
			}
		},
		pwh_gameplay_rally_flag = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "player_alerts",
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
				"pwh_gameplay_rally_flag_01",
				"pwh_gameplay_rally_flag_02",
				"pwh_gameplay_rally_flag_03",
				"pwh_gameplay_rally_flag_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_gameplay_rally_flag_01",
				"pwh_gameplay_rally_flag_02",
				"pwh_gameplay_rally_flag_03",
				"pwh_gameplay_rally_flag_04"
			},
			sound_events_duration = {
				2.9492082595825,
				3.6040000915527,
				2.7769582271576,
				2.715916633606
			}
		},
		pwh_gameplay_seeing_a_faith_coin = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "seen_items",
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
				"pwh_gameplay_seeing_a_faith_coin_01",
				"pwh_gameplay_seeing_a_faith_coin_02",
				"pwh_gameplay_seeing_a_faith_coin_03",
				"pwh_gameplay_seeing_a_faith_coin_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_gameplay_seeing_a_faith_coin_01",
				"pwh_gameplay_seeing_a_faith_coin_02",
				"pwh_gameplay_seeing_a_faith_coin_03",
				"pwh_gameplay_seeing_a_faith_coin_04"
			},
			sound_events_duration = {
				2.089250087738,
				2.3359582424164,
				3.024395942688,
				2.7699582576752
			}
		},
		pwh_gameplay_using_a_weapon_shrine = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "seen_items",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pwh_gameplay_using_a_weapon_shrine_01",
				"pwh_gameplay_using_a_weapon_shrine_02",
				"pwh_gameplay_using_a_weapon_shrine_03",
				"pwh_gameplay_using_a_weapon_shrine_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_gameplay_using_a_weapon_shrine_01",
				"pwh_gameplay_using_a_weapon_shrine_02",
				"pwh_gameplay_using_a_weapon_shrine_03",
				"pwh_gameplay_using_a_weapon_shrine_04"
			},
			sound_events_duration = {
				2.6222083568573,
				3.5774791240692,
				3.2893333435059,
				2.1514792442322
			}
		},
		pwh_gorge_event_start = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "special_occasion",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pwh_gorge_event_start_01",
				"pwh_gorge_event_start_02",
				"pwh_gorge_event_start_03",
				"pwh_gorge_event_start_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_gorge_event_start_01",
				"pwh_gorge_event_start_02",
				"pwh_gorge_event_start_03",
				"pwh_gorge_event_start_04"
			},
			sound_events_duration = {
				3.0663125514984,
				4.8961458206177,
				4.1340622901917,
				4.1315627098083
			}
		},
		pwh_mines_event_start = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "special_occasion",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pwh_mines_event_start_01",
				"pwh_mines_event_start_02",
				"pwh_mines_event_start_03",
				"pwh_mines_event_start_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_mines_event_start_01",
				"pwh_mines_event_start_02",
				"pwh_mines_event_start_03",
				"pwh_mines_event_start_04"
			},
			sound_events_duration = {
				3.8562395572662,
				3.9951665401459,
				4.4976875782013,
				5.1365833282471
			}
		},
		pwh_morris_arena_survive_a = {
			randomize_indexes_n = 0,
			face_animations_n = 16,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 16,
			category = "special_occasion",
			dialogue_animations_n = 16,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
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
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pwh_morris_arena_survive_01",
				"pwh_morris_arena_survive_02",
				"pwh_morris_arena_survive_03",
				"pwh_morris_arena_survive_04",
				"pwh_morris_arena_survive_05",
				"pwh_morris_arena_survive_06",
				"pwh_morris_arena_survive_07",
				"pwh_morris_arena_survive_08",
				"pwh_morris_arena_survive_09",
				"pwh_morris_arena_survive_10",
				"pwh_morris_arena_survive_11",
				"pwh_morris_arena_survive_12",
				"pwh_morris_arena_survive_13",
				"pwh_morris_arena_survive_14",
				"pwh_morris_arena_survive_15",
				"pwh_morris_arena_survive_16"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_morris_arena_survive_01",
				"pwh_morris_arena_survive_02",
				"pwh_morris_arena_survive_03",
				"pwh_morris_arena_survive_04",
				"pwh_morris_arena_survive_05",
				"pwh_morris_arena_survive_06",
				"pwh_morris_arena_survive_07",
				"pwh_morris_arena_survive_08",
				"pwh_morris_arena_survive_09",
				"pwh_morris_arena_survive_10",
				"pwh_morris_arena_survive_11",
				"pwh_morris_arena_survive_12",
				"pwh_morris_arena_survive_13",
				"pwh_morris_arena_survive_14",
				"pwh_morris_arena_survive_15",
				"pwh_morris_arena_survive_16"
			},
			sound_events_duration = {
				3.2367917895317,
				2.9156979322433,
				3.030510365963,
				3.196426987648,
				3.6534895896912,
				2.862802028656,
				4.0872186422348,
				4.0219894647598,
				3.5383229255676,
				4.3501979112625,
				3.1722188591957,
				3.4363436698914,
				2.8188437223434,
				3.0984063148499,
				3.9242604970932,
				4.1238957643509
			}
		},
		pwh_morris_arena_survive_b = {
			randomize_indexes_n = 0,
			face_animations_n = 16,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 16,
			category = "special_occasion",
			dialogue_animations_n = 16,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
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
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pwh_morris_arena_survive_01",
				"pwh_morris_arena_survive_02",
				"pwh_morris_arena_survive_03",
				"pwh_morris_arena_survive_04",
				"pwh_morris_arena_survive_05",
				"pwh_morris_arena_survive_06",
				"pwh_morris_arena_survive_07",
				"pwh_morris_arena_survive_08",
				"pwh_morris_arena_survive_09",
				"pwh_morris_arena_survive_10",
				"pwh_morris_arena_survive_11",
				"pwh_morris_arena_survive_12",
				"pwh_morris_arena_survive_13",
				"pwh_morris_arena_survive_14",
				"pwh_morris_arena_survive_15",
				"pwh_morris_arena_survive_16"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_morris_arena_survive_01",
				"pwh_morris_arena_survive_02",
				"pwh_morris_arena_survive_03",
				"pwh_morris_arena_survive_04",
				"pwh_morris_arena_survive_05",
				"pwh_morris_arena_survive_06",
				"pwh_morris_arena_survive_07",
				"pwh_morris_arena_survive_08",
				"pwh_morris_arena_survive_09",
				"pwh_morris_arena_survive_10",
				"pwh_morris_arena_survive_11",
				"pwh_morris_arena_survive_12",
				"pwh_morris_arena_survive_13",
				"pwh_morris_arena_survive_14",
				"pwh_morris_arena_survive_15",
				"pwh_morris_arena_survive_16"
			},
			sound_events_duration = {
				3.2367917895317,
				2.9156979322433,
				3.030510365963,
				3.196426987648,
				3.6534895896912,
				2.862802028656,
				4.0872186422348,
				4.0219894647598,
				3.5383229255676,
				4.3501979112625,
				3.1722188591957,
				3.4363436698914,
				2.8188437223434,
				3.0984063148499,
				3.9242604970932,
				4.1238957643509
			}
		},
		pwh_morris_citadel_altar = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "special_occasion",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pwh_morris_citadel_altar_01",
				"pwh_morris_citadel_altar_02",
				"pwh_morris_citadel_altar_03",
				"pwh_morris_citadel_altar_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_morris_citadel_altar_01",
				"pwh_morris_citadel_altar_02",
				"pwh_morris_citadel_altar_03",
				"pwh_morris_citadel_altar_04"
			},
			sound_events_duration = {
				6.334020614624,
				5.7389583587647,
				6.0165209770203,
				8.6740627288818
			}
		},
		pwh_morris_curse_tzeentch_egg = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "seen_items",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry"
			},
			localization_strings = {
				"pwh_morris_tzeentch_egg_a_01",
				"pwh_morris_tzeentch_egg_a_02",
				"pwh_morris_tzeentch_egg_a_03",
				"pwh_morris_tzeentch_egg_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_morris_tzeentch_egg_a_01",
				"pwh_morris_tzeentch_egg_a_02",
				"pwh_morris_tzeentch_egg_a_03",
				"pwh_morris_tzeentch_egg_a_04"
			},
			sound_events_duration = {
				1.9614791870117,
				2.1595416069031,
				2.5796041488648,
				2.0508332252502
			}
		},
		pwh_morris_foreboding = {
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 8,
			category = "special_occasion",
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
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pwh_morris_foreboding_01",
				"pwh_morris_foreboding_02",
				"pwh_morris_foreboding_03",
				"pwh_morris_foreboding_04",
				"pwh_morris_foreboding_05",
				"pwh_morris_foreboding_06",
				"pwh_morris_foreboding_07",
				"pwh_morris_foreboding_08"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_morris_foreboding_01",
				"pwh_morris_foreboding_02",
				"pwh_morris_foreboding_03",
				"pwh_morris_foreboding_04",
				"pwh_morris_foreboding_05",
				"pwh_morris_foreboding_06",
				"pwh_morris_foreboding_07",
				"pwh_morris_foreboding_08"
			},
			sound_events_duration = {
				2.8439062833786,
				3.7825729846954,
				3.5681250095367,
				3.0026874542236,
				4.0010521411896,
				2.5253853797913,
				4.2099895477295,
				5.1593437194824
			}
		},
		pwh_morris_ritual_start = {
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 8,
			category = "special_occasion",
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
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pwh_morris_ritual_start_01",
				"pwh_morris_ritual_start_02",
				"pwh_morris_ritual_start_03",
				"pwh_morris_ritual_start_04",
				"pwh_morris_ritual_start_05",
				"pwh_morris_ritual_start_06",
				"pwh_morris_ritual_start_07",
				"pwh_morris_ritual_start_08"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_morris_ritual_start_01",
				"pwh_morris_ritual_start_02",
				"pwh_morris_ritual_start_03",
				"pwh_morris_ritual_start_04",
				"pwh_morris_ritual_start_05",
				"pwh_morris_ritual_start_06",
				"pwh_morris_ritual_start_07",
				"pwh_morris_ritual_start_08"
			},
			sound_events_duration = {
				3.995260477066,
				4.2918856143951,
				4.3548541069031,
				4.5193749666214,
				4.2193748950958,
				4.2235729694366,
				3.6090103387833,
				4.3207499980926
			}
		},
		pwh_morris_run_complete = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "special_occasion",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pwh_morris_run_complete_01",
				"pwh_morris_run_complete_02",
				"pwh_morris_run_complete_03",
				"pwh_morris_run_complete_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_morris_run_complete_01",
				"pwh_morris_run_complete_02",
				"pwh_morris_run_complete_03",
				"pwh_morris_run_complete_04"
			},
			sound_events_duration = {
				4.1359376907349,
				5.2784376144409,
				4.4044375419617,
				4.5671668052673
			}
		},
		pwh_skulking_sorcerer_spotted = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_ingame",
			sound_events_n = 4,
			category = "player_alerts",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pwh_gameplay_curse_see_danger_01",
				"pwh_gameplay_curse_see_danger_02",
				"pwh_gameplay_curse_see_danger_03",
				"pwh_gameplay_curse_see_danger_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_gameplay_curse_see_danger_01",
				"pwh_gameplay_curse_see_danger_02",
				"pwh_gameplay_curse_see_danger_03",
				"pwh_gameplay_curse_see_danger_04"
			},
			sound_events_duration = {
				2.1496040821075,
				2.513854265213,
				1.7603125572205,
				3.0945415496826
			}
		}
	})
end
