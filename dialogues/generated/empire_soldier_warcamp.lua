return function ()
	define_rule({
		probability = 1,
		name = "pes_chaos_war_camp_challenge_reply_a",
		response = "pes_chaos_war_camp_challenge_reply_a",
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
				"ecc_chaos_war_camp_challenge"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"faction_memory",
				"chaos_war_camp_challenge_reply",
				OP.TIMEDIFF,
				OP.GT,
				60
			}
		},
		on_done = {
			{
				"faction_memory",
				"chaos_war_camp_challenge_reply",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pes_chaos_war_camp_intro_a",
		response = "pes_chaos_war_camp_intro_a",
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
				"chaos_war_camp_intro_a"
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
				"chaos_war_camp_intro_a",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"chaos_war_camp_intro_a",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pes_chaos_war_camp_intro_b",
		response = "pes_chaos_war_camp_intro_b",
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
				"chaos_war_camp_intro_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"faction_memory",
				"chaos_war_camp_intro_b",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"chaos_war_camp_intro_b",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pes_chaos_war_camp_intro_c",
		response = "pes_chaos_war_camp_intro_c",
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
				"chaos_war_camp_intro_b"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"faction_memory",
				"chaos_war_camp_intro_c",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"chaos_war_camp_intro_c",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pes_chaos_war_camp_taunt_payback_reply",
		response = "pes_chaos_war_camp_taunt_payback_reply",
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
				"ecc_chaos_war_camp_taunt_payback"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"faction_memory",
				"chaos_war_camp_taunt_payback_reply",
				OP.TIMEDIFF,
				OP.GT,
				60
			}
		},
		on_done = {
			{
				"faction_memory",
				"chaos_war_camp_taunt_payback_reply",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pes_gameplay_chaos_champion_charge_reply",
		response = "pes_gameplay_chaos_champion_charge_reply",
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
				"ecc_chaos_war_camp_charge"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"faction_memory",
				"chaos_champion_charge_reply",
				OP.TIMEDIFF,
				OP.GT,
				60
			}
		},
		on_done = {
			{
				"faction_memory",
				"chaos_champion_charge_reply",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pes_gameplay_chaos_champion_summon_reply",
		response = "pes_gameplay_chaos_champion_summon_reply",
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
				"ecc_chaos_war_camp_ground_summon"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"faction_memory",
				"chaos_champion_summon_reply",
				OP.TIMEDIFF,
				OP.GT,
				60
			}
		},
		on_done = {
			{
				"faction_memory",
				"chaos_champion_summon_reply",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pes_gameplay_chaos_champion_throwing_axe",
		response = "pes_gameplay_chaos_champion_throwing_axe",
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
				"ecc_chaos_war_camp_throw_axe"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"faction_memory",
				"chaos_champion_throwing_axe",
				OP.TIMEDIFF,
				OP.GT,
				60
			}
		},
		on_done = {
			{
				"faction_memory",
				"chaos_champion_throwing_axe",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pes_level_chaos_war_camp_arena_01",
		response = "pes_level_chaos_war_camp_arena_01",
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
				"chaos_war_camp_arena"
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
				"level_chaos_war_camp_arena",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_chaos_war_camp_arena",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pes_level_chaos_war_camp_battering_ram_01",
		response = "pes_level_chaos_war_camp_battering_ram_01",
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
				"chaos_war_camp_battering_ram"
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
				"level_chaos_war_camp_battering_ram",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_chaos_war_camp_battering_ram",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pes_level_chaos_war_camp_battering_ram_use_01",
		response = "pes_level_chaos_war_camp_battering_ram_use_01",
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
				"chaos_war_camp_battering_ram_use"
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
				"level_chaos_war_camp_battering_ram_use",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_chaos_war_camp_battering_ram_use",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pes_level_chaos_war_camp_cabin",
		response = "pes_level_chaos_war_camp_cabin",
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
				"chaos_war_camp_cabin"
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
				"level_chaos_war_camp_cabin",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_chaos_war_camp_cabin",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pes_level_chaos_war_camp_camp_view_01",
		response = "pes_level_chaos_war_camp_camp_view_01",
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
				"chaos_war_camp_camp_view"
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
				"level_chaos_war_camp_camp_view",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_chaos_war_camp_camp_view",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pes_level_chaos_war_camp_dead_champion",
		response = "pes_level_chaos_war_camp_dead_champion",
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
				"chaos_exalted_champion_warcamp"
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
				"user_memory",
				"chaos_war_camp_dead_champion",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"chaos_war_camp_dead_champion",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pes_level_chaos_war_camp_dead_champion_01",
		response = "pes_level_chaos_war_camp_dead_champion_01",
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
				"chaos_war_camp_dead_champion"
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
				"level_chaos_war_camp_dead_champion",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_chaos_war_camp_dead_champion",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pes_level_chaos_war_camp_depart_01",
		response = "pes_level_chaos_war_camp_depart_01",
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
				"chaos_war_camp_depart"
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
				"level_chaos_war_camp_depart",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_chaos_war_camp_depart",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pes_level_chaos_war_camp_ghost_town_state",
		response = "pes_level_chaos_war_camp_ghost_town_state",
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
				"chaos_war_camp_ghost_town_state"
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
				"level_chaos_war_camp_ghost_town_state",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_chaos_war_camp_ghost_town_state",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pes_level_chaos_war_camp_keep_fighting_01",
		response = "pes_level_chaos_war_camp_keep_fighting_01",
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
				"chaos_war_camp_keep_fighting"
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
				"level_chaos_war_camp_keep_fighting",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_chaos_war_camp_keep_fighting",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pes_level_chaos_war_camp_live_in_swamp",
		response = "pes_level_chaos_war_camp_live_in_swamp",
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
				"chaos_war_camp_live_in_swamp"
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
				"level_chaos_war_camp_live_in_swamp",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_chaos_war_camp_live_in_swamp",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pes_level_chaos_war_camp_outer_gate_01",
		response = "pes_level_chaos_war_camp_outer_gate_01",
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
				"chaos_war_camp_outer_gate"
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
				"level_chaos_war_camp_outer_gate",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_chaos_war_camp_outer_gate",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pes_level_chaos_war_camp_portal_01",
		response = "pes_level_chaos_war_camp_portal_01",
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
				"chaos_war_camp_portal"
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
				"level_chaos_war_camp_portal",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_chaos_war_camp_portal",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pes_level_chaos_war_camp_ravine",
		response = "pes_level_chaos_war_camp_ravine",
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
				"chaos_war_camp_ravine"
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
				"level_chaos_war_camp_ravine",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_chaos_war_camp_ravine",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pes_level_chaos_war_camp_success_01",
		response = "pes_level_chaos_war_camp_success_01",
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
				"chaos_war_camp_success"
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
				"level_chaos_war_camp_success",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_chaos_war_camp_success",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pes_level_chaos_war_camp_tree",
		response = "pes_level_chaos_war_camp_tree",
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
				"chaos_war_camp_tree"
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
				"level_chaos_war_camp_tree",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_chaos_war_camp_tree",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pes_level_chaos_war_camp_wall_01",
		response = "pes_level_chaos_war_camp_wall_01",
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
				"chaos_war_camp_wall"
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
				"level_chaos_war_camp_wall",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_chaos_war_camp_wall",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pes_level_chaos_war_camp_which_way",
		response = "pes_level_chaos_war_camp_which_way",
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
				"chaos_war_camp_which_way"
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
				"level_chaos_war_camp_which_way",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_chaos_war_camp_which_way",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pes_level_chaos_war_surprise_01",
		response = "pes_level_chaos_war_surprise_01",
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
				"chaos_war_surprise"
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
				"level_chaos_war_surprise",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_chaos_war_surprise",
				OP.ADD,
				1
			}
		}
	})
	add_dialogues({
		pes_chaos_war_camp_challenge_reply_a = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "empire_soldier_warcamp",
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
				"pes_chaos_war_camp_challenge_reply_a_01",
				"pes_chaos_war_camp_challenge_reply_a_02",
				"pes_chaos_war_camp_challenge_reply_b_01",
				"pes_chaos_war_camp_challenge_reply_b_02"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_chaos_war_camp_challenge_reply_a_01",
				"pes_chaos_war_camp_challenge_reply_a_02",
				"pes_chaos_war_camp_challenge_reply_b_01",
				"pes_chaos_war_camp_challenge_reply_b_02"
			},
			sound_events_duration = {
				4.7620625495911,
				5.1405210494995,
				6.0506458282471,
				5.2707290649414
			}
		},
		pes_chaos_war_camp_intro_a = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "empire_soldier_warcamp",
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
				[1] = "pes_chaos_war_camp_intro_a_01",
				[2] = "pes_chaos_war_camp_intro_a_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pes_chaos_war_camp_intro_a_01",
				[2] = "pes_chaos_war_camp_intro_a_02"
			},
			sound_events_duration = {
				[1] = 7.4369792938232,
				[2] = 3.9530208110809
			}
		},
		pes_chaos_war_camp_intro_b = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "empire_soldier_warcamp",
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
				[1] = "pes_chaos_war_camp_intro_b_01",
				[2] = "pes_chaos_war_camp_intro_b_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pes_chaos_war_camp_intro_b_01",
				[2] = "pes_chaos_war_camp_intro_b_02"
			},
			sound_events_duration = {
				[1] = 4.3818125724792,
				[2] = 6.5439581871033
			}
		},
		pes_chaos_war_camp_intro_c = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "empire_soldier_warcamp",
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
				[1] = "pes_chaos_war_camp_intro_c_01",
				[2] = "pes_chaos_war_camp_intro_c_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pes_chaos_war_camp_intro_c_01",
				[2] = "pes_chaos_war_camp_intro_c_02"
			},
			sound_events_duration = {
				[1] = 4.9952292442322,
				[2] = 2.9559373855591
			}
		},
		pes_chaos_war_camp_taunt_payback_reply = {
			randomize_indexes_n = 0,
			face_animations_n = 3,
			database = "empire_soldier_warcamp",
			sound_events_n = 3,
			category = "player_alerts_boss",
			dialogue_animations_n = 3,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pes_chaos_war_camp_taunt_payback_reply_01",
				"pes_chaos_war_camp_taunt_payback_reply_02",
				"pes_chaos_war_camp_taunt_payback_reply_03"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_chaos_war_camp_taunt_payback_reply_01",
				"pes_chaos_war_camp_taunt_payback_reply_02",
				"pes_chaos_war_camp_taunt_payback_reply_03"
			},
			sound_events_duration = {
				8.2822704315185,
				9.2489995956421,
				4.2936458587647
			}
		},
		pes_gameplay_chaos_champion_charge_reply = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "empire_soldier_warcamp",
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
				"pes_gameplay_chaos_champion_charge_reply_01",
				"pes_gameplay_chaos_champion_charge_reply_02",
				"pes_gameplay_chaos_champion_charge_reply_03",
				"pes_gameplay_chaos_champion_charge_reply_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_gameplay_chaos_champion_charge_reply_01",
				"pes_gameplay_chaos_champion_charge_reply_02",
				"pes_gameplay_chaos_champion_charge_reply_03",
				"pes_gameplay_chaos_champion_charge_reply_04"
			},
			sound_events_duration = {
				4.645604133606,
				2.9331457614899,
				1.3652499914169,
				2.7641665935516
			}
		},
		pes_gameplay_chaos_champion_summon_reply = {
			randomize_indexes_n = 0,
			face_animations_n = 3,
			database = "empire_soldier_warcamp",
			sound_events_n = 3,
			category = "player_alerts_boss",
			dialogue_animations_n = 3,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pes_gameplay_chaos_champion_summon_reply_01",
				"pes_gameplay_chaos_champion_summon_reply_02",
				"pes_gameplay_chaos_champion_summon_reply_03"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_gameplay_chaos_champion_summon_reply_01",
				"pes_gameplay_chaos_champion_summon_reply_02",
				"pes_gameplay_chaos_champion_summon_reply_03"
			},
			sound_events_duration = {
				7.887291431427,
				6.1707916259766,
				4.5735520124435
			}
		},
		pes_gameplay_chaos_champion_throwing_axe = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "empire_soldier_warcamp",
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
				"pes_gameplay_chaos_champion_throwing_axe_01",
				"pes_gameplay_chaos_champion_throwing_axe_02",
				"pes_gameplay_chaos_champion_throwing_axe_03",
				"pes_gameplay_chaos_champion_throwing_axe_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_gameplay_chaos_champion_throwing_axe_01",
				"pes_gameplay_chaos_champion_throwing_axe_02",
				"pes_gameplay_chaos_champion_throwing_axe_03",
				"pes_gameplay_chaos_champion_throwing_axe_04"
			},
			sound_events_duration = {
				2.3519166707993,
				3.0363750457764,
				1.6657708287239,
				2.5020104646683
			}
		},
		pes_level_chaos_war_camp_arena_01 = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "empire_soldier_warcamp",
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
				"pes_level_chaos_war_camp_arena_01",
				"pes_level_chaos_war_camp_arena_02",
				"pes_level_chaos_war_camp_arena_03",
				"pes_level_chaos_war_camp_arena_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_level_chaos_war_camp_arena_01",
				"pes_level_chaos_war_camp_arena_02",
				"pes_level_chaos_war_camp_arena_03",
				"pes_level_chaos_war_camp_arena_04"
			},
			sound_events_duration = {
				1.5291458368301,
				3.7386040687561,
				3.7700834274292,
				4.5854270458221
			}
		},
		pes_level_chaos_war_camp_battering_ram_01 = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "empire_soldier_warcamp",
			sound_events_n = 4,
			category = "level_talk_must_play",
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
				"pes_level_chaos_war_camp_battering_ram_01",
				"pes_level_chaos_war_camp_battering_ram_02",
				"pes_level_chaos_war_camp_battering_ram_03",
				"pes_level_chaos_war_camp_battering_ram_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_level_chaos_war_camp_battering_ram_01",
				"pes_level_chaos_war_camp_battering_ram_02",
				"pes_level_chaos_war_camp_battering_ram_03",
				"pes_level_chaos_war_camp_battering_ram_04"
			},
			sound_events_duration = {
				2.5058124065399,
				6.2243747711182,
				2.1722917556763,
				5.2139372825623
			}
		},
		pes_level_chaos_war_camp_battering_ram_use_01 = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "empire_soldier_warcamp",
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
				"pes_level_chaos_war_camp_battering_ram_use_01",
				"pes_level_chaos_war_camp_battering_ram_use_02",
				"pes_level_chaos_war_camp_battering_ram_use_03",
				"pes_level_chaos_war_camp_battering_ram_use_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_level_chaos_war_camp_battering_ram_use_01",
				"pes_level_chaos_war_camp_battering_ram_use_02",
				"pes_level_chaos_war_camp_battering_ram_use_03",
				"pes_level_chaos_war_camp_battering_ram_use_04"
			},
			sound_events_duration = {
				2.5755207538605,
				2.1252708435059,
				2.5899167060852,
				3.6366250514984
			}
		},
		pes_level_chaos_war_camp_cabin = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "empire_soldier_warcamp",
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
				"pes_level_chaos_war_camp_cabin_01",
				"pes_level_chaos_war_camp_cabin_02",
				"pes_level_chaos_war_camp_cabin_03",
				"pes_level_chaos_war_camp_cabin_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_level_chaos_war_camp_cabin_01",
				"pes_level_chaos_war_camp_cabin_02",
				"pes_level_chaos_war_camp_cabin_03",
				"pes_level_chaos_war_camp_cabin_04"
			},
			sound_events_duration = {
				2.5126874446869,
				2.8907291889191,
				3.9111042022705,
				5.0314373970032
			}
		},
		pes_level_chaos_war_camp_camp_view_01 = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "empire_soldier_warcamp",
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
				"pes_level_chaos_war_camp_camp_view_01",
				"pes_level_chaos_war_camp_camp_view_02",
				"pes_level_chaos_war_camp_camp_view_03",
				"pes_level_chaos_war_camp_camp_view_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_level_chaos_war_camp_camp_view_01",
				"pes_level_chaos_war_camp_camp_view_02",
				"pes_level_chaos_war_camp_camp_view_03",
				"pes_level_chaos_war_camp_camp_view_04"
			},
			sound_events_duration = {
				3.0415208339691,
				3.0590832233429,
				2.4237916469574,
				2.4944999217987
			}
		},
		pes_level_chaos_war_camp_dead_champion = {
			randomize_indexes_n = 0,
			face_animations_n = 3,
			database = "empire_soldier_warcamp",
			sound_events_n = 3,
			category = "player_alerts_boss",
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
				"pes_level_chaos_war_camp_dead_champion_01",
				"pes_level_chaos_war_camp_dead_champion_02",
				"pes_level_chaos_war_camp_dead_champion_03"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_level_chaos_war_camp_dead_champion_01",
				"pes_level_chaos_war_camp_dead_champion_02",
				"pes_level_chaos_war_camp_dead_champion_03"
			},
			sound_events_duration = {
				3.0182082653046,
				3.9800728559494,
				3.6438958644867
			}
		},
		pes_level_chaos_war_camp_dead_champion_01 = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "empire_soldier_warcamp",
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
				"pes_level_chaos_war_camp_dead_champion_01",
				"pes_level_chaos_war_camp_dead_champion_02",
				"pes_level_chaos_war_camp_dead_champion_03",
				"pes_level_chaos_war_camp_dead_champion_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_level_chaos_war_camp_dead_champion_01",
				"pes_level_chaos_war_camp_dead_champion_02",
				"pes_level_chaos_war_camp_dead_champion_03",
				"pes_level_chaos_war_camp_dead_champion_04"
			},
			sound_events_duration = {
				3.0182082653046,
				3.9800728559494,
				3.6438958644867,
				3.2448959350586
			}
		},
		pes_level_chaos_war_camp_depart_01 = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "empire_soldier_warcamp",
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
				"pes_level_chaos_war_camp_depart_01",
				"pes_level_chaos_war_camp_depart_02",
				"pes_level_chaos_war_camp_depart_03",
				"pes_level_chaos_war_camp_depart_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_level_chaos_war_camp_depart_01",
				"pes_level_chaos_war_camp_depart_02",
				"pes_level_chaos_war_camp_depart_03",
				"pes_level_chaos_war_camp_depart_04"
			},
			sound_events_duration = {
				2.9117290973663,
				2.225729227066,
				2.4781665802002,
				1.9896041154861
			}
		},
		pes_level_chaos_war_camp_ghost_town_state = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "empire_soldier_warcamp",
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
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pes_level_chaos_war_camp_ghost_town_state_01",
				"pes_level_chaos_war_camp_ghost_town_state_02",
				"pes_level_chaos_war_camp_ghost_town_state_03",
				"pes_level_chaos_war_camp_ghost_town_state_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_level_chaos_war_camp_ghost_town_state_01",
				"pes_level_chaos_war_camp_ghost_town_state_02",
				"pes_level_chaos_war_camp_ghost_town_state_03",
				"pes_level_chaos_war_camp_ghost_town_state_04"
			},
			sound_events_duration = {
				4.046854019165,
				4.1760206222534,
				5.3169374465942,
				2.8155000209808
			}
		},
		pes_level_chaos_war_camp_keep_fighting_01 = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "empire_soldier_warcamp",
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
				"pes_level_chaos_war_camp_keep_fighting_01",
				"pes_level_chaos_war_camp_keep_fighting_02",
				"pes_level_chaos_war_camp_keep_fighting_03",
				"pes_level_chaos_war_camp_keep_fighting_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_level_chaos_war_camp_keep_fighting_01",
				"pes_level_chaos_war_camp_keep_fighting_02",
				"pes_level_chaos_war_camp_keep_fighting_03",
				"pes_level_chaos_war_camp_keep_fighting_04"
			},
			sound_events_duration = {
				2.3698749542236,
				3.2853333950043,
				2.9525415897369,
				3.8468332290649
			}
		},
		pes_level_chaos_war_camp_live_in_swamp = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "empire_soldier_warcamp",
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
				"pes_level_chaos_war_camp_live_in_swamp_01",
				"pes_level_chaos_war_camp_live_in_swamp_02",
				"pes_level_chaos_war_camp_live_in_swamp_03",
				"pes_level_chaos_war_camp_live_in_swamp_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_level_chaos_war_camp_live_in_swamp_01",
				"pes_level_chaos_war_camp_live_in_swamp_02",
				"pes_level_chaos_war_camp_live_in_swamp_03",
				"pes_level_chaos_war_camp_live_in_swamp_04"
			},
			sound_events_duration = {
				3.4500000476837,
				3.5829999446869,
				4.1143751144409,
				4.1594791412353
			}
		},
		pes_level_chaos_war_camp_outer_gate_01 = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "empire_soldier_warcamp",
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
				"pes_level_chaos_war_camp_outer_gate_01",
				"pes_level_chaos_war_camp_outer_gate_02",
				"pes_level_chaos_war_camp_outer_gate_03",
				"pes_level_chaos_war_camp_outer_gate_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_level_chaos_war_camp_outer_gate_01",
				"pes_level_chaos_war_camp_outer_gate_02",
				"pes_level_chaos_war_camp_outer_gate_03",
				"pes_level_chaos_war_camp_outer_gate_04"
			},
			sound_events_duration = {
				2.8147709369659,
				3.4476249217987,
				3.4727292060852,
				2.74964594841
			}
		},
		pes_level_chaos_war_camp_portal_01 = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "empire_soldier_warcamp",
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
				"pes_level_chaos_war_camp_portal_01",
				"pes_level_chaos_war_camp_portal_02",
				"pes_level_chaos_war_camp_portal_03",
				"pes_level_chaos_war_camp_portal_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_level_chaos_war_camp_portal_01",
				"pes_level_chaos_war_camp_portal_02",
				"pes_level_chaos_war_camp_portal_03",
				"pes_level_chaos_war_camp_portal_04"
			},
			sound_events_duration = {
				4.3333749771118,
				6.2200417518616,
				5.0642085075378,
				4.4683122634888
			}
		},
		pes_level_chaos_war_camp_ravine = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "empire_soldier_warcamp",
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
				"pes_level_chaos_war_camp_ravine_01",
				"pes_level_chaos_war_camp_ravine_02",
				"pes_level_chaos_war_camp_ravine_03",
				"pes_level_chaos_war_camp_ravine_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_level_chaos_war_camp_ravine_01",
				"pes_level_chaos_war_camp_ravine_02",
				"pes_level_chaos_war_camp_ravine_03",
				"pes_level_chaos_war_camp_ravine_04"
			},
			sound_events_duration = {
				1.878250002861,
				3.6319167613983,
				3.262312412262,
				2.6427292823791
			}
		},
		pes_level_chaos_war_camp_success_01 = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "empire_soldier_warcamp",
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
				"pes_level_chaos_war_camp_success_01",
				"pes_level_chaos_war_camp_success_02",
				"pes_level_chaos_war_camp_success_03",
				"pes_level_chaos_war_camp_success_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_level_chaos_war_camp_success_01",
				"pes_level_chaos_war_camp_success_02",
				"pes_level_chaos_war_camp_success_03",
				"pes_level_chaos_war_camp_success_04"
			},
			sound_events_duration = {
				5.1396250724792,
				3.8848750591278,
				5.7577500343323,
				4.1500000953674
			}
		},
		pes_level_chaos_war_camp_tree = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "empire_soldier_warcamp",
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
				"pes_level_chaos_war_camp_tree_01",
				"pes_level_chaos_war_camp_tree_02",
				"pes_level_chaos_war_camp_tree_03",
				"pes_level_chaos_war_camp_tree_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_level_chaos_war_camp_tree_01",
				"pes_level_chaos_war_camp_tree_02",
				"pes_level_chaos_war_camp_tree_03",
				"pes_level_chaos_war_camp_tree_04"
			},
			sound_events_duration = {
				2.3893749713898,
				4.0578751564026,
				3.6115000247955,
				4.3421039581299
			}
		},
		pes_level_chaos_war_camp_wall_01 = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "empire_soldier_warcamp",
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
				"pes_level_chaos_war_camp_wall_01",
				"pes_level_chaos_war_camp_wall_02",
				"pes_level_chaos_war_camp_wall_03",
				"pes_level_chaos_war_camp_wall_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_level_chaos_war_camp_wall_01",
				"pes_level_chaos_war_camp_wall_02",
				"pes_level_chaos_war_camp_wall_03",
				"pes_level_chaos_war_camp_wall_04"
			},
			sound_events_duration = {
				5.4742498397827,
				1.9001041650772,
				1.4127708673477,
				2.3247292041779
			}
		},
		pes_level_chaos_war_camp_which_way = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "empire_soldier_warcamp",
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
				"pes_level_chaos_war_camp_which_way_01",
				"pes_level_chaos_war_camp_which_way_02",
				"pes_level_chaos_war_camp_which_way_03",
				"pes_level_chaos_war_camp_which_way_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_level_chaos_war_camp_which_way_01",
				"pes_level_chaos_war_camp_which_way_02",
				"pes_level_chaos_war_camp_which_way_03",
				"pes_level_chaos_war_camp_which_way_04"
			},
			sound_events_duration = {
				2.4876458644867,
				2.9290208816528,
				4.7337498664856,
				4.983916759491
			}
		},
		pes_level_chaos_war_surprise_01 = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "empire_soldier_warcamp",
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
				"pes_level_chaos_war_surprise_01",
				"pes_level_chaos_war_surprise_02",
				"pes_level_chaos_war_surprise_03",
				"pes_level_chaos_war_surprise_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_level_chaos_war_surprise_01",
				"pes_level_chaos_war_surprise_02",
				"pes_level_chaos_war_surprise_03",
				"pes_level_chaos_war_surprise_04"
			},
			sound_events_duration = {
				4.1165937185288,
				4.8791041374206,
				2.8005623817444,
				5.1999998092651
			}
		}
	})
end
