return function ()
	define_rule({
		probability = 1,
		name = "pwh_level_skittergate_BOOM_01",
		response = "pwh_level_skittergate_BOOM_01",
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
				"skittergate_BOOM"
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
				"skittergate_BOOM",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"skittergate_BOOM",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwh_level_skittergate_activate_gate_01",
		response = "pwh_level_skittergate_activate_gate_01",
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
				"skittergate_activate_gate_helmgart"
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
				"skittergate_activate_gate_helmgart",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"skittergate_activate_gate_helmgart",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwh_level_skittergate_activate_gate_01a",
		response = "pwh_level_skittergate_activate_gate_01a",
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
				"skittergate_activate_gate_norsca"
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
				"level_skittergate_activate_gate_norsca",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_skittergate_activate_gate_norsca",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwh_level_skittergate_arrive_01",
		response = "pwh_level_skittergate_arrive_01",
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
				"skittergate_arrive"
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
				"level_skittergate_arrive",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_skittergate_arrive",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwh_level_skittergate_back_home_01",
		response = "pwh_level_skittergate_back_home_01",
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
				"skittergate_back_home"
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
				"skittergate_back_home",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"skittergate_back_home",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwh_level_skittergate_cave_entrance_01",
		response = "pwh_level_skittergate_cave_entrance_01",
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
				"skittergate_cave_entrance"
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
				"level_skittergate_cave_entrance",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_skittergate_cave_entrance",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwh_level_skittergate_crater_01",
		response = "pwh_level_skittergate_crater_01",
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
				"skittergate_crater"
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
				"level_skittergate_crater",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_skittergate_crater",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwh_level_skittergate_dead_seer",
		response = "pwh_level_skittergate_dead_seer",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"enemy_kill"
			},
			{
				"query_context",
				"killed_type",
				OP.EQ,
				"skaven_grey_seer"
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
				"skittergate_dead_seer",
				OP.TIMEDIFF,
				OP.GT,
				3
			}
		},
		on_done = {
			{
				"faction_memory",
				"skittergate_dead_seer",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwh_level_skittergate_dead_seer_01",
		response = "pwh_level_skittergate_dead_seer_01",
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
				"skittergate_dead_seer"
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
				"skittergate_dead_seer",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"skittergate_dead_seer",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwh_level_skittergate_docks_gate_01",
		response = "pwh_level_skittergate_docks_gate_01",
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
				"skittergate_docks_gate"
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
				"skittergate_docks_gate",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"skittergate_docks_gate",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwh_level_skittergate_elevator_01",
		response = "pwh_level_skittergate_elevator_01",
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
				"skittergate_elevator"
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
				"level_skittergate_elevator",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_skittergate_elevator",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwh_level_skittergate_enter_gate_01",
		response = "pwh_level_skittergate_enter_gate_01",
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
				"skittergate_enter_gate"
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
				"level_skittergate_enter_gate",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_skittergate_enter_gate",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_alone",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwh_level_skittergate_gate_activated_01",
		response = "pwh_level_skittergate_gate_activated_01",
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
				"skittergate_gate_activated"
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
				"level_skittergate_gate_activated",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_skittergate_gate_activated",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_alone",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwh_level_skittergate_gatekeeper_appear_01",
		response = "pwh_level_skittergate_gatekeeper_appear_01",
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
				"skittergate_gatekeeper_appear"
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
				"skittergate_gatekeeper_appear",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"skittergate_gatekeeper_appear",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwh_level_skittergate_gatekeeper_death_01",
		response = "pwh_level_skittergate_gatekeeper_death_01",
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
				"skittergate_gatekeeper_death"
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
				"skittergate_gatekeeper_death",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"skittergate_gatekeeper_death",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwh_level_skittergate_get_back_to_gate_01",
		response = "pwh_level_skittergate_get_back_to_gate_01",
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
				"skittergate_get_back_to_gate"
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
				"skittergate_get_back_to_gate",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"skittergate_get_back_to_gate",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwh_level_skittergate_get_down_to_the_cooling_01",
		response = "pwh_level_skittergate_get_down_to_the_cooling_01",
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
				"skittergate_get_down_to_the_cooling"
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
				"skittergate_get_down_to_the_cooling",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"skittergate_get_down_to_the_cooling",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwh_level_skittergate_leave_01",
		response = "pwh_level_skittergate_leave_01",
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
				"skittergate_leave"
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
				"skittergate_leave",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"skittergate_leave",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwh_level_skittergate_rasknitt_death_rattler_invulnerable",
		response = "pwh_level_skittergate_rasknitt_death_rattler_invulnerable",
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
				"egs_level_skittergate_rasknitt_on_stormfiend"
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
				"rattler_invulnerable",
				OP.TIMEDIFF,
				OP.GT,
				300
			}
		},
		on_done = {
			{
				"faction_memory",
				"rattler_invulnerable",
				OP.TIMESET
			}
		}
	})
	define_rule({
		response = "pwh_level_skittergate_rasknitt_dismounted_one",
		name = "pwh_level_skittergate_rasknitt_dismounted_one",
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
				"dialogue_name",
				OP.EQ,
				"egs_level_skittergate_rasknitt_dismounted"
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
		response = "pwh_level_skittergate_rasknitt_gate_reply",
		name = "pwh_level_skittergate_rasknitt_gate_reply",
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
				"dialogue_name",
				OP.EQ,
				"egs_level_skittergate_rasknitt_calls_mount_intro"
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
		name = "pwh_level_skittergate_rasknitt_interrupt_and_focus",
		response = "pwh_level_skittergate_rasknitt_interrupt_and_focus",
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
				"egs_level_skittergate_teleport_away"
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
				"interrupt_and_focus",
				OP.TIMEDIFF,
				OP.GT,
				300
			}
		},
		on_done = {
			{
				"faction_memory",
				"interrupt_and_focus",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwh_level_skittergate_rasknitt_stormfiend_dead",
		response = "pwh_level_skittergate_rasknitt_stormfiend_dead",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"enemy_kill"
			},
			{
				"query_context",
				"killed_type",
				OP.EQ,
				"skaven_stormfiend_boss"
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
				"rasknitt_stormfiend_dead",
				OP.TIMEDIFF,
				OP.GT,
				3
			}
		},
		on_done = {
			{
				"faction_memory",
				"rasknitt_stormfiend_dead",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwh_level_skittergate_run_for_the_gate_01",
		response = "pwh_level_skittergate_run_for_the_gate_01",
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
				"skittergate_run_for_the_gate"
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
				"skittergate_run_for_the_gate",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"skittergate_run_for_the_gate",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_alone",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwh_level_skittergate_sabotage_cooling_01",
		response = "pwh_level_skittergate_sabotage_cooling_01",
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
				"skittergate_sabotage_cooling"
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
				"skittergate_sabotage_cooling",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"skittergate_sabotage_cooling",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwh_level_skittergate_searching_gatekeeper_01",
		response = "pwh_level_skittergate_searching_gatekeeper_01",
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
				"skittergate_searching_gatekeeper"
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
				"skittergate_searching_gatekeeper",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"skittergate_searching_gatekeeper",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwh_level_skittergate_ships_01",
		response = "pwh_level_skittergate_ships_01",
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
				"skittergate_ships"
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
				"skittergate_ships",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"skittergate_ships",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwh_level_skittergate_skittergate_found_01",
		response = "pwh_level_skittergate_skittergate_found_01",
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
				"skittergate_skittergate_found"
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
				"level_skittergate_skittergate_found",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_skittergate_skittergate_found",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwh_level_skittergate_spotting_docks_01",
		response = "pwh_level_skittergate_spotting_docks_01",
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
				"skittergate_spotting_docks"
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
				"skittergate_spotting_docks",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"skittergate_spotting_docks",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwh_level_skittergate_start_up_gate_01",
		response = "pwh_level_skittergate_start_up_gate_01",
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
				"skittergate_start_up_gate"
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
				"level_skittergate_start_up_gate",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_skittergate_start_up_gate",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwh_level_skittergate_through_the_gate",
		response = "pwh_level_skittergate_through_the_gate",
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
				"skittergate_through the gate"
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
				"skittergate_through the gate",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"skittergate_through the gate",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_alone",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwh_level_skittergate_tunnel_collapses_01",
		response = "pwh_level_skittergate_tunnel_collapses_01",
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
				"skittergate_tunnel_collapses"
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
				"skittergate_tunnel_collapses",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"skittergate_tunnel_collapses",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwh_level_skittergate_vacated_area_01",
		response = "pwh_level_skittergate_vacated_area_01",
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
				"skittergate_vacated_area"
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
				"level_skittergate_vacated_area",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_skittergate_vacated_area",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwh_level_skittergate_vista_01",
		response = "pwh_level_skittergate_vista_01",
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
				"skittergate_vista"
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
				"level_skittergate_vista",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_skittergate_vista",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwh_level_skittergate_welcome_to_norsca_01",
		response = "pwh_level_skittergate_welcome_to_norsca_01",
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
				"skittergate_welcome_to_norsca"
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
				"level_skittergate_welcome_to_norsca",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_skittergate_welcome_to_norsca",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwh_skittergate_intro_a",
		response = "pwh_skittergate_intro_a",
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
				"skittergate_intro_a"
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
				"skittergate_intro_a",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"skittergate_intro_a",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwh_skittergate_intro_b",
		response = "pwh_skittergate_intro_b",
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
				"skittergate_intro_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"skittergate_intro_b",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"skittergate_intro_b",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwh_skittergate_intro_c",
		response = "pwh_skittergate_intro_c",
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
				"skittergate_intro_b"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"skittergate_intro_c",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"skittergate_intro_c",
				OP.TIMESET
			}
		}
	})
	add_dialogues({
		pwh_level_skittergate_BOOM_01 = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_skittergate",
			sound_events_n = 4,
			category = "level_talk",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			},
			localization_strings = {
				"pwh_level_skittergate_BOOM_01",
				"pwh_level_skittergate_BOOM_02",
				"pwh_level_skittergate_BOOM_03",
				"pwh_level_skittergate_BOOM_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_level_skittergate_BOOM_01",
				"pwh_level_skittergate_BOOM_02",
				"pwh_level_skittergate_BOOM_03",
				"pwh_level_skittergate_BOOM_04"
			},
			sound_events_duration = {
				7.4726247787476,
				7.9275832176208,
				7.329083442688,
				8.2735414505005
			}
		},
		pwh_level_skittergate_activate_gate_01 = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_skittergate",
			sound_events_n = 4,
			category = "level_talk",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			},
			localization_strings = {
				"pwh_level_skittergate_activate_gate_01",
				"pwh_level_skittergate_activate_gate_02",
				"pwh_level_skittergate_activate_gate_03",
				"pwh_level_skittergate_activate_gate_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_level_skittergate_activate_gate_01",
				"pwh_level_skittergate_activate_gate_02",
				"pwh_level_skittergate_activate_gate_03",
				"pwh_level_skittergate_activate_gate_04"
			},
			sound_events_duration = {
				5.496458530426,
				5.7867293357849,
				5.3478541374206,
				4.9764790534973
			}
		},
		pwh_level_skittergate_activate_gate_01a = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_skittergate",
			sound_events_n = 4,
			category = "level_talk",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			},
			localization_strings = {
				"pwh_level_skittergate_activate_gate_01a",
				"pwh_level_skittergate_activate_gate_02a",
				"pwh_level_skittergate_activate_gate_03a",
				"pwh_level_skittergate_activate_gate_04a"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_level_skittergate_activate_gate_01a",
				"pwh_level_skittergate_activate_gate_02a",
				"pwh_level_skittergate_activate_gate_03a",
				"pwh_level_skittergate_activate_gate_04a"
			},
			sound_events_duration = {
				4.6331458091736,
				5.5635209083557,
				5.2271456718445,
				8.3533124923706
			}
		},
		pwh_level_skittergate_arrive_01 = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_skittergate",
			sound_events_n = 4,
			category = "level_talk",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			},
			localization_strings = {
				"pwh_level_skittergate_arrive_01",
				"pwh_level_skittergate_arrive_02",
				"pwh_level_skittergate_arrive_03",
				"pwh_level_skittergate_arrive_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_level_skittergate_arrive_01",
				"pwh_level_skittergate_arrive_02",
				"pwh_level_skittergate_arrive_03",
				"pwh_level_skittergate_arrive_04"
			},
			sound_events_duration = {
				6.4854168891907,
				5.6528539657593,
				9.5375413894653,
				9.0920000076294
			}
		},
		pwh_level_skittergate_back_home_01 = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_skittergate",
			sound_events_n = 4,
			category = "level_talk",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			},
			localization_strings = {
				"pwh_level_skittergate_back_home_01",
				"pwh_level_skittergate_back_home_02",
				"pwh_level_skittergate_back_home_03",
				"pwh_level_skittergate_back_home_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_level_skittergate_back_home_01",
				"pwh_level_skittergate_back_home_02",
				"pwh_level_skittergate_back_home_03",
				"pwh_level_skittergate_back_home_04"
			},
			sound_events_duration = {
				6.8144998550415,
				7.0294165611267,
				6.2793960571289,
				5.6118960380554
			}
		},
		pwh_level_skittergate_cave_entrance_01 = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_skittergate",
			sound_events_n = 4,
			category = "level_talk",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"pwh_level_skittergate_cave_entrance_01",
				"pwh_level_skittergate_cave_entrance_02",
				"pwh_level_skittergate_cave_entrance_03",
				"pwh_level_skittergate_cave_entrance_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_level_skittergate_cave_entrance_01",
				"pwh_level_skittergate_cave_entrance_02",
				"pwh_level_skittergate_cave_entrance_03",
				"pwh_level_skittergate_cave_entrance_04"
			},
			sound_events_duration = {
				6.0617918968201,
				5.6935625076294,
				6.2984375953674,
				8.0983753204346
			}
		},
		pwh_level_skittergate_crater_01 = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_skittergate",
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
				"pwh_level_skittergate_crater_01",
				"pwh_level_skittergate_crater_02",
				"pwh_level_skittergate_crater_03",
				"pwh_level_skittergate_crater_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_level_skittergate_crater_01",
				"pwh_level_skittergate_crater_02",
				"pwh_level_skittergate_crater_03",
				"pwh_level_skittergate_crater_04"
			},
			sound_events_duration = {
				4.3710417747498,
				5.0428748130798,
				5.7184581756592,
				6.1819167137146
			}
		},
		pwh_level_skittergate_dead_seer = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_skittergate",
			sound_events_n = 4,
			category = "player_alerts_boss",
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
				"pwh_level_skittergate_dead_seer_01",
				"pwh_level_skittergate_dead_seer_02",
				"pwh_level_skittergate_dead_seer_03",
				"pwh_level_skittergate_dead_seer_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_level_skittergate_dead_seer_01",
				"pwh_level_skittergate_dead_seer_02",
				"pwh_level_skittergate_dead_seer_03",
				"pwh_level_skittergate_dead_seer_04"
			},
			sound_events_duration = {
				11.97810459137,
				14.49360370636,
				12.933250427246,
				11.269166946411
			}
		},
		pwh_level_skittergate_dead_seer_01 = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_skittergate",
			sound_events_n = 4,
			category = "level_talk",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			},
			localization_strings = {
				"pwh_level_skittergate_dead_seer_01",
				"pwh_level_skittergate_dead_seer_02",
				"pwh_level_skittergate_dead_seer_03",
				"pwh_level_skittergate_dead_seer_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_level_skittergate_dead_seer_01",
				"pwh_level_skittergate_dead_seer_02",
				"pwh_level_skittergate_dead_seer_03",
				"pwh_level_skittergate_dead_seer_04"
			},
			sound_events_duration = {
				11.97810459137,
				14.49360370636,
				12.933250427246,
				11.269166946411
			}
		},
		pwh_level_skittergate_docks_gate_01 = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_skittergate",
			sound_events_n = 4,
			category = "level_talk",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			},
			localization_strings = {
				"pwh_level_skittergate_docks_gate_01",
				"pwh_level_skittergate_docks_gate_02",
				"pwh_level_skittergate_docks_gate_03",
				"pwh_level_skittergate_docks_gate_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_level_skittergate_docks_gate_01",
				"pwh_level_skittergate_docks_gate_02",
				"pwh_level_skittergate_docks_gate_03",
				"pwh_level_skittergate_docks_gate_04"
			},
			sound_events_duration = {
				4.1946043968201,
				3.2681457996368,
				7.3987917900085,
				5.8582291603088
			}
		},
		pwh_level_skittergate_elevator_01 = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_skittergate",
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
				"pwh_level_skittergate_elevator_01",
				"pwh_level_skittergate_elevator_02",
				"pwh_level_skittergate_elevator_03",
				"pwh_level_skittergate_elevator_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_level_skittergate_elevator_01",
				"pwh_level_skittergate_elevator_02",
				"pwh_level_skittergate_elevator_03",
				"pwh_level_skittergate_elevator_04"
			},
			sound_events_duration = {
				3.4169583320618,
				2.3629791736603,
				1.8261458873749,
				2.7026875019074
			}
		},
		pwh_level_skittergate_enter_gate_01 = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_skittergate",
			sound_events_n = 4,
			category = "level_talk",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			},
			localization_strings = {
				"pwh_level_skittergate_enter_gate_01",
				"pwh_level_skittergate_enter_gate_02",
				"pwh_level_skittergate_enter_gate_03",
				"pwh_level_skittergate_enter_gate_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_level_skittergate_enter_gate_01",
				"pwh_level_skittergate_enter_gate_02",
				"pwh_level_skittergate_enter_gate_03",
				"pwh_level_skittergate_enter_gate_04"
			},
			sound_events_duration = {
				7.2053127288818,
				5.1303124427795,
				6.4659790992737,
				7.7818541526794
			}
		},
		pwh_level_skittergate_gate_activated_01 = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_skittergate",
			sound_events_n = 4,
			category = "level_talk",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			},
			localization_strings = {
				"pwh_level_skittergate_gate_activated_01",
				"pwh_level_skittergate_gate_activated_02",
				"pwh_level_skittergate_gate_activated_03",
				"pwh_level_skittergate_gate_activated_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_level_skittergate_gate_activated_01",
				"pwh_level_skittergate_gate_activated_02",
				"pwh_level_skittergate_gate_activated_03",
				"pwh_level_skittergate_gate_activated_04"
			},
			sound_events_duration = {
				5.2617917060852,
				8.6431665420532,
				11.145312309265,
				6.6988334655762
			}
		},
		pwh_level_skittergate_gatekeeper_appear_01 = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_skittergate",
			sound_events_n = 4,
			category = "level_talk",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			},
			localization_strings = {
				"pwh_level_skittergate_gatekeeper_appear_01",
				"pwh_level_skittergate_gatekeeper_appear_02",
				"pwh_level_skittergate_gatekeeper_appear_03",
				"pwh_level_skittergate_gatekeeper_appear_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_level_skittergate_gatekeeper_appear_01",
				"pwh_level_skittergate_gatekeeper_appear_02",
				"pwh_level_skittergate_gatekeeper_appear_03",
				"pwh_level_skittergate_gatekeeper_appear_04"
			},
			sound_events_duration = {
				7.1399793624878,
				11.162312507629,
				10.8952293396,
				5.5669374465942
			}
		},
		pwh_level_skittergate_gatekeeper_death_01 = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "witch_hunter_skittergate",
			sound_events_n = 2,
			category = "level_talk",
			dialogue_animations_n = 2,
			dialogue_animations = {
				[1] = "dialogue_shout",
				[2] = "dialogue_shout"
			},
			face_animations = {
				[1] = "face_fear",
				[2] = "face_fear"
			},
			localization_strings = {
				[1] = "pwh_level_skittergate_gatekeeper_death_01",
				[2] = "pwh_level_skittergate_gatekeeper_death_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pwh_level_skittergate_gatekeeper_death_01",
				[2] = "pwh_level_skittergate_gatekeeper_death_02"
			},
			sound_events_duration = {
				[1] = 10.343667030334,
				[2] = 14.183500289917
			}
		},
		pwh_level_skittergate_get_back_to_gate_01 = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_skittergate",
			sound_events_n = 4,
			category = "level_talk",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			},
			localization_strings = {
				"pwh_level_skittergate_get_back_to_gate_01",
				"pwh_level_skittergate_get_back_to_gate_02",
				"pwh_level_skittergate_get_back_to_gate_03",
				"pwh_level_skittergate_get_back_to_gate_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_level_skittergate_get_back_to_gate_01",
				"pwh_level_skittergate_get_back_to_gate_02",
				"pwh_level_skittergate_get_back_to_gate_03",
				"pwh_level_skittergate_get_back_to_gate_04"
			},
			sound_events_duration = {
				6.0136251449585,
				7.6683540344238,
				5.8490414619446,
				9.7225837707519
			}
		},
		pwh_level_skittergate_get_down_to_the_cooling_01 = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_skittergate",
			sound_events_n = 4,
			category = "level_talk",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			},
			localization_strings = {
				"pwh_level_skittergate_get_down_to_the_cooling_01",
				"pwh_level_skittergate_get_down_to_the_cooling_02",
				"pwh_level_skittergate_get_down_to_the_cooling_03",
				"pwh_level_skittergate_get_down_to_the_cooling_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_level_skittergate_get_down_to_the_cooling_01",
				"pwh_level_skittergate_get_down_to_the_cooling_02",
				"pwh_level_skittergate_get_down_to_the_cooling_03",
				"pwh_level_skittergate_get_down_to_the_cooling_04"
			},
			sound_events_duration = {
				6.066520690918,
				5.632791519165,
				7.1509790420532,
				4.5378332138061
			}
		},
		pwh_level_skittergate_leave_01 = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_skittergate",
			sound_events_n = 4,
			category = "level_talk",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			},
			localization_strings = {
				"pwh_level_skittergate_leave_01",
				"pwh_level_skittergate_leave_02",
				"pwh_level_skittergate_leave_03",
				"pwh_level_skittergate_leave_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_level_skittergate_leave_01",
				"pwh_level_skittergate_leave_02",
				"pwh_level_skittergate_leave_03",
				"pwh_level_skittergate_leave_04"
			},
			sound_events_duration = {
				4.5406041145325,
				3.8346874713898,
				2.9370832443237,
				5.2663540840149
			}
		},
		pwh_level_skittergate_rasknitt_death_rattler_invulnerable = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_skittergate",
			sound_events_n = 4,
			category = "player_alerts_boss",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pwh_level_skittergate_rasknitt_death_rattler_invulnerable_01",
				"pwh_level_skittergate_rasknitt_death_rattler_invulnerable_02",
				"pwh_level_skittergate_rasknitt_death_rattler_invulnerable_03",
				"pwh_level_skittergate_rasknitt_death_rattler_invulnerable_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_level_skittergate_rasknitt_death_rattler_invulnerable_01",
				"pwh_level_skittergate_rasknitt_death_rattler_invulnerable_02",
				"pwh_level_skittergate_rasknitt_death_rattler_invulnerable_03",
				"pwh_level_skittergate_rasknitt_death_rattler_invulnerable_04"
			},
			sound_events_duration = {
				2.7585208415985,
				5.431583404541,
				5.2407293319702,
				5.7270832061768
			}
		},
		pwh_level_skittergate_rasknitt_dismounted_one = {
			randomize_indexes_n = 0,
			face_animations_n = 5,
			database = "witch_hunter_skittergate",
			sound_events_n = 5,
			category = "player_alerts_boss",
			dialogue_animations_n = 5,
			dialogue_animations = {
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
				"face_neutral"
			},
			localization_strings = {
				"pwh_level_skittergate_rasknitt_dismounted_one_01",
				"pwh_level_skittergate_rasknitt_dismounted_one_02",
				"pwh_level_skittergate_rasknitt_dismounted_one_03",
				"pwh_level_skittergate_rasknitt_dismounted_one_04",
				"pwh_level_skittergate_rasknitt_dismounted_one_05"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_level_skittergate_rasknitt_dismounted_one_01",
				"pwh_level_skittergate_rasknitt_dismounted_one_02",
				"pwh_level_skittergate_rasknitt_dismounted_one_03",
				"pwh_level_skittergate_rasknitt_dismounted_one_04",
				"pwh_level_skittergate_rasknitt_dismounted_one_05"
			},
			sound_events_duration = {
				8.0328330993652,
				7.4937915802002,
				9.4996252059937,
				5.1729373931885,
				4.9253125190735
			}
		},
		pwh_level_skittergate_rasknitt_gate_reply = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "witch_hunter_skittergate",
			sound_events_n = 2,
			category = "player_alerts_boss",
			dialogue_animations_n = 2,
			dialogue_animations = {
				[1] = "dialogue_shout",
				[2] = "dialogue_shout"
			},
			face_animations = {
				[1] = "face_neutral",
				[2] = "face_neutral"
			},
			localization_strings = {
				[1] = "pwh_level_skittergate_rasknitt_gate_reply_01",
				[2] = "pwh_level_skittergate_rasknitt_gate_reply_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pwh_level_skittergate_rasknitt_gate_reply_01",
				[2] = "pwh_level_skittergate_rasknitt_gate_reply_02"
			},
			sound_events_duration = {
				[1] = 6.5682501792908,
				[2] = 10.184895515442
			}
		},
		pwh_level_skittergate_rasknitt_interrupt_and_focus = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_skittergate",
			sound_events_n = 4,
			category = "player_alerts_boss",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pwh_level_skittergate_rasknitt_interrupt_and_focus_01",
				"pwh_level_skittergate_rasknitt_interrupt_and_focus_02",
				"pwh_level_skittergate_rasknitt_interrupt_and_focus_03",
				"pwh_level_skittergate_rasknitt_interrupt_and_focus_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_level_skittergate_rasknitt_interrupt_and_focus_01",
				"pwh_level_skittergate_rasknitt_interrupt_and_focus_02",
				"pwh_level_skittergate_rasknitt_interrupt_and_focus_03",
				"pwh_level_skittergate_rasknitt_interrupt_and_focus_04"
			},
			sound_events_duration = {
				5.4098539352417,
				5.1964998245239,
				7.6849164962769,
				7.3855414390564
			}
		},
		pwh_level_skittergate_rasknitt_stormfiend_dead = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "witch_hunter_skittergate",
			sound_events_n = 2,
			category = "player_alerts_boss",
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
				[1] = "pwh_level_skittergate_rasknitt_stormfiend_dead_01",
				[2] = "pwh_level_skittergate_rasknitt_stormfiend_dead_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pwh_level_skittergate_rasknitt_stormfiend_dead_01",
				[2] = "pwh_level_skittergate_rasknitt_stormfiend_dead_02"
			},
			sound_events_duration = {
				[1] = 6.2318539619446,
				[2] = 6.1237292289734
			}
		},
		pwh_level_skittergate_run_for_the_gate_01 = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_skittergate",
			sound_events_n = 4,
			category = "level_talk",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			},
			localization_strings = {
				"pwh_level_skittergate_run_for_the_gate_01",
				"pwh_level_skittergate_run_for_the_gate_02",
				"pwh_level_skittergate_run_for_the_gate_03",
				"pwh_level_skittergate_run_for_the_gate_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_level_skittergate_run_for_the_gate_01",
				"pwh_level_skittergate_run_for_the_gate_02",
				"pwh_level_skittergate_run_for_the_gate_03",
				"pwh_level_skittergate_run_for_the_gate_04"
			},
			sound_events_duration = {
				4.4755206108093,
				6.5516042709351,
				5.5915207862854,
				5.2420835494995
			}
		},
		pwh_level_skittergate_sabotage_cooling_01 = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_skittergate",
			sound_events_n = 4,
			category = "level_talk",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			},
			localization_strings = {
				"pwh_level_skittergate_sabotage_cooling_01",
				"pwh_level_skittergate_sabotage_cooling_02",
				"pwh_level_skittergate_sabotage_cooling_03",
				"pwh_level_skittergate_sabotage_cooling_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_level_skittergate_sabotage_cooling_01",
				"pwh_level_skittergate_sabotage_cooling_02",
				"pwh_level_skittergate_sabotage_cooling_03",
				"pwh_level_skittergate_sabotage_cooling_04"
			},
			sound_events_duration = {
				3.4510834217072,
				4.1198334693909,
				3.5933749675751,
				5.0122084617615
			}
		},
		pwh_level_skittergate_searching_gatekeeper_01 = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_skittergate",
			sound_events_n = 4,
			category = "level_talk",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			},
			localization_strings = {
				"pwh_level_skittergate_searching_gatekeeper_01",
				"pwh_level_skittergate_searching_gatekeeper_02",
				"pwh_level_skittergate_searching_gatekeeper_03",
				"pwh_level_skittergate_searching_gatekeeper_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_level_skittergate_searching_gatekeeper_01",
				"pwh_level_skittergate_searching_gatekeeper_02",
				"pwh_level_skittergate_searching_gatekeeper_03",
				"pwh_level_skittergate_searching_gatekeeper_04"
			},
			sound_events_duration = {
				5.129020690918,
				5.0768332481384,
				6.1966667175293,
				6.9979376792908
			}
		},
		pwh_level_skittergate_ships_01 = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_skittergate",
			sound_events_n = 4,
			category = "level_talk",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			},
			localization_strings = {
				"pwh_level_skittergate_ships_01",
				"pwh_level_skittergate_ships_02",
				"pwh_level_skittergate_ships_03",
				"pwh_level_skittergate_ships_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_level_skittergate_ships_01",
				"pwh_level_skittergate_ships_02",
				"pwh_level_skittergate_ships_03",
				"pwh_level_skittergate_ships_04"
			},
			sound_events_duration = {
				3.7820415496826,
				5.5367498397827,
				5.9707498550415,
				5.8898124694824
			}
		},
		pwh_level_skittergate_skittergate_found_01 = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_skittergate",
			sound_events_n = 4,
			category = "level_talk",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry"
			},
			localization_strings = {
				"pwh_level_skittergate_skittergate_found_01",
				"pwh_level_skittergate_skittergate_found_02",
				"pwh_level_skittergate_skittergate_found_03",
				"pwh_level_skittergate_skittergate_found_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_level_skittergate_skittergate_found_01",
				"pwh_level_skittergate_skittergate_found_02",
				"pwh_level_skittergate_skittergate_found_03",
				"pwh_level_skittergate_skittergate_found_04"
			},
			sound_events_duration = {
				1.9349166154861,
				3.2319166660309,
				3.3835000991821,
				3.1337082386017
			}
		},
		pwh_level_skittergate_spotting_docks_01 = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_skittergate",
			sound_events_n = 4,
			category = "level_talk",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			},
			localization_strings = {
				"pwh_level_skittergate_spotting_docks_01",
				"pwh_level_skittergate_spotting_docks_02",
				"pwh_level_skittergate_spotting_docks_03",
				"pwh_level_skittergate_spotting_docks_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_level_skittergate_spotting_docks_01",
				"pwh_level_skittergate_spotting_docks_02",
				"pwh_level_skittergate_spotting_docks_03",
				"pwh_level_skittergate_spotting_docks_04"
			},
			sound_events_duration = {
				6.9607291221619,
				4.6078748703003,
				6.5860414505005,
				3.725625038147
			}
		},
		pwh_level_skittergate_start_up_gate_01 = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_skittergate",
			sound_events_n = 4,
			category = "level_talk",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			},
			localization_strings = {
				"pwh_level_skittergate_start_up_gate_01",
				"pwh_level_skittergate_start_up_gate_02",
				"pwh_level_skittergate_start_up_gate_03",
				"pwh_level_skittergate_start_up_gate_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_level_skittergate_start_up_gate_01",
				"pwh_level_skittergate_start_up_gate_02",
				"pwh_level_skittergate_start_up_gate_03",
				"pwh_level_skittergate_start_up_gate_04"
			},
			sound_events_duration = {
				4.6896457672119,
				7.0055623054504,
				5.9966249465942,
				6.9401459693909
			}
		},
		pwh_level_skittergate_through_the_gate = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_skittergate",
			sound_events_n = 4,
			category = "level_talk",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			},
			localization_strings = {
				"pwh_level_skittergate_through_the_gate_01",
				"pwh_level_skittergate_through_the_gate_02",
				"pwh_level_skittergate_through_the_gate_03",
				"pwh_level_skittergate_through_the_gate_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_level_skittergate_through_the_gate_01",
				"pwh_level_skittergate_through_the_gate_02",
				"pwh_level_skittergate_through_the_gate_03",
				"pwh_level_skittergate_through_the_gate_04"
			},
			sound_events_duration = {
				6.1252293586731,
				3.7199375629425,
				4.9392290115356,
				4.3727083206177
			}
		},
		pwh_level_skittergate_tunnel_collapses_01 = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_skittergate",
			sound_events_n = 4,
			category = "level_talk",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			},
			localization_strings = {
				"pwh_level_skittergate_tunnel_collapses_01",
				"pwh_level_skittergate_tunnel_collapses_02",
				"pwh_level_skittergate_tunnel_collapses_03",
				"pwh_level_skittergate_tunnel_collapses_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_level_skittergate_tunnel_collapses_01",
				"pwh_level_skittergate_tunnel_collapses_02",
				"pwh_level_skittergate_tunnel_collapses_03",
				"pwh_level_skittergate_tunnel_collapses_04"
			},
			sound_events_duration = {
				8.3307504653931,
				5.0787291526794,
				6.712833404541,
				7.0274167060852
			}
		},
		pwh_level_skittergate_vacated_area_01 = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_skittergate",
			sound_events_n = 4,
			category = "level_talk",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			},
			localization_strings = {
				"pwh_level_skittergate_vacated_area_01",
				"pwh_level_skittergate_vacated_area_02",
				"pwh_level_skittergate_vacated_area_03",
				"pwh_level_skittergate_vacated_area_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_level_skittergate_vacated_area_01",
				"pwh_level_skittergate_vacated_area_02",
				"pwh_level_skittergate_vacated_area_03",
				"pwh_level_skittergate_vacated_area_04"
			},
			sound_events_duration = {
				5.8122081756592,
				7.9887709617615,
				6.3580832481384,
				5.1296668052673
			}
		},
		pwh_level_skittergate_vista_01 = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_skittergate",
			sound_events_n = 4,
			category = "level_talk",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			},
			localization_strings = {
				"pwh_level_skittergate_vista_01",
				"pwh_level_skittergate_vista_02",
				"pwh_level_skittergate_vista_03",
				"pwh_level_skittergate_vista_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_level_skittergate_vista_01",
				"pwh_level_skittergate_vista_02",
				"pwh_level_skittergate_vista_03",
				"pwh_level_skittergate_vista_04"
			},
			sound_events_duration = {
				6.8327293395996,
				5.5093541145325,
				5.1300206184387,
				10.599249839783
			}
		},
		pwh_level_skittergate_welcome_to_norsca_01 = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_skittergate",
			sound_events_n = 4,
			category = "level_talk",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			},
			localization_strings = {
				"pwh_level_skittergate_welcome_to_norsca_01",
				"pwh_level_skittergate_welcome_to_norsca_02",
				"pwh_level_skittergate_welcome_to_norsca_03",
				"pwh_level_skittergate_welcome_to_norsca_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_level_skittergate_welcome_to_norsca_01",
				"pwh_level_skittergate_welcome_to_norsca_02",
				"pwh_level_skittergate_welcome_to_norsca_03",
				"pwh_level_skittergate_welcome_to_norsca_04"
			},
			sound_events_duration = {
				5.8242707252502,
				7.2492499351502,
				9.0063333511353,
				6.2859168052673
			}
		},
		pwh_skittergate_intro_a = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "witch_hunter_skittergate",
			sound_events_n = 2,
			category = "level_talk",
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
				[1] = "pwh_skittergate_intro_a_01",
				[2] = "pwh_skittergate_intro_a_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pwh_skittergate_intro_a_01",
				[2] = "pwh_skittergate_intro_a_02"
			},
			sound_events_duration = {
				[1] = 8.0409164428711,
				[2] = 7.8048958778381
			}
		},
		pwh_skittergate_intro_b = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "witch_hunter_skittergate",
			sound_events_n = 2,
			category = "level_talk",
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
				[1] = "pwh_skittergate_intro_b_01",
				[2] = "pwh_skittergate_intro_b_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pwh_skittergate_intro_b_01",
				[2] = "pwh_skittergate_intro_b_02"
			},
			sound_events_duration = {
				[1] = 7.6208124160767,
				[2] = 7.8307290077209
			}
		},
		pwh_skittergate_intro_c = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "witch_hunter_skittergate",
			sound_events_n = 2,
			category = "level_talk",
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
				[1] = "pwh_skittergate_intro_c_01",
				[2] = "pwh_skittergate_intro_c_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pwh_skittergate_intro_c_01",
				[2] = "pwh_skittergate_intro_c_02"
			},
			sound_events_duration = {
				[1] = 5.9724998474121,
				[2] = 6.8054165840149
			}
		}
	})
end
