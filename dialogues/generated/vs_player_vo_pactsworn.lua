return function ()
	define_rule({
		probability = 1,
		name = "ebt_vs_low_on_health",
		response = "ebt_vs_low_on_health",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"health_trigger"
			},
			{
				"query_context",
				"current_amount",
				OP.LTEQ,
				0.6
			},
			{
				"query_context",
				"current_amount",
				OP.GTEQ,
				0.1
			},
			{
				"query_context",
				"trigger_type",
				OP.EQ,
				"decreasing"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_chaos_troll"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_chaos_troll"
			},
			{
				"user_memory",
				"low_health",
				OP.TIMEDIFF,
				OP.GT,
				30
			}
		},
		on_done = {
			{
				"user_memory",
				"low_health",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "ebt_vs_spawning_troll",
		response = "ebt_vs_spawning_troll",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"spawning"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_chaos_troll"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_chaos_troll"
			},
			{
				"user_memory",
				"time_since_spawning",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_spawning",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "egt_spawning_gutter_runner",
		response = "egt_spawning_gutter_runner",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"spawning"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"global_context",
				"game_about_to_end",
				OP.EQ,
				0
			},
			{
				"user_memory",
				"time_since_spawning",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_spawning",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "egt_taunting_bardin",
		response = "egt_taunting_bardin",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_dr_ranger",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_dr_ironbreaker",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_dr_slayer",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_dr_engineer"
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "egt_taunting_kerillian",
		response = "egt_taunting_kerillian",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_we_waywatcher",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_we_maidenguard",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_we_shade",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_we_thornsister"
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "egt_taunting_kruber",
		response = "egt_taunting_kruber",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_es_mercenary",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_es_huntsman",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_es_knight",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_es_questingknight"
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "egt_taunting_saltzpyre",
		response = "egt_taunting_saltzpyre",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_wh_captain",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_wh_bountyhunter",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_wh_zealot",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_wh_priest"
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "egt_taunting_sienna",
		response = "egt_taunting_sienna",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_bw_scholar",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_bw_adept",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_bw_unchained",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_bw_necromancer"
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMESET
			}
		}
	})
	define_rule({
		response = "egt_vs_ability_horde_a",
		name = "egt_vs_ability_horde_a",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_ability_horde"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			}
		}
	})
	define_rule({
		response = "egt_vs_downed_hero_a",
		name = "egt_vs_downed_hero_a",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_downed_hero"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			}
		}
	})
	define_rule({
		probability = 1,
		name = "egt_vs_globadier_hitting_many_a",
		response = "egt_vs_globadier_hitting_many_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_globadier_hitting_many"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			},
			{
				"global_context",
				"game_about_to_end",
				OP.EQ,
				0
			},
			{
				"user_memory",
				"vs_globadier_globe_thrown",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_globe_thrown",
				OP.TIMEDIFF,
				OP.GT,
				60
			}
		},
		on_done = {
			{
				"user_memory",
				"vs_globadier_globe_thrown",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_globe_thrown",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "egt_vs_globadier_missing_globe_a",
		response = "egt_vs_globadier_missing_globe_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_globadier_missing_globe"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			},
			{
				"global_context",
				"game_about_to_end",
				OP.EQ,
				0
			},
			{
				"user_memory",
				"vs_globadier_globe_thrown",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_globe_thrown",
				OP.TIMEDIFF,
				OP.GT,
				60
			}
		},
		on_done = {
			{
				"user_memory",
				"vs_globadier_globe_thrown",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_globe_thrown",
				OP.TIMESET
			}
		}
	})
	define_rule({
		response = "egt_vs_heroes_objective_almost_completed_b",
		name = "egt_vs_heroes_objective_almost_completed_b",
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
				"dialogue_name_nopre",
				OP.EQ,
				"vs_heroes_objective_almost_completed_a"
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			}
		}
	})
	define_rule({
		response = "egt_vs_many_heroes_incapacitated_a",
		name = "egt_vs_many_heroes_incapacitated_a",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_many_heroes_incapacitated"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			}
		}
	})
	define_rule({
		probability = 1,
		name = "egt_vs_pact_proximity_banter_eight_b",
		response = "egt_vs_pact_proximity_banter_eight_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_eight_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "egt_vs_pact_proximity_banter_eighteen_b",
		response = "egt_vs_pact_proximity_banter_eighteen_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_eighteen_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "egt_vs_pact_proximity_banter_eleven_b",
		response = "egt_vs_pact_proximity_banter_eleven_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_eleven_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 0.5,
		name = "egt_vs_pact_proximity_banter_fifteen_a",
		response = "egt_vs_pact_proximity_banter_fifteen_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"friends_close"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				2
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			},
			{
				"global_context",
				"game_about_to_end",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"pact_proximity_banter_master_limit",
				OP.LT,
				5
			},
			{
				"faction_memory",
				"vs_pact_proximity_banter_fifteen",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMEDIFF,
				OP.GT,
				140
			}
		},
		on_done = {
			{
				"faction_memory",
				"pact_proximity_banter_master_limit",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"vs_pact_proximity_banter_fifteen",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 0.5,
		name = "egt_vs_pact_proximity_banter_five_a",
		response = "egt_vs_pact_proximity_banter_five_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"friends_close"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				2
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			},
			{
				"global_context",
				"game_about_to_end",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"pact_proximity_banter_master_limit",
				OP.LT,
				5
			},
			{
				"faction_memory",
				"vs_pact_proximity_banter_five",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMEDIFF,
				OP.GT,
				140
			}
		},
		on_done = {
			{
				"faction_memory",
				"pact_proximity_banter_master_limit",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"vs_pact_proximity_banter_five",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "egt_vs_pact_proximity_banter_four_b",
		response = "egt_vs_pact_proximity_banter_four_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_four_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "egt_vs_pact_proximity_banter_fourteen_b",
		response = "egt_vs_pact_proximity_banter_fourteen_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_fourteen_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "egt_vs_pact_proximity_banter_nine_b",
		response = "egt_vs_pact_proximity_banter_nine_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_nine_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "egt_vs_pact_proximity_banter_nineteen_b",
		response = "egt_vs_pact_proximity_banter_nineteen_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_nineteen_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "egt_vs_pact_proximity_banter_one_b",
		response = "egt_vs_pact_proximity_banter_one_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_one_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "egt_vs_pact_proximity_banter_seven_b",
		response = "egt_vs_pact_proximity_banter_seven_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_seven_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "egt_vs_pact_proximity_banter_seventeen_b",
		response = "egt_vs_pact_proximity_banter_seventeen_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_seventeen_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "egt_vs_pact_proximity_banter_six_b",
		response = "egt_vs_pact_proximity_banter_six_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_six_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "egt_vs_pact_proximity_banter_sixteen_b",
		response = "egt_vs_pact_proximity_banter_sixteen_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_sixteen_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 0.5,
		name = "egt_vs_pact_proximity_banter_ten_a",
		response = "egt_vs_pact_proximity_banter_ten_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"friends_close"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				2
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			},
			{
				"global_context",
				"game_about_to_end",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"pact_proximity_banter_master_limit",
				OP.LT,
				5
			},
			{
				"faction_memory",
				"vs_pact_proximity_banter_ten",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMEDIFF,
				OP.GT,
				140
			}
		},
		on_done = {
			{
				"faction_memory",
				"pact_proximity_banter_master_limit",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"vs_pact_proximity_banter_ten",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "egt_vs_pact_proximity_banter_thirteen_b",
		response = "egt_vs_pact_proximity_banter_thirteen_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_thirteen_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "egt_vs_pact_proximity_banter_three_b",
		response = "egt_vs_pact_proximity_banter_three_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_three_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "egt_vs_pact_proximity_banter_twelve_b",
		response = "egt_vs_pact_proximity_banter_twelve_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_twelve_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 0.5,
		name = "egt_vs_pact_proximity_banter_twenty_a",
		response = "egt_vs_pact_proximity_banter_twenty_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"friends_close"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				2
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			},
			{
				"global_context",
				"game_about_to_end",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"pact_proximity_banter_master_limit",
				OP.LT,
				5
			},
			{
				"faction_memory",
				"vs_pact_proximity_banter_twenty",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMEDIFF,
				OP.GT,
				140
			}
		},
		on_done = {
			{
				"faction_memory",
				"pact_proximity_banter_master_limit",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"vs_pact_proximity_banter_twenty",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "egt_vs_pact_proximity_banter_two_b",
		response = "egt_vs_pact_proximity_banter_two_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_two_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "egt_vs_passing_hoisted_hero_a",
		response = "egt_vs_passing_hoisted_hero_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_passing_hoisted_hero"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			},
			{
				"user_memory",
				"vs_passing_hoisted_hero",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"user_memory",
				"vs_passing_hoisted_hero",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "egt_vw_affirmative",
		response = "egt_vw_affirmative",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_affirmative"
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
				"vs_gutter_runner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_memory",
				"time_since_vw_affirmative",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_vw_affirmative",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "egt_vw_ambush",
		response = "egt_vw_ambush",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_ambush"
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
				"vs_gutter_runner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_memory",
				"time_since_vw_ambush",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_vw_ambush",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "egt_vw_attack_now",
		response = "egt_vw_attack_now",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_attack_now"
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
				"vs_gutter_runner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_memory",
				"time_since_vw_attack_now",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_vw_attack_now",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "egt_vw_cover_me",
		response = "egt_vw_cover_me",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_cover_me"
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
				"vs_gutter_runner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_memory",
				"time_since_vw_cover_me",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_vw_cover_me",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "egt_vw_gather",
		response = "egt_vw_gather",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_gather"
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
				"vs_gutter_runner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_memory",
				"time_since_vw_gather",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_vw_gather",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "egt_vw_go_here",
		response = "egt_vw_go_here",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_go_here"
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
				"vs_gutter_runner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_memory",
				"time_since_vw_go_here",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_vw_go_here",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "egt_vw_negation",
		response = "egt_vw_negation",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_negation"
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
				"vs_gutter_runner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_memory",
				"time_since_vw_negation",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_vw_negation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "egt_vw_thanks",
		response = "egt_vw_thanks",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_thank_you"
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
				"vs_gutter_runner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_memory",
				"time_since_vw_thanks",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_vw_thanks",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "egt_vw_wait",
		response = "egt_vw_wait",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_wait"
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
				"vs_gutter_runner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_memory",
				"time_since_vw_wait",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_vw_wait",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "epg_spawning_globadier",
		response = "epg_spawning_globadier",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"spawning"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"global_context",
				"game_about_to_end",
				OP.EQ,
				0
			},
			{
				"user_memory",
				"time_since_spawning",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_spawning",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "epg_taunting_bardin",
		response = "epg_taunting_bardin",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_dr_ranger",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_dr_ironbreaker",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_dr_slayer",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_dr_engineer"
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "epg_taunting_kerillian",
		response = "epg_taunting_kerillian",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_we_waywatcher",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_we_maidenguard",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_we_shade",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_we_thornsister"
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "epg_taunting_kruber",
		response = "epg_taunting_kruber",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_es_mercenary",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_es_huntsman",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_es_knight",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_es_questingknight"
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "epg_taunting_saltzpyre",
		response = "epg_taunting_saltzpyre",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_wh_captain",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_wh_bountyhunter",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_wh_zealot",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_wh_priest"
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "epg_taunting_sienna",
		response = "epg_taunting_sienna",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_bw_scholar",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_bw_adept",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_bw_unchained",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_bw_necromancer"
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "epg_versus_throwing_globe",
		response = "epg_versus_throwing_globe",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"activate_ability"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_memory",
				"last_threw_globe",
				OP.TIMEDIFF,
				OP.GT,
				20
			}
		},
		on_done = {
			{
				"user_memory",
				"last_threw_globe",
				OP.TIMESET
			}
		}
	})
	define_rule({
		response = "epg_vs_ability_horde_a",
		name = "epg_vs_ability_horde_a",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_ability_horde"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			}
		}
	})
	define_rule({
		response = "epg_vs_downed_hero_a",
		name = "epg_vs_downed_hero_a",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_downed_hero"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			}
		}
	})
	define_rule({
		probability = 1,
		name = "epg_vs_globadier_hitting_many_a",
		response = "epg_vs_globadier_hitting_many_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_globadier_hitting_many"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			},
			{
				"global_context",
				"game_about_to_end",
				OP.EQ,
				0
			},
			{
				"user_memory",
				"vs_globadier_globe_thrown",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_globe_thrown",
				OP.TIMEDIFF,
				OP.GT,
				60
			}
		},
		on_done = {
			{
				"user_memory",
				"vs_globadier_globe_thrown",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_globe_thrown",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "epg_vs_globadier_missing_globe_a",
		response = "epg_vs_globadier_missing_globe_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_globadier_missing_globe"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			},
			{
				"global_context",
				"game_about_to_end",
				OP.EQ,
				0
			},
			{
				"user_memory",
				"vs_globadier_globe_thrown",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_globe_thrown",
				OP.TIMEDIFF,
				OP.GT,
				60
			}
		},
		on_done = {
			{
				"user_memory",
				"vs_globadier_globe_thrown",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_globe_thrown",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "epg_vs_globe_on_disabled_hero_a",
		response = "epg_vs_globe_on_disabled_hero_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_globe_on_disabled_hero"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			},
			{
				"global_context",
				"game_about_to_end",
				OP.EQ,
				0
			},
			{
				"user_memory",
				"vs_globe_on_disabled_hero",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"user_memory",
				"vs_globe_on_disabled_hero",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		response = "epg_vs_heroes_objective_almost_completed_b",
		name = "epg_vs_heroes_objective_almost_completed_b",
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
				"dialogue_name_nopre",
				OP.EQ,
				"vs_heroes_objective_almost_completed_a"
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			}
		}
	})
	define_rule({
		response = "epg_vs_many_heroes_incapacitated_a",
		name = "epg_vs_many_heroes_incapacitated_a",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_many_heroes_incapacitated"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			}
		}
	})
	define_rule({
		probability = 1,
		name = "epg_vs_pact_proximity_banter_eight_b",
		response = "epg_vs_pact_proximity_banter_eight_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_eight_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "epg_vs_pact_proximity_banter_eighteen_b",
		response = "epg_vs_pact_proximity_banter_eighteen_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_eighteen_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 0.5,
		name = "epg_vs_pact_proximity_banter_eleven_a",
		response = "epg_vs_pact_proximity_banter_eleven_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"friends_close"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				2
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			},
			{
				"global_context",
				"game_about_to_end",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"pact_proximity_banter_master_limit",
				OP.LT,
				5
			},
			{
				"faction_memory",
				"vs_pact_proximity_banter_eleven",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMEDIFF,
				OP.GT,
				140
			}
		},
		on_done = {
			{
				"faction_memory",
				"pact_proximity_banter_master_limit",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"vs_pact_proximity_banter_eleven",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "epg_vs_pact_proximity_banter_fifteen_b",
		response = "epg_vs_pact_proximity_banter_fifteen_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_fifteen_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "epg_vs_pact_proximity_banter_five_b",
		response = "epg_vs_pact_proximity_banter_five_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_five_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "epg_vs_pact_proximity_banter_four_b",
		response = "epg_vs_pact_proximity_banter_four_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_four_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "epg_vs_pact_proximity_banter_fourteen_b",
		response = "epg_vs_pact_proximity_banter_fourteen_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_fourteen_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "epg_vs_pact_proximity_banter_nine_b",
		response = "epg_vs_pact_proximity_banter_nine_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_nine_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "epg_vs_pact_proximity_banter_nineteen_b",
		response = "epg_vs_pact_proximity_banter_nineteen_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_nineteen_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 0.5,
		name = "epg_vs_pact_proximity_banter_one_a",
		response = "epg_vs_pact_proximity_banter_one_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"friends_close"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				2
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			},
			{
				"global_context",
				"game_about_to_end",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"pact_proximity_banter_master_limit",
				OP.LT,
				5
			},
			{
				"faction_memory",
				"vs_pact_proximity_banter_one",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMEDIFF,
				OP.GT,
				140
			}
		},
		on_done = {
			{
				"faction_memory",
				"pact_proximity_banter_master_limit",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"vs_pact_proximity_banter_one",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "epg_vs_pact_proximity_banter_seven_b",
		response = "epg_vs_pact_proximity_banter_seven_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_seven_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "epg_vs_pact_proximity_banter_seventeen_b",
		response = "epg_vs_pact_proximity_banter_seventeen_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_seventeen_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 0.5,
		name = "epg_vs_pact_proximity_banter_six_a",
		response = "epg_vs_pact_proximity_banter_six_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"friends_close"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				2
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			},
			{
				"global_context",
				"game_about_to_end",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"pact_proximity_banter_master_limit",
				OP.LT,
				5
			},
			{
				"faction_memory",
				"vs_pact_proximity_banter_six",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMEDIFF,
				OP.GT,
				140
			}
		},
		on_done = {
			{
				"faction_memory",
				"pact_proximity_banter_master_limit",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"vs_pact_proximity_banter_six",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 0.5,
		name = "epg_vs_pact_proximity_banter_sixteen_a",
		response = "epg_vs_pact_proximity_banter_sixteen_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"friends_close"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				2
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			},
			{
				"global_context",
				"game_about_to_end",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"pact_proximity_banter_master_limit",
				OP.LT,
				5
			},
			{
				"faction_memory",
				"vs_pact_proximity_banter_sixteen",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMEDIFF,
				OP.GT,
				140
			}
		},
		on_done = {
			{
				"faction_memory",
				"pact_proximity_banter_master_limit",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"vs_pact_proximity_banter_sixteen",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "epg_vs_pact_proximity_banter_ten_b",
		response = "epg_vs_pact_proximity_banter_ten_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_ten_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "epg_vs_pact_proximity_banter_thirteen_b",
		response = "epg_vs_pact_proximity_banter_thirteen_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_thirteen_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "epg_vs_pact_proximity_banter_three_b",
		response = "epg_vs_pact_proximity_banter_three_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_three_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "epg_vs_pact_proximity_banter_twelve_b",
		response = "epg_vs_pact_proximity_banter_twelve_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_twelve_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "epg_vs_pact_proximity_banter_twenty_b",
		response = "epg_vs_pact_proximity_banter_twenty_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_twenty_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "epg_vs_pact_proximity_banter_two_b",
		response = "epg_vs_pact_proximity_banter_two_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_two_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "epg_vs_passing_hoisted_hero_a",
		response = "epg_vs_passing_hoisted_hero_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_passing_hoisted_hero"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			},
			{
				"user_memory",
				"vs_passing_hoisted_hero",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"user_memory",
				"vs_passing_hoisted_hero",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		response = "epg_vs_vw_cheer_a",
		name = "epg_vs_vw_cheer_a",
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
				"dialogue_name_nopre",
				OP.EQ,
				"vs_ability_horde_a"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			}
		}
	})
	define_rule({
		probability = 1,
		name = "epg_vw_affirmative",
		response = "epg_vw_affirmative",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_affirmative"
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
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_memory",
				"time_since_vw_affirmative",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_vw_affirmative",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "epg_vw_ambush",
		response = "epg_vw_ambush",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_ambush"
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
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_memory",
				"time_since_vw_ambush",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_vw_ambush",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "epg_vw_attack_now",
		response = "epg_vw_attack_now",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_attack_now"
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
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_memory",
				"time_since_vw_attack_now",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_vw_attack_now",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "epg_vw_cover_me",
		response = "epg_vw_cover_me",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_cover_me"
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
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_memory",
				"time_since_vw_cover_me",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_vw_cover_me",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "epg_vw_gather",
		response = "epg_vw_gather",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_gather"
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
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_memory",
				"time_since_vw_gather",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_vw_gather",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "epg_vw_go_here",
		response = "epg_vw_go_here",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_go_here"
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
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_memory",
				"time_since_vw_go_here",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_vw_go_here",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "epg_vw_negation",
		response = "epg_vw_negation",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_negation"
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
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_memory",
				"time_since_vw_negation",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_vw_negation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "epg_vw_thanks",
		response = "epg_vw_thanks",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_thank_you"
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
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_memory",
				"time_since_vw_thanks",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_vw_thanks",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "epg_vw_wait",
		response = "epg_vw_wait",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_wait"
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
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_memory",
				"time_since_vw_wait",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_vw_wait",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "epm_packmaster_grab_walk",
		response = "epm_packmaster_grab_walk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"walking"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_memory",
				"time_since_grab_walk",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_grab_walk",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "epm_packmaster_hook_fail",
		response = "epm_packmaster_hook_fail",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"hook_fail"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_memory",
				"time_since_hook_fail",
				OP.TIMEDIFF,
				OP.GT,
				2
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_hook_fail",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "epm_packmaster_hook_success",
		response = "epm_packmaster_hook_success",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"hook_success"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_memory",
				"time_since_hook_success",
				OP.TIMEDIFF,
				OP.GT,
				2
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_hook_success",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "epm_spawning_packmaster",
		response = "epm_spawning_packmaster",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"spawning"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"global_context",
				"game_about_to_end",
				OP.EQ,
				0
			},
			{
				"user_memory",
				"time_since_spawning",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_spawning",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "epm_taunting_bardin",
		response = "epm_taunting_bardin",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_dr_ranger",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_dr_ironbreaker",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_dr_slayer",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_dr_engineer"
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "epm_taunting_kerillian",
		response = "epm_taunting_kerillian",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_we_waywatcher",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_we_maidenguard",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_we_shade",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_we_thornsister"
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "epm_taunting_kruber",
		response = "epm_taunting_kruber",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_es_mercenary",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_es_huntsman",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_es_knight",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_es_questingknight"
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "epm_taunting_saltzpyre",
		response = "epm_taunting_saltzpyre",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_wh_captain",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_wh_bountyhunter",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_wh_zealot",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_wh_priest"
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "epm_taunting_sienna",
		response = "epm_taunting_sienna",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_bw_scholar",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_bw_adept",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_bw_unchained",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_bw_necromancer"
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMESET
			}
		}
	})
	define_rule({
		response = "epm_vs_ability_horde_a",
		name = "epm_vs_ability_horde_a",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_ability_horde"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			}
		}
	})
	define_rule({
		response = "epm_vs_downed_hero_a",
		name = "epm_vs_downed_hero_a",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_downed_hero"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			}
		}
	})
	define_rule({
		probability = 1,
		name = "epm_vs_globadier_hitting_many_a",
		response = "epm_vs_globadier_hitting_many_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_globadier_hitting_many"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			},
			{
				"global_context",
				"game_about_to_end",
				OP.EQ,
				0
			},
			{
				"user_memory",
				"vs_globadier_globe_thrown",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_globe_thrown",
				OP.TIMEDIFF,
				OP.GT,
				60
			}
		},
		on_done = {
			{
				"user_memory",
				"vs_globadier_globe_thrown",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_globe_thrown",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "epm_vs_globadier_missing_globe_a",
		response = "epm_vs_globadier_missing_globe_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_globadier_missing_globe"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			},
			{
				"global_context",
				"game_about_to_end",
				OP.EQ,
				0
			},
			{
				"user_memory",
				"vs_globadier_globe_thrown",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_globe_thrown",
				OP.TIMEDIFF,
				OP.GT,
				60
			}
		},
		on_done = {
			{
				"user_memory",
				"vs_globadier_globe_thrown",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_globe_thrown",
				OP.TIMESET
			}
		}
	})
	define_rule({
		response = "epm_vs_heroes_objective_almost_completed_b",
		name = "epm_vs_heroes_objective_almost_completed_b",
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
				"dialogue_name_nopre",
				OP.EQ,
				"vs_heroes_objective_almost_completed_a"
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			}
		}
	})
	define_rule({
		response = "epm_vs_many_heroes_incapacitated_a",
		name = "epm_vs_many_heroes_incapacitated_a",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_many_heroes_incapacitated"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			}
		}
	})
	define_rule({
		response = "epm_vs_packmaster_hoisted_player_a",
		name = "epm_vs_packmaster_hoisted_player_a",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_packmaster_hoisted_player"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			}
		}
	})
	define_rule({
		probability = 1,
		name = "epm_vs_pact_proximity_banter_eight_b",
		response = "epm_vs_pact_proximity_banter_eight_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_eight_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "epm_vs_pact_proximity_banter_eighteen_b",
		response = "epm_vs_pact_proximity_banter_eighteen_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_eighteen_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "epm_vs_pact_proximity_banter_eleven_b",
		response = "epm_vs_pact_proximity_banter_eleven_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_eleven_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "epm_vs_pact_proximity_banter_fifteen_b",
		response = "epm_vs_pact_proximity_banter_fifteen_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_fifteen_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "epm_vs_pact_proximity_banter_five_b",
		response = "epm_vs_pact_proximity_banter_five_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_five_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "epm_vs_pact_proximity_banter_four_b",
		response = "epm_vs_pact_proximity_banter_four_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_four_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "epm_vs_pact_proximity_banter_fourteen_b",
		response = "epm_vs_pact_proximity_banter_fourteen_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_fourteen_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "epm_vs_pact_proximity_banter_nine_b",
		response = "epm_vs_pact_proximity_banter_nine_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_nine_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "epm_vs_pact_proximity_banter_nineteen_b",
		response = "epm_vs_pact_proximity_banter_nineteen_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_nineteen_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "epm_vs_pact_proximity_banter_one_b",
		response = "epm_vs_pact_proximity_banter_one_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_one_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 0.5,
		name = "epm_vs_pact_proximity_banter_seven_a",
		response = "epm_vs_pact_proximity_banter_seven_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"friends_close"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				2
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			},
			{
				"global_context",
				"game_about_to_end",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"pact_proximity_banter_master_limit",
				OP.LT,
				5
			},
			{
				"faction_memory",
				"vs_pact_proximity_banter_seven",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMEDIFF,
				OP.GT,
				140
			}
		},
		on_done = {
			{
				"faction_memory",
				"pact_proximity_banter_master_limit",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"vs_pact_proximity_banter_seven",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 0.5,
		name = "epm_vs_pact_proximity_banter_seventeen_a",
		response = "epm_vs_pact_proximity_banter_seventeen_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"friends_close"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				2
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			},
			{
				"global_context",
				"game_about_to_end",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"pact_proximity_banter_master_limit",
				OP.LT,
				5
			},
			{
				"faction_memory",
				"vs_pact_proximity_banter_seventeen",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMEDIFF,
				OP.GT,
				140
			}
		},
		on_done = {
			{
				"faction_memory",
				"pact_proximity_banter_master_limit",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"vs_pact_proximity_banter_seventeen",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "epm_vs_pact_proximity_banter_six_b",
		response = "epm_vs_pact_proximity_banter_six_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_six_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "epm_vs_pact_proximity_banter_sixteen_b",
		response = "epm_vs_pact_proximity_banter_sixteen_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_sixteen_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "epm_vs_pact_proximity_banter_ten_b",
		response = "epm_vs_pact_proximity_banter_ten_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_ten_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "epm_vs_pact_proximity_banter_thirteen_b",
		response = "epm_vs_pact_proximity_banter_thirteen_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_thirteen_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "epm_vs_pact_proximity_banter_three_b",
		response = "epm_vs_pact_proximity_banter_three_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_three_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 0.5,
		name = "epm_vs_pact_proximity_banter_twelve_a",
		response = "epm_vs_pact_proximity_banter_twelve_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"friends_close"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				2
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			},
			{
				"global_context",
				"game_about_to_end",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"pact_proximity_banter_master_limit",
				OP.LT,
				5
			},
			{
				"faction_memory",
				"vs_pact_proximity_banter_twelve",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMEDIFF,
				OP.GT,
				140
			}
		},
		on_done = {
			{
				"faction_memory",
				"pact_proximity_banter_master_limit",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"vs_pact_proximity_banter_twelve",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "epm_vs_pact_proximity_banter_twenty_b",
		response = "epm_vs_pact_proximity_banter_twenty_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_twenty_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 0.5,
		name = "epm_vs_pact_proximity_banter_two_a",
		response = "epm_vs_pact_proximity_banter_two_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"friends_close"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				2
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			},
			{
				"global_context",
				"game_about_to_end",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"pact_proximity_banter_master_limit",
				OP.LT,
				5
			},
			{
				"faction_memory",
				"vs_pact_proximity_banter_two",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMEDIFF,
				OP.GT,
				140
			}
		},
		on_done = {
			{
				"faction_memory",
				"pact_proximity_banter_master_limit",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"vs_pact_proximity_banter_two",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "epm_vs_passing_hoisted_hero_a",
		response = "epm_vs_passing_hoisted_hero_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_passing_hoisted_hero"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			},
			{
				"user_memory",
				"vs_passing_hoisted_hero",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"user_memory",
				"vs_passing_hoisted_hero",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		response = "epm_vs_vw_cheer_a",
		name = "epm_vs_vw_cheer_a",
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
				"dialogue_name_nopre",
				OP.EQ,
				"vs_ability_horde_a"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			}
		}
	})
	define_rule({
		probability = 1,
		name = "epm_vw_affirmative",
		response = "epm_vw_affirmative",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_affirmative"
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
				"vs_packmaster"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_memory",
				"time_since_vw_affirmative",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_vw_affirmative",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "epm_vw_ambush",
		response = "epm_vw_ambush",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_ambush"
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
				"vs_packmaster"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_memory",
				"time_since_vw_ambush",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_vw_ambush",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "epm_vw_attack_now",
		response = "epm_vw_attack_now",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_attack_now"
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
				"vs_packmaster"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_memory",
				"time_since_vw_attack_now",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_vw_attack_now",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "epm_vw_cover_me",
		response = "epm_vw_cover_me",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_cover_me"
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
				"vs_packmaster"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_memory",
				"time_since_vw_cover_me",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_vw_cover_me",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "epm_vw_gather",
		response = "epm_vw_gather",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_gather"
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
				"vs_packmaster"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_memory",
				"time_since_vw_gather",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_vw_gather",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "epm_vw_go_here",
		response = "epm_vw_go_here",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_go_here"
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
				"vs_packmaster"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_memory",
				"time_since_vw_go_here",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_vw_go_here",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "epm_vw_negation",
		response = "epm_vw_negation",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_negation"
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
				"vs_packmaster"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_memory",
				"time_since_vw_negation",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_vw_negation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "epm_vw_thanks",
		response = "epm_vw_thanks",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_thank_you"
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
				"vs_packmaster"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_memory",
				"time_since_vw_thanks",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_vw_thanks",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "epm_vw_wait",
		response = "epm_vw_wait",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_wait"
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
				"vs_packmaster"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_memory",
				"time_since_vw_wait",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_vw_wait",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "erg_spawning_ratling_gunner",
		response = "erg_spawning_ratling_gunner",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"spawning"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"global_context",
				"game_about_to_end",
				OP.EQ,
				0
			},
			{
				"user_memory",
				"time_since_spawning",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_spawning",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "erg_taunting_bardin",
		response = "erg_taunting_bardin",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_dr_ranger",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_dr_ironbreaker",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_dr_slayer",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_dr_engineer"
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "erg_taunting_kerillian",
		response = "erg_taunting_kerillian",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_we_waywatcher",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_we_maidenguard",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_we_shade",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_we_thornsister"
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "erg_taunting_kruber",
		response = "erg_taunting_kruber",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_es_mercenary",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_es_huntsman",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_es_knight",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_es_questingknight"
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "erg_taunting_saltzpyre",
		response = "erg_taunting_saltzpyre",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_wh_captain",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_wh_bountyhunter",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_wh_zealot",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_wh_priest"
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "erg_taunting_sienna",
		response = "erg_taunting_sienna",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_bw_scholar",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_bw_adept",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_bw_unchained",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_bw_necromancer"
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMESET
			}
		}
	})
	define_rule({
		response = "erg_vs_ability_horde_a",
		name = "erg_vs_ability_horde_a",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_ability_horde"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			}
		}
	})
	define_rule({
		response = "erg_vs_downed_hero_a",
		name = "erg_vs_downed_hero_a",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_downed_hero"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			}
		}
	})
	define_rule({
		probability = 1,
		name = "erg_vs_globadier_hitting_many_a",
		response = "erg_vs_globadier_hitting_many_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_globadier_hitting_many"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			},
			{
				"global_context",
				"game_about_to_end",
				OP.EQ,
				0
			},
			{
				"user_memory",
				"vs_globadier_globe_thrown",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_globe_thrown",
				OP.TIMEDIFF,
				OP.GT,
				60
			}
		},
		on_done = {
			{
				"user_memory",
				"vs_globadier_globe_thrown",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_globe_thrown",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "erg_vs_globadier_missing_globe_a",
		response = "erg_vs_globadier_missing_globe_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_globadier_missing_globe"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			},
			{
				"global_context",
				"game_about_to_end",
				OP.EQ,
				0
			},
			{
				"user_memory",
				"vs_globadier_globe_thrown",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_globe_thrown",
				OP.TIMEDIFF,
				OP.GT,
				60
			}
		},
		on_done = {
			{
				"user_memory",
				"vs_globadier_globe_thrown",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_globe_thrown",
				OP.TIMESET
			}
		}
	})
	define_rule({
		response = "erg_vs_heroes_objective_almost_completed_b",
		name = "erg_vs_heroes_objective_almost_completed_b",
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
				"dialogue_name_nopre",
				OP.EQ,
				"vs_heroes_objective_almost_completed_a"
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			}
		}
	})
	define_rule({
		probability = 1,
		name = "erg_vs_pact_proximity_banter_eight_b",
		response = "erg_vs_pact_proximity_banter_eight_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_eight_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "erg_vs_pact_proximity_banter_eighteen_b",
		response = "erg_vs_pact_proximity_banter_eighteen_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_eighteen_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "erg_vs_pact_proximity_banter_eleven_b",
		response = "erg_vs_pact_proximity_banter_eleven_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_eleven_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "erg_vs_pact_proximity_banter_fifteen_b",
		response = "erg_vs_pact_proximity_banter_fifteen_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_fifteen_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "erg_vs_pact_proximity_banter_five_b",
		response = "erg_vs_pact_proximity_banter_five_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_five_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 0.5,
		name = "erg_vs_pact_proximity_banter_four_a",
		response = "erg_vs_pact_proximity_banter_four_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"friends_close"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				2
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			},
			{
				"global_context",
				"game_about_to_end",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"pact_proximity_banter_master_limit",
				OP.LT,
				5
			},
			{
				"faction_memory",
				"vs_pact_proximity_banter_four",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMEDIFF,
				OP.GT,
				140
			}
		},
		on_done = {
			{
				"faction_memory",
				"pact_proximity_banter_master_limit",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"vs_pact_proximity_banter_four",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 0.5,
		name = "erg_vs_pact_proximity_banter_fourteen_a",
		response = "erg_vs_pact_proximity_banter_fourteen_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"friends_close"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				2
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			},
			{
				"global_context",
				"game_about_to_end",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"pact_proximity_banter_master_limit",
				OP.LT,
				5
			},
			{
				"faction_memory",
				"vs_pact_proximity_banter_fourteen",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMEDIFF,
				OP.GT,
				140
			}
		},
		on_done = {
			{
				"faction_memory",
				"pact_proximity_banter_master_limit",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"vs_pact_proximity_banter_fourteen",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 0.5,
		name = "erg_vs_pact_proximity_banter_nine_a",
		response = "erg_vs_pact_proximity_banter_nine_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"friends_close"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				2
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			},
			{
				"global_context",
				"game_about_to_end",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"pact_proximity_banter_master_limit",
				OP.LT,
				5
			},
			{
				"faction_memory",
				"vs_pact_proximity_banter_nine",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMEDIFF,
				OP.GT,
				140
			}
		},
		on_done = {
			{
				"faction_memory",
				"pact_proximity_banter_master_limit",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"vs_pact_proximity_banter_nine",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 0.5,
		name = "erg_vs_pact_proximity_banter_nineteen_a",
		response = "erg_vs_pact_proximity_banter_nineteen_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"friends_close"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				2
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			},
			{
				"global_context",
				"game_about_to_end",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"pact_proximity_banter_master_limit",
				OP.LT,
				5
			},
			{
				"faction_memory",
				"vs_pact_proximity_banter_nineteen",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMEDIFF,
				OP.GT,
				140
			}
		},
		on_done = {
			{
				"faction_memory",
				"pact_proximity_banter_master_limit",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"vs_pact_proximity_banter_nineteen",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "erg_vs_pact_proximity_banter_one_b",
		response = "erg_vs_pact_proximity_banter_one_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_one_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "erg_vs_pact_proximity_banter_seven_b",
		response = "erg_vs_pact_proximity_banter_seven_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_seven_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "erg_vs_pact_proximity_banter_seventeen_b",
		response = "erg_vs_pact_proximity_banter_seventeen_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_seventeen_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "erg_vs_pact_proximity_banter_six_b",
		response = "erg_vs_pact_proximity_banter_six_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_six_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "erg_vs_pact_proximity_banter_sixteen_b",
		response = "erg_vs_pact_proximity_banter_sixteen_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_sixteen_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "erg_vs_pact_proximity_banter_ten_b",
		response = "erg_vs_pact_proximity_banter_ten_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_ten_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "erg_vs_pact_proximity_banter_thirteen_b",
		response = "erg_vs_pact_proximity_banter_thirteen_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_thirteen_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "erg_vs_pact_proximity_banter_three_b",
		response = "erg_vs_pact_proximity_banter_three_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_three_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "erg_vs_pact_proximity_banter_twelve_b",
		response = "erg_vs_pact_proximity_banter_twelve_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_twelve_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "erg_vs_pact_proximity_banter_twenty_b",
		response = "erg_vs_pact_proximity_banter_twenty_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_twenty_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "erg_vs_pact_proximity_banter_two_b",
		response = "erg_vs_pact_proximity_banter_two_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_two_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "erg_vs_ratling_hitting_shield_a",
		response = "erg_vs_ratling_hitting_shield_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_ratling_hitting_shield"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_memory",
				"vs_time_since_hit_shield",
				OP.TIMEDIFF,
				OP.GT,
				60
			}
		},
		on_done = {
			{
				"user_memory",
				"vs_time_since_hit_shield",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "erg_vs_shooting_hooked_hero_a",
		response = "erg_vs_shooting_hooked_hero_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_shooting_hooked_hero"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_memory",
				"vs_shooting_hooked_hero",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"user_memory",
				"vs_shooting_hooked_hero",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "erg_vw_affirmative",
		response = "erg_vw_affirmative",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_affirmative"
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
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_memory",
				"time_since_vw_affirmative",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_vw_affirmative",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "erg_vw_ambush",
		response = "erg_vw_ambush",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_ambush"
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
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_memory",
				"time_since_vw_ambush",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_vw_ambush",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "erg_vw_attack_now",
		response = "erg_vw_attack_now",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_attack_now"
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
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_memory",
				"time_since_vw_attack_now",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_vw_attack_now",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "erg_vw_cover_me",
		response = "erg_vw_cover_me",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_cover_me"
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
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_memory",
				"time_since_vw_cover_me",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_vw_cover_me",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "erg_vw_gather",
		response = "erg_vw_gather",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_gather"
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
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_memory",
				"time_since_vw_gather",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_vw_gather",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "erg_vw_go_here",
		response = "erg_vw_go_here",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_go_here"
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
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_memory",
				"time_since_vw_go_here",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_vw_go_here",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "erg_vw_negation",
		response = "erg_vw_negation",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_negation"
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
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_memory",
				"time_since_vw_negation",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_vw_negation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "erg_vw_thanks",
		response = "erg_vw_thanks",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_thank_you"
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
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_memory",
				"time_since_vw_thanks",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_vw_thanks",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "erg_vw_wait",
		response = "erg_vw_wait",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_wait"
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
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_memory",
				"time_since_vw_wait",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_vw_wait",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "ewt_combat_idle",
		response = "ewt_combat_idle",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"walking"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_memory",
				"time_since_walk_warpfire_thrower",
				OP.TIMEDIFF,
				OP.GT,
				30
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_walk_warpfire_thrower",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "ewt_spawning_warpfire_thrower",
		response = "ewt_spawning_warpfire_thrower",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"spawning"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"global_context",
				"game_about_to_end",
				OP.EQ,
				0
			},
			{
				"user_memory",
				"time_since_spawning",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_spawning",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "ewt_taunting_bardin",
		response = "ewt_taunting_bardin",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_dr_ranger",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_dr_ironbreaker",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_dr_slayer",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_dr_engineer"
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "ewt_taunting_kerillian",
		response = "ewt_taunting_kerillian",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_we_waywatcher",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_we_maidenguard",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_we_shade",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_we_thornsister"
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "ewt_taunting_kruber",
		response = "ewt_taunting_kruber",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_es_mercenary",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_es_huntsman",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_es_knight",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_es_questingknight"
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "ewt_taunting_saltzpyre",
		response = "ewt_taunting_saltzpyre",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_wh_captain",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_wh_bountyhunter",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_wh_zealot",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_wh_priest"
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "ewt_taunting_sienna",
		response = "ewt_taunting_sienna",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_bw_scholar",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_bw_adept",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_bw_unchained",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_bw_necromancer"
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMESET
			}
		}
	})
	define_rule({
		response = "ewt_vs_ability_horde_a",
		name = "ewt_vs_ability_horde_a",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_ability_horde"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			}
		}
	})
	define_rule({
		response = "ewt_vs_downed_hero_a",
		name = "ewt_vs_downed_hero_a",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_downed_hero"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			}
		}
	})
	define_rule({
		probability = 1,
		name = "ewt_vs_globadier_hitting_many_a",
		response = "ewt_vs_globadier_hitting_many_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_globadier_hitting_many"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			},
			{
				"global_context",
				"game_about_to_end",
				OP.EQ,
				0
			},
			{
				"user_memory",
				"vs_globadier_globe_thrown",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_globe_thrown",
				OP.TIMEDIFF,
				OP.GT,
				60
			}
		},
		on_done = {
			{
				"user_memory",
				"vs_globadier_globe_thrown",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_globe_thrown",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "ewt_vs_globadier_missing_globe_a",
		response = "ewt_vs_globadier_missing_globe_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_globadier_missing_globe"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			},
			{
				"global_context",
				"game_about_to_end",
				OP.EQ,
				0
			},
			{
				"user_memory",
				"vs_globadier_globe_thrown",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_globe_thrown",
				OP.TIMEDIFF,
				OP.GT,
				60
			}
		},
		on_done = {
			{
				"user_memory",
				"vs_globadier_globe_thrown",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_globe_thrown",
				OP.TIMESET
			}
		}
	})
	define_rule({
		response = "ewt_vs_heroes_objective_almost_completed_b",
		name = "ewt_vs_heroes_objective_almost_completed_b",
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
				"dialogue_name_nopre",
				OP.EQ,
				"vs_heroes_objective_almost_completed_a"
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			}
		}
	})
	define_rule({
		response = "ewt_vs_many_heroes_incapacitated_a",
		name = "ewt_vs_many_heroes_incapacitated_a",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_many_heroes_incapacitated"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			}
		}
	})
	define_rule({
		probability = 0.5,
		name = "ewt_vs_pact_proximity_banter_eight_a",
		response = "ewt_vs_pact_proximity_banter_eight_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"friends_close"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				2
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			},
			{
				"global_context",
				"game_about_to_end",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"pact_proximity_banter_master_limit",
				OP.LT,
				5
			},
			{
				"faction_memory",
				"vs_pact_proximity_banter_eight",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMEDIFF,
				OP.GT,
				140
			}
		},
		on_done = {
			{
				"faction_memory",
				"pact_proximity_banter_master_limit",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"vs_pact_proximity_banter_eight",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 0.5,
		name = "ewt_vs_pact_proximity_banter_eighteen_a",
		response = "ewt_vs_pact_proximity_banter_eighteen_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"friends_close"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				2
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			},
			{
				"global_context",
				"game_about_to_end",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"pact_proximity_banter_master_limit",
				OP.LT,
				5
			},
			{
				"faction_memory",
				"vs_pact_proximity_banter_eighteen",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMEDIFF,
				OP.GT,
				140
			}
		},
		on_done = {
			{
				"faction_memory",
				"pact_proximity_banter_master_limit",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"vs_pact_proximity_banter_eighteen",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "ewt_vs_pact_proximity_banter_eleven_b",
		response = "ewt_vs_pact_proximity_banter_eleven_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_eleven_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "ewt_vs_pact_proximity_banter_fifteen_b",
		response = "ewt_vs_pact_proximity_banter_fifteen_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_fifteen_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "ewt_vs_pact_proximity_banter_five_b",
		response = "ewt_vs_pact_proximity_banter_five_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_five_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "ewt_vs_pact_proximity_banter_four_b",
		response = "ewt_vs_pact_proximity_banter_four_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_four_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "ewt_vs_pact_proximity_banter_fourteen_b",
		response = "ewt_vs_pact_proximity_banter_fourteen_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_fourteen_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "ewt_vs_pact_proximity_banter_nine_b",
		response = "ewt_vs_pact_proximity_banter_nine_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_nine_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "ewt_vs_pact_proximity_banter_nineteen_b",
		response = "ewt_vs_pact_proximity_banter_nineteen_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_nineteen_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "ewt_vs_pact_proximity_banter_one_b",
		response = "ewt_vs_pact_proximity_banter_one_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_one_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "ewt_vs_pact_proximity_banter_seven_b",
		response = "ewt_vs_pact_proximity_banter_seven_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_seven_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "ewt_vs_pact_proximity_banter_seventeen_b",
		response = "ewt_vs_pact_proximity_banter_seventeen_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_seventeen_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "ewt_vs_pact_proximity_banter_six_b",
		response = "ewt_vs_pact_proximity_banter_six_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_six_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "ewt_vs_pact_proximity_banter_sixteen_b",
		response = "ewt_vs_pact_proximity_banter_sixteen_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_sixteen_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "ewt_vs_pact_proximity_banter_ten_b",
		response = "ewt_vs_pact_proximity_banter_ten_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_ten_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 0.5,
		name = "ewt_vs_pact_proximity_banter_thirteen_a",
		response = "ewt_vs_pact_proximity_banter_thirteen_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"friends_close"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				2
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			},
			{
				"global_context",
				"game_about_to_end",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"pact_proximity_banter_master_limit",
				OP.LT,
				5
			},
			{
				"faction_memory",
				"vs_pact_proximity_banter_thirteen",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMEDIFF,
				OP.GT,
				140
			}
		},
		on_done = {
			{
				"faction_memory",
				"pact_proximity_banter_master_limit",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"vs_pact_proximity_banter_thirteen",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 0.5,
		name = "ewt_vs_pact_proximity_banter_three_a",
		response = "ewt_vs_pact_proximity_banter_three_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"friends_close"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				2
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			},
			{
				"global_context",
				"game_about_to_end",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"pact_proximity_banter_master_limit",
				OP.LT,
				5
			},
			{
				"faction_memory",
				"vs_pact_proximity_banter_three",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMEDIFF,
				OP.GT,
				140
			}
		},
		on_done = {
			{
				"faction_memory",
				"pact_proximity_banter_master_limit",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"vs_pact_proximity_banter_three",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "ewt_vs_pact_proximity_banter_twelve_b",
		response = "ewt_vs_pact_proximity_banter_twelve_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_twelve_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "ewt_vs_pact_proximity_banter_twenty_b",
		response = "ewt_vs_pact_proximity_banter_twenty_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_twenty_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "ewt_vs_pact_proximity_banter_two_b",
		response = "ewt_vs_pact_proximity_banter_two_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_two_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "ewt_vs_passing_hoisted_hero_a",
		response = "ewt_vs_passing_hoisted_hero_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_passing_hoisted_hero"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			},
			{
				"user_memory",
				"vs_passing_hoisted_hero",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"user_memory",
				"vs_passing_hoisted_hero",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "ewt_vs_shooting_hooked_hero_a",
		response = "ewt_vs_shooting_hooked_hero_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_shooting_hooked_hero"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_memory",
				"vs_shooting_hooked_hero",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"user_memory",
				"vs_shooting_hooked_hero",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		response = "ewt_vs_vw_cheer_a",
		name = "ewt_vs_vw_cheer_a",
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
				"dialogue_name_nopre",
				OP.EQ,
				"vs_ability_horde_a"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			}
		}
	})
	define_rule({
		probability = 1,
		name = "ewt_vw_affirmative",
		response = "ewt_vw_affirmative",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_affirmative"
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
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_memory",
				"time_since_vw_affirmative",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_vw_affirmative",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "ewt_vw_ambush",
		response = "ewt_vw_ambush",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_ambush"
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
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_memory",
				"time_since_vw_ambush",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_vw_ambush",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "ewt_vw_attack_now",
		response = "ewt_vw_attack_now",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_attack_now"
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
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_memory",
				"time_since_vw_attack_now",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_vw_attack_now",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "ewt_vw_cover_me",
		response = "ewt_vw_cover_me",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_cover_me"
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
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_memory",
				"time_since_vw_cover_me",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_vw_cover_me",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "ewt_vw_gather",
		response = "ewt_vw_gather",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_gather"
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
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_memory",
				"time_since_vw_gather",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_vw_gather",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "ewt_vw_go_here",
		response = "ewt_vw_go_here",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_go_here"
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
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_memory",
				"time_since_vw_go_here",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_vw_go_here",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "ewt_vw_negation",
		response = "ewt_vw_negation",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_negation"
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
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_memory",
				"time_since_vw_negation",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_vw_negation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "ewt_vw_thanks",
		response = "ewt_vw_thanks",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_thank_you"
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
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_memory",
				"time_since_vw_thanks",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_vw_thanks",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "ewt_vw_wait",
		response = "ewt_vw_wait",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_wait"
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
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_memory",
				"time_since_vw_wait",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_vw_wait",
				OP.TIMESET
			}
		}
	})
	add_dialogues({
		ebt_vs_low_on_health = {
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_feedback",
			dialogue_animations_n = 10,
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
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"ebt_vs_low_on_health_a_01",
				"ebt_vs_low_on_health_a_02",
				"ebt_vs_low_on_health_a_03",
				"ebt_vs_low_on_health_a_04",
				"ebt_vs_low_on_health_a_05",
				"ebt_vs_low_on_health_a_06",
				"ebt_vs_low_on_health_a_07",
				"ebt_vs_low_on_health_a_08",
				"ebt_vs_low_on_health_a_09",
				"ebt_vs_low_on_health_a_10"
			},
			randomize_indexes = {},
			sound_events = {
				"ebt_vs_low_on_health_a_01",
				"ebt_vs_low_on_health_a_02",
				"ebt_vs_low_on_health_a_03",
				"ebt_vs_low_on_health_a_04",
				"ebt_vs_low_on_health_a_05",
				"ebt_vs_low_on_health_a_06",
				"ebt_vs_low_on_health_a_07",
				"ebt_vs_low_on_health_a_08",
				"ebt_vs_low_on_health_a_09",
				"ebt_vs_low_on_health_a_10"
			},
			sound_events_duration = {
				5.004903793335,
				4.5246138572693,
				3.8493828773499,
				3.4567,
				3.3196513652802,
				0.63567793369293,
				0.63567793369293,
				0.74162417650223,
				0.60036242008209,
				0.74162417650223
			}
		},
		ebt_vs_spawning_troll = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 5,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 5,
			category = "player_alerts",
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
				"ebt_vs_spawning_a_01",
				"ebt_vs_spawning_a_02",
				"ebt_vs_spawning_a_03",
				"ebt_vs_spawning_a_04",
				"ebt_vs_spawning_a_05"
			},
			randomize_indexes = {},
			sound_events = {
				"ebt_vs_spawning_a_01",
				"ebt_vs_spawning_a_02",
				"ebt_vs_spawning_a_03",
				"ebt_vs_spawning_a_04",
				"ebt_vs_spawning_a_05"
			},
			sound_events_duration = {
				2.847836971283,
				7.5264263153076,
				5.0628209114075,
				5.6730718612671,
				10.238651275635
			}
		},
		egt_spawning_gutter_runner = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 5,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 5,
			category = "player_alerts",
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
				"egt_spawning_gutter_runner_01",
				"egt_spawning_gutter_runner_02",
				"egt_spawning_gutter_runner_03",
				"egt_spawning_gutter_runner_04",
				"egt_spawning_gutter_runner_05"
			},
			randomize_indexes = {},
			sound_events = {
				"egt_spawning_gutter_runner_01",
				"egt_spawning_gutter_runner_02",
				"egt_spawning_gutter_runner_03",
				"egt_spawning_gutter_runner_04",
				"egt_spawning_gutter_runner_05"
			},
			sound_events_duration = {
				3.9157967567444,
				4.089262008667,
				3.8005735874176,
				3.2761778831482,
				3.0993530750275
			}
		},
		egt_taunting_bardin = {
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
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
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"egt_taunting_bardin_01",
				"egt_taunting_bardin_02",
				"egt_taunting_bardin_03",
				"egt_taunting_bardin_04",
				"egt_taunting_bardin_05",
				"egt_taunting_bardin_06",
				"egt_taunting_bardin_07",
				"egt_taunting_bardin_08",
				"egt_taunting_bardin_09",
				"egt_taunting_bardin_10"
			},
			randomize_indexes = {},
			sound_events = {
				"egt_taunting_bardin_01",
				"egt_taunting_bardin_02",
				"egt_taunting_bardin_03",
				"egt_taunting_bardin_04",
				"egt_taunting_bardin_05",
				"egt_taunting_bardin_06",
				"egt_taunting_bardin_07",
				"egt_taunting_bardin_08",
				"egt_taunting_bardin_09",
				"egt_taunting_bardin_10"
			},
			sound_events_duration = {
				3.3408515453339,
				2.9764740467072,
				4.2317500114441,
				4.0090255737305,
				4.2050232887268,
				3.5635762214661,
				2.0365760326385,
				2.1176476478577,
				1.2917845249176,
				2.0579574108124
			}
		},
		egt_taunting_kerillian = {
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
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
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"egt_taunting_kerillian_01",
				"egt_taunting_kerillian_02",
				"egt_taunting_kerillian_03",
				"egt_taunting_kerillian_04",
				"egt_taunting_kerillian_05",
				"egt_taunting_kerillian_06",
				"egt_taunting_kerillian_07",
				"egt_taunting_kerillian_08",
				"egt_taunting_kerillian_09",
				"egt_taunting_kerillian_10"
			},
			randomize_indexes = {},
			sound_events = {
				"egt_taunting_kerillian_01",
				"egt_taunting_kerillian_02",
				"egt_taunting_kerillian_03",
				"egt_taunting_kerillian_04",
				"egt_taunting_kerillian_05",
				"egt_taunting_kerillian_06",
				"egt_taunting_kerillian_07",
				"egt_taunting_kerillian_08",
				"egt_taunting_kerillian_09",
				"egt_taunting_kerillian_10"
			},
			sound_events_duration = {
				3.6455388069153,
				3.3408515453339,
				3.5635762214661,
				1.9982671737671,
				2.71009516716,
				3.3497605323791,
				1.9011591672897,
				1.7363430261612,
				2.2272281646728,
				1.8423599004745
			}
		},
		egt_taunting_kruber = {
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
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
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"egt_taunting_kruber_01",
				"egt_taunting_kruber_02",
				"egt_taunting_kruber_03",
				"egt_taunting_kruber_04",
				"egt_taunting_kruber_05",
				"egt_taunting_kruber_06",
				"egt_taunting_kruber_07",
				"egt_taunting_kruber_08",
				"egt_taunting_kruber_09",
				"egt_taunting_kruber_10"
			},
			randomize_indexes = {},
			sound_events = {
				"egt_taunting_kruber_01",
				"egt_taunting_kruber_02",
				"egt_taunting_kruber_03",
				"egt_taunting_kruber_04",
				"egt_taunting_kruber_05",
				"egt_taunting_kruber_06",
				"egt_taunting_kruber_07",
				"egt_taunting_kruber_08",
				"egt_taunting_kruber_09",
				"egt_taunting_kruber_10"
			},
			sound_events_duration = {
				2.9862740039825,
				3.2259254455566,
				3.4183597564697,
				3.290961265564,
				3.2107803821564,
				2.6227872371674,
				2.4027352333069,
				2.002721786499,
				2.2245554924011,
				2.3608629703522
			}
		},
		egt_taunting_saltzpyre = {
			randomize_indexes_n = 0,
			face_animations_n = 9,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 9,
			category = "player_alerts",
			dialogue_animations_n = 9,
			dialogue_animations = {
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
				"face_neutral",
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
				"egt_taunting_saltzpyre_01",
				"egt_taunting_saltzpyre_02",
				"egt_taunting_saltzpyre_03",
				"egt_taunting_saltzpyre_04",
				"egt_taunting_saltzpyre_05",
				"egt_taunting_saltzpyre_06",
				"egt_taunting_saltzpyre_07",
				"egt_taunting_saltzpyre_09",
				"egt_taunting_saltzpyre_10"
			},
			randomize_indexes = {},
			sound_events = {
				"egt_taunting_saltzpyre_01",
				"egt_taunting_saltzpyre_02",
				"egt_taunting_saltzpyre_03",
				"egt_taunting_saltzpyre_04",
				"egt_taunting_saltzpyre_05",
				"egt_taunting_saltzpyre_06",
				"egt_taunting_saltzpyre_07",
				"egt_taunting_saltzpyre_09",
				"egt_taunting_saltzpyre_10"
			},
			sound_events_duration = {
				2.2272281646728,
				3.7863008975983,
				3.4459774494171,
				3.0441823005676,
				3.2170166969299,
				2.2708823680878,
				1.7817788124084,
				1.4165103435516,
				1.7443611621857
			}
		},
		egt_taunting_sienna = {
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
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
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"egt_taunting_sienna_01",
				"egt_taunting_sienna_02",
				"egt_taunting_sienna_03",
				"egt_taunting_sienna_04",
				"egt_taunting_sienna_05",
				"egt_taunting_sienna_06",
				"egt_taunting_sienna_07",
				"egt_taunting_sienna_08",
				"egt_taunting_sienna_09",
				"egt_taunting_sienna_10"
			},
			randomize_indexes = {},
			sound_events = {
				"egt_taunting_sienna_01",
				"egt_taunting_sienna_02",
				"egt_taunting_sienna_03",
				"egt_taunting_sienna_04",
				"egt_taunting_sienna_05",
				"egt_taunting_sienna_06",
				"egt_taunting_sienna_07",
				"egt_taunting_sienna_08",
				"egt_taunting_sienna_09",
				"egt_taunting_sienna_10"
			},
			sound_events_duration = {
				1.638344168663,
				2.3002820014954,
				3.1484174728394,
				2.6566412448883,
				1.6214170455933,
				2.8499662876129,
				1.4307647943497,
				1.8592870235443,
				1.5234181880951,
				2.2851364612579
			}
		},
		egt_vs_ability_horde_a = {
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 6,
			category = "activate_ability",
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
				"egt_vs_ability_horde_a_01",
				"egt_vs_ability_horde_a_02",
				"egt_vs_ability_horde_a_03",
				"egt_vs_ability_horde_a_04",
				"egt_vs_ability_horde_a_05",
				"egt_vs_ability_horde_a_06"
			},
			randomize_indexes = {},
			sound_events = {
				"egt_vs_ability_horde_a_01",
				"egt_vs_ability_horde_a_02",
				"egt_vs_ability_horde_a_03",
				"egt_vs_ability_horde_a_04",
				"egt_vs_ability_horde_a_05",
				"egt_vs_ability_horde_a_06"
			},
			sound_events_duration = {
				1.9180769324303,
				3.5410131216049,
				3.2492144107819,
				2.8260586261749,
				4.0824394226074,
				3.503338932991
			}
		},
		egt_vs_downed_hero_a = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "vs_player_vo_pactsworn",
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
				"egt_vs_downed_hero_a_01",
				"egt_vs_downed_hero_a_02",
				"egt_vs_downed_hero_a_03",
				"egt_vs_downed_hero_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"egt_vs_downed_hero_a_01",
				"egt_vs_downed_hero_a_02",
				"egt_vs_downed_hero_a_03",
				"egt_vs_downed_hero_a_04"
			},
			sound_events_duration = {
				1.4112113714218,
				1.9832147359848,
				3.3062551021576,
				2.4515862464905
			}
		},
		egt_vs_globadier_hitting_many_a = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "vs_player_vo_pactsworn",
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
				"egt_vs_globadier_hitting_many_a_01",
				"egt_vs_globadier_hitting_many_a_02",
				"egt_vs_globadier_hitting_many_a_03",
				"egt_vs_globadier_hitting_many_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"egt_vs_globadier_hitting_many_a_01",
				"egt_vs_globadier_hitting_many_a_02",
				"egt_vs_globadier_hitting_many_a_03",
				"egt_vs_globadier_hitting_many_a_04"
			},
			sound_events_duration = {
				1.7378277778625,
				2.4269194602966,
				2.1431868076324,
				2.1231043338776
			}
		},
		egt_vs_globadier_missing_globe_a = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "vs_player_vo_pactsworn",
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
				"egt_vs_globadier_missing_globe_a_01",
				"egt_vs_globadier_missing_globe_a_02",
				"egt_vs_globadier_missing_globe_a_03",
				"egt_vs_globadier_missing_globe_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"egt_vs_globadier_missing_globe_a_01",
				"egt_vs_globadier_missing_globe_a_02",
				"egt_vs_globadier_missing_globe_a_03",
				"egt_vs_globadier_missing_globe_a_04"
			},
			sound_events_duration = {
				2.0212264060974,
				2.0050973892212,
				1.6031535863876,
				1.5619682073593
			}
		},
		egt_vs_heroes_objective_almost_completed_b = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "vs_player_vo_pactsworn",
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
				"egt_vs_heroes_objective_almost_completed_b_01",
				"egt_vs_heroes_objective_almost_completed_b_02",
				"egt_vs_heroes_objective_almost_completed_b_03",
				"egt_vs_heroes_objective_almost_completed_b_04"
			},
			randomize_indexes = {},
			sound_events = {
				"egt_vs_heroes_objective_almost_completed_b_01",
				"egt_vs_heroes_objective_almost_completed_b_02",
				"egt_vs_heroes_objective_almost_completed_b_03",
				"egt_vs_heroes_objective_almost_completed_b_04"
			},
			sound_events_duration = {
				1.3400972485542,
				1.6005923748016,
				1.888668179512,
				1.7175970077515
			}
		},
		egt_vs_many_heroes_incapacitated_a = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "vs_player_vo_pactsworn",
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
				"egt_vs_many_heroes_incapacitated_a_01",
				"egt_vs_many_heroes_incapacitated_a_02",
				"egt_vs_many_heroes_incapacitated_a_03",
				"egt_vs_many_heroes_incapacitated_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"egt_vs_many_heroes_incapacitated_a_01",
				"egt_vs_many_heroes_incapacitated_a_02",
				"egt_vs_many_heroes_incapacitated_a_03",
				"egt_vs_many_heroes_incapacitated_a_04"
			},
			sound_events_duration = {
				2.5100885629654,
				2.1104462146759,
				2.478443145752,
				2.8980934619904
			}
		},
		egt_vs_pact_proximity_banter_eight_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "egt_vs_pact_proximity_banter_eight_b_01"
			},
			sound_events = {
				[1] = "egt_vs_pact_proximity_banter_eight_b_01"
			},
			sound_events_duration = {
				[1] = 2.3578932285309
			}
		},
		egt_vs_pact_proximity_banter_eighteen_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "egt_vs_pact_proximity_banter_eighteen_b_01"
			},
			sound_events = {
				[1] = "egt_vs_pact_proximity_banter_eighteen_b_01"
			},
			sound_events_duration = {
				[1] = 5.2393751144409
			}
		},
		egt_vs_pact_proximity_banter_eleven_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "egt_vs_pact_proximity_banter_eleven_b_01"
			},
			sound_events = {
				[1] = "egt_vs_pact_proximity_banter_eleven_b_01"
			},
			sound_events_duration = {
				[1] = 4.0669527053833
			}
		},
		egt_vs_pact_proximity_banter_fifteen_a = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "egt_vs_pact_proximity_banter_fifteen_a_01"
			},
			sound_events = {
				[1] = "egt_vs_pact_proximity_banter_fifteen_a_01"
			},
			sound_events_duration = {
				[1] = 5.0782155990601
			}
		},
		egt_vs_pact_proximity_banter_five_a = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "egt_vs_pact_proximity_banter_five_a_01"
			},
			sound_events = {
				[1] = "egt_vs_pact_proximity_banter_five_a_01"
			},
			sound_events_duration = {
				[1] = 3.5441434383392
			}
		},
		egt_vs_pact_proximity_banter_four_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "egt_vs_pact_proximity_banter_four_b_01"
			},
			sound_events = {
				[1] = "egt_vs_pact_proximity_banter_four_b_01"
			},
			sound_events_duration = {
				[1] = 4.4363231658936
			}
		},
		egt_vs_pact_proximity_banter_fourteen_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "egt_vs_pact_proximity_banter_fourteen_b_01"
			},
			sound_events = {
				[1] = "egt_vs_pact_proximity_banter_fourteen_b_01"
			},
			sound_events_duration = {
				[1] = 2.2868256568909
			}
		},
		egt_vs_pact_proximity_banter_nine_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "egt_vs_pact_proximity_banter_nine_b_01"
			},
			sound_events = {
				[1] = "egt_vs_pact_proximity_banter_nine_b_01"
			},
			sound_events_duration = {
				[1] = 2.3973898887634
			}
		},
		egt_vs_pact_proximity_banter_nineteen_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "egt_vs_pact_proximity_banter_nineteen_b_01"
			},
			sound_events = {
				[1] = "egt_vs_pact_proximity_banter_nineteen_b_01"
			},
			sound_events_duration = {
				[1] = 2.1619143486023
			}
		},
		egt_vs_pact_proximity_banter_one_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "egt_vs_pact_proximity_banter_one_b_01"
			},
			sound_events = {
				[1] = "egt_vs_pact_proximity_banter_one_b_01"
			},
			sound_events_duration = {
				[1] = 3.163135766983
			}
		},
		egt_vs_pact_proximity_banter_seven_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "egt_vs_pact_proximity_banter_seven_b_01"
			},
			sound_events = {
				[1] = "egt_vs_pact_proximity_banter_seven_b_01"
			},
			sound_events_duration = {
				[1] = 2.7864899635315
			}
		},
		egt_vs_pact_proximity_banter_seventeen_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "egt_vs_pact_proximity_banter_seventeen_b_01"
			},
			sound_events = {
				[1] = "egt_vs_pact_proximity_banter_seventeen_b_01"
			},
			sound_events_duration = {
				[1] = 3.9773428440094
			}
		},
		egt_vs_pact_proximity_banter_six_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "egt_vs_pact_proximity_banter_six_b_01"
			},
			sound_events = {
				[1] = "egt_vs_pact_proximity_banter_six_b_01"
			},
			sound_events_duration = {
				[1] = 5.2943511009216
			}
		},
		egt_vs_pact_proximity_banter_sixteen_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "egt_vs_pact_proximity_banter_sixteen_b_01"
			},
			sound_events = {
				[1] = "egt_vs_pact_proximity_banter_sixteen_b_01"
			},
			sound_events_duration = {
				[1] = 3.9781041145325
			}
		},
		egt_vs_pact_proximity_banter_ten_a = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "egt_vs_pact_proximity_banter_ten_a_01"
			},
			sound_events = {
				[1] = "egt_vs_pact_proximity_banter_ten_a_01"
			},
			sound_events_duration = {
				[1] = 2.0888047814369
			}
		},
		egt_vs_pact_proximity_banter_thirteen_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "egt_vs_pact_proximity_banter_thirteen_b_01"
			},
			sound_events = {
				[1] = "egt_vs_pact_proximity_banter_thirteen_b_01"
			},
			sound_events_duration = {
				[1] = 6.0487570762634
			}
		},
		egt_vs_pact_proximity_banter_three_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "egt_vs_pact_proximity_banter_three_b_01"
			},
			sound_events = {
				[1] = "egt_vs_pact_proximity_banter_three_b_01"
			},
			sound_events_duration = {
				[1] = 1.9133162498474
			}
		},
		egt_vs_pact_proximity_banter_twelve_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "egt_vs_pact_proximity_banter_twelve_b_01"
			},
			sound_events = {
				[1] = "egt_vs_pact_proximity_banter_twelve_b_01"
			},
			sound_events_duration = {
				[1] = 4.2783184051514
			}
		},
		egt_vs_pact_proximity_banter_twenty_a = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "egt_vs_pact_proximity_banter_twenty_a_01"
			},
			sound_events = {
				[1] = "egt_vs_pact_proximity_banter_twenty_a_01"
			},
			sound_events_duration = {
				[1] = 3.5805962085724
			}
		},
		egt_vs_pact_proximity_banter_two_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "egt_vs_pact_proximity_banter_two_b_01"
			},
			sound_events = {
				[1] = "egt_vs_pact_proximity_banter_two_b_01"
			},
			sound_events_duration = {
				[1] = 4.2045407295227
			}
		},
		egt_vs_passing_hoisted_hero_a = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 2,
			category = "player_feedback",
			dialogue_animations_n = 2,
			dialogue_animations = {
				[1] = "dialogue_talk",
				[2] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral",
				[2] = "face_neutral"
			},
			localization_strings = {
				[1] = "egt_vs_passing_hoisted_hero_a_01",
				[2] = "egt_vs_passing_hoisted_hero_a_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "egt_vs_passing_hoisted_hero_a_01",
				[2] = "egt_vs_passing_hoisted_hero_a_02"
			},
			sound_events_duration = {
				[1] = 3.9340603351593,
				[2] = 3.4575591087341
			}
		},
		egt_vw_affirmative = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
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
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"egt_vw_affirmative_01",
				"egt_vw_affirmative_02",
				"egt_vw_affirmative_03",
				"egt_vw_affirmative_04",
				"egt_vw_affirmative_05",
				"egt_vw_affirmative_06",
				"egt_vw_affirmative_07",
				"egt_vw_affirmative_08",
				"egt_vw_affirmative_09",
				"egt_vw_affirmative_10"
			},
			randomize_indexes = {},
			sound_events = {
				"egt_vw_affirmative_01",
				"egt_vw_affirmative_02",
				"egt_vw_affirmative_03",
				"egt_vw_affirmative_04",
				"egt_vw_affirmative_05",
				"egt_vw_affirmative_06",
				"egt_vw_affirmative_07",
				"egt_vw_affirmative_08",
				"egt_vw_affirmative_09",
				"egt_vw_affirmative_10"
			},
			sound_events_duration = {
				0.79288130998611,
				1.2873486280441,
				0.89800733327866,
				1.6793440580368,
				2.6156599521637,
				1.9929219484329,
				3.0076553821564,
				3.9716079235077,
				1.4904549121857,
				2.0053944587708
			}
		},
		egt_vw_ambush = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
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
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"egt_vw_ambush_01",
				"egt_vw_ambush_02",
				"egt_vw_ambush_03",
				"egt_vw_ambush_04",
				"egt_vw_ambush_05",
				"egt_vw_ambush_06",
				"egt_vw_ambush_07",
				"egt_vw_ambush_08",
				"egt_vw_ambush_09",
				"egt_vw_ambush_10"
			},
			randomize_indexes = {},
			sound_events = {
				"egt_vw_ambush_01",
				"egt_vw_ambush_02",
				"egt_vw_ambush_03",
				"egt_vw_ambush_04",
				"egt_vw_ambush_05",
				"egt_vw_ambush_06",
				"egt_vw_ambush_07",
				"egt_vw_ambush_08",
				"egt_vw_ambush_09",
				"egt_vw_ambush_10"
			},
			sound_events_duration = {
				0.64944660663605,
				1.3880016803741,
				1.1136047840118,
				1.1822040081024,
				1.1430044174194,
				0.83564442396164,
				1.8289965391159,
				2.3555176258087,
				2.7065317630768,
				1.5073820352554
			}
		},
		egt_vw_attack_now = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
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
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"egt_vw_attack_now_01",
				"egt_vw_attack_now_02",
				"egt_vw_attack_now_03",
				"egt_vw_attack_now_04",
				"egt_vw_attack_now_05",
				"egt_vw_attack_now_06",
				"egt_vw_attack_now_07",
				"egt_vw_attack_now_08",
				"egt_vw_attack_now_09",
				"egt_vw_attack_now_10"
			},
			randomize_indexes = {},
			sound_events = {
				"egt_vw_attack_now_01",
				"egt_vw_attack_now_02",
				"egt_vw_attack_now_03",
				"egt_vw_attack_now_04",
				"egt_vw_attack_now_05",
				"egt_vw_attack_now_06",
				"egt_vw_attack_now_07",
				"egt_vw_attack_now_08",
				"egt_vw_attack_now_09",
				"egt_vw_attack_now_10"
			},
			sound_events_duration = {
				1.2998026609421,
				1.9269952774048,
				2.1835741996765,
				2.6726775169373,
				1.561726808548,
				1.2570395469666,
				2.0739934444427,
				1.9581768512726,
				2.5755693912506,
				3.0967452526092
			}
		},
		egt_vw_cover_me = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
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
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"egt_vw_cover_me_01",
				"egt_vw_cover_me_02",
				"egt_vw_cover_me_03",
				"egt_vw_cover_me_04",
				"egt_vw_cover_me_05",
				"egt_vw_cover_me_06",
				"egt_vw_cover_me_07",
				"egt_vw_cover_me_08",
				"egt_vw_cover_me_09",
				"egt_vw_cover_me_10"
			},
			randomize_indexes = {},
			sound_events = {
				"egt_vw_cover_me_01",
				"egt_vw_cover_me_02",
				"egt_vw_cover_me_03",
				"egt_vw_cover_me_04",
				"egt_vw_cover_me_05",
				"egt_vw_cover_me_06",
				"egt_vw_cover_me_07",
				"egt_vw_cover_me_08",
				"egt_vw_cover_me_09",
				"egt_vw_cover_me_10"
			},
			sound_events_duration = {
				1.3532565832138,
				2.9141111373901,
				2.0437030792236,
				1.4521462917328,
				1.336329460144,
				1.1777495145798,
				1.6089444160461,
				2.0374667644501,
				2.5809149742127,
				2.0633029937744
			}
		},
		egt_vw_gather = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
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
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"egt_vw_gather_01",
				"egt_vw_gather_02",
				"egt_vw_gather_03",
				"egt_vw_gather_04",
				"egt_vw_gather_05",
				"egt_vw_gather_06",
				"egt_vw_gather_07",
				"egt_vw_gather_08",
				"egt_vw_gather_09",
				"egt_vw_gather_10"
			},
			randomize_indexes = {},
			sound_events = {
				"egt_vw_gather_01",
				"egt_vw_gather_02",
				"egt_vw_gather_03",
				"egt_vw_gather_04",
				"egt_vw_gather_05",
				"egt_vw_gather_06",
				"egt_vw_gather_07",
				"egt_vw_gather_08",
				"egt_vw_gather_09",
				"egt_vw_gather_10"
			},
			sound_events_duration = {
				1.3568201065064,
				0.92473423480988,
				1.4280921220779,
				2.3091909885406,
				0.96306145191193,
				0.79466307163239,
				1.188440322876,
				1.1777495145798,
				1.5278726816177,
				3.2963066101074
			}
		},
		egt_vw_go_here = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
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
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"egt_vw_go_here_01",
				"egt_vw_go_here_02",
				"egt_vw_go_here_03",
				"egt_vw_go_here_04",
				"egt_vw_go_here_05",
				"egt_vw_go_here_06",
				"egt_vw_go_here_07",
				"egt_vw_go_here_08",
				"egt_vw_go_here_09",
				"egt_vw_go_here_10"
			},
			randomize_indexes = {},
			sound_events = {
				"egt_vw_go_here_01",
				"egt_vw_go_here_02",
				"egt_vw_go_here_03",
				"egt_vw_go_here_04",
				"egt_vw_go_here_05",
				"egt_vw_go_here_06",
				"egt_vw_go_here_07",
				"egt_vw_go_here_08",
				"egt_vw_go_here_09",
				"egt_vw_go_here_10"
			},
			sound_events_duration = {
				1.7594599723816,
				1.623300909996,
				1.0587403774261,
				1.5504420995712,
				1.6479306221008,
				1.7226639986038,
				1.7198706865311,
				1.0156987905502,
				1.7536505460739,
				2.0893616676331
			}
		},
		egt_vw_negation = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 11,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 11,
			category = "player_alerts",
			dialogue_animations_n = 11,
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
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"egt_vw_negation_01",
				"egt_vw_negation_02",
				"egt_vw_negation_03",
				"egt_vw_negation_04",
				"egt_vw_negation_05",
				"egt_vw_negation_06",
				"egt_vw_negation_07",
				"egt_vw_negation_08",
				"egt_vw_negation_09",
				"egt_vw_negation_10",
				"egt_vw_negation_11"
			},
			randomize_indexes = {},
			sound_events = {
				"egt_vw_negation_01",
				"egt_vw_negation_02",
				"egt_vw_negation_03",
				"egt_vw_negation_04",
				"egt_vw_negation_05",
				"egt_vw_negation_06",
				"egt_vw_negation_07",
				"egt_vw_negation_08",
				"egt_vw_negation_09",
				"egt_vw_negation_10",
				"egt_vw_negation_11"
			},
			sound_events_duration = {
				0.51672124862671,
				0.69933694601059,
				0.91404348611832,
				1.301584482193,
				1.4931275844574,
				1.3826562166214,
				1.564399600029,
				0.80891746282578,
				3.4094507694244,
				1.2410032749176,
				1.9777764081955
			}
		},
		egt_vw_thanks = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 11,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 11,
			category = "player_alerts",
			dialogue_animations_n = 11,
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
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"egt_vs_vw_thanks_a_01",
				"egt_vs_vw_thanks_a_02",
				"egt_vs_vw_thanks_a_03",
				"egt_vs_vw_thanks_a_04",
				"egt_vs_vw_thanks_a_05",
				"egt_vs_vw_thanks_a_06",
				"egt_vs_vw_thanks_a_07",
				"egt_vs_vw_thanks_a_08",
				"egt_vs_vw_thanks_a_09",
				"egt_vs_vw_thanks_a_11",
				"egt_vs_vw_thanks_a_12"
			},
			randomize_indexes = {},
			sound_events = {
				"egt_vs_vw_thanks_a_01",
				"egt_vs_vw_thanks_a_02",
				"egt_vs_vw_thanks_a_03",
				"egt_vs_vw_thanks_a_04",
				"egt_vs_vw_thanks_a_05",
				"egt_vs_vw_thanks_a_06",
				"egt_vs_vw_thanks_a_07",
				"egt_vs_vw_thanks_a_08",
				"egt_vs_vw_thanks_a_09",
				"egt_vs_vw_thanks_a_11",
				"egt_vs_vw_thanks_a_12"
			},
			sound_events_duration = {
				1.3801412284374,
				0.84811699390411,
				0.70130431652069,
				0.90376108884811,
				1.1061992645264,
				1.2699389457703,
				0.37516114115715,
				0.85129082202911,
				1.1165651679039,
				1.5773918628693,
				1.1549387574196
			}
		},
		egt_vw_wait = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 11,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 11,
			category = "player_alerts",
			dialogue_animations_n = 11,
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
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"egt_vw_wait_01",
				"egt_vw_wait_02",
				"egt_vw_wait_03",
				"egt_vw_wait_04",
				"egt_vw_wait_05",
				"egt_vw_wait_06",
				"egt_vw_wait_07",
				"egt_vw_wait_08",
				"egt_vw_wait_09",
				"egt_vw_wait_10",
				"egt_vw_wait_11"
			},
			randomize_indexes = {},
			sound_events = {
				"egt_vw_wait_01",
				"egt_vw_wait_02",
				"egt_vw_wait_03",
				"egt_vw_wait_04",
				"egt_vw_wait_05",
				"egt_vw_wait_06",
				"egt_vw_wait_07",
				"egt_vw_wait_08",
				"egt_vw_wait_09",
				"egt_vw_wait_10",
				"egt_vw_wait_11"
			},
			sound_events_duration = {
				2.6022965908051,
				1.5697450637817,
				1.5768721103668,
				1.2436760663986,
				1.6178534030914,
				2.1604108810425,
				4.5417828559875,
				1.9038319587708,
				2.4410440921783,
				2.7412767410278,
				3.7488832473755
			}
		},
		epg_spawning_globadier = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 5,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 5,
			category = "player_alerts",
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
				"epg_spawning_globadier_01",
				"epg_spawning_globadier_02",
				"epg_spawning_globadier_03",
				"epg_spawning_globadier_04",
				"epg_spawning_globadier_05"
			},
			randomize_indexes = {},
			sound_events = {
				"epg_spawning_globadier_01",
				"epg_spawning_globadier_02",
				"epg_spawning_globadier_03",
				"epg_spawning_globadier_04",
				"epg_spawning_globadier_05"
			},
			sound_events_duration = {
				4.0489792823792,
				3.926479101181,
				3.0699791908264,
				3.2434791326523,
				4.8573522567749
			}
		},
		epg_taunting_bardin = {
			randomize_indexes_n = 0,
			face_animations_n = 9,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 9,
			category = "player_alerts",
			dialogue_animations_n = 9,
			dialogue_animations = {
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
				"face_neutral",
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
				"epg_taunting_bardin_01",
				"epg_taunting_bardin_02",
				"epg_taunting_bardin_03",
				"epg_taunting_bardin_04",
				"epg_taunting_bardin_05",
				"epg_taunting_bardin_06",
				"epg_taunting_bardin_07",
				"epg_taunting_bardin_09",
				"epg_taunting_bardin_10"
			},
			randomize_indexes = {},
			sound_events = {
				"epg_taunting_bardin_01",
				"epg_taunting_bardin_02",
				"epg_taunting_bardin_03",
				"epg_taunting_bardin_04",
				"epg_taunting_bardin_05",
				"epg_taunting_bardin_06",
				"epg_taunting_bardin_07",
				"epg_taunting_bardin_09",
				"epg_taunting_bardin_10"
			},
			sound_events_duration = {
				1.7689791917801,
				2.533979177475,
				3.0179791450501,
				2.2529792785645,
				1.8729791641235,
				1.8709791898727,
				1.3509792089462,
				1.6009999513626,
				1.6619791984558
			}
		},
		epg_taunting_kerillian = {
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
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
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epg_taunting_kerillian_01",
				"epg_taunting_kerillian_02",
				"epg_taunting_kerillian_03",
				"epg_taunting_kerillian_04",
				"epg_taunting_kerillian_05",
				"epg_taunting_kerillian_06",
				"epg_taunting_kerillian_07",
				"epg_taunting_kerillian_08",
				"epg_taunting_kerillian_09",
				"epg_taunting_kerillian_10"
			},
			randomize_indexes = {},
			sound_events = {
				"epg_taunting_kerillian_01",
				"epg_taunting_kerillian_02",
				"epg_taunting_kerillian_03",
				"epg_taunting_kerillian_04",
				"epg_taunting_kerillian_05",
				"epg_taunting_kerillian_06",
				"epg_taunting_kerillian_07",
				"epg_taunting_kerillian_08",
				"epg_taunting_kerillian_09",
				"epg_taunting_kerillian_10"
			},
			sound_events_duration = {
				2.7469792366028,
				2.5599792003632,
				3.7599792480469,
				2.2189791202545,
				2.868979215622,
				2.7239792346954,
				1.3849791288376,
				1.4509791135788,
				1.4909791946411,
				1.7069791555405
			}
		},
		epg_taunting_kruber = {
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
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
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epg_taunting_kruber_01",
				"epg_taunting_kruber_02",
				"epg_taunting_kruber_03",
				"epg_taunting_kruber_04",
				"epg_taunting_kruber_05",
				"epg_taunting_kruber_06",
				"epg_taunting_kruber_07",
				"epg_taunting_kruber_08",
				"epg_taunting_kruber_09",
				"epg_taunting_kruber_10"
			},
			randomize_indexes = {},
			sound_events = {
				"epg_taunting_kruber_01",
				"epg_taunting_kruber_02",
				"epg_taunting_kruber_03",
				"epg_taunting_kruber_04",
				"epg_taunting_kruber_05",
				"epg_taunting_kruber_06",
				"epg_taunting_kruber_07",
				"epg_taunting_kruber_08",
				"epg_taunting_kruber_09",
				"epg_taunting_kruber_10"
			},
			sound_events_duration = {
				2.9239792823791,
				2.1739792823791,
				2.2869791984558,
				2.7369792461395,
				3.7129790782928,
				3.0319790840149,
				1.5779792070389,
				1.7599791288376,
				3.0509791374206,
				2.7369792461395
			}
		},
		epg_taunting_saltzpyre = {
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
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
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epg_taunting_saltzpyre_01",
				"epg_taunting_saltzpyre_02",
				"epg_taunting_saltzpyre_03",
				"epg_taunting_saltzpyre_04",
				"epg_taunting_saltzpyre_05",
				"epg_taunting_saltzpyre_06",
				"epg_taunting_saltzpyre_07",
				"epg_taunting_saltzpyre_08",
				"epg_taunting_saltzpyre_09",
				"epg_taunting_saltzpyre_10"
			},
			randomize_indexes = {},
			sound_events = {
				"epg_taunting_saltzpyre_01",
				"epg_taunting_saltzpyre_02",
				"epg_taunting_saltzpyre_03",
				"epg_taunting_saltzpyre_04",
				"epg_taunting_saltzpyre_05",
				"epg_taunting_saltzpyre_06",
				"epg_taunting_saltzpyre_07",
				"epg_taunting_saltzpyre_08",
				"epg_taunting_saltzpyre_09",
				"epg_taunting_saltzpyre_10"
			},
			sound_events_duration = {
				2.3039791584015,
				3.919979095459,
				2.7309792041779,
				2.3459792137146,
				2.2029790878296,
				2.3359792232513,
				1.3939791917801,
				2.5139791965485,
				1.5,
				3.091979265213
			}
		},
		epg_taunting_sienna = {
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
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
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epg_taunting_sienna_01",
				"epg_taunting_sienna_02",
				"epg_taunting_sienna_03",
				"epg_taunting_sienna_04",
				"epg_taunting_sienna_05",
				"epg_taunting_sienna_06",
				"epg_taunting_sienna_07",
				"epg_taunting_sienna_08",
				"epg_taunting_sienna_09",
				"epg_taunting_sienna_10"
			},
			randomize_indexes = {},
			sound_events = {
				"epg_taunting_sienna_01",
				"epg_taunting_sienna_02",
				"epg_taunting_sienna_03",
				"epg_taunting_sienna_04",
				"epg_taunting_sienna_05",
				"epg_taunting_sienna_06",
				"epg_taunting_sienna_07",
				"epg_taunting_sienna_08",
				"epg_taunting_sienna_09",
				"epg_taunting_sienna_10"
			},
			sound_events_duration = {
				1.8779791593552,
				2.4569792747498,
				2.8609790802002,
				3.0779790878296,
				2.2119791507721,
				1.9249792098999,
				1.4889792203903,
				1.7789791822434,
				1.6549791097641,
				1.7689791917801
			}
		},
		epg_versus_throwing_globe = {
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 8,
			category = "player_feedback",
			dialogue_animations_n = 8,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
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
				"epg_versus_throwing_globe_01",
				"epg_versus_throwing_globe_02",
				"epg_versus_throwing_globe_03",
				"epg_versus_throwing_globe_05",
				"epg_versus_throwing_globe_06",
				"epg_versus_throwing_globe_08",
				"epg_versus_throwing_globe_09",
				"epg_versus_throwing_globe_10"
			},
			randomize_indexes = {},
			sound_events = {
				"epg_versus_throwing_globe_01",
				"epg_versus_throwing_globe_02",
				"epg_versus_throwing_globe_03",
				"epg_versus_throwing_globe_05",
				"epg_versus_throwing_globe_06",
				"epg_versus_throwing_globe_08",
				"epg_versus_throwing_globe_09",
				"epg_versus_throwing_globe_10"
			},
			sound_events_duration = {
				1.6094791889191,
				1.4309791326523,
				1.7129791975021,
				1.5724791884422,
				1.8564791679382,
				1.1764791607857,
				1.790979206562,
				1.665479183197
			}
		},
		epg_vs_ability_horde_a = {
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 6,
			category = "activate_ability",
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
				"epg_vs_ability_horde_a_01",
				"epg_vs_ability_horde_a_02",
				"epg_vs_ability_horde_a_03",
				"epg_vs_ability_horde_a_04",
				"epg_vs_ability_horde_a_05",
				"epg_vs_ability_horde_a_06"
			},
			randomize_indexes = {},
			sound_events = {
				"epg_vs_ability_horde_a_01",
				"epg_vs_ability_horde_a_02",
				"epg_vs_ability_horde_a_03",
				"epg_vs_ability_horde_a_04",
				"epg_vs_ability_horde_a_05",
				"epg_vs_ability_horde_a_06"
			},
			sound_events_duration = {
				2.4853957891464,
				4.1422710418701,
				3.8384165763855,
				4.0857917070389,
				5.6463751792908,
				4.1743957996368
			}
		},
		epg_vs_downed_hero_a = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "vs_player_vo_pactsworn",
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
				"epg_vs_downed_hero_a_01",
				"epg_vs_downed_hero_a_02",
				"epg_vs_downed_hero_a_03",
				"epg_vs_downed_hero_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"epg_vs_downed_hero_a_01",
				"epg_vs_downed_hero_a_02",
				"epg_vs_downed_hero_a_03",
				"epg_vs_downed_hero_a_04"
			},
			sound_events_duration = {
				1.5739687681198,
				0.86397916078568,
				1.3741979002953,
				1.5689582824707
			}
		},
		epg_vs_globadier_hitting_many_a = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "vs_player_vo_pactsworn",
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
				"epg_vs_globadier_hitting_many_a_01",
				"epg_vs_globadier_hitting_many_a_02",
				"epg_vs_globadier_hitting_many_a_03",
				"epg_vs_globadier_hitting_many_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"epg_vs_globadier_hitting_many_a_01",
				"epg_vs_globadier_hitting_many_a_02",
				"epg_vs_globadier_hitting_many_a_03",
				"epg_vs_globadier_hitting_many_a_04"
			},
			sound_events_duration = {
				2.2619895339012,
				2.1694375276566,
				2.9708541631699,
				2.9632709026337
			}
		},
		epg_vs_globadier_missing_globe_a = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "vs_player_vo_pactsworn",
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
				"epg_vs_globadier_missing_globe_a_01",
				"epg_vs_globadier_missing_globe_a_02",
				"epg_vs_globadier_missing_globe_a_03",
				"epg_vs_globadier_missing_globe_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"epg_vs_globadier_missing_globe_a_01",
				"epg_vs_globadier_missing_globe_a_02",
				"epg_vs_globadier_missing_globe_a_03",
				"epg_vs_globadier_missing_globe_a_04"
			},
			sound_events_duration = {
				1.4596562981606,
				1.4893333315849,
				2.4838854074478,
				1.8706458210945
			}
		},
		epg_vs_globe_on_disabled_hero_a = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "vs_player_vo_pactsworn",
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
				"epg_vs_globe_on_disabled_hero_a_01",
				"epg_vs_globe_on_disabled_hero_a_02",
				"epg_vs_globe_on_disabled_hero_a_03",
				"epg_vs_globe_on_disabled_hero_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"epg_vs_globe_on_disabled_hero_a_01",
				"epg_vs_globe_on_disabled_hero_a_02",
				"epg_vs_globe_on_disabled_hero_a_03",
				"epg_vs_globe_on_disabled_hero_a_04"
			},
			sound_events_duration = {
				1.8928750157356,
				2.4793125391007,
				1.8167499899864,
				1.8946562409401
			}
		},
		epg_vs_heroes_objective_almost_completed_b = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "vs_player_vo_pactsworn",
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
				"epg_vs_heroes_objective_almost_completed_b_01",
				"epg_vs_heroes_objective_almost_completed_b_02",
				"epg_vs_heroes_objective_almost_completed_b_03",
				"epg_vs_heroes_objective_almost_completed_b_04"
			},
			randomize_indexes = {},
			sound_events = {
				"epg_vs_heroes_objective_almost_completed_b_01",
				"epg_vs_heroes_objective_almost_completed_b_02",
				"epg_vs_heroes_objective_almost_completed_b_03",
				"epg_vs_heroes_objective_almost_completed_b_04"
			},
			sound_events_duration = {
				0.75333335995674,
				1.6483333110809,
				1.7566041946411,
				1.5559583902359
			}
		},
		epg_vs_many_heroes_incapacitated_a = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "vs_player_vo_pactsworn",
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
				"epg_vs_many_heroes_incapacitated_a_01",
				"epg_vs_many_heroes_incapacitated_a_02",
				"epg_vs_many_heroes_incapacitated_a_03",
				"epg_vs_many_heroes_incapacitated_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"epg_vs_many_heroes_incapacitated_a_01",
				"epg_vs_many_heroes_incapacitated_a_02",
				"epg_vs_many_heroes_incapacitated_a_03",
				"epg_vs_many_heroes_incapacitated_a_04"
			},
			sound_events_duration = {
				2.1101040840149,
				2.0368124842644,
				0.95401042699814,
				2.3365624547005
			}
		},
		epg_vs_pact_proximity_banter_eight_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "epg_vs_pact_proximity_banter_eight_b_01"
			},
			sound_events = {
				[1] = "epg_vs_pact_proximity_banter_eight_b_01"
			},
			sound_events_duration = {
				[1] = 3.7312500476837
			}
		},
		epg_vs_pact_proximity_banter_eighteen_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "epg_vs_pact_proximity_banter_eighteen_b_01"
			},
			sound_events = {
				[1] = "epg_vs_pact_proximity_banter_eighteen_b_01"
			},
			sound_events_duration = {
				[1] = 4.4328956604004
			}
		},
		epg_vs_pact_proximity_banter_eleven_a = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "epg_vs_pact_proximity_banter_eleven_a_01"
			},
			sound_events = {
				[1] = "epg_vs_pact_proximity_banter_eleven_a_01"
			},
			sound_events_duration = {
				[1] = 9.5584373474121
			}
		},
		epg_vs_pact_proximity_banter_fifteen_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "epg_vs_pact_proximity_banter_fifteen_b_01"
			},
			sound_events = {
				[1] = "epg_vs_pact_proximity_banter_fifteen_b_01"
			},
			sound_events_duration = {
				[1] = 5.9198751449585
			}
		},
		epg_vs_pact_proximity_banter_five_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "epg_vs_pact_proximity_banter_five_b_01"
			},
			sound_events = {
				[1] = "epg_vs_pact_proximity_banter_five_b_01"
			},
			sound_events_duration = {
				[1] = 6.5415625572205
			}
		},
		epg_vs_pact_proximity_banter_four_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "epg_vs_pact_proximity_banter_four_b_01"
			},
			sound_events = {
				[1] = "epg_vs_pact_proximity_banter_four_b_01"
			},
			sound_events_duration = {
				[1] = 4.2673540115356
			}
		},
		epg_vs_pact_proximity_banter_fourteen_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "epg_vs_pact_proximity_banter_fourteen_b_01"
			},
			sound_events = {
				[1] = "epg_vs_pact_proximity_banter_fourteen_b_01"
			},
			sound_events_duration = {
				[1] = 3.8897500038147
			}
		},
		epg_vs_pact_proximity_banter_nine_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "epg_vs_pact_proximity_banter_nine_b_01"
			},
			sound_events = {
				[1] = "epg_vs_pact_proximity_banter_nine_b_01"
			},
			sound_events_duration = {
				[1] = 5.0101041793823
			}
		},
		epg_vs_pact_proximity_banter_nineteen_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "epg_vs_pact_proximity_banter_nineteen_b_01"
			},
			sound_events = {
				[1] = "epg_vs_pact_proximity_banter_nineteen_b_01"
			},
			sound_events_duration = {
				[1] = 6.434645652771
			}
		},
		epg_vs_pact_proximity_banter_one_a = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "epg_vs_pact_proximity_banter_one_a_01"
			},
			sound_events = {
				[1] = "epg_vs_pact_proximity_banter_one_a_01"
			},
			sound_events_duration = {
				[1] = 2.8331665992737
			}
		},
		epg_vs_pact_proximity_banter_seven_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "epg_vs_pact_proximity_banter_seven_b_01"
			},
			sound_events = {
				[1] = "epg_vs_pact_proximity_banter_seven_b_01"
			},
			sound_events_duration = {
				[1] = 5.6720418930054
			}
		},
		epg_vs_pact_proximity_banter_seventeen_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "epg_vs_pact_proximity_banter_seventeen_b_01"
			},
			sound_events = {
				[1] = "epg_vs_pact_proximity_banter_seventeen_b_01"
			},
			sound_events_duration = {
				[1] = 3.2515625953674
			}
		},
		epg_vs_pact_proximity_banter_six_a = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "epg_vs_pact_proximity_banter_six_a_01"
			},
			sound_events = {
				[1] = "epg_vs_pact_proximity_banter_six_a_01"
			},
			sound_events_duration = {
				[1] = 4.1357498168945
			}
		},
		epg_vs_pact_proximity_banter_sixteen_a = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "epg_vs_pact_proximity_banter_sixteen_a_01"
			},
			sound_events = {
				[1] = "epg_vs_pact_proximity_banter_sixteen_a_01"
			},
			sound_events_duration = {
				[1] = 2.7954165935516
			}
		},
		epg_vs_pact_proximity_banter_ten_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "epg_vs_pact_proximity_banter_ten_b_01"
			},
			sound_events = {
				[1] = "epg_vs_pact_proximity_banter_ten_b_01"
			},
			sound_events_duration = {
				[1] = 2.5683958530426
			}
		},
		epg_vs_pact_proximity_banter_thirteen_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "epg_vs_pact_proximity_banter_thirteen_b_01"
			},
			sound_events = {
				[1] = "epg_vs_pact_proximity_banter_thirteen_b_01"
			},
			sound_events_duration = {
				[1] = 3.1262707710266
			}
		},
		epg_vs_pact_proximity_banter_three_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "epg_vs_pact_proximity_banter_three_b_01"
			},
			sound_events = {
				[1] = "epg_vs_pact_proximity_banter_three_b_01"
			},
			sound_events_duration = {
				[1] = 3.0974583625794
			}
		},
		epg_vs_pact_proximity_banter_twelve_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "epg_vs_pact_proximity_banter_twelve_b_01"
			},
			sound_events = {
				[1] = "epg_vs_pact_proximity_banter_twelve_b_01"
			},
			sound_events_duration = {
				[1] = 4.8321876525879
			}
		},
		epg_vs_pact_proximity_banter_twenty_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "epg_vs_pact_proximity_banter_twenty_b_01"
			},
			sound_events = {
				[1] = "epg_vs_pact_proximity_banter_twenty_b_01"
			},
			sound_events_duration = {
				[1] = 10.622812271118
			}
		},
		epg_vs_pact_proximity_banter_two_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "epg_vs_pact_proximity_banter_two_b_01"
			},
			sound_events = {
				[1] = "epg_vs_pact_proximity_banter_two_b_01"
			},
			sound_events_duration = {
				[1] = 3.7598750591278
			}
		},
		epg_vs_passing_hoisted_hero_a = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 2,
			category = "player_feedback",
			dialogue_animations_n = 2,
			dialogue_animations = {
				[1] = "dialogue_talk",
				[2] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral",
				[2] = "face_neutral"
			},
			localization_strings = {
				[1] = "epg_vs_passing_hoisted_hero_a_01",
				[2] = "epg_vs_passing_hoisted_hero_a_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "epg_vs_passing_hoisted_hero_a_01",
				[2] = "epg_vs_passing_hoisted_hero_a_02"
			},
			sound_events_duration = {
				[1] = 2.036812543869,
				[2] = 2.2063125371933
			}
		},
		epg_vs_vw_cheer_a = {
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "vs_player_vo_pactsworn",
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
				"epg_vs_vw_cheer_a_01",
				"epg_vs_vw_cheer_a_02",
				"epg_vs_vw_cheer_a_03",
				"epg_vs_vw_cheer_a_04",
				"epg_vs_vw_cheer_a_05",
				"epg_vs_vw_cheer_a_06"
			},
			randomize_indexes = {},
			sound_events = {
				"epg_vs_vw_cheer_a_01",
				"epg_vs_vw_cheer_a_02",
				"epg_vs_vw_cheer_a_03",
				"epg_vs_vw_cheer_a_04",
				"epg_vs_vw_cheer_a_05",
				"epg_vs_vw_cheer_a_06"
			},
			sound_events_duration = {
				2.0105520486832,
				1.5138541460037,
				2.3434166908264,
				2.0044583082199,
				2.2452396154404,
				2.5033229589462
			}
		},
		epg_vw_affirmative = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
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
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epg_vw_affirmative_01",
				"epg_vw_affirmative_02",
				"epg_vw_affirmative_03",
				"epg_vw_affirmative_04",
				"epg_vw_affirmative_05",
				"epg_vw_affirmative_06",
				"epg_vw_affirmative_07",
				"epg_vw_affirmative_08",
				"epg_vw_affirmative_09",
				"epg_vw_affirmative_10"
			},
			randomize_indexes = {},
			sound_events = {
				"epg_vw_affirmative_01",
				"epg_vw_affirmative_02",
				"epg_vw_affirmative_03",
				"epg_vw_affirmative_04",
				"epg_vw_affirmative_05",
				"epg_vw_affirmative_06",
				"epg_vw_affirmative_07",
				"epg_vw_affirmative_08",
				"epg_vw_affirmative_09",
				"epg_vw_affirmative_10"
			},
			sound_events_duration = {
				0.62197917699814,
				0.7549791932106,
				0.6299791932106,
				1.9139791727066,
				1.868979215622,
				0.79697918891907,
				2.0839791297913,
				2.3164596557617,
				1.0130000114441,
				1.4279791116715
			}
		},
		epg_vw_ambush = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 9,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 9,
			category = "player_alerts",
			dialogue_animations_n = 9,
			dialogue_animations = {
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
				"face_neutral",
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
				"epg_vw_ambush_01",
				"epg_vw_ambush_02",
				"epg_vw_ambush_03",
				"epg_vw_ambush_04",
				"epg_vw_ambush_05",
				"epg_vw_ambush_06",
				"epg_vw_ambush_08",
				"epg_vw_ambush_09",
				"epg_vw_ambush_10"
			},
			randomize_indexes = {},
			sound_events = {
				"epg_vw_ambush_01",
				"epg_vw_ambush_02",
				"epg_vw_ambush_03",
				"epg_vw_ambush_04",
				"epg_vw_ambush_05",
				"epg_vw_ambush_06",
				"epg_vw_ambush_08",
				"epg_vw_ambush_09",
				"epg_vw_ambush_10"
			},
			sound_events_duration = {
				1.7099791765213,
				1.7009791135788,
				2.109375,
				1.6339792013168,
				1.3539999723434,
				2.9916851520538,
				2.7929792404175,
				3.7519791126251,
				1.3009791374207
			}
		},
		epg_vw_attack_now = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
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
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epg_vw_attack_now_01",
				"epg_vw_attack_now_02",
				"epg_vw_attack_now_03",
				"epg_vw_attack_now_04",
				"epg_vw_attack_now_05",
				"epg_vw_attack_now_06",
				"epg_vw_attack_now_07",
				"epg_vw_attack_now_08",
				"epg_vw_attack_now_09",
				"epg_vw_attack_now_10"
			},
			randomize_indexes = {},
			sound_events = {
				"epg_vw_attack_now_01",
				"epg_vw_attack_now_02",
				"epg_vw_attack_now_03",
				"epg_vw_attack_now_04",
				"epg_vw_attack_now_05",
				"epg_vw_attack_now_06",
				"epg_vw_attack_now_07",
				"epg_vw_attack_now_08",
				"epg_vw_attack_now_09",
				"epg_vw_attack_now_10"
			},
			sound_events_duration = {
				1.1199791431427,
				1.6079791784286,
				1.6129791736603,
				1.7499791383743,
				0.65997916460037,
				1.0939999818802,
				1.937979221344,
				1.7899792194366,
				2.573979139328,
				3.4079999923706
			}
		},
		epg_vw_cover_me = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 6,
			category = "player_alerts",
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
				"epg_vw_cover_me_01",
				"epg_vw_cover_me_04",
				"epg_vw_cover_me_06",
				"epg_vw_cover_me_08",
				"epg_vw_cover_me_09",
				"epg_vw_cover_me_10"
			},
			randomize_indexes = {},
			sound_events = {
				"epg_vw_cover_me_01",
				"epg_vw_cover_me_04",
				"epg_vw_cover_me_06",
				"epg_vw_cover_me_08",
				"epg_vw_cover_me_09",
				"epg_vw_cover_me_10"
			},
			sound_events_duration = {
				0.65397918224335,
				0.97799998521805,
				0.70697915554047,
				1.5835760831833,
				1.630979180336,
				1.7609791755676
			}
		},
		epg_vw_gather = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 9,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 9,
			category = "player_alerts",
			dialogue_animations_n = 9,
			dialogue_animations = {
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
				"face_neutral",
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
				"epg_vw_gather_01",
				"epg_vw_gather_02",
				"epg_vw_gather_03",
				"epg_vw_gather_04",
				"epg_vw_gather_05",
				"epg_vw_gather_07",
				"epg_vw_gather_08",
				"epg_vw_gather_09",
				"epg_vw_gather_10"
			},
			randomize_indexes = {},
			sound_events = {
				"epg_vw_gather_01",
				"epg_vw_gather_02",
				"epg_vw_gather_03",
				"epg_vw_gather_04",
				"epg_vw_gather_05",
				"epg_vw_gather_07",
				"epg_vw_gather_08",
				"epg_vw_gather_09",
				"epg_vw_gather_10"
			},
			sound_events_duration = {
				1.1059792041779,
				0.58197915554047,
				0.99000000953674,
				1.6819791793823,
				0.63599997758865,
				1.0499999523163,
				0.89499998092651,
				0.73799997568131,
				2.6089792251587
			}
		},
		epg_vw_go_here = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
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
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epg_vw_go_here_01",
				"epg_vw_go_here_02",
				"epg_vw_go_here_03",
				"epg_vw_go_here_04",
				"epg_vw_go_here_05",
				"epg_vw_go_here_06",
				"epg_vw_go_here_07",
				"epg_vw_go_here_08",
				"epg_vw_go_here_09",
				"epg_vw_go_here_10"
			},
			randomize_indexes = {},
			sound_events = {
				"epg_vw_go_here_01",
				"epg_vw_go_here_02",
				"epg_vw_go_here_03",
				"epg_vw_go_here_04",
				"epg_vw_go_here_05",
				"epg_vw_go_here_06",
				"epg_vw_go_here_07",
				"epg_vw_go_here_08",
				"epg_vw_go_here_09",
				"epg_vw_go_here_10"
			},
			sound_events_duration = {
				0.94497919082642,
				1.3179792165756,
				0.76899999380112,
				1.7969791889191,
				1.4029791355133,
				2.0939791202545,
				2.881979227066,
				1.2609791755676,
				1.6519792079925,
				1.64297914505
			}
		},
		epg_vw_negation = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
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
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epg_vw_negation_01",
				"epg_vw_negation_02",
				"epg_vw_negation_03",
				"epg_vw_negation_04",
				"epg_vw_negation_05",
				"epg_vw_negation_06",
				"epg_vw_negation_07",
				"epg_vw_negation_08",
				"epg_vw_negation_09",
				"epg_vw_negation_10"
			},
			randomize_indexes = {},
			sound_events = {
				"epg_vw_negation_01",
				"epg_vw_negation_02",
				"epg_vw_negation_03",
				"epg_vw_negation_04",
				"epg_vw_negation_05",
				"epg_vw_negation_06",
				"epg_vw_negation_07",
				"epg_vw_negation_08",
				"epg_vw_negation_09",
				"epg_vw_negation_10"
			},
			sound_events_duration = {
				0.49197915196419,
				0.56997919082642,
				0.84597915410995,
				0.92897915840149,
				1.8939791917801,
				1.5099791288376,
				1.0799791812897,
				1.476979136467,
				2.4069790840149,
				0.94297915697098
			}
		},
		epg_vw_thanks = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 12,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 12,
			category = "player_alerts",
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
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
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
				"epg_vs_vw_thanks_a_01",
				"epg_vs_vw_thanks_a_02",
				"epg_vs_vw_thanks_a_03",
				"epg_vs_vw_thanks_a_04",
				"epg_vs_vw_thanks_a_05",
				"epg_vs_vw_thanks_a_06",
				"epg_vs_vw_thanks_a_07",
				"epg_vs_vw_thanks_a_08",
				"epg_vs_vw_thanks_a_09",
				"epg_vs_vw_thanks_a_10",
				"epg_vs_vw_thanks_a_11",
				"epg_vs_vw_thanks_a_12"
			},
			randomize_indexes = {},
			sound_events = {
				"epg_vs_vw_thanks_a_01",
				"epg_vs_vw_thanks_a_02",
				"epg_vs_vw_thanks_a_03",
				"epg_vs_vw_thanks_a_04",
				"epg_vs_vw_thanks_a_05",
				"epg_vs_vw_thanks_a_06",
				"epg_vs_vw_thanks_a_07",
				"epg_vs_vw_thanks_a_08",
				"epg_vs_vw_thanks_a_09",
				"epg_vs_vw_thanks_a_10",
				"epg_vs_vw_thanks_a_11",
				"epg_vs_vw_thanks_a_12"
			},
			sound_events_duration = {
				0.98168751597405,
				0.53894792497158,
				0.7084479033947,
				0.85560417175293,
				0.93669790029526,
				1.2722707986832,
				0.64266666769981,
				0.89914581179619,
				0.74645835161209,
				0.64958333969116,
				1.7831457853317,
				1.4487083554268
			}
		},
		epg_vw_wait = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
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
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epg_vw_wait_01",
				"epg_vw_wait_02",
				"epg_vw_wait_03",
				"epg_vw_wait_04",
				"epg_vw_wait_05",
				"epg_vw_wait_06",
				"epg_vw_wait_07",
				"epg_vw_wait_08",
				"epg_vw_wait_09",
				"epg_vw_wait_10"
			},
			randomize_indexes = {},
			sound_events = {
				"epg_vw_wait_01",
				"epg_vw_wait_02",
				"epg_vw_wait_03",
				"epg_vw_wait_04",
				"epg_vw_wait_05",
				"epg_vw_wait_06",
				"epg_vw_wait_07",
				"epg_vw_wait_08",
				"epg_vw_wait_09",
				"epg_vw_wait_10"
			},
			sound_events_duration = {
				1.8349791765213,
				0.58297914266586,
				0.79497915506363,
				0.73397916555405,
				0.76597917079926,
				2.0999791622162,
				2.8659791946411,
				1.6939791440964,
				1.3099792003632,
				2.3009791374206
			}
		},
		epm_packmaster_grab_walk = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "player_feedback",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "player_packmaster_vce_grab_walk"
			},
			sound_events = {
				[1] = "player_packmaster_vce_grab_walk"
			},
			sound_events_duration = {
				[1] = 2.4751597046852
			}
		},
		epm_packmaster_hook_fail = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "player_alerts",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "player_packmaster_vce_effort_hook_fail"
			},
			sound_events = {
				[1] = "player_packmaster_vce_effort_hook_fail"
			},
			sound_events_duration = {
				[1] = 0.4992898106575
			}
		},
		epm_packmaster_hook_success = {
			randomize_indexes_n = 0,
			face_animations_n = 25,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 25,
			category = "player_alerts",
			dialogue_animations_n = 25,
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
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
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
				"epm_hook_success_01",
				"epm_hook_success_02",
				"epm_hook_success_03",
				"epm_hook_success_04",
				"epm_hook_success_05",
				"epm_hook_success_06",
				"epm_hook_success_07",
				"epm_hook_success_08",
				"epm_hook_success_09",
				"epm_hook_success_10",
				"epm_hook_success_11",
				"epm_hook_success_12",
				"epm_hook_success_13",
				"epm_hook_success_14",
				"epm_hook_success_15",
				"epm_hook_success_16",
				"epm_hook_success_17",
				"epm_hook_success_18",
				"epm_hook_success_19",
				"epm_hook_success_20",
				"epm_hook_success_21",
				"epm_vs_hook_success_a_01",
				"epm_vs_hook_success_a_02",
				"epm_vs_hook_success_a_03",
				"epm_vs_hook_success_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"epm_hook_success_01",
				"epm_hook_success_02",
				"epm_hook_success_03",
				"epm_hook_success_04",
				"epm_hook_success_05",
				"epm_hook_success_06",
				"epm_hook_success_07",
				"epm_hook_success_08",
				"epm_hook_success_09",
				"epm_hook_success_10",
				"epm_hook_success_11",
				"epm_hook_success_12",
				"epm_hook_success_13",
				"epm_hook_success_14",
				"epm_hook_success_15",
				"epm_hook_success_16",
				"epm_hook_success_17",
				"epm_hook_success_18",
				"epm_hook_success_19",
				"epm_hook_success_20",
				"epm_hook_success_21",
				"epm_vs_hook_success_a_01",
				"epm_vs_hook_success_a_02",
				"epm_vs_hook_success_a_03",
				"epm_vs_hook_success_a_04"
			},
			sound_events_duration = {
				1.0299253463745,
				1.122412443161,
				0.84786760807037,
				1.2408466339111,
				0.85728138685226,
				1.7195365428925,
				2.4562981128693,
				1.876868724823,
				2.8745851516724,
				3.6418654918671,
				2.1391701698303,
				2.9526190757752,
				4.2969307899475,
				4.2838072776794,
				2.3206150531769,
				2.8549945354462,
				2.3118784427643,
				3.7510356903076,
				2.1861534118652,
				3.8420219421387,
				4.4523773193359,
				1.8369759321213,
				1.6320371627808,
				3.1155813932419,
				2.8133449554443
			}
		},
		epm_spawning_packmaster = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 5,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 5,
			category = "player_alerts",
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
				"epm_spawning_packmaster_01",
				"epm_spawning_packmaster_02",
				"epm_spawning_packmaster_03",
				"epm_spawning_packmaster_04",
				"epm_spawning_packmaster_05"
			},
			randomize_indexes = {},
			sound_events = {
				"epm_spawning_packmaster_01",
				"epm_spawning_packmaster_02",
				"epm_spawning_packmaster_03",
				"epm_spawning_packmaster_04",
				"epm_spawning_packmaster_05"
			},
			sound_events_duration = {
				5.3605642318726,
				5.1071343421936,
				4.6781826019287,
				6.229145526886,
				6.6739654541016
			}
		},
		epm_taunting_bardin = {
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
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
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epm_taunting_bardin_01",
				"epm_taunting_bardin_02",
				"epm_taunting_bardin_03",
				"epm_taunting_bardin_04",
				"epm_taunting_bardin_05",
				"epm_taunting_bardin_06",
				"epm_taunting_bardin_07",
				"epm_taunting_bardin_08",
				"epm_taunting_bardin_09",
				"epm_taunting_bardin_10"
			},
			randomize_indexes = {},
			sound_events = {
				"epm_taunting_bardin_01",
				"epm_taunting_bardin_02",
				"epm_taunting_bardin_03",
				"epm_taunting_bardin_04",
				"epm_taunting_bardin_05",
				"epm_taunting_bardin_06",
				"epm_taunting_bardin_07",
				"epm_taunting_bardin_08",
				"epm_taunting_bardin_09",
				"epm_taunting_bardin_10"
			},
			sound_events_duration = {
				3.3167939186096,
				2.0629944801331,
				1.8194159269333,
				2.9107902050018,
				3.6839413642883,
				2.9855527877808,
				1.5558782815933,
				1.8112553358078,
				2.0925102233887,
				2.2521233558655
			}
		},
		epm_taunting_kerillian = {
			randomize_indexes_n = 0,
			face_animations_n = 9,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 9,
			category = "player_alerts",
			dialogue_animations_n = 9,
			dialogue_animations = {
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
				"face_neutral",
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
				"epm_taunting_kerillian_01",
				"epm_taunting_kerillian_02",
				"epm_taunting_kerillian_03",
				"epm_taunting_kerillian_04",
				"epm_taunting_kerillian_05",
				"epm_taunting_kerillian_06",
				"epm_taunting_kerillian_07",
				"epm_taunting_kerillian_09",
				"epm_taunting_kerillian_10"
			},
			randomize_indexes = {},
			sound_events = {
				"epm_taunting_kerillian_01",
				"epm_taunting_kerillian_02",
				"epm_taunting_kerillian_03",
				"epm_taunting_kerillian_04",
				"epm_taunting_kerillian_05",
				"epm_taunting_kerillian_06",
				"epm_taunting_kerillian_07",
				"epm_taunting_kerillian_09",
				"epm_taunting_kerillian_10"
			},
			sound_events_duration = {
				2.3073987960815,
				3.5802133083344,
				2.7296252250671,
				2.9478764533997,
				2.435647726059,
				2.4642984867096,
				2.1972999572754,
				3.8002145290375,
				2.1999938488007
			}
		},
		epm_taunting_kruber = {
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
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
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epm_taunting_kruber_01",
				"epm_taunting_kruber_02",
				"epm_taunting_kruber_03",
				"epm_taunting_kruber_04",
				"epm_taunting_kruber_05",
				"epm_taunting_kruber_06",
				"epm_taunting_kruber_07",
				"epm_taunting_kruber_08",
				"epm_taunting_kruber_09",
				"epm_taunting_kruber_10"
			},
			randomize_indexes = {},
			sound_events = {
				"epm_taunting_kruber_01",
				"epm_taunting_kruber_02",
				"epm_taunting_kruber_03",
				"epm_taunting_kruber_04",
				"epm_taunting_kruber_05",
				"epm_taunting_kruber_06",
				"epm_taunting_kruber_07",
				"epm_taunting_kruber_08",
				"epm_taunting_kruber_09",
				"epm_taunting_kruber_10"
			},
			sound_events_duration = {
				2.7907016277313,
				2.0880267620087,
				3.6477003097534,
				2.8252122402191,
				2.6199786663055,
				2.4567670822144,
				1.2860286235809,
				2.4678966999054,
				3.0628716945648,
				4.9473757743835
			}
		},
		epm_taunting_saltzpyre = {
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
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
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epm_taunting_saltzpyre_01",
				"epm_taunting_saltzpyre_02",
				"epm_taunting_saltzpyre_03",
				"epm_taunting_saltzpyre_04",
				"epm_taunting_saltzpyre_05",
				"epm_taunting_saltzpyre_06",
				"epm_taunting_saltzpyre_07",
				"epm_taunting_saltzpyre_08",
				"epm_taunting_saltzpyre_09",
				"epm_taunting_saltzpyre_10"
			},
			randomize_indexes = {},
			sound_events = {
				"epm_taunting_saltzpyre_01",
				"epm_taunting_saltzpyre_02",
				"epm_taunting_saltzpyre_03",
				"epm_taunting_saltzpyre_04",
				"epm_taunting_saltzpyre_05",
				"epm_taunting_saltzpyre_06",
				"epm_taunting_saltzpyre_07",
				"epm_taunting_saltzpyre_08",
				"epm_taunting_saltzpyre_09",
				"epm_taunting_saltzpyre_10"
			},
			sound_events_duration = {
				3.3467814922333,
				3.3468601703644,
				3.5441496372223,
				5.0833921432495,
				3.1736786365509,
				2.4214699268341,
				2.1617670059204,
				2.3701469898224,
				1.5008976459503,
				1.9748601913452
			}
		},
		epm_taunting_sienna = {
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
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
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epm_taunting_sienna_01",
				"epm_taunting_sienna_02",
				"epm_taunting_sienna_03",
				"epm_taunting_sienna_04",
				"epm_taunting_sienna_05",
				"epm_taunting_sienna_06",
				"epm_taunting_sienna_07",
				"epm_taunting_sienna_08",
				"epm_taunting_sienna_09",
				"epm_taunting_sienna_10"
			},
			randomize_indexes = {},
			sound_events = {
				"epm_taunting_sienna_01",
				"epm_taunting_sienna_02",
				"epm_taunting_sienna_03",
				"epm_taunting_sienna_04",
				"epm_taunting_sienna_05",
				"epm_taunting_sienna_06",
				"epm_taunting_sienna_07",
				"epm_taunting_sienna_08",
				"epm_taunting_sienna_09",
				"epm_taunting_sienna_10"
			},
			sound_events_duration = {
				2.402533531189,
				1.9972968101502,
				3.9664936065674,
				3.0381739139557,
				2.4866366386414,
				3.341255903244,
				1.4310313463211,
				1.615873336792,
				2.8181331157684,
				2.0521793365478
			}
		},
		epm_vs_ability_horde_a = {
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 6,
			category = "activate_ability",
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
				"epm_vs_ability_horde_a_01",
				"epm_vs_ability_horde_a_02",
				"epm_vs_ability_horde_a_03",
				"epm_vs_ability_horde_a_04",
				"epm_vs_ability_horde_a_05",
				"epm_vs_ability_horde_a_06"
			},
			randomize_indexes = {},
			sound_events = {
				"epm_vs_ability_horde_a_01",
				"epm_vs_ability_horde_a_02",
				"epm_vs_ability_horde_a_03",
				"epm_vs_ability_horde_a_04",
				"epm_vs_ability_horde_a_05",
				"epm_vs_ability_horde_a_06"
			},
			sound_events_duration = {
				5.5769166946411,
				4.2157082557678,
				5.0871043205261,
				3.6119478940964,
				5.1249167919159,
				6.2895936965942
			}
		},
		epm_vs_downed_hero_a = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "vs_player_vo_pactsworn",
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
				"epm_vs_downed_hero_a_01",
				"epm_vs_downed_hero_a_02",
				"epm_vs_downed_hero_a_03",
				"epm_vs_downed_hero_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"epm_vs_downed_hero_a_01",
				"epm_vs_downed_hero_a_02",
				"epm_vs_downed_hero_a_03",
				"epm_vs_downed_hero_a_04"
			},
			sound_events_duration = {
				2.5919573307037,
				1.9467504024506,
				1.9160450696945,
				2.7556211948395
			}
		},
		epm_vs_globadier_hitting_many_a = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "vs_player_vo_pactsworn",
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
				"epm_vs_globadier_hitting_many_a_01",
				"epm_vs_globadier_hitting_many_a_02",
				"epm_vs_globadier_hitting_many_a_03",
				"epm_vs_globadier_hitting_many_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"epm_vs_globadier_hitting_many_a_01",
				"epm_vs_globadier_hitting_many_a_02",
				"epm_vs_globadier_hitting_many_a_03",
				"epm_vs_globadier_hitting_many_a_04"
			},
			sound_events_duration = {
				2.6478916406632,
				3.5436773300171,
				2.0840941667557,
				3.4749615192413
			}
		},
		epm_vs_globadier_missing_globe_a = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "vs_player_vo_pactsworn",
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
				"epm_vs_globadier_missing_globe_a_01",
				"epm_vs_globadier_missing_globe_a_02",
				"epm_vs_globadier_missing_globe_a_03",
				"epm_vs_globadier_missing_globe_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"epm_vs_globadier_missing_globe_a_01",
				"epm_vs_globadier_missing_globe_a_02",
				"epm_vs_globadier_missing_globe_a_03",
				"epm_vs_globadier_missing_globe_a_04"
			},
			sound_events_duration = {
				1.9392879605293,
				1.5503528118134,
				1.6636667847633,
				1.6278783082962
			}
		},
		epm_vs_heroes_objective_almost_completed_b = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "vs_player_vo_pactsworn",
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
				"epm_vs_heroes_objective_almost_completed_b_01",
				"epm_vs_heroes_objective_almost_completed_b_02",
				"epm_vs_heroes_objective_almost_completed_b_03",
				"epm_vs_heroes_objective_almost_completed_b_04"
			},
			randomize_indexes = {},
			sound_events = {
				"epm_vs_heroes_objective_almost_completed_b_01",
				"epm_vs_heroes_objective_almost_completed_b_02",
				"epm_vs_heroes_objective_almost_completed_b_03",
				"epm_vs_heroes_objective_almost_completed_b_04"
			},
			sound_events_duration = {
				1.4174433946609,
				2.2407379150391,
				1.8182950615883,
				1.5528304576874
			}
		},
		epm_vs_many_heroes_incapacitated_a = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "vs_player_vo_pactsworn",
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
				"epm_vs_many_heroes_incapacitated_a_01",
				"epm_vs_many_heroes_incapacitated_a_02",
				"epm_vs_many_heroes_incapacitated_a_03",
				"epm_vs_many_heroes_incapacitated_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"epm_vs_many_heroes_incapacitated_a_01",
				"epm_vs_many_heroes_incapacitated_a_02",
				"epm_vs_many_heroes_incapacitated_a_03",
				"epm_vs_many_heroes_incapacitated_a_04"
			},
			sound_events_duration = {
				2.7119964361191,
				2.3415848016739,
				2.5715363025665,
				1.8976492881775
			}
		},
		epm_vs_packmaster_hoisted_player_a = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "vs_player_vo_pactsworn",
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
				"epm_vs_packmaster_hoisted_player_a_01",
				"epm_vs_packmaster_hoisted_player_a_02",
				"epm_vs_packmaster_hoisted_player_a_03",
				"epm_vs_packmaster_hoisted_player_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"epm_vs_packmaster_hoisted_player_a_01",
				"epm_vs_packmaster_hoisted_player_a_02",
				"epm_vs_packmaster_hoisted_player_a_03",
				"epm_vs_packmaster_hoisted_player_a_04"
			},
			sound_events_duration = {
				2.4504548311233,
				1.8881810307503,
				2.118309378624,
				2.4483016729355
			}
		},
		epm_vs_pact_proximity_banter_eight_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "epm_vs_pact_proximity_banter_eight_b_01"
			},
			sound_events = {
				[1] = "epm_vs_pact_proximity_banter_eight_b_01"
			},
			sound_events_duration = {
				[1] = 4.4684381484985
			}
		},
		epm_vs_pact_proximity_banter_eighteen_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "epm_vs_pact_proximity_banter_eighteen_b_01"
			},
			sound_events = {
				[1] = "epm_vs_pact_proximity_banter_eighteen_b_01"
			},
			sound_events_duration = {
				[1] = 3.2970904111862
			}
		},
		epm_vs_pact_proximity_banter_eleven_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "epm_vs_pact_proximity_banter_eleven_b_01"
			},
			sound_events = {
				[1] = "epm_vs_pact_proximity_banter_eleven_b_01"
			},
			sound_events_duration = {
				[1] = 7.7464351654053
			}
		},
		epm_vs_pact_proximity_banter_fifteen_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "epm_vs_pact_proximity_banter_fifteen_b_01"
			},
			sound_events = {
				[1] = "epm_vs_pact_proximity_banter_fifteen_b_01"
			},
			sound_events_duration = {
				[1] = 4.6304306983948
			}
		},
		epm_vs_pact_proximity_banter_five_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "epm_vs_pact_proximity_banter_five_b_01"
			},
			sound_events = {
				[1] = "epm_vs_pact_proximity_banter_five_b_01"
			},
			sound_events_duration = {
				[1] = 6.0004053115845
			}
		},
		epm_vs_pact_proximity_banter_four_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "epm_vs_pact_proximity_banter_four_b_01"
			},
			sound_events = {
				[1] = "epm_vs_pact_proximity_banter_four_b_01"
			},
			sound_events_duration = {
				[1] = 1.9324842691422
			}
		},
		epm_vs_pact_proximity_banter_fourteen_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "epm_vs_pact_proximity_banter_fourteen_b_01"
			},
			sound_events = {
				[1] = "epm_vs_pact_proximity_banter_fourteen_b_01"
			},
			sound_events_duration = {
				[1] = 3.4212982654572
			}
		},
		epm_vs_pact_proximity_banter_nine_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "epm_vs_pact_proximity_banter_nine_b_01"
			},
			sound_events = {
				[1] = "epm_vs_pact_proximity_banter_nine_b_01"
			},
			sound_events_duration = {
				[1] = 2.993094086647
			}
		},
		epm_vs_pact_proximity_banter_nineteen_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "epm_vs_pact_proximity_banter_nineteen_b_01"
			},
			sound_events = {
				[1] = "epm_vs_pact_proximity_banter_nineteen_b_01"
			},
			sound_events_duration = {
				[1] = 3.7144500017166
			}
		},
		epm_vs_pact_proximity_banter_one_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "epm_vs_pact_proximity_banter_one_b_01"
			},
			sound_events = {
				[1] = "epm_vs_pact_proximity_banter_one_b_01"
			},
			sound_events_duration = {
				[1] = 3.9229183197022
			}
		},
		epm_vs_pact_proximity_banter_seven_a = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "epm_vs_pact_proximity_banter_seven_a_01"
			},
			sound_events = {
				[1] = "epm_vs_pact_proximity_banter_seven_a_01"
			},
			sound_events_duration = {
				[1] = 5.118649482727
			}
		},
		epm_vs_pact_proximity_banter_seventeen_a = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "epm_vs_pact_proximity_banter_seventeen_a_01"
			},
			sound_events = {
				[1] = "epm_vs_pact_proximity_banter_seventeen_a_01"
			},
			sound_events_duration = {
				[1] = 4.3503360748291
			}
		},
		epm_vs_pact_proximity_banter_six_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "epm_vs_pact_proximity_banter_six_b_01"
			},
			sound_events = {
				[1] = "epm_vs_pact_proximity_banter_six_b_01"
			},
			sound_events_duration = {
				[1] = 6.2029447555542
			}
		},
		epm_vs_pact_proximity_banter_sixteen_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "epm_vs_pact_proximity_banter_sixteen_b_01"
			},
			sound_events = {
				[1] = "epm_vs_pact_proximity_banter_sixteen_b_01"
			},
			sound_events_duration = {
				[1] = 9.0967748165131
			}
		},
		epm_vs_pact_proximity_banter_ten_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "epm_vs_pact_proximity_banter_ten_b_01"
			},
			sound_events = {
				[1] = "epm_vs_pact_proximity_banter_ten_b_01"
			},
			sound_events_duration = {
				[1] = 2.3985025882721
			}
		},
		epm_vs_pact_proximity_banter_thirteen_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "epm_vs_pact_proximity_banter_thirteen_b_01"
			},
			sound_events = {
				[1] = "epm_vs_pact_proximity_banter_thirteen_b_01"
			},
			sound_events_duration = {
				[1] = 4.0120947360992
			}
		},
		epm_vs_pact_proximity_banter_three_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "epm_vs_pact_proximity_banter_three_b_01"
			},
			sound_events = {
				[1] = "epm_vs_pact_proximity_banter_three_b_01"
			},
			sound_events_duration = {
				[1] = 6.4127407073975
			}
		},
		epm_vs_pact_proximity_banter_twelve_a = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "epm_vs_pact_proximity_banter_twelve_a_01"
			},
			sound_events = {
				[1] = "epm_vs_pact_proximity_banter_twelve_a_01"
			},
			sound_events_duration = {
				[1] = 4.0987935066223
			}
		},
		epm_vs_pact_proximity_banter_twenty_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "epm_vs_pact_proximity_banter_twenty_b_01"
			},
			sound_events = {
				[1] = "epm_vs_pact_proximity_banter_twenty_b_01"
			},
			sound_events_duration = {
				[1] = 8.9637472629547
			}
		},
		epm_vs_pact_proximity_banter_two_a = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "epm_vs_pact_proximity_banter_two_a_01"
			},
			sound_events = {
				[1] = "epm_vs_pact_proximity_banter_two_a_01"
			},
			sound_events_duration = {
				[1] = 9.1949672698975
			}
		},
		epm_vs_passing_hoisted_hero_a = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 2,
			category = "player_feedback",
			dialogue_animations_n = 2,
			dialogue_animations = {
				[1] = "dialogue_talk",
				[2] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral",
				[2] = "face_neutral"
			},
			localization_strings = {
				[1] = "epm_vs_passing_hoisted_hero_a_01",
				[2] = "epm_vs_passing_hoisted_hero_a_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "epm_vs_passing_hoisted_hero_a_01",
				[2] = "epm_vs_passing_hoisted_hero_a_02"
			},
			sound_events_duration = {
				[1] = 2.1896308064461,
				[2] = 3.2292788028717
			}
		},
		epm_vs_vw_cheer_a = {
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "vs_player_vo_pactsworn",
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
				"epm_vs_vw_cheer_a_01",
				"epm_vs_vw_cheer_a_02",
				"epm_vs_vw_cheer_a_03",
				"epm_vs_vw_cheer_a_04",
				"epm_vs_vw_cheer_a_05",
				"epm_vs_vw_cheer_a_06"
			},
			randomize_indexes = {},
			sound_events = {
				"epm_vs_vw_cheer_a_01",
				"epm_vs_vw_cheer_a_02",
				"epm_vs_vw_cheer_a_03",
				"epm_vs_vw_cheer_a_04",
				"epm_vs_vw_cheer_a_05",
				"epm_vs_vw_cheer_a_06"
			},
			sound_events_duration = {
				2.1676466464996,
				2.415158033371,
				1.7564712762833,
				2.3419880867004,
				2.2907336950302,
				3.0116274356842
			}
		},
		epm_vw_affirmative = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
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
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epm_vw_affirmative_01",
				"epm_vw_affirmative_02",
				"epm_vw_affirmative_03",
				"epm_vw_affirmative_04",
				"epm_vw_affirmative_05",
				"epm_vw_affirmative_06",
				"epm_vw_affirmative_07",
				"epm_vw_affirmative_08",
				"epm_vw_affirmative_09",
				"epm_vw_affirmative_10"
			},
			randomize_indexes = {},
			sound_events = {
				"epm_vw_affirmative_01",
				"epm_vw_affirmative_02",
				"epm_vw_affirmative_03",
				"epm_vw_affirmative_04",
				"epm_vw_affirmative_05",
				"epm_vw_affirmative_06",
				"epm_vw_affirmative_07",
				"epm_vw_affirmative_08",
				"epm_vw_affirmative_09",
				"epm_vw_affirmative_10"
			},
			sound_events_duration = {
				0.55143886804581,
				0.5181673169136,
				0.32372918725014,
				0.77584493160248,
				2.332293510437,
				1.0750530958176,
				3.3063719272613,
				3.4583353996277,
				1.3317868709564,
				1.9670141935349
			}
		},
		epm_vw_ambush = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
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
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epm_vw_ambush_01",
				"epm_vw_ambush_02",
				"epm_vw_ambush_03",
				"epm_vw_ambush_04",
				"epm_vw_ambush_05",
				"epm_vw_ambush_06",
				"epm_vw_ambush_07",
				"epm_vw_ambush_08",
				"epm_vw_ambush_09",
				"epm_vw_ambush_10"
			},
			randomize_indexes = {},
			sound_events = {
				"epm_vw_ambush_01",
				"epm_vw_ambush_02",
				"epm_vw_ambush_03",
				"epm_vw_ambush_04",
				"epm_vw_ambush_05",
				"epm_vw_ambush_06",
				"epm_vw_ambush_07",
				"epm_vw_ambush_08",
				"epm_vw_ambush_09",
				"epm_vw_ambush_10"
			},
			sound_events_duration = {
				0.6597483754158,
				0.90704345703125,
				2.0481872558594,
				2.1841053962708,
				1.434669137001,
				1.1684966087341,
				0.87212014198303,
				1.7923974990845,
				2.3049211502075,
				0.99859935045242
			}
		},
		epm_vw_attack_now = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
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
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epm_vw_attack_now_01",
				"epm_vw_attack_now_02",
				"epm_vw_attack_now_03",
				"epm_vw_attack_now_04",
				"epm_vw_attack_now_05",
				"epm_vw_attack_now_06",
				"epm_vw_attack_now_07",
				"epm_vw_attack_now_08",
				"epm_vw_attack_now_09",
				"epm_vw_attack_now_10"
			},
			randomize_indexes = {},
			sound_events = {
				"epm_vw_attack_now_01",
				"epm_vw_attack_now_02",
				"epm_vw_attack_now_03",
				"epm_vw_attack_now_04",
				"epm_vw_attack_now_05",
				"epm_vw_attack_now_06",
				"epm_vw_attack_now_07",
				"epm_vw_attack_now_08",
				"epm_vw_attack_now_09",
				"epm_vw_attack_now_10"
			},
			sound_events_duration = {
				0.85984975099564,
				1.3506643772125,
				1.9821162223816,
				1.6168369054794,
				0.74752873182297,
				0.7711256146431,
				1.4403324127197,
				1.8056117296219,
				1.5252811908722,
				3.7556557655334
			}
		},
		epm_vw_cover_me = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
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
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epm_vw_cover_me_01",
				"epm_vw_cover_me_02",
				"epm_vw_cover_me_03",
				"epm_vw_cover_me_04",
				"epm_vw_cover_me_05",
				"epm_vw_cover_me_06",
				"epm_vw_cover_me_07",
				"epm_vw_cover_me_08",
				"epm_vw_cover_me_09",
				"epm_vw_cover_me_10"
			},
			randomize_indexes = {},
			sound_events = {
				"epm_vw_cover_me_01",
				"epm_vw_cover_me_02",
				"epm_vw_cover_me_03",
				"epm_vw_cover_me_04",
				"epm_vw_cover_me_05",
				"epm_vw_cover_me_06",
				"epm_vw_cover_me_07",
				"epm_vw_cover_me_08",
				"epm_vw_cover_me_09",
				"epm_vw_cover_me_10"
			},
			sound_events_duration = {
				0.68523299694061,
				0.5889578461647,
				0.66729938983917,
				0.66635555028915,
				0.98351699113846,
				0.8758956193924,
				1.0788285732269,
				1.9585193395615,
				1.6419085264206,
				1.5639799833298
			}
		},
		epm_vw_gather = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
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
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epm_vw_gather_01",
				"epm_vw_gather_02",
				"epm_vw_gather_03",
				"epm_vw_gather_04",
				"epm_vw_gather_05",
				"epm_vw_gather_06",
				"epm_vw_gather_07",
				"epm_vw_gather_08",
				"epm_vw_gather_09",
				"epm_vw_gather_10"
			},
			randomize_indexes = {},
			sound_events = {
				"epm_vw_gather_01",
				"epm_vw_gather_02",
				"epm_vw_gather_03",
				"epm_vw_gather_04",
				"epm_vw_gather_05",
				"epm_vw_gather_06",
				"epm_vw_gather_07",
				"epm_vw_gather_08",
				"epm_vw_gather_09",
				"epm_vw_gather_10"
			},
			sound_events_duration = {
				1.2742105722427,
				1.542270898819,
				1.0920429229736,
				2.1331362724304,
				1.2289046049118,
				1.1656650304794,
				1.8207137584686,
				1.2279803752899,
				1.2978073358536,
				2.1897685527802
			}
		},
		epm_vw_go_here = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
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
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epm_vw_go_here_01",
				"epm_vw_go_here_02",
				"epm_vw_go_here_03",
				"epm_vw_go_here_04",
				"epm_vw_go_here_05",
				"epm_vw_go_here_06",
				"epm_vw_go_here_07",
				"epm_vw_go_here_08",
				"epm_vw_go_here_09",
				"epm_vw_go_here_10"
			},
			randomize_indexes = {},
			sound_events = {
				"epm_vw_go_here_01",
				"epm_vw_go_here_02",
				"epm_vw_go_here_03",
				"epm_vw_go_here_04",
				"epm_vw_go_here_05",
				"epm_vw_go_here_06",
				"epm_vw_go_here_07",
				"epm_vw_go_here_08",
				"epm_vw_go_here_09",
				"epm_vw_go_here_10"
			},
			sound_events_duration = {
				0.96461987495422,
				1.1096225976944,
				0.68904787302017,
				1.8223065137863,
				1.0438659191132,
				1.4331550598145,
				1.576623916626,
				1.1998018026352,
				1.0415651798248,
				1.9574770927429
			}
		},
		epm_vw_negation = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
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
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epm_vw_negation_01",
				"epm_vw_negation_02",
				"epm_vw_negation_03",
				"epm_vw_negation_04",
				"epm_vw_negation_05",
				"epm_vw_negation_06",
				"epm_vw_negation_07",
				"epm_vw_negation_08",
				"epm_vw_negation_09",
				"epm_vw_negation_10"
			},
			randomize_indexes = {},
			sound_events = {
				"epm_vw_negation_01",
				"epm_vw_negation_02",
				"epm_vw_negation_03",
				"epm_vw_negation_04",
				"epm_vw_negation_05",
				"epm_vw_negation_06",
				"epm_vw_negation_07",
				"epm_vw_negation_08",
				"epm_vw_negation_09",
				"epm_vw_negation_10"
			},
			sound_events_duration = {
				0.68428915739059,
				0.61821794509888,
				0.41245338320732,
				1.8907964229584,
				1.7880125045776,
				1.1647212505341,
				0.9693391919136,
				1.5592606067658,
				2.6267430782318,
				2.0481872558594
			}
		},
		epm_vw_thanks = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 12,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 12,
			category = "player_alerts",
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
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
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
				"epm_vs_vw_thanks_a_01",
				"epm_vs_vw_thanks_a_02",
				"epm_vs_vw_thanks_a_03",
				"epm_vs_vw_thanks_a_04",
				"epm_vs_vw_thanks_a_05",
				"epm_vs_vw_thanks_a_06",
				"epm_vs_vw_thanks_a_07",
				"epm_vs_vw_thanks_a_08",
				"epm_vs_vw_thanks_a_09",
				"epm_vs_vw_thanks_a_10",
				"epm_vs_vw_thanks_a_11",
				"epm_vs_vw_thanks_a_12"
			},
			randomize_indexes = {},
			sound_events = {
				"epm_vs_vw_thanks_a_01",
				"epm_vs_vw_thanks_a_02",
				"epm_vs_vw_thanks_a_03",
				"epm_vs_vw_thanks_a_04",
				"epm_vs_vw_thanks_a_05",
				"epm_vs_vw_thanks_a_06",
				"epm_vs_vw_thanks_a_07",
				"epm_vs_vw_thanks_a_08",
				"epm_vs_vw_thanks_a_09",
				"epm_vs_vw_thanks_a_10",
				"epm_vs_vw_thanks_a_11",
				"epm_vs_vw_thanks_a_12"
			},
			sound_events_duration = {
				1.6661936044693,
				0.47384452819824,
				0.96231907606125,
				1.7021985054016,
				0.9973800778389,
				1.2725784182549,
				0.39524734020233,
				0.99183481931686,
				1.2619008421898,
				1.2373208105564,
				0.66956079006195,
				1.9211969971657
			}
		},
		epm_vw_wait = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
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
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epm_vw_wait_01",
				"epm_vw_wait_02",
				"epm_vw_wait_03",
				"epm_vw_wait_04",
				"epm_vw_wait_05",
				"epm_vw_wait_06",
				"epm_vw_wait_07",
				"epm_vw_wait_08",
				"epm_vw_wait_09",
				"epm_vw_wait_10"
			},
			randomize_indexes = {},
			sound_events = {
				"epm_vw_wait_01",
				"epm_vw_wait_02",
				"epm_vw_wait_03",
				"epm_vw_wait_04",
				"epm_vw_wait_05",
				"epm_vw_wait_06",
				"epm_vw_wait_07",
				"epm_vw_wait_08",
				"epm_vw_wait_09",
				"epm_vw_wait_10"
			},
			sound_events_duration = {
				1.8660197257996,
				1.3147971630096,
				0.82115089893341,
				0.59745270013809,
				0.8268141746521,
				1.8263770341873,
				1.9660704135895,
				1.4960210323334,
				0.87117624282837,
				1.9906111955643
			}
		},
		erg_spawning_ratling_gunner = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 5,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 5,
			category = "player_alerts",
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
				"erg_spawning_ratling_gunner_01",
				"erg_spawning_ratling_gunner_02",
				"erg_spawning_ratling_gunner_03",
				"erg_spawning_ratling_gunner_04",
				"erg_spawning_ratling_gunner_05"
			},
			randomize_indexes = {},
			sound_events = {
				"erg_spawning_ratling_gunner_01",
				"erg_spawning_ratling_gunner_02",
				"erg_spawning_ratling_gunner_03",
				"erg_spawning_ratling_gunner_04",
				"erg_spawning_ratling_gunner_05"
			},
			sound_events_duration = {
				3.2514790296555,
				3.9679791927338,
				3.6999790668488,
				2.9299790859222,
				3.8749792575836
			}
		},
		erg_taunting_bardin = {
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
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
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"erg_taunting_bardin_01",
				"erg_taunting_bardin_02",
				"erg_taunting_bardin_03",
				"erg_taunting_bardin_04",
				"erg_taunting_bardin_05",
				"erg_taunting_bardin_06",
				"erg_taunting_bardin_07",
				"erg_taunting_bardin_08",
				"erg_taunting_bardin_09",
				"erg_taunting_bardin_10"
			},
			randomize_indexes = {},
			sound_events = {
				"erg_taunting_bardin_01",
				"erg_taunting_bardin_02",
				"erg_taunting_bardin_03",
				"erg_taunting_bardin_04",
				"erg_taunting_bardin_05",
				"erg_taunting_bardin_06",
				"erg_taunting_bardin_07",
				"erg_taunting_bardin_08",
				"erg_taunting_bardin_09",
				"erg_taunting_bardin_10"
			},
			sound_events_duration = {
				3.3309791088104,
				3.0819792747498,
				2.9479792118073,
				3.2409791946411,
				3.2909791469574,
				3.3219792842865,
				2.3059792518616,
				2.1809792518616,
				2.5479791164398,
				2.658979177475
			}
		},
		erg_taunting_kerillian = {
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
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
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"erg_taunting_kerillian_01",
				"erg_taunting_kerillian_02",
				"erg_taunting_kerillian_03",
				"erg_taunting_kerillian_04",
				"erg_taunting_kerillian_05",
				"erg_taunting_kerillian_06",
				"erg_taunting_kerillian_07",
				"erg_taunting_kerillian_08",
				"erg_taunting_kerillian_09",
				"erg_taunting_kerillian_10"
			},
			randomize_indexes = {},
			sound_events = {
				"erg_taunting_kerillian_01",
				"erg_taunting_kerillian_02",
				"erg_taunting_kerillian_03",
				"erg_taunting_kerillian_04",
				"erg_taunting_kerillian_05",
				"erg_taunting_kerillian_06",
				"erg_taunting_kerillian_07",
				"erg_taunting_kerillian_08",
				"erg_taunting_kerillian_09",
				"erg_taunting_kerillian_10"
			},
			sound_events_duration = {
				1.9979791641235,
				2.5459792613983,
				4.7189793586731,
				3.5979790687561,
				2.5359792709351,
				2.493979215622,
				1.8509792089462,
				1.9219791889191,
				1.8959791660309,
				2.6259791851044
			}
		},
		erg_taunting_kruber = {
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
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
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"erg_taunting_kruber_01",
				"erg_taunting_kruber_02",
				"erg_taunting_kruber_03",
				"erg_taunting_kruber_04",
				"erg_taunting_kruber_05",
				"erg_taunting_kruber_06",
				"erg_taunting_kruber_07",
				"erg_taunting_kruber_08",
				"erg_taunting_kruber_09",
				"erg_taunting_kruber_10"
			},
			randomize_indexes = {},
			sound_events = {
				"erg_taunting_kruber_01",
				"erg_taunting_kruber_02",
				"erg_taunting_kruber_03",
				"erg_taunting_kruber_04",
				"erg_taunting_kruber_05",
				"erg_taunting_kruber_06",
				"erg_taunting_kruber_07",
				"erg_taunting_kruber_08",
				"erg_taunting_kruber_09",
				"erg_taunting_kruber_10"
			},
			sound_events_duration = {
				2.9449791908264,
				3.4949791431427,
				3.4159791469574,
				3.2579791545868,
				3.584979057312,
				2.3499791622162,
				1.7949792146683,
				1.8889791965485,
				2.0259792804718,
				2.1419792175293
			}
		},
		erg_taunting_saltzpyre = {
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
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
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"erg_taunting_saltzpyre_01",
				"erg_taunting_saltzpyre_02",
				"erg_taunting_saltzpyre_03",
				"erg_taunting_saltzpyre_04",
				"erg_taunting_saltzpyre_05",
				"erg_taunting_saltzpyre_06",
				"erg_taunting_saltzpyre_07",
				"erg_taunting_saltzpyre_08",
				"erg_taunting_saltzpyre_09",
				"erg_taunting_saltzpyre_10"
			},
			randomize_indexes = {},
			sound_events = {
				"erg_taunting_saltzpyre_01",
				"erg_taunting_saltzpyre_02",
				"erg_taunting_saltzpyre_03",
				"erg_taunting_saltzpyre_04",
				"erg_taunting_saltzpyre_05",
				"erg_taunting_saltzpyre_06",
				"erg_taunting_saltzpyre_07",
				"erg_taunting_saltzpyre_08",
				"erg_taunting_saltzpyre_09",
				"erg_taunting_saltzpyre_10"
			},
			sound_events_duration = {
				2.4999792575836,
				2.7589790821075,
				2.8369791507721,
				2.7919790744781,
				3.4639792442322,
				2.7019791603088,
				2.3059792518616,
				2.2989792823791,
				2.3589792251587,
				1.9989792108536
			}
		},
		erg_taunting_sienna = {
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
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
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"erg_taunting_sienna_01",
				"erg_taunting_sienna_02",
				"erg_taunting_sienna_03",
				"erg_taunting_sienna_04",
				"erg_taunting_sienna_05",
				"erg_taunting_sienna_06",
				"erg_taunting_sienna_07",
				"erg_taunting_sienna_08",
				"erg_taunting_sienna_09",
				"erg_taunting_sienna_10"
			},
			randomize_indexes = {},
			sound_events = {
				"erg_taunting_sienna_01",
				"erg_taunting_sienna_02",
				"erg_taunting_sienna_03",
				"erg_taunting_sienna_04",
				"erg_taunting_sienna_05",
				"erg_taunting_sienna_06",
				"erg_taunting_sienna_07",
				"erg_taunting_sienna_08",
				"erg_taunting_sienna_09",
				"erg_taunting_sienna_10"
			},
			sound_events_duration = {
				1.9749791622162,
				2.8199791908264,
				2.3409790992737,
				3.1039791107178,
				2.147979259491,
				2.3699791431427,
				1.9579792022705,
				1.8459792137146,
				1.7079792022705,
				2.1649792194366
			}
		},
		erg_vs_ability_horde_a = {
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 6,
			category = "activate_ability",
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
				"erg_vs_ability_horde_a_01",
				"erg_vs_ability_horde_a_02",
				"erg_vs_ability_horde_a_03",
				"erg_vs_ability_horde_a_04",
				"erg_vs_ability_horde_a_05",
				"erg_vs_ability_horde_a_06"
			},
			randomize_indexes = {},
			sound_events = {
				"erg_vs_ability_horde_a_01",
				"erg_vs_ability_horde_a_02",
				"erg_vs_ability_horde_a_03",
				"erg_vs_ability_horde_a_04",
				"erg_vs_ability_horde_a_05",
				"erg_vs_ability_horde_a_06"
			},
			sound_events_duration = {
				2.2112290859222,
				3.9369375705719,
				3.5963125228882,
				2.7414166927338,
				3.1426665782928,
				3.5508021116257
			}
		},
		erg_vs_downed_hero_a = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "vs_player_vo_pactsworn",
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
				"erg_vs_downed_hero_a_01",
				"erg_vs_downed_hero_a_02",
				"erg_vs_downed_hero_a_03",
				"erg_vs_downed_hero_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"erg_vs_downed_hero_a_01",
				"erg_vs_downed_hero_a_02",
				"erg_vs_downed_hero_a_03",
				"erg_vs_downed_hero_a_04"
			},
			sound_events_duration = {
				1.0716041326523,
				2.4983438253403,
				2.0298750400543,
				1.9546562433243
			}
		},
		erg_vs_globadier_hitting_many_a = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "vs_player_vo_pactsworn",
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
				"erg_vs_globadier_hitting_many_a_01",
				"erg_vs_globadier_hitting_many_a_02",
				"erg_vs_globadier_hitting_many_a_03",
				"erg_vs_globadier_hitting_many_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"erg_vs_globadier_hitting_many_a_01",
				"erg_vs_globadier_hitting_many_a_02",
				"erg_vs_globadier_hitting_many_a_03",
				"erg_vs_globadier_hitting_many_a_04"
			},
			sound_events_duration = {
				2.5417499542236,
				1.937979221344,
				2.2320208549499,
				3.3510625362396
			}
		},
		erg_vs_globadier_missing_globe_a = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "vs_player_vo_pactsworn",
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
				"erg_vs_globadier_missing_globe_a_01",
				"erg_vs_globadier_missing_globe_a_02",
				"erg_vs_globadier_missing_globe_a_03",
				"erg_vs_globadier_missing_globe_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"erg_vs_globadier_missing_globe_a_01",
				"erg_vs_globadier_missing_globe_a_02",
				"erg_vs_globadier_missing_globe_a_03",
				"erg_vs_globadier_missing_globe_a_04"
			},
			sound_events_duration = {
				2.5323333740234,
				2.0942499637604,
				1.6389791965485,
				2.6538333892822
			}
		},
		erg_vs_heroes_objective_almost_completed_b = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "vs_player_vo_pactsworn",
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
				"erg_vs_heroes_objective_almost_completed_b_01",
				"erg_vs_heroes_objective_almost_completed_b_02",
				"erg_vs_heroes_objective_almost_completed_b_03",
				"erg_vs_heroes_objective_almost_completed_b_04"
			},
			randomize_indexes = {},
			sound_events = {
				"erg_vs_heroes_objective_almost_completed_b_01",
				"erg_vs_heroes_objective_almost_completed_b_02",
				"erg_vs_heroes_objective_almost_completed_b_03",
				"erg_vs_heroes_objective_almost_completed_b_04"
			},
			sound_events_duration = {
				1.8469062447548,
				1.687895834446,
				1.8291562199593,
				2.5564374923706
			}
		},
		erg_vs_pact_proximity_banter_eight_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "erg_vs_pact_proximity_banter_eight_b_01"
			},
			sound_events = {
				[1] = "erg_vs_pact_proximity_banter_eight_b_01"
			},
			sound_events_duration = {
				[1] = 7.5395832061768
			}
		},
		erg_vs_pact_proximity_banter_eighteen_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "erg_vs_pact_proximity_banter_eighteen_b_01"
			},
			sound_events = {
				[1] = "erg_vs_pact_proximity_banter_eighteen_b_01"
			},
			sound_events_duration = {
				[1] = 8.0016870498657
			}
		},
		erg_vs_pact_proximity_banter_eleven_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "erg_vs_pact_proximity_banter_eleven_b_01"
			},
			sound_events = {
				[1] = "erg_vs_pact_proximity_banter_eleven_b_01"
			},
			sound_events_duration = {
				[1] = 7.8339688777924
			}
		},
		erg_vs_pact_proximity_banter_fifteen_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "erg_vs_pact_proximity_banter_fifteen_b_01"
			},
			sound_events = {
				[1] = "erg_vs_pact_proximity_banter_fifteen_b_01"
			},
			sound_events_duration = {
				[1] = 2.3817915916443
			}
		},
		erg_vs_pact_proximity_banter_five_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "erg_vs_pact_proximity_banter_five_b_01"
			},
			sound_events = {
				[1] = "erg_vs_pact_proximity_banter_five_b_01"
			},
			sound_events_duration = {
				[1] = 4.2901043891907
			}
		},
		erg_vs_pact_proximity_banter_four_a = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "erg_vs_pact_proximity_banter_four_a_01"
			},
			sound_events = {
				[1] = "erg_vs_pact_proximity_banter_four_a_01"
			},
			sound_events_duration = {
				[1] = 9.109582901001
			}
		},
		erg_vs_pact_proximity_banter_fourteen_a = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "erg_vs_pact_proximity_banter_fourteen_a_01"
			},
			sound_events = {
				[1] = "erg_vs_pact_proximity_banter_fourteen_a_01"
			},
			sound_events_duration = {
				[1] = 3.9854791164398
			}
		},
		erg_vs_pact_proximity_banter_nine_a = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "erg_vs_pact_proximity_banter_nine_a_01"
			},
			sound_events = {
				[1] = "erg_vs_pact_proximity_banter_nine_a_01"
			},
			sound_events_duration = {
				[1] = 4.0539479255676
			}
		},
		erg_vs_pact_proximity_banter_nineteen_a = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "erg_vs_pact_proximity_banter_nineteen_a_01"
			},
			sound_events = {
				[1] = "erg_vs_pact_proximity_banter_nineteen_a_01"
			},
			sound_events_duration = {
				[1] = 5.3738541603088
			}
		},
		erg_vs_pact_proximity_banter_one_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "erg_vs_pact_proximity_banter_one_b_01"
			},
			sound_events = {
				[1] = "erg_vs_pact_proximity_banter_one_b_01"
			},
			sound_events_duration = {
				[1] = 9.3068122863769
			}
		},
		erg_vs_pact_proximity_banter_seven_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "erg_vs_pact_proximity_banter_seven_b_01"
			},
			sound_events = {
				[1] = "erg_vs_pact_proximity_banter_seven_b_01"
			},
			sound_events_duration = {
				[1] = 3.1813125610352
			}
		},
		erg_vs_pact_proximity_banter_seventeen_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "erg_vs_pact_proximity_banter_seventeen_b_01"
			},
			sound_events = {
				[1] = "erg_vs_pact_proximity_banter_seventeen_b_01"
			},
			sound_events_duration = {
				[1] = 4.3256459236145
			}
		},
		erg_vs_pact_proximity_banter_six_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "erg_vs_pact_proximity_banter_six_b_01"
			},
			sound_events = {
				[1] = "erg_vs_pact_proximity_banter_six_b_01"
			},
			sound_events_duration = {
				[1] = 4.7612290382385
			}
		},
		erg_vs_pact_proximity_banter_sixteen_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "erg_vs_pact_proximity_banter_sixteen_b_01"
			},
			sound_events = {
				[1] = "erg_vs_pact_proximity_banter_sixteen_b_01"
			},
			sound_events_duration = {
				[1] = 3.0060000419617
			}
		},
		erg_vs_pact_proximity_banter_ten_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "erg_vs_pact_proximity_banter_ten_b_01"
			},
			sound_events = {
				[1] = "erg_vs_pact_proximity_banter_ten_b_01"
			},
			sound_events_duration = {
				[1] = 2.4178438186645
			}
		},
		erg_vs_pact_proximity_banter_thirteen_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "erg_vs_pact_proximity_banter_thirteen_b_01"
			},
			sound_events = {
				[1] = "erg_vs_pact_proximity_banter_thirteen_b_01"
			},
			sound_events_duration = {
				[1] = 3.1031041145325
			}
		},
		erg_vs_pact_proximity_banter_three_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "erg_vs_pact_proximity_banter_three_b_01"
			},
			sound_events = {
				[1] = "erg_vs_pact_proximity_banter_three_b_01"
			},
			sound_events_duration = {
				[1] = 5.0212292671204
			}
		},
		erg_vs_pact_proximity_banter_twelve_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "erg_vs_pact_proximity_banter_twelve_b_01"
			},
			sound_events = {
				[1] = "erg_vs_pact_proximity_banter_twelve_b_01"
			},
			sound_events_duration = {
				[1] = 4.8177709579468
			}
		},
		erg_vs_pact_proximity_banter_twenty_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "erg_vs_pact_proximity_banter_twenty_b_01"
			},
			sound_events = {
				[1] = "erg_vs_pact_proximity_banter_twenty_b_01"
			},
			sound_events_duration = {
				[1] = 4.1666250228882
			}
		},
		erg_vs_pact_proximity_banter_two_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "erg_vs_pact_proximity_banter_two_b_01"
			},
			sound_events = {
				[1] = "erg_vs_pact_proximity_banter_two_b_01"
			},
			sound_events_duration = {
				[1] = 2.5010833740234
			}
		},
		erg_vs_ratling_hitting_shield_a = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "vs_player_vo_pactsworn",
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
				"erg_vs_ratling_hitting_shield_a_01",
				"erg_vs_ratling_hitting_shield_a_02",
				"erg_vs_ratling_hitting_shield_a_03",
				"erg_vs_ratling_hitting_shield_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"erg_vs_ratling_hitting_shield_a_01",
				"erg_vs_ratling_hitting_shield_a_02",
				"erg_vs_ratling_hitting_shield_a_03",
				"erg_vs_ratling_hitting_shield_a_04"
			},
			sound_events_duration = {
				2.1894791126251,
				2.4817917346954,
				1.6761354207993,
				2.4546875953674
			}
		},
		erg_vs_shooting_hooked_hero_a = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "vs_player_vo_pactsworn",
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
				"erg_vs_shooting_hooked_hero_a_01",
				"erg_vs_shooting_hooked_hero_a_02",
				"erg_vs_shooting_hooked_hero_a_03",
				"erg_vs_shooting_hooked_hero_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"erg_vs_shooting_hooked_hero_a_01",
				"erg_vs_shooting_hooked_hero_a_02",
				"erg_vs_shooting_hooked_hero_a_03",
				"erg_vs_shooting_hooked_hero_a_04"
			},
			sound_events_duration = {
				2.8337082862854,
				1.8375833034515,
				2.1348125934601,
				1.663125038147
			}
		},
		erg_vw_affirmative = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
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
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"erg_vw_affirmative_01",
				"erg_vw_affirmative_02",
				"erg_vw_affirmative_03",
				"erg_vw_affirmative_04",
				"erg_vw_affirmative_05",
				"erg_vw_affirmative_06",
				"erg_vw_affirmative_07",
				"erg_vw_affirmative_08",
				"erg_vw_affirmative_09",
				"erg_vw_affirmative_10"
			},
			randomize_indexes = {},
			sound_events = {
				"erg_vw_affirmative_01",
				"erg_vw_affirmative_02",
				"erg_vw_affirmative_03",
				"erg_vw_affirmative_04",
				"erg_vw_affirmative_05",
				"erg_vw_affirmative_06",
				"erg_vw_affirmative_07",
				"erg_vw_affirmative_08",
				"erg_vw_affirmative_09",
				"erg_vw_affirmative_10"
			},
			sound_events_duration = {
				0.60197919607162,
				1.5829792022705,
				0.54997915029526,
				1.312979221344,
				2.2299792766571,
				2.3829791545868,
				2.4259791374206,
				3.5909790992737,
				1.7499791383743,
				2.254979133606
			}
		},
		erg_vw_ambush = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
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
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"erg_vw_ambush_01",
				"erg_vw_ambush_02",
				"erg_vw_ambush_03",
				"erg_vw_ambush_04",
				"erg_vw_ambush_05",
				"erg_vw_ambush_06",
				"erg_vw_ambush_07",
				"erg_vw_ambush_08",
				"erg_vw_ambush_09",
				"erg_vw_ambush_10"
			},
			randomize_indexes = {},
			sound_events = {
				"erg_vw_ambush_01",
				"erg_vw_ambush_02",
				"erg_vw_ambush_03",
				"erg_vw_ambush_04",
				"erg_vw_ambush_05",
				"erg_vw_ambush_06",
				"erg_vw_ambush_07",
				"erg_vw_ambush_08",
				"erg_vw_ambush_09",
				"erg_vw_ambush_10"
			},
			sound_events_duration = {
				1.4229791164398,
				1.7149791717529,
				1.6119791269302,
				1.8339791297913,
				1.8959791660309,
				1.4109791517258,
				1.7899792194366,
				2.6869790554047,
				3.2399792671204,
				1.601979136467
			}
		},
		erg_vw_attack_now = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
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
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"erg_vw_attack_now_01",
				"erg_vw_attack_now_02",
				"erg_vw_attack_now_03",
				"erg_vw_attack_now_04",
				"erg_vw_attack_now_05",
				"erg_vw_attack_now_06",
				"erg_vw_attack_now_07",
				"erg_vw_attack_now_08",
				"erg_vw_attack_now_09",
				"erg_vw_attack_now_10"
			},
			randomize_indexes = {},
			sound_events = {
				"erg_vw_attack_now_01",
				"erg_vw_attack_now_02",
				"erg_vw_attack_now_03",
				"erg_vw_attack_now_04",
				"erg_vw_attack_now_05",
				"erg_vw_attack_now_06",
				"erg_vw_attack_now_07",
				"erg_vw_attack_now_08",
				"erg_vw_attack_now_09",
				"erg_vw_attack_now_10"
			},
			sound_events_duration = {
				1.0849791765213,
				2.2239792346954,
				1.8629791736603,
				1.659979224205,
				1.2239791154861,
				0.89097917079926,
				1.7389792203903,
				2.1259791851044,
				1.8439791202545,
				2.4809792041779
			}
		},
		erg_vw_cover_me = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
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
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"erg_vw_cover_me_01",
				"erg_vw_cover_me_02",
				"erg_vw_cover_me_03",
				"erg_vw_cover_me_04",
				"erg_vw_cover_me_05",
				"erg_vw_cover_me_06",
				"erg_vw_cover_me_07",
				"erg_vw_cover_me_08",
				"erg_vw_cover_me_09",
				"erg_vw_cover_me_10"
			},
			randomize_indexes = {},
			sound_events = {
				"erg_vw_cover_me_01",
				"erg_vw_cover_me_02",
				"erg_vw_cover_me_03",
				"erg_vw_cover_me_04",
				"erg_vw_cover_me_05",
				"erg_vw_cover_me_06",
				"erg_vw_cover_me_07",
				"erg_vw_cover_me_08",
				"erg_vw_cover_me_09",
				"erg_vw_cover_me_10"
			},
			sound_events_duration = {
				0.85597914457321,
				0.82597917318344,
				0.93397915363312,
				1.351979136467,
				1.0279791355133,
				0.93797916173935,
				1.1699792146683,
				2.1819791793823,
				1.7609791755676,
				2.0389790534973
			}
		},
		erg_vw_gather = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
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
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"erg_vw_gather_01",
				"erg_vw_gather_02",
				"erg_vw_gather_03",
				"erg_vw_gather_04",
				"erg_vw_gather_05",
				"erg_vw_gather_06",
				"erg_vw_gather_07",
				"erg_vw_gather_08",
				"erg_vw_gather_09",
				"erg_vw_gather_10"
			},
			randomize_indexes = {},
			sound_events = {
				"erg_vw_gather_01",
				"erg_vw_gather_02",
				"erg_vw_gather_03",
				"erg_vw_gather_04",
				"erg_vw_gather_05",
				"erg_vw_gather_06",
				"erg_vw_gather_07",
				"erg_vw_gather_08",
				"erg_vw_gather_09",
				"erg_vw_gather_10"
			},
			sound_events_duration = {
				1.3589792251587,
				0.88497918844223,
				1.2009791135788,
				2.5089790821075,
				0.69497919082642,
				0.89600002765655,
				0.98897916078568,
				1.3069791793823,
				1.6699792146683,
				0.6319791674614
			}
		},
		erg_vw_go_here = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
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
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"erg_vw_go_here_01",
				"erg_vw_go_here_02",
				"erg_vw_go_here_03",
				"erg_vw_go_here_04",
				"erg_vw_go_here_05",
				"erg_vw_go_here_06",
				"erg_vw_go_here_07",
				"erg_vw_go_here_08",
				"erg_vw_go_here_09",
				"erg_vw_go_here_10"
			},
			randomize_indexes = {},
			sound_events = {
				"erg_vw_go_here_01",
				"erg_vw_go_here_02",
				"erg_vw_go_here_03",
				"erg_vw_go_here_04",
				"erg_vw_go_here_05",
				"erg_vw_go_here_06",
				"erg_vw_go_here_07",
				"erg_vw_go_here_08",
				"erg_vw_go_here_09",
				"erg_vw_go_here_10"
			},
			sound_events_duration = {
				1.2389792203903,
				1.6889791488648,
				1.1829792261124,
				1.7989791631699,
				1.9579792022705,
				2.4759790897369,
				2.5479791164398,
				1.2319791316986,
				1.7119791507721,
				2.9859790802002
			}
		},
		erg_vw_negation = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
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
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"erg_vw_negation_01",
				"erg_vw_negation_02",
				"erg_vw_negation_03",
				"erg_vw_negation_04",
				"erg_vw_negation_05",
				"erg_vw_negation_06",
				"erg_vw_negation_07",
				"erg_vw_negation_08",
				"erg_vw_negation_09",
				"erg_vw_negation_10"
			},
			randomize_indexes = {},
			sound_events = {
				"erg_vw_negation_01",
				"erg_vw_negation_02",
				"erg_vw_negation_03",
				"erg_vw_negation_04",
				"erg_vw_negation_05",
				"erg_vw_negation_06",
				"erg_vw_negation_07",
				"erg_vw_negation_08",
				"erg_vw_negation_09",
				"erg_vw_negation_10"
			},
			sound_events_duration = {
				0.948979139328,
				0.96997916698456,
				1.0089792013168,
				2.0769791603088,
				2.1339790821075,
				1.601979136467,
				1.5949791669846,
				1.3619791269302,
				3.0279791355133,
				1.7209792137146
			}
		},
		erg_vw_thanks = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 11,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 11,
			category = "player_alerts",
			dialogue_animations_n = 11,
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
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"erg_vs_vw_thanks_01",
				"erg_vs_vw_thanks_02",
				"erg_vs_vw_thanks_03",
				"erg_vs_vw_thanks_04",
				"erg_vs_vw_thanks_05",
				"erg_vs_vw_thanks_06",
				"erg_vs_vw_thanks_07",
				"erg_vs_vw_thanks_08",
				"erg_vs_vw_thanks_09",
				"erg_vs_vw_thanks_10",
				"erg_vs_vw_thanks_12"
			},
			randomize_indexes = {},
			sound_events = {
				"erg_vs_vw_thanks_01",
				"erg_vs_vw_thanks_02",
				"erg_vs_vw_thanks_03",
				"erg_vs_vw_thanks_04",
				"erg_vs_vw_thanks_05",
				"erg_vs_vw_thanks_06",
				"erg_vs_vw_thanks_07",
				"erg_vs_vw_thanks_08",
				"erg_vs_vw_thanks_09",
				"erg_vs_vw_thanks_10",
				"erg_vs_vw_thanks_12"
			},
			sound_events_duration = {
				3.4567,
				3.4567,
				3.4567,
				3.4567,
				3.4567,
				3.4567,
				3.4567,
				3.4567,
				3.4567,
				3.4567,
				3.4567
			}
		},
		erg_vw_wait = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
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
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"erg_vw_wait_01",
				"erg_vw_wait_02",
				"erg_vw_wait_03",
				"erg_vw_wait_04",
				"erg_vw_wait_05",
				"erg_vw_wait_06",
				"erg_vw_wait_07",
				"erg_vw_wait_08",
				"erg_vw_wait_09",
				"erg_vw_wait_10"
			},
			randomize_indexes = {},
			sound_events = {
				"erg_vw_wait_01",
				"erg_vw_wait_02",
				"erg_vw_wait_03",
				"erg_vw_wait_04",
				"erg_vw_wait_05",
				"erg_vw_wait_06",
				"erg_vw_wait_07",
				"erg_vw_wait_08",
				"erg_vw_wait_09",
				"erg_vw_wait_10"
			},
			sound_events_duration = {
				1.6839791536331,
				1.3969792127609,
				0.69597917795181,
				0.78597915172577,
				0.94797915220261,
				2.5479791164398,
				1.6339792013168,
				1.9889792203903,
				1.5549792051315,
				3.2249791622162
			}
		},
		ewt_combat_idle = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "casual_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "player_combat_walk_normal"
			},
			sound_events = {
				[1] = "player_combat_walk_normal"
			},
			sound_events_duration = {
				[1] = 4.3557691574097
			}
		},
		ewt_spawning_warpfire_thrower = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 5,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 5,
			category = "player_alerts",
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
				"ewt_spawning_warpfire_thrower_01",
				"ewt_spawning_warpfire_thrower_02",
				"ewt_spawning_warpfire_thrower_03",
				"ewt_spawning_warpfire_thrower_04",
				"ewt_spawning_warpfire_thrower_05"
			},
			randomize_indexes = {},
			sound_events = {
				"ewt_spawning_warpfire_thrower_01",
				"ewt_spawning_warpfire_thrower_02",
				"ewt_spawning_warpfire_thrower_03",
				"ewt_spawning_warpfire_thrower_04",
				"ewt_spawning_warpfire_thrower_05"
			},
			sound_events_duration = {
				6.5747857093811,
				6.1404910087585,
				4.9618492126465,
				6.3202242851257,
				3.793289899826
			}
		},
		ewt_taunting_bardin = {
			randomize_indexes_n = 0,
			face_animations_n = 9,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 9,
			category = "player_alerts",
			dialogue_animations_n = 9,
			dialogue_animations = {
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
				"face_neutral",
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
				"ewt_taunting_bardin_01",
				"ewt_taunting_bardin_02",
				"ewt_taunting_bardin_03",
				"ewt_taunting_bardin_04",
				"ewt_taunting_bardin_06",
				"ewt_taunting_bardin_07",
				"ewt_taunting_bardin_08",
				"ewt_taunting_bardin_09",
				"ewt_taunting_bardin_10"
			},
			randomize_indexes = {},
			sound_events = {
				"ewt_taunting_bardin_01",
				"ewt_taunting_bardin_02",
				"ewt_taunting_bardin_03",
				"ewt_taunting_bardin_04",
				"ewt_taunting_bardin_06",
				"ewt_taunting_bardin_07",
				"ewt_taunting_bardin_08",
				"ewt_taunting_bardin_09",
				"ewt_taunting_bardin_10"
			},
			sound_events_duration = {
				3.572322845459,
				2.6036851406097,
				2.9476277828217,
				3.725804567337,
				4.802282333374,
				2.5725963115692,
				1.5165612697601,
				2.0479893684387,
				1.7137824296951
			}
		},
		ewt_taunting_kerillian = {
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
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
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"ewt_taunting_kerillian_01",
				"ewt_taunting_kerillian_02",
				"ewt_taunting_kerillian_03",
				"ewt_taunting_kerillian_04",
				"ewt_taunting_kerillian_05",
				"ewt_taunting_kerillian_06",
				"ewt_taunting_kerillian_07",
				"ewt_taunting_kerillian_08",
				"ewt_taunting_kerillian_09",
				"ewt_taunting_kerillian_10"
			},
			randomize_indexes = {},
			sound_events = {
				"ewt_taunting_kerillian_01",
				"ewt_taunting_kerillian_02",
				"ewt_taunting_kerillian_03",
				"ewt_taunting_kerillian_04",
				"ewt_taunting_kerillian_05",
				"ewt_taunting_kerillian_06",
				"ewt_taunting_kerillian_07",
				"ewt_taunting_kerillian_08",
				"ewt_taunting_kerillian_09",
				"ewt_taunting_kerillian_10"
			},
			sound_events_duration = {
				2.4414596557617,
				3.8443517684937,
				4.8799848556519,
				3.3779964447022,
				2.4803009033203,
				1.9508159160614,
				2.0654566287994,
				1.9925917387009,
				1.7108677625656,
				4.2931995391846
			}
		},
		ewt_taunting_kruber = {
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
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
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"ewt_taunting_kruber_01",
				"ewt_taunting_kruber_02",
				"ewt_taunting_kruber_03",
				"ewt_taunting_kruber_04",
				"ewt_taunting_kruber_05",
				"ewt_taunting_kruber_06",
				"ewt_taunting_kruber_07",
				"ewt_taunting_kruber_08",
				"ewt_taunting_kruber_09",
				"ewt_taunting_kruber_10"
			},
			randomize_indexes = {},
			sound_events = {
				"ewt_taunting_kruber_01",
				"ewt_taunting_kruber_02",
				"ewt_taunting_kruber_03",
				"ewt_taunting_kruber_04",
				"ewt_taunting_kruber_05",
				"ewt_taunting_kruber_06",
				"ewt_taunting_kruber_07",
				"ewt_taunting_kruber_08",
				"ewt_taunting_kruber_09",
				"ewt_taunting_kruber_10"
			},
			sound_events_duration = {
				3.4761412143707,
				5.229736328125,
				3.5159740447998,
				4.6973366737366,
				3.3245620727539,
				2.1723453998566,
				1.7604159116745,
				2.2296454906464,
				1.6826932430267,
				3.5208113193512
			}
		},
		ewt_taunting_saltzpyre = {
			randomize_indexes_n = 0,
			face_animations_n = 9,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 9,
			category = "player_alerts",
			dialogue_animations_n = 9,
			dialogue_animations = {
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
				"face_neutral",
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
				"ewt_taunting_saltzpyre_01",
				"ewt_taunting_saltzpyre_02",
				"ewt_taunting_saltzpyre_03",
				"ewt_taunting_saltzpyre_04",
				"ewt_taunting_saltzpyre_05",
				"ewt_taunting_saltzpyre_07",
				"ewt_taunting_saltzpyre_08",
				"ewt_taunting_saltzpyre_09",
				"ewt_taunting_saltzpyre_10"
			},
			randomize_indexes = {},
			sound_events = {
				"ewt_taunting_saltzpyre_01",
				"ewt_taunting_saltzpyre_02",
				"ewt_taunting_saltzpyre_03",
				"ewt_taunting_saltzpyre_04",
				"ewt_taunting_saltzpyre_05",
				"ewt_taunting_saltzpyre_07",
				"ewt_taunting_saltzpyre_08",
				"ewt_taunting_saltzpyre_09",
				"ewt_taunting_saltzpyre_10"
			},
			sound_events_duration = {
				6.0166773796081,
				5.0004549026489,
				3.4518327713013,
				3.8161573410034,
				6.0681881904602,
				1.4572776556015,
				1.5126550197601,
				1.6477180719376,
				1.9090399742127
			}
		},
		ewt_taunting_sienna = {
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
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
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"ewt_taunting_sienna_01",
				"ewt_taunting_sienna_02",
				"ewt_taunting_sienna_03",
				"ewt_taunting_sienna_04",
				"ewt_taunting_sienna_05",
				"ewt_taunting_sienna_06",
				"ewt_taunting_sienna_07",
				"ewt_taunting_sienna_08",
				"ewt_taunting_sienna_09",
				"ewt_taunting_sienna_10"
			},
			randomize_indexes = {},
			sound_events = {
				"ewt_taunting_sienna_01",
				"ewt_taunting_sienna_02",
				"ewt_taunting_sienna_03",
				"ewt_taunting_sienna_04",
				"ewt_taunting_sienna_05",
				"ewt_taunting_sienna_06",
				"ewt_taunting_sienna_07",
				"ewt_taunting_sienna_08",
				"ewt_taunting_sienna_09",
				"ewt_taunting_sienna_10"
			},
			sound_events_duration = {
				1.691437125206,
				5.509557723999,
				4.3272032737732,
				3.8278357982635,
				5.2501583099365,
				3.106959104538,
				2.2665839195252,
				1.7497290372849,
				3.6160416603088,
				3.758857011795
			}
		},
		ewt_vs_ability_horde_a = {
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 6,
			category = "activate_ability",
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
				"ewt_vs_ability_horde_a_01",
				"ewt_vs_ability_horde_a_02",
				"ewt_vs_ability_horde_a_03",
				"ewt_vs_ability_horde_a_04",
				"ewt_vs_ability_horde_a_05",
				"ewt_vs_ability_horde_a_06"
			},
			randomize_indexes = {},
			sound_events = {
				"ewt_vs_ability_horde_a_01",
				"ewt_vs_ability_horde_a_02",
				"ewt_vs_ability_horde_a_03",
				"ewt_vs_ability_horde_a_04",
				"ewt_vs_ability_horde_a_05",
				"ewt_vs_ability_horde_a_06"
			},
			sound_events_duration = {
				2.8182709217072,
				4.3093436956406,
				4.059166431427,
				3.7831873893738,
				4.8837289810181,
				4.9164791107178
			}
		},
		ewt_vs_downed_hero_a = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "vs_player_vo_pactsworn",
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
				"ewt_vs_downed_hero_a_01",
				"ewt_vs_downed_hero_a_02",
				"ewt_vs_downed_hero_a_03",
				"ewt_vs_downed_hero_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"ewt_vs_downed_hero_a_01",
				"ewt_vs_downed_hero_a_02",
				"ewt_vs_downed_hero_a_03",
				"ewt_vs_downed_hero_a_04"
			},
			sound_events_duration = {
				2.67418217659,
				3.1081533432007,
				2.4329588413238,
				1.9568272233009
			}
		},
		ewt_vs_globadier_hitting_many_a = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "vs_player_vo_pactsworn",
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
				"ewt_vs_globadier_hitting_many_a_01",
				"ewt_vs_globadier_hitting_many_a_02",
				"ewt_vs_globadier_hitting_many_a_03",
				"ewt_vs_globadier_hitting_many_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"ewt_vs_globadier_hitting_many_a_01",
				"ewt_vs_globadier_hitting_many_a_02",
				"ewt_vs_globadier_hitting_many_a_03",
				"ewt_vs_globadier_hitting_many_a_04"
			},
			sound_events_duration = {
				2.0544257164002,
				1.7909178733826,
				2.5814616680145,
				2.1837610006332
			}
		},
		ewt_vs_globadier_missing_globe_a = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "vs_player_vo_pactsworn",
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
				"ewt_vs_globadier_missing_globe_a_01",
				"ewt_vs_globadier_missing_globe_a_02",
				"ewt_vs_globadier_missing_globe_a_03",
				"ewt_vs_globadier_missing_globe_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"ewt_vs_globadier_missing_globe_a_01",
				"ewt_vs_globadier_missing_globe_a_02",
				"ewt_vs_globadier_missing_globe_a_03",
				"ewt_vs_globadier_missing_globe_a_04"
			},
			sound_events_duration = {
				3.2152544260025,
				1.960976421833,
				2.1212286353111,
				2.5511415600777
			}
		},
		ewt_vs_heroes_objective_almost_completed_b = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "vs_player_vo_pactsworn",
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
				"ewt_vs_heroes_objective_almost_completed_b_01",
				"ewt_vs_heroes_objective_almost_completed_b_02",
				"ewt_vs_heroes_objective_almost_completed_b_03",
				"ewt_vs_heroes_objective_almost_completed_b_04"
			},
			randomize_indexes = {},
			sound_events = {
				"ewt_vs_heroes_objective_almost_completed_b_01",
				"ewt_vs_heroes_objective_almost_completed_b_02",
				"ewt_vs_heroes_objective_almost_completed_b_03",
				"ewt_vs_heroes_objective_almost_completed_b_04"
			},
			sound_events_duration = {
				1.146771967411,
				0.92716526985169,
				1.3956359624863,
				1.3322030901909
			}
		},
		ewt_vs_many_heroes_incapacitated_a = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "vs_player_vo_pactsworn",
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
				"ewt_vs_many_heroes_incapacitated_a_01",
				"ewt_vs_many_heroes_incapacitated_a_02",
				"ewt_vs_many_heroes_incapacitated_a_03",
				"ewt_vs_many_heroes_incapacitated_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"ewt_vs_many_heroes_incapacitated_a_01",
				"ewt_vs_many_heroes_incapacitated_a_02",
				"ewt_vs_many_heroes_incapacitated_a_03",
				"ewt_vs_many_heroes_incapacitated_a_04"
			},
			sound_events_duration = {
				4.0415930747986,
				3.2562510967255,
				2.0220413208008,
				2.2650661468506
			}
		},
		ewt_vs_pact_proximity_banter_eight_a = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "ewt_vs_pact_proximity_banter_eight_a_01"
			},
			sound_events = {
				[1] = "ewt_vs_pact_proximity_banter_eight_a_01"
			},
			sound_events_duration = {
				[1] = 4.7859485149384
			}
		},
		ewt_vs_pact_proximity_banter_eighteen_a = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "ewt_vs_pact_proximity_banter_eighteen_a_01"
			},
			sound_events = {
				[1] = "ewt_vs_pact_proximity_banter_eighteen_a_01"
			},
			sound_events_duration = {
				[1] = 2.6351587772369
			}
		},
		ewt_vs_pact_proximity_banter_eleven_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "ewt_vs_pact_proximity_banter_eleven_b_01"
			},
			sound_events = {
				[1] = "ewt_vs_pact_proximity_banter_eleven_b_01"
			},
			sound_events_duration = {
				[1] = 5.766628742218
			}
		},
		ewt_vs_pact_proximity_banter_fifteen_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "ewt_vs_pact_proximity_banter_fifteen_b_01"
			},
			sound_events = {
				[1] = "ewt_vs_pact_proximity_banter_fifteen_b_01"
			},
			sound_events_duration = {
				[1] = 4.3224668502808
			}
		},
		ewt_vs_pact_proximity_banter_five_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "ewt_vs_pact_proximity_banter_five_b_01"
			},
			sound_events = {
				[1] = "ewt_vs_pact_proximity_banter_five_b_01"
			},
			sound_events_duration = {
				[1] = 3.9835338592529
			}
		},
		ewt_vs_pact_proximity_banter_four_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "ewt_vs_pact_proximity_banter_four_b_01"
			},
			sound_events = {
				[1] = "ewt_vs_pact_proximity_banter_four_b_01"
			},
			sound_events_duration = {
				[1] = 4.6055979728699
			}
		},
		ewt_vs_pact_proximity_banter_fourteen_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "ewt_vs_pact_proximity_banter_fourteen_b_01"
			},
			sound_events = {
				[1] = "ewt_vs_pact_proximity_banter_fourteen_b_01"
			},
			sound_events_duration = {
				[1] = 4.6503791809082
			}
		},
		ewt_vs_pact_proximity_banter_nine_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "ewt_vs_pact_proximity_banter_nine_b_01"
			},
			sound_events = {
				[1] = "ewt_vs_pact_proximity_banter_nine_b_01"
			},
			sound_events_duration = {
				[1] = 5.8382592201233
			}
		},
		ewt_vs_pact_proximity_banter_nineteen_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "ewt_vs_pact_proximity_banter_nineteen_b_01"
			},
			sound_events = {
				[1] = "ewt_vs_pact_proximity_banter_nineteen_b_01"
			},
			sound_events_duration = {
				[1] = 9.5368814468384
			}
		},
		ewt_vs_pact_proximity_banter_one_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "ewt_vs_pact_proximity_banter_one_b_01"
			},
			sound_events = {
				[1] = "ewt_vs_pact_proximity_banter_one_b_01"
			},
			sound_events_duration = {
				[1] = 5.6475958824158
			}
		},
		ewt_vs_pact_proximity_banter_seven_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "ewt_vs_pact_proximity_banter_seven_b_01"
			},
			sound_events = {
				[1] = "ewt_vs_pact_proximity_banter_seven_b_01"
			},
			sound_events_duration = {
				[1] = 3.3618041276932
			}
		},
		ewt_vs_pact_proximity_banter_seventeen_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "ewt_vs_pact_proximity_banter_seventeen_b_01"
			},
			sound_events = {
				[1] = "ewt_vs_pact_proximity_banter_seventeen_b_01"
			},
			sound_events_duration = {
				[1] = 9.621283531189
			}
		},
		ewt_vs_pact_proximity_banter_six_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "ewt_vs_pact_proximity_banter_six_b_01"
			},
			sound_events = {
				[1] = "ewt_vs_pact_proximity_banter_six_b_01"
			},
			sound_events_duration = {
				[1] = 5.7232336997986
			}
		},
		ewt_vs_pact_proximity_banter_sixteen_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "ewt_vs_pact_proximity_banter_sixteen_b_01"
			},
			sound_events = {
				[1] = "ewt_vs_pact_proximity_banter_sixteen_b_01"
			},
			sound_events_duration = {
				[1] = 6.2680611610413
			}
		},
		ewt_vs_pact_proximity_banter_ten_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "ewt_vs_pact_proximity_banter_ten_b_01"
			},
			sound_events = {
				[1] = "ewt_vs_pact_proximity_banter_ten_b_01"
			},
			sound_events_duration = {
				[1] = 3.4703222513199
			}
		},
		ewt_vs_pact_proximity_banter_thirteen_a = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "ewt_vs_pact_proximity_banter_thirteen_a_01"
			},
			sound_events = {
				[1] = "ewt_vs_pact_proximity_banter_thirteen_a_01"
			},
			sound_events_duration = {
				[1] = 2.6792522668839
			}
		},
		ewt_vs_pact_proximity_banter_three_a = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "ewt_vs_pact_proximity_banter_three_a_01"
			},
			sound_events = {
				[1] = "ewt_vs_pact_proximity_banter_three_a_01"
			},
			sound_events_duration = {
				[1] = 6.3373837471008
			}
		},
		ewt_vs_pact_proximity_banter_twelve_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "ewt_vs_pact_proximity_banter_twelve_b_01"
			},
			sound_events = {
				[1] = "ewt_vs_pact_proximity_banter_twelve_b_01"
			},
			sound_events_duration = {
				[1] = 4.2538220882416
			}
		},
		ewt_vs_pact_proximity_banter_twenty_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "ewt_vs_pact_proximity_banter_twenty_b_01"
			},
			sound_events = {
				[1] = "ewt_vs_pact_proximity_banter_twenty_b_01"
			},
			sound_events_duration = {
				[1] = 5.8478121757507
			}
		},
		ewt_vs_pact_proximity_banter_two_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "ewt_vs_pact_proximity_banter_two_b_01"
			},
			sound_events = {
				[1] = "ewt_vs_pact_proximity_banter_two_b_01"
			},
			sound_events_duration = {
				[1] = 4.7335867881775
			}
		},
		ewt_vs_passing_hoisted_hero_a = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 2,
			category = "player_feedback",
			dialogue_animations_n = 2,
			dialogue_animations = {
				[1] = "dialogue_talk",
				[2] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral",
				[2] = "face_neutral"
			},
			localization_strings = {
				[1] = "ewt_vs_passing_hoisted_hero_a_01",
				[2] = "ewt_vs_passing_hoisted_hero_a_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "ewt_vs_passing_hoisted_hero_a_01",
				[2] = "ewt_vs_passing_hoisted_hero_a_02"
			},
			sound_events_duration = {
				[1] = 4.2053771018982,
				[2] = 3.6055371761322
			}
		},
		ewt_vs_shooting_hooked_hero_a = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "vs_player_vo_pactsworn",
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
				"ewt_vs_shooting_hooked_hero_a_01",
				"ewt_vs_shooting_hooked_hero_a_02",
				"ewt_vs_shooting_hooked_hero_a_03",
				"ewt_vs_shooting_hooked_hero_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"ewt_vs_shooting_hooked_hero_a_01",
				"ewt_vs_shooting_hooked_hero_a_02",
				"ewt_vs_shooting_hooked_hero_a_03",
				"ewt_vs_shooting_hooked_hero_a_04"
			},
			sound_events_duration = {
				4.0414817333221,
				2.6375776529312,
				3.6174281835556,
				4.1349816322327
			}
		},
		ewt_vs_vw_cheer_a = {
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "vs_player_vo_pactsworn",
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
				"ewt_vs_vw_cheer_a_01",
				"ewt_vs_vw_cheer_a_02",
				"ewt_vs_vw_cheer_a_03",
				"ewt_vs_vw_cheer_a_04",
				"ewt_vs_vw_cheer_a_05",
				"ewt_vs_vw_cheer_a_06"
			},
			randomize_indexes = {},
			sound_events = {
				"ewt_vs_vw_cheer_a_01",
				"ewt_vs_vw_cheer_a_02",
				"ewt_vs_vw_cheer_a_03",
				"ewt_vs_vw_cheer_a_04",
				"ewt_vs_vw_cheer_a_05",
				"ewt_vs_vw_cheer_a_06"
			},
			sound_events_duration = {
				2.129314661026,
				2.4864740371704,
				2.2117328643799,
				2.7818195819855,
				2.2451596856117,
				3.2408788204193
			}
		},
		ewt_vw_affirmative = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
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
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"ewt_vw_affirmative_01",
				"ewt_vw_affirmative_02",
				"ewt_vw_affirmative_03",
				"ewt_vw_affirmative_04",
				"ewt_vw_affirmative_05",
				"ewt_vw_affirmative_06",
				"ewt_vw_affirmative_07",
				"ewt_vw_affirmative_08",
				"ewt_vw_affirmative_09",
				"ewt_vw_affirmative_10"
			},
			randomize_indexes = {},
			sound_events = {
				"ewt_vw_affirmative_01",
				"ewt_vw_affirmative_02",
				"ewt_vw_affirmative_03",
				"ewt_vw_affirmative_04",
				"ewt_vw_affirmative_05",
				"ewt_vw_affirmative_06",
				"ewt_vw_affirmative_07",
				"ewt_vw_affirmative_08",
				"ewt_vw_affirmative_09",
				"ewt_vw_affirmative_10"
			},
			sound_events_duration = {
				0.65867841243744,
				0.79663598537445,
				0.74805933237076,
				1.3892704248428,
				1.9848195314407,
				1.2425893545151,
				2.6551764011383,
				3.6441960334778,
				1.7914845943451,
				2.3413715362549
			}
		},
		ewt_vw_ambush = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
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
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"ewt_vw_ambush_01",
				"ewt_vw_ambush_02",
				"ewt_vw_ambush_03",
				"ewt_vw_ambush_04",
				"ewt_vw_ambush_05",
				"ewt_vw_ambush_06",
				"ewt_vw_ambush_07",
				"ewt_vw_ambush_08",
				"ewt_vw_ambush_09",
				"ewt_vw_ambush_10"
			},
			randomize_indexes = {},
			sound_events = {
				"ewt_vw_ambush_01",
				"ewt_vw_ambush_02",
				"ewt_vw_ambush_03",
				"ewt_vw_ambush_04",
				"ewt_vw_ambush_05",
				"ewt_vw_ambush_06",
				"ewt_vw_ambush_07",
				"ewt_vw_ambush_08",
				"ewt_vw_ambush_09",
				"ewt_vw_ambush_10"
			},
			sound_events_duration = {
				0.69755989313126,
				2.0732288360596,
				2.6056485176086,
				2.3656599521637,
				1.3358361721039,
				1.0706079006195,
				1.8818573951721,
				2.4773862361908,
				3.1632876396179,
				2.2296454906464
			}
		},
		ewt_vw_attack_now = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
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
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"ewt_vw_attack_now_01",
				"ewt_vw_attack_now_02",
				"ewt_vw_attack_now_03",
				"ewt_vw_attack_now_04",
				"ewt_vw_attack_now_05",
				"ewt_vw_attack_now_06",
				"ewt_vw_attack_now_07",
				"ewt_vw_attack_now_08",
				"ewt_vw_attack_now_09",
				"ewt_vw_attack_now_10"
			},
			randomize_indexes = {},
			sound_events = {
				"ewt_vw_attack_now_01",
				"ewt_vw_attack_now_02",
				"ewt_vw_attack_now_03",
				"ewt_vw_attack_now_04",
				"ewt_vw_attack_now_05",
				"ewt_vw_attack_now_06",
				"ewt_vw_attack_now_07",
				"ewt_vw_attack_now_08",
				"ewt_vw_attack_now_09",
				"ewt_vw_attack_now_10"
			},
			sound_events_duration = {
				2.1976053714752,
				1.7312698364258,
				1.5602600574493,
				1.9751042127609,
				2.7241551876068,
				0.7169703245163,
				1.4485541582108,
				1.6273158788681,
				1.4757367372513,
				4.0570969581604
			}
		},
		ewt_vw_cover_me = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 8,
			category = "player_alerts",
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
				"ewt_vw_cover_me_01",
				"ewt_vw_cover_me_02",
				"ewt_vw_cover_me_03",
				"ewt_vw_cover_me_04",
				"ewt_vw_cover_me_05",
				"ewt_vw_cover_me_06",
				"ewt_vw_cover_me_07",
				"ewt_vw_cover_me_09"
			},
			randomize_indexes = {},
			sound_events = {
				"ewt_vw_cover_me_01",
				"ewt_vw_cover_me_02",
				"ewt_vw_cover_me_03",
				"ewt_vw_cover_me_04",
				"ewt_vw_cover_me_05",
				"ewt_vw_cover_me_06",
				"ewt_vw_cover_me_07",
				"ewt_vw_cover_me_09"
			},
			sound_events_duration = {
				0.76651847362518,
				0.74805933237076,
				1.3533439636231,
				1.9479216337204,
				1.4980820417404,
				0.86658620834351,
				1.415521979332,
				1.0803434848785
			}
		},
		ewt_vw_gather = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
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
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"ewt_vw_gather_01",
				"ewt_vw_gather_02",
				"ewt_vw_gather_03",
				"ewt_vw_gather_04",
				"ewt_vw_gather_05",
				"ewt_vw_gather_06",
				"ewt_vw_gather_07",
				"ewt_vw_gather_08",
				"ewt_vw_gather_09",
				"ewt_vw_gather_10"
			},
			randomize_indexes = {},
			sound_events = {
				"ewt_vw_gather_01",
				"ewt_vw_gather_02",
				"ewt_vw_gather_03",
				"ewt_vw_gather_04",
				"ewt_vw_gather_05",
				"ewt_vw_gather_06",
				"ewt_vw_gather_07",
				"ewt_vw_gather_08",
				"ewt_vw_gather_09",
				"ewt_vw_gather_10"
			},
			sound_events_duration = {
				1.4912812709808,
				0.57901275157929,
				1.0404903888702,
				2.0508835315704,
				0.91809767484665,
				0.53529381752014,
				1.5864913463593,
				0.91518306732178,
				1.1512451171875,
				2.5473365783691
			}
		},
		ewt_vw_go_here = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 8,
			category = "player_alerts",
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
				"ewt_vw_go_here_01",
				"ewt_vw_go_here_02",
				"ewt_vw_go_here_03",
				"ewt_vw_go_here_04",
				"ewt_vw_go_here_05",
				"ewt_vw_go_here_06",
				"ewt_vw_go_here_07",
				"ewt_vw_go_here_08"
			},
			randomize_indexes = {},
			sound_events = {
				"ewt_vw_go_here_01",
				"ewt_vw_go_here_02",
				"ewt_vw_go_here_03",
				"ewt_vw_go_here_04",
				"ewt_vw_go_here_05",
				"ewt_vw_go_here_06",
				"ewt_vw_go_here_07",
				"ewt_vw_go_here_08"
			},
			sound_events_duration = {
				1.3202917575836,
				1.5612314939499,
				0.65284925699234,
				1.241597533226,
				1.6826932430267,
				2.3792614936829,
				2.0314528942108,
				1.6204949617386
			}
		},
		ewt_vw_negation = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 9,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 9,
			category = "player_alerts",
			dialogue_animations_n = 9,
			dialogue_animations = {
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
				"face_neutral",
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
				"ewt_vw_negation_01",
				"ewt_vw_negation_02",
				"ewt_vw_negation_03",
				"ewt_vw_negation_04",
				"ewt_vw_negation_05",
				"ewt_vw_negation_06",
				"ewt_vw_negation_07",
				"ewt_vw_negation_08",
				"ewt_vw_negation_09"
			},
			randomize_indexes = {},
			sound_events = {
				"ewt_vw_negation_01",
				"ewt_vw_negation_02",
				"ewt_vw_negation_03",
				"ewt_vw_negation_04",
				"ewt_vw_negation_05",
				"ewt_vw_negation_06",
				"ewt_vw_negation_07",
				"ewt_vw_negation_08",
				"ewt_vw_negation_09"
			},
			sound_events_duration = {
				0.78014010190964,
				1.0453480482101,
				2.0586760044098,
				2.2150726318359,
				1.9663604497909,
				1.1463874578476,
				1.4300949573517,
				1.3455514907837,
				2.2325601577759
			}
		},
		ewt_vw_thanks = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 12,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 12,
			category = "player_alerts",
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
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
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
				"ewt_vs_vw_thanks_01",
				"ewt_vs_vw_thanks_02",
				"ewt_vs_vw_thanks_03",
				"ewt_vs_vw_thanks_04",
				"ewt_vs_vw_thanks_05",
				"ewt_vs_vw_thanks_06",
				"ewt_vs_vw_thanks_07",
				"ewt_vs_vw_thanks_08",
				"ewt_vs_vw_thanks_09",
				"ewt_vs_vw_thanks_10",
				"ewt_vs_vw_thanks_11",
				"ewt_vs_vw_thanks_12"
			},
			randomize_indexes = {},
			sound_events = {
				"ewt_vs_vw_thanks_01",
				"ewt_vs_vw_thanks_02",
				"ewt_vs_vw_thanks_03",
				"ewt_vs_vw_thanks_04",
				"ewt_vs_vw_thanks_05",
				"ewt_vs_vw_thanks_06",
				"ewt_vs_vw_thanks_07",
				"ewt_vs_vw_thanks_08",
				"ewt_vs_vw_thanks_09",
				"ewt_vs_vw_thanks_10",
				"ewt_vs_vw_thanks_11",
				"ewt_vs_vw_thanks_12"
			},
			sound_events_duration = {
				3.4567,
				3.4567,
				3.4567,
				3.4567,
				3.4567,
				3.4567,
				3.4567,
				3.4567,
				3.4567,
				3.4567,
				3.4567,
				3.4567
			}
		},
		ewt_vw_wait = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
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
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"ewt_vw_wait_01",
				"ewt_vw_wait_02",
				"ewt_vw_wait_03",
				"ewt_vw_wait_04",
				"ewt_vw_wait_05",
				"ewt_vw_wait_06",
				"ewt_vw_wait_07",
				"ewt_vw_wait_08",
				"ewt_vw_wait_09",
				"ewt_vw_wait_10"
			},
			randomize_indexes = {},
			sound_events = {
				"ewt_vw_wait_01",
				"ewt_vw_wait_02",
				"ewt_vw_wait_03",
				"ewt_vw_wait_04",
				"ewt_vw_wait_05",
				"ewt_vw_wait_06",
				"ewt_vw_wait_07",
				"ewt_vw_wait_08",
				"ewt_vw_wait_09",
				"ewt_vw_wait_10"
			},
			sound_events_duration = {
				3.4567,
				3.4567,
				3.4567,
				3.4567,
				3.4567,
				3.4567,
				3.4567,
				3.4567,
				3.4567,
				3.4567
			}
		}
	})
end
