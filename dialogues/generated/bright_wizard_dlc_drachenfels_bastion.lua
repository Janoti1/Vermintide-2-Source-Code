return function ()
	define_rule({
		probability = 1,
		name = "pbw_bastion_intro_line_a",
		response = "pbw_bastion_intro_line_a",
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
				"bastion_intro_line_a"
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
				"bastion_intro_line_a",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"bastion_intro_line_a",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pbw_bastion_intro_line_b",
		response = "pbw_bastion_intro_line_b",
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
				"bastion_intro_line_a"
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
				"bastion_intro_line_b",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"bastion_intro_line_b",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pbw_bastion_intro_line_c",
		response = "pbw_bastion_intro_line_c",
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
				"bastion_intro_line_b"
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
				"bastion_intro_line_c",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"bastion_intro_line_c",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pbw_bastion_vo_caves",
		response = "pbw_bastion_vo_caves",
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
				"bastion_vo_caves"
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
				"bastion_vo_caves",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"bastion_vo_caves",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pbw_bastion_vo_courtyard_done",
		response = "pbw_bastion_vo_courtyard_done",
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
				"bastion_vo_courtyard_done"
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
				"bastion_vo_courtyard_done",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"bastion_vo_courtyard_done",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pbw_bastion_vo_courtyard_first_villager",
		response = "pbw_bastion_vo_courtyard_first_villager",
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
				"bastion_vo_courtyard_first_villager"
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
				"bastion_vo_courtyard_first_villager",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"bastion_vo_courtyard_first_villager",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pbw_bastion_vo_entering_courtyard",
		response = "pbw_bastion_vo_entering_courtyard",
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
				"bastion_vo_entering_courtyard"
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
				"bastion_vo_entering_courtyard",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"bastion_vo_entering_courtyard",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pbw_bastion_vo_entering_darkness",
		response = "pbw_bastion_vo_entering_darkness",
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
				"bastion_vo_entering_darkness"
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
				"bastion_vo_entering_darkness",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"bastion_vo_entering_darkness",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pbw_bastion_vo_entering_finale",
		response = "pbw_bastion_vo_entering_finale",
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
				"bastion_vo_entering_finale"
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
				"bastion_vo_entering_finale",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"bastion_vo_entering_finale",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pbw_bastion_vo_entrance",
		response = "pbw_bastion_vo_entrance",
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
				"bastion_vo_entrance"
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
				"bastion_vo_entrance",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"bastion_vo_entrance",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pbw_bastion_vo_exiting_pbw_bastion",
		response = "pbw_bastion_vo_exiting_pbw_bastion",
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
				"bastion_vo_exiting_bastion"
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
				"bastion_vo_exiting_bastion",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"bastion_vo_exiting_bastion",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pbw_bastion_vo_finale_done",
		response = "pbw_bastion_vo_finale_done",
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
				"bastion_vo_finale_done"
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
				"bastion_vo_finale_done",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"bastion_vo_finale_done",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pbw_bastion_vo_finale_missile",
		response = "pbw_bastion_vo_finale_missile",
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
				"bastion_vo_finale_missile"
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
				"bastion_vo_finale_missile",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"bastion_vo_finale_missile",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pbw_bastion_vo_finale_tiring",
		response = "pbw_bastion_vo_finale_tiring",
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
				"bastion_vo_finale_tiring"
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
				"bastion_vo_finale_tiring",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"bastion_vo_finale_tiring",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pbw_bastion_vo_head_to_surface",
		response = "pbw_bastion_vo_head_to_surface",
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
				"bastion_vo_head_to_surface"
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
				"bastion_vo_head_to_surface",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"bastion_vo_head_to_surface",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pbw_bastion_vo_inside_cellblock",
		response = "pbw_bastion_vo_inside_cellblock",
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
				"bastion_vo_inside_cellblock"
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
				"bastion_vo_inside_cellblock",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"bastion_vo_inside_cellblock",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pbw_bastion_vo_no_prisoners",
		response = "pbw_bastion_vo_no_prisoners",
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
				"bastion_vo_no_prisoners"
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
				"bastion_vo_no_prisoners",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"bastion_vo_no_prisoners",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pbw_bastion_vo_possessed",
		response = "pbw_bastion_vo_possessed",
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
				"bastion_vo_possessed"
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
				"bastion_vo_possessed",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"bastion_vo_possessed",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pbw_bastion_vo_search_cells",
		response = "pbw_bastion_vo_search_cells",
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
				"bastion_vo_search_cells"
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
				"bastion_vo_search_cells",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"bastion_vo_search_cells",
				OP.ADD,
				1
			}
		}
	})
	add_dialogues({
		pbw_bastion_intro_line_a = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard_dlc_drachenfels_bastion",
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
				[1] = "pbw_bastion_intro_line_a_01",
				[2] = "pbw_bastion_intro_line_a_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pbw_bastion_intro_line_a_01",
				[2] = "pbw_bastion_intro_line_a_02"
			},
			sound_events_duration = {
				[1] = 2.9369790554047,
				[2] = 3.0589792728424
			}
		},
		pbw_bastion_intro_line_b = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard_dlc_drachenfels_bastion",
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
				[1] = "pbw_bastion_intro_line_b_01",
				[2] = "pbw_bastion_intro_line_b_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pbw_bastion_intro_line_b_01",
				[2] = "pbw_bastion_intro_line_b_02"
			},
			sound_events_duration = {
				[1] = 2.4219791889191,
				[2] = 2.2639791965485
			}
		},
		pbw_bastion_intro_line_c = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard_dlc_drachenfels_bastion",
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
				[1] = "pbw_bastion_intro_line_c_01",
				[2] = "pbw_bastion_intro_line_c_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pbw_bastion_intro_line_c_01",
				[2] = "pbw_bastion_intro_line_c_02"
			},
			sound_events_duration = {
				[1] = 3.4649791717529,
				[2] = 3.8629791736603
			}
		},
		pbw_bastion_vo_caves = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_dlc_drachenfels_bastion",
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
				"pbw_bastion_vo_caves_01",
				"pbw_bastion_vo_caves_02",
				"pbw_bastion_vo_caves_03",
				"pbw_bastion_vo_caves_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_bastion_vo_caves_01",
				"pbw_bastion_vo_caves_02",
				"pbw_bastion_vo_caves_03",
				"pbw_bastion_vo_caves_04"
			},
			sound_events_duration = {
				3.8399791717529,
				2.3969790935516,
				2.3959791660309,
				2.8889791965485
			}
		},
		pbw_bastion_vo_courtyard_done = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_dlc_drachenfels_bastion",
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
				"pbw_bastion_vo_courtyard_done_01",
				"pbw_bastion_vo_courtyard_done_02",
				"pbw_bastion_vo_courtyard_done_03",
				"pbw_bastion_vo_courtyard_done_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_bastion_vo_courtyard_done_01",
				"pbw_bastion_vo_courtyard_done_02",
				"pbw_bastion_vo_courtyard_done_03",
				"pbw_bastion_vo_courtyard_done_04"
			},
			sound_events_duration = {
				3.2309792041779,
				5.7819790840149,
				4.8839793205261,
				4.8899793624878
			}
		},
		pbw_bastion_vo_courtyard_first_villager = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_dlc_drachenfels_bastion",
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
				"pbw_bastion_vo_courtyard_first_villager_01",
				"pbw_bastion_vo_courtyard_first_villager_02",
				"pbw_bastion_vo_courtyard_first_villager_03",
				"pbw_bastion_vo_courtyard_first_villager_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_bastion_vo_courtyard_first_villager_01",
				"pbw_bastion_vo_courtyard_first_villager_02",
				"pbw_bastion_vo_courtyard_first_villager_03",
				"pbw_bastion_vo_courtyard_first_villager_04"
			},
			sound_events_duration = {
				2.4359791278839,
				3.0680000782013,
				3.0579791069031,
				2.0620000362396
			}
		},
		pbw_bastion_vo_entering_courtyard = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_dlc_drachenfels_bastion",
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
				"pbw_bastion_vo_entering_courtyard_01",
				"pbw_bastion_vo_entering_courtyard_02",
				"pbw_bastion_vo_entering_courtyard_03",
				"pbw_bastion_vo_entering_courtyard_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_bastion_vo_entering_courtyard_01",
				"pbw_bastion_vo_entering_courtyard_02",
				"pbw_bastion_vo_entering_courtyard_03",
				"pbw_bastion_vo_entering_courtyard_04"
			},
			sound_events_duration = {
				3.4230000972748,
				2.7000000476837,
				3.01597905159,
				1.4459791183472
			}
		},
		pbw_bastion_vo_entering_darkness = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_dlc_drachenfels_bastion",
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
				"pbw_bastion_vo_entering_darkness_01",
				"pbw_bastion_vo_entering_darkness_02",
				"pbw_bastion_vo_entering_darkness_03",
				"pbw_bastion_vo_entering_darkness_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_bastion_vo_entering_darkness_01",
				"pbw_bastion_vo_entering_darkness_02",
				"pbw_bastion_vo_entering_darkness_03",
				"pbw_bastion_vo_entering_darkness_04"
			},
			sound_events_duration = {
				3.2189791202545,
				3.6819791793823,
				5.1219792366028,
				3.6809792518616
			}
		},
		pbw_bastion_vo_entering_finale = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_dlc_drachenfels_bastion",
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
				"pbw_bastion_vo_entering_finale_01",
				"pbw_bastion_vo_entering_finale_02",
				"pbw_bastion_vo_entering_finale_03",
				"pbw_bastion_vo_entering_finale_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_bastion_vo_entering_finale_01",
				"pbw_bastion_vo_entering_finale_02",
				"pbw_bastion_vo_entering_finale_03",
				"pbw_bastion_vo_entering_finale_04"
			},
			sound_events_duration = {
				4.874979019165,
				4.0949792861939,
				5.0859789848328,
				6.580979347229
			}
		},
		pbw_bastion_vo_entrance = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_dlc_drachenfels_bastion",
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
				"pbw_bastion_vo_entrance_01",
				"pbw_bastion_vo_entrance_02",
				"pbw_bastion_vo_entrance_03",
				"pbw_bastion_vo_entrance_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_bastion_vo_entrance_01",
				"pbw_bastion_vo_entrance_02",
				"pbw_bastion_vo_entrance_03",
				"pbw_bastion_vo_entrance_04"
			},
			sound_events_duration = {
				4.2619791030884,
				2.9859790802002,
				4.2039790153503,
				2.6969792842865
			}
		},
		pbw_bastion_vo_exiting_pbw_bastion = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_dlc_drachenfels_bastion",
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
				"pbw_bastion_vo_exiting_pbw_bastion_01",
				"pbw_bastion_vo_exiting_pbw_bastion_02",
				"pbw_bastion_vo_exiting_pbw_bastion_03",
				"pbw_bastion_vo_exiting_pbw_bastion_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_bastion_vo_exiting_pbw_bastion_01",
				"pbw_bastion_vo_exiting_pbw_bastion_02",
				"pbw_bastion_vo_exiting_pbw_bastion_03",
				"pbw_bastion_vo_exiting_pbw_bastion_04"
			},
			sound_events_duration = {
				2.0659792423248,
				3.4149792194366,
				3.783979177475,
				5.9519791603088
			}
		},
		pbw_bastion_vo_finale_done = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_dlc_drachenfels_bastion",
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
				"pbw_bastion_vo_finale_done_01",
				"pbw_bastion_vo_finale_done_02",
				"pbw_bastion_vo_finale_done_03",
				"pbw_bastion_vo_finale_done_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_bastion_vo_finale_done_01",
				"pbw_bastion_vo_finale_done_02",
				"pbw_bastion_vo_finale_done_03",
				"pbw_bastion_vo_finale_done_04"
			},
			sound_events_duration = {
				1.6000000238419,
				6.0760002136231,
				3.6619999408722,
				4.4509792327881
			}
		},
		pbw_bastion_vo_finale_missile = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_dlc_drachenfels_bastion",
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
				"pbw_bastion_vo_finale_missile_01",
				"pbw_bastion_vo_finale_missile_02",
				"pbw_bastion_vo_finale_missile_03",
				"pbw_bastion_vo_finale_missile_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_bastion_vo_finale_missile_01",
				"pbw_bastion_vo_finale_missile_02",
				"pbw_bastion_vo_finale_missile_03",
				"pbw_bastion_vo_finale_missile_04"
			},
			sound_events_duration = {
				2.9799792766571,
				1.87600004673,
				2.908979177475,
				1.7829999923706
			}
		},
		pbw_bastion_vo_finale_tiring = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_dlc_drachenfels_bastion",
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
				"pbw_bastion_vo_finale_tiring_01",
				"pbw_bastion_vo_finale_tiring_02",
				"pbw_bastion_vo_finale_tiring_03",
				"pbw_bastion_vo_finale_tiring_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_bastion_vo_finale_tiring_01",
				"pbw_bastion_vo_finale_tiring_02",
				"pbw_bastion_vo_finale_tiring_03",
				"pbw_bastion_vo_finale_tiring_04"
			},
			sound_events_duration = {
				3.3659791946411,
				3.4899792671204,
				2.5329792499542,
				2.0709791183472
			}
		},
		pbw_bastion_vo_head_to_surface = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_dlc_drachenfels_bastion",
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
				"pbw_bastion_vo_head_to_surface_01",
				"pbw_bastion_vo_head_to_surface_02",
				"pbw_bastion_vo_head_to_surface_03",
				"pbw_bastion_vo_head_to_surface_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_bastion_vo_head_to_surface_01",
				"pbw_bastion_vo_head_to_surface_02",
				"pbw_bastion_vo_head_to_surface_03",
				"pbw_bastion_vo_head_to_surface_04"
			},
			sound_events_duration = {
				1.0559791326523,
				2.6859791278839,
				3.3149790763855,
				2.8959999084473
			}
		},
		pbw_bastion_vo_inside_cellblock = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_dlc_drachenfels_bastion",
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
				"pbw_bastion_vo_inside_cellblock_01",
				"pbw_bastion_vo_inside_cellblock_02",
				"pbw_bastion_vo_inside_cellblock_03",
				"pbw_bastion_vo_inside_cellblock_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_bastion_vo_inside_cellblock_01",
				"pbw_bastion_vo_inside_cellblock_02",
				"pbw_bastion_vo_inside_cellblock_03",
				"pbw_bastion_vo_inside_cellblock_04"
			},
			sound_events_duration = {
				2.2769792079926,
				3.3459792137146,
				1.283979177475,
				3.834979057312
			}
		},
		pbw_bastion_vo_no_prisoners = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_dlc_drachenfels_bastion",
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
				"pbw_bastion_vo_no_prisoners_01",
				"pbw_bastion_vo_no_prisoners_02",
				"pbw_bastion_vo_no_prisoners_03",
				"pbw_bastion_vo_no_prisoners_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_bastion_vo_no_prisoners_01",
				"pbw_bastion_vo_no_prisoners_02",
				"pbw_bastion_vo_no_prisoners_03",
				"pbw_bastion_vo_no_prisoners_04"
			},
			sound_events_duration = {
				2.5079791545868,
				2.8759791851044,
				3.0889792442322,
				2.8769791126251
			}
		},
		pbw_bastion_vo_possessed = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_dlc_drachenfels_bastion",
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
				"pbw_bastion_vo_possessed_01",
				"pbw_bastion_vo_possessed_02",
				"pbw_bastion_vo_possessed_03",
				"pbw_bastion_vo_possessed_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_bastion_vo_possessed_01",
				"pbw_bastion_vo_possessed_02",
				"pbw_bastion_vo_possessed_03",
				"pbw_bastion_vo_possessed_04"
			},
			sound_events_duration = {
				1.8099999427795,
				2.9229791164398,
				2.6510000228882,
				1.4859791994095
			}
		},
		pbw_bastion_vo_search_cells = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_dlc_drachenfels_bastion",
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
				"pbw_bastion_vo_search_cells_01",
				"pbw_bastion_vo_search_cells_02",
				"pbw_bastion_vo_search_cells_03",
				"pbw_bastion_vo_search_cells_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_bastion_vo_search_cells_01",
				"pbw_bastion_vo_search_cells_02",
				"pbw_bastion_vo_search_cells_03",
				"pbw_bastion_vo_search_cells_04"
			},
			sound_events_duration = {
				0.80497914552689,
				3.0680000782013,
				2.4799792766571,
				2.1710000038147
			}
		}
	})
end
