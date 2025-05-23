return function ()
	define_rule({
		probability = 1,
		name = "pwh_dwarf_beacons_bridge_stuck_b",
		response = "pwh_dwarf_beacons_bridge_stuck_b",
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
				"dwarf_beacons_bridge_stuck_a"
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
				OP.LT,
				3
			},
			{
				"faction_memory",
				"dwarf_beacons_bridge_stuck_b",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"dwarf_beacons_bridge_stuck_b",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwh_dwarf_external_begin_end_event_b",
		response = "pwh_dwarf_external_begin_end_event_b",
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
				"dwarf_external_begin_end_event_a"
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
				"dwarf_external_begin_end_event_b",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"dwarf_external_begin_end_event_b",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwh_dwarf_external_cliff",
		response = "pwh_dwarf_external_cliff",
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
				"dwarf_external_cliff"
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
				OP.LT,
				3
			},
			{
				"faction_memory",
				"dwarf_external_cliff",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"dwarf_external_cliff",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwh_dwarf_external_elevator_briefing_a",
		response = "pwh_dwarf_external_elevator_briefing_a",
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
				"dwarf_external_elevator_briefing_a"
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
				"dwarf_external_elevator_briefing_a",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"dwarf_external_elevator_briefing_a",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwh_dwarf_external_elevator_briefing_c",
		response = "pwh_dwarf_external_elevator_briefing_c",
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
				"dwarf_external_elevator_briefing_b"
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
				"dwarf_external_elevator_briefing_c",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"dwarf_external_elevator_briefing_c",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwh_dwarf_external_end_event_complete_01_b",
		response = "pwh_dwarf_external_end_event_complete_01_b",
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
				"dwarf_external_end_event_complete_01_a"
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
				"dwarf_external_end_event_complete_b",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"dwarf_external_end_event_complete_b",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwh_dwarf_external_end_event_complete_02_b",
		response = "pwh_dwarf_external_end_event_complete_02_b",
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
				"dwarf_external_end_event_complete_02_a"
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
				"dwarf_external_end_event_complete_b",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"dwarf_external_end_event_complete_b",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwh_dwarf_external_end_event_complete_03_b",
		response = "pwh_dwarf_external_end_event_complete_03_b",
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
				"dwarf_external_end_event_complete_03_a"
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
				"dwarf_external_end_event_complete_b",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"dwarf_external_end_event_complete_b",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwh_dwarf_external_end_event_fuse_lit",
		response = "pwh_dwarf_external_end_event_fuse_lit",
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
				"dwarf_external_end_event_fuse_lit"
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
				"dwarf_external_end_event_fuse_lit",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"dwarf_external_end_event_fuse_lit",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwh_dwarf_external_event_reminder_b",
		response = "pwh_dwarf_external_event_reminder_b",
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
				"nde_dwarf_external_event_reminder_a"
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
				"dwarf_external_event_reminder_b",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"dwarf_external_event_reminder_b",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwh_dwarf_external_ghost_town_a",
		response = "pwh_dwarf_external_ghost_town_a",
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
				"dwarf_external_ghost_town_a"
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
				OP.LT,
				2
			},
			{
				"user_context",
				"intensity",
				OP.LT,
				2
			},
			{
				"faction_memory",
				"dwarf_external_ghost_town_a",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"dwarf_external_ghost_town_a",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwh_dwarf_external_mid_event_done",
		response = "pwh_dwarf_external_mid_event_done",
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
				"dwarf_external_mid_event_done"
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
				"dwarf_external_mid_event_done",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"dwarf_external_mid_event_done",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwh_dwarf_external_mid_event_seen",
		response = "pwh_dwarf_external_mid_event_seen",
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
				"dwarf_external_mid_event_seen"
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
				"dwarf_external_mid_event_seen",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"dwarf_external_mid_event_seen",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwh_dwarf_external_migdahl_a",
		response = "pwh_dwarf_external_migdahl_a",
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
				"dwarf_external_migdahl_a"
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
				OP.LT,
				5
			},
			{
				"faction_memory",
				"dwarf_external_migdahl_a",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"dwarf_external_migdahl_a",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwh_dwarf_external_natural_beauty",
		response = "pwh_dwarf_external_natural_beauty",
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
				"dwarf_external_natural_beauty"
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
				OP.LT,
				3
			},
			{
				"faction_memory",
				"dwarf_external_natural_beauty",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"dwarf_external_natural_beauty",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwh_dwarf_external_nearly_there_b",
		response = "pwh_dwarf_external_nearly_there_b",
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
				"dwarf_external_nearly_there_a"
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
				OP.LT,
				3
			},
			{
				"faction_memory",
				"dwarf_external_nearly_there_b",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"dwarf_external_nearly_there_b",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwh_dwarf_external_occupied_mine",
		response = "pwh_dwarf_external_occupied_mine",
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
				"dwarf_external_occupied_mine"
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
				OP.LT,
				3
			},
			{
				"faction_memory",
				"dwarf_external_occupied_mine",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"dwarf_external_occupied_mine",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwh_dwarf_external_safety_a",
		response = "pwh_dwarf_external_safety_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"story_trigger"
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
				OP.LT,
				3
			},
			{
				"user_context",
				"intensity",
				OP.LT,
				20
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMEDIFF,
				OP.GT,
				30
			},
			{
				"faction_memory",
				"dwarf_external_end_event_complete_b",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"dwarf_external_safety_a",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"dwarf_external_safety_a",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwh_dwarf_external_safety_c",
		response = "pwh_dwarf_external_safety_c",
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
				"dwarf_external_safety_b"
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
				OP.LT,
				3
			},
			{
				"faction_memory",
				"dwarf_external_safety_c",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"dwarf_external_safety_c",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwh_dwarf_external_skaven_works",
		response = "pwh_dwarf_external_skaven_works",
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
				"dwarf_external_skaven_works"
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
				OP.LT,
				3
			},
			{
				"faction_memory",
				"dwarf_external_skaven_works",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"dwarf_external_skaven_works",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwh_dwarf_external_start_banter_a",
		response = "pwh_dwarf_external_start_banter_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"dwarf_external_start_banter_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"dwarf_external_start_banter_a",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"dwarf_external_start_banter_a",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		response = "pwh_dwarf_external_start_banter_b",
		name = "pwh_dwarf_external_start_banter_b",
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
				"dwarf_external_start_banter_a"
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
		response = "pwh_dwarf_external_start_banter_c",
		name = "pwh_dwarf_external_start_banter_c",
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
				"dwarf_external_start_banter_b"
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
		name = "pwh_dwarf_external_which_way_a",
		response = "pwh_dwarf_external_which_way_a",
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
				"dwarf_external_which_way_a"
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
				"dwarf_external_which_way_a",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"dwarf_external_which_way_a",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwh_dwarf_external_which_way_c",
		response = "pwh_dwarf_external_which_way_c",
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
				"nde_dwarf_external_which_way_b"
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
				OP.LT,
				3
			},
			{
				"faction_memory",
				"dwarf_external_which_way_c",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"dwarf_external_which_way_c",
				OP.ADD,
				1
			}
		}
	})
	add_dialogues({
		pwh_dwarf_beacons_bridge_stuck_b = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_dwarf_exterior",
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
				"pwh_dwarf_beacons_bridge_stuck_b_01",
				"pwh_dwarf_beacons_bridge_stuck_b_02",
				"pwh_dwarf_beacons_bridge_stuck_b_03",
				"pwh_dwarf_beacons_bridge_stuck_b_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_dwarf_beacons_bridge_stuck_b_01",
				"pwh_dwarf_beacons_bridge_stuck_b_02",
				"pwh_dwarf_beacons_bridge_stuck_b_03",
				"pwh_dwarf_beacons_bridge_stuck_b_04"
			},
			sound_events_duration = {
				2.7089791297913,
				2.5639791488648,
				2.0899791717529,
				3.2750000953674
			}
		},
		pwh_dwarf_external_begin_end_event_b = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_dwarf_exterior",
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
				"pwh_dwarf_external_begin_end_event_b_01",
				"pwh_dwarf_external_begin_end_event_b_02",
				"pwh_dwarf_external_begin_end_event_b_03",
				"pwh_dwarf_external_begin_end_event_b_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_dwarf_external_begin_end_event_b_01",
				"pwh_dwarf_external_begin_end_event_b_02",
				"pwh_dwarf_external_begin_end_event_b_03",
				"pwh_dwarf_external_begin_end_event_b_04"
			},
			sound_events_duration = {
				2.6799790859222,
				1.8739792108536,
				3.9369790554047,
				4.5149793624878
			}
		},
		pwh_dwarf_external_cliff = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_dwarf_exterior",
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
				"pwh_dwarf_external_cliff_01",
				"pwh_dwarf_external_cliff_02",
				"pwh_dwarf_external_cliff_03",
				"pwh_dwarf_external_cliff_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_dwarf_external_cliff_01",
				"pwh_dwarf_external_cliff_02",
				"pwh_dwarf_external_cliff_03",
				"pwh_dwarf_external_cliff_04"
			},
			sound_events_duration = {
				7.0959792137146,
				5.4679789543152,
				4.2359790802002,
				5.7429790496826
			}
		},
		pwh_dwarf_external_elevator_briefing_a = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_dwarf_exterior",
			sound_events_n = 4,
			category = "level_talk_must_play",
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
				"pwh_dwarf_external_elevator_briefing_a_01",
				"pwh_dwarf_external_elevator_briefing_a_02",
				"pwh_dwarf_external_elevator_briefing_a_03",
				"pwh_dwarf_external_elevator_briefing_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_dwarf_external_elevator_briefing_a_01",
				"pwh_dwarf_external_elevator_briefing_a_02",
				"pwh_dwarf_external_elevator_briefing_a_03",
				"pwh_dwarf_external_elevator_briefing_a_04"
			},
			sound_events_duration = {
				5.0519790649414,
				5.1139793395996,
				7.3989791870117,
				5.9169793128967
			}
		},
		pwh_dwarf_external_elevator_briefing_c = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_dwarf_exterior",
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
				"pwh_dwarf_external_elevator_briefing_c_01",
				"pwh_dwarf_external_elevator_briefing_c_02",
				"pwh_dwarf_external_elevator_briefing_c_03",
				"pwh_dwarf_external_elevator_briefing_c_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_dwarf_external_elevator_briefing_c_01",
				"pwh_dwarf_external_elevator_briefing_c_02",
				"pwh_dwarf_external_elevator_briefing_c_03",
				"pwh_dwarf_external_elevator_briefing_c_04"
			},
			sound_events_duration = {
				2.738979101181,
				4.1609792709351,
				4.062979221344,
				5.8339791297913
			}
		},
		pwh_dwarf_external_end_event_complete_01_b = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "witch_hunter_dlc_dwarf_exterior",
			sound_events_n = 2,
			category = "level_talk_must_play",
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
				[1] = "pwh_dwarf_external_end_event_complete_01_b_01",
				[2] = "pwh_dwarf_external_end_event_complete_01_b_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pwh_dwarf_external_end_event_complete_01_b_01",
				[2] = "pwh_dwarf_external_end_event_complete_01_b_02"
			},
			sound_events_duration = {
				[1] = 5.1179790496826,
				[2] = 6.8299789428711
			}
		},
		pwh_dwarf_external_end_event_complete_02_b = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "witch_hunter_dlc_dwarf_exterior",
			sound_events_n = 2,
			category = "level_talk_must_play",
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
				[1] = "pwh_dwarf_external_end_event_complete_02_b_01",
				[2] = "pwh_dwarf_external_end_event_complete_02_b_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pwh_dwarf_external_end_event_complete_02_b_01",
				[2] = "pwh_dwarf_external_end_event_complete_02_b_02"
			},
			sound_events_duration = {
				[1] = 4.0439791679382,
				[2] = 4.4039793014526
			}
		},
		pwh_dwarf_external_end_event_complete_03_b = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "witch_hunter_dlc_dwarf_exterior",
			sound_events_n = 2,
			category = "level_talk_must_play",
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
				[1] = "pwh_dwarf_external_end_event_complete_03_b_01",
				[2] = "pwh_dwarf_external_end_event_complete_03_b_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pwh_dwarf_external_end_event_complete_03_b_01",
				[2] = "pwh_dwarf_external_end_event_complete_03_b_02"
			},
			sound_events_duration = {
				[1] = 5.4969792366028,
				[2] = 6.2489790916443
			}
		},
		pwh_dwarf_external_end_event_fuse_lit = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_dwarf_exterior",
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
				"pwh_objective_skaven_tunnels_lighting_the_fuse_01",
				"pwh_objective_skaven_tunnels_lighting_the_fuse_02",
				"pwh_objective_skaven_tunnels_lighting_the_fuse_03",
				"pwh_objective_skaven_tunnels_lighting_the_fuse_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_objective_skaven_tunnels_lighting_the_fuse_01",
				"pwh_objective_skaven_tunnels_lighting_the_fuse_02",
				"pwh_objective_skaven_tunnels_lighting_the_fuse_03",
				"pwh_objective_skaven_tunnels_lighting_the_fuse_04"
			},
			sound_events_duration = {
				2.0755832195282,
				2.5,
				2.3385207653046,
				2.0090625286102
			}
		},
		pwh_dwarf_external_event_reminder_b = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_dwarf_exterior",
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
				"pwh_dwarf_external_event_reminder_b_01",
				"pwh_dwarf_external_event_reminder_b_02",
				"pwh_dwarf_external_event_reminder_b_03",
				"pwh_dwarf_external_event_reminder_b_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_dwarf_external_event_reminder_b_01",
				"pwh_dwarf_external_event_reminder_b_02",
				"pwh_dwarf_external_event_reminder_b_03",
				"pwh_dwarf_external_event_reminder_b_04"
			},
			sound_events_duration = {
				1.9819999933243,
				2.5810000896454,
				4.419979095459,
				4.8609790802002
			}
		},
		pwh_dwarf_external_ghost_town_a = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_dwarf_exterior",
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
				"pwh_dwarf_external_ghost_town_a_01",
				"pwh_dwarf_external_ghost_town_a_02",
				"pwh_dwarf_external_ghost_town_a_03",
				"pwh_dwarf_external_ghost_town_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_dwarf_external_ghost_town_a_01",
				"pwh_dwarf_external_ghost_town_a_02",
				"pwh_dwarf_external_ghost_town_a_03",
				"pwh_dwarf_external_ghost_town_a_04"
			},
			sound_events_duration = {
				5.5469789505005,
				3.562979221344,
				4.2749791145325,
				7.4039793014526
			}
		},
		pwh_dwarf_external_mid_event_done = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_dwarf_exterior",
			sound_events_n = 4,
			category = "level_talk_must_play",
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
		pwh_dwarf_external_mid_event_seen = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_dwarf_exterior",
			sound_events_n = 4,
			category = "level_talk_must_play",
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
				"pwh_level_helmgart_military_portcullis_01",
				"pwh_level_helmgart_military_portcullis_02",
				"pwh_level_helmgart_military_portcullis_03",
				"pwh_level_helmgart_military_portcullis_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_level_helmgart_military_portcullis_01",
				"pwh_level_helmgart_military_portcullis_02",
				"pwh_level_helmgart_military_portcullis_03",
				"pwh_level_helmgart_military_portcullis_04"
			},
			sound_events_duration = {
				2.2328124046326,
				3.3217709064484,
				3.6565833091736,
				3.2966248989105
			}
		},
		pwh_dwarf_external_migdahl_a = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_dwarf_exterior",
			sound_events_n = 4,
			category = "level_talk_must_play",
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
				"pwh_dwarf_external_migdahl_a_01",
				"pwh_dwarf_external_migdahl_a_02",
				"pwh_dwarf_external_migdahl_a_03",
				"pwh_dwarf_external_migdahl_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_dwarf_external_migdahl_a_01",
				"pwh_dwarf_external_migdahl_a_02",
				"pwh_dwarf_external_migdahl_a_03",
				"pwh_dwarf_external_migdahl_a_04"
			},
			sound_events_duration = {
				4.5079793930054,
				6.5869793891907,
				7.9669790267944,
				7.4249792098999
			}
		},
		pwh_dwarf_external_natural_beauty = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_dwarf_exterior",
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
				"pwh_dwarf_external_natural_beauty_01",
				"pwh_dwarf_external_natural_beauty_02",
				"pwh_dwarf_external_natural_beauty_03",
				"pwh_dwarf_external_natural_beauty_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_dwarf_external_natural_beauty_01",
				"pwh_dwarf_external_natural_beauty_02",
				"pwh_dwarf_external_natural_beauty_03",
				"pwh_dwarf_external_natural_beauty_04"
			},
			sound_events_duration = {
				6.2859792709351,
				6.3559789657593,
				5.3899793624878,
				6.1059789657593
			}
		},
		pwh_dwarf_external_nearly_there_b = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_dwarf_exterior",
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
				"pwh_dwarf_external_nearly_there_b_01",
				"pwh_dwarf_external_nearly_there_b_02",
				"pwh_dwarf_external_nearly_there_b_03",
				"pwh_dwarf_external_nearly_there_b_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_dwarf_external_nearly_there_b_01",
				"pwh_dwarf_external_nearly_there_b_02",
				"pwh_dwarf_external_nearly_there_b_03",
				"pwh_dwarf_external_nearly_there_b_04"
			},
			sound_events_duration = {
				4.2379789352417,
				3.618979215622,
				4.5509791374206,
				3.7019791603088
			}
		},
		pwh_dwarf_external_occupied_mine = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_dwarf_exterior",
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
				"pwh_dwarf_external_occupied_mine_01",
				"pwh_dwarf_external_occupied_mine_02",
				"pwh_dwarf_external_occupied_mine_03",
				"pwh_dwarf_external_occupied_mine_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_dwarf_external_occupied_mine_01",
				"pwh_dwarf_external_occupied_mine_02",
				"pwh_dwarf_external_occupied_mine_03",
				"pwh_dwarf_external_occupied_mine_04"
			},
			sound_events_duration = {
				5.7259793281555,
				5.0159792900085,
				7.5599789619446,
				6.2159790992737
			}
		},
		pwh_dwarf_external_safety_a = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_dwarf_exterior",
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
				"pwh_dwarf_external_safety_a_01",
				"pwh_dwarf_external_safety_a_02",
				"pwh_dwarf_external_safety_a_03",
				"pwh_dwarf_external_safety_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_dwarf_external_safety_a_01",
				"pwh_dwarf_external_safety_a_02",
				"pwh_dwarf_external_safety_a_03",
				"pwh_dwarf_external_safety_a_04"
			},
			sound_events_duration = {
				4.0770001411438,
				5.4519791603088,
				7.1929793357849,
				7.1309790611267
			}
		},
		pwh_dwarf_external_safety_c = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_dwarf_exterior",
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
				"pwh_dwarf_external_safety_c_01",
				"pwh_dwarf_external_safety_c_02",
				"pwh_dwarf_external_safety_c_03",
				"pwh_dwarf_external_safety_c_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_dwarf_external_safety_c_01",
				"pwh_dwarf_external_safety_c_02",
				"pwh_dwarf_external_safety_c_03",
				"pwh_dwarf_external_safety_c_04"
			},
			sound_events_duration = {
				3.062979221344,
				4.477979183197,
				3.3110001087189,
				8.0789794921875
			}
		},
		pwh_dwarf_external_skaven_works = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_dwarf_exterior",
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
				"pwh_dwarf_external_skaven_works_01",
				"pwh_dwarf_external_skaven_works_02",
				"pwh_dwarf_external_skaven_works_03",
				"pwh_dwarf_external_skaven_works_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_dwarf_external_skaven_works_01",
				"pwh_dwarf_external_skaven_works_02",
				"pwh_dwarf_external_skaven_works_03",
				"pwh_dwarf_external_skaven_works_04"
			},
			sound_events_duration = {
				5.1609792709351,
				4.5059790611267,
				6.3659791946411,
				4.8659791946411
			}
		},
		pwh_dwarf_external_start_banter_a = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "witch_hunter_dlc_dwarf_exterior",
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
				[1] = "pwh_dwarf_external_start_banter_a_01",
				[2] = "pwh_dwarf_external_start_banter_a_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pwh_dwarf_external_start_banter_a_01",
				[2] = "pwh_dwarf_external_start_banter_a_02"
			},
			sound_events_duration = {
				[1] = 5.754979133606,
				[2] = 6.0169792175293
			}
		},
		pwh_dwarf_external_start_banter_b = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "witch_hunter_dlc_dwarf_exterior",
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
				[1] = "pwh_dwarf_external_start_banter_b_01",
				[2] = "pwh_dwarf_external_start_banter_b_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pwh_dwarf_external_start_banter_b_01",
				[2] = "pwh_dwarf_external_start_banter_b_02"
			},
			sound_events_duration = {
				[1] = 6.0689792633057,
				[2] = 6.0139789581299
			}
		},
		pwh_dwarf_external_start_banter_c = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "witch_hunter_dlc_dwarf_exterior",
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
				[1] = "pwh_dwarf_external_start_banter_c_01",
				[2] = "pwh_dwarf_external_start_banter_c_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pwh_dwarf_external_start_banter_c_01",
				[2] = "pwh_dwarf_external_start_banter_c_02"
			},
			sound_events_duration = {
				[1] = 5.6619791984558,
				[2] = 6.1149792671204
			}
		},
		pwh_dwarf_external_which_way_a = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_dwarf_exterior",
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
				"pwh_dwarf_external_which_way_a_01",
				"pwh_dwarf_external_which_way_a_02",
				"pwh_dwarf_external_which_way_a_03",
				"pwh_dwarf_external_which_way_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_dwarf_external_which_way_a_01",
				"pwh_dwarf_external_which_way_a_02",
				"pwh_dwarf_external_which_way_a_03",
				"pwh_dwarf_external_which_way_a_04"
			},
			sound_events_duration = {
				5.2389793395996,
				3.4679791927338,
				4.5979790687561,
				4.1999793052673
			}
		},
		pwh_dwarf_external_which_way_c = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_dwarf_exterior",
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
				"pwh_dwarf_external_which_way_c_01",
				"pwh_dwarf_external_which_way_c_02",
				"pwh_dwarf_external_which_way_c_03",
				"pwh_dwarf_external_which_way_c_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_dwarf_external_which_way_c_01",
				"pwh_dwarf_external_which_way_c_02",
				"pwh_dwarf_external_which_way_c_03",
				"pwh_dwarf_external_which_way_c_04"
			},
			sound_events_duration = {
				3.2519791126251,
				2.5599792003632,
				3.8399791717529,
				5.5459790229797
			}
		}
	})
end
