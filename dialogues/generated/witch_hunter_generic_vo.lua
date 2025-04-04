return function ()
	define_rule({
		probability = 1,
		name = "pwh_gameplay_path_clear",
		response = "pwh_gameplay_path_clear",
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
				"generic_path_clear"
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
				"generic_path_clear",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"generic_path_clear",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwh_generic_assemble",
		response = "pwh_generic_assemble",
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
				"generic_assemble"
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
				"generic_assemble",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"generic_assemble",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwh_generic_cold_inside",
		response = "pwh_generic_cold_inside",
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
				"generic_cold_inside"
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
				"generic_cold_inside",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"generic_cold_inside",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwh_generic_cold_outside",
		response = "pwh_generic_cold_outside",
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
				"generic_cold_outside"
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
				"generic_cold_outside",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"generic_cold_outside",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwh_generic_dark",
		response = "pwh_generic_dark",
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
				"generic_dark"
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
				"generic_dark",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"generic_dark",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwh_generic_door_locked",
		response = "pwh_generic_door_locked",
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
				"generic_door_locked"
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
				"generic_door_locked",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"generic_door_locked",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		response = "pwh_generic_falling",
		name = "pwh_generic_falling",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"generic_falling"
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
		name = "pwh_generic_found_key_known_purpose_a",
		response = "pwh_generic_found_key_known_purpose_a",
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
				"generic_key_known_purpose"
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
				"generic_key",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"generic_key",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwh_generic_found_key_unknown_purpose_a",
		response = "pwh_generic_found_key_unknown_purpose_a",
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
				"generic_key_unknown_purpose"
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
				"generic_key",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"generic_key",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwh_generic_getting_dark_outside",
		response = "pwh_generic_getting_dark_outside",
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
				"generic_getting_dark_outside"
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
				"generic_getting_dark_outside",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"generic_getting_dark_outside",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwh_generic_objective_complete",
		response = "pwh_generic_objective_complete",
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
				"generic_objective_complete"
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
				"generic_objective_complete",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"generic_objective_complete",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwh_generic_path_blocked",
		response = "pwh_generic_path_blocked",
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
				"generic_path_blocked"
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
				"generic_path_blocked",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"generic_path_blocked",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwh_generic_rain",
		response = "pwh_generic_rain",
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
				"generic_rain"
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
				"generic_rain",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"generic_rain",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwh_generic_reaction_action",
		response = "pwh_generic_reaction_action",
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
				"generic_reaction_action"
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
				"generic_reaction_action",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"generic_reaction_action",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwh_generic_reaction_sound",
		response = "pwh_generic_reaction_sound",
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
				"generic_reaction_sound"
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
				"generic_reaction_sound",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"generic_reaction_sound",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwh_generic_search_complete",
		response = "pwh_generic_search_complete",
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
				"generic_search_complete"
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
				"generic_search_complete",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"generic_search_complete",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwh_generic_search_progressing",
		response = "pwh_generic_search_progressing",
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
				"generic_search_progressing"
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
				"generic_search_progressing",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"generic_search_progressing",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwh_generic_search_start",
		response = "pwh_generic_search_start",
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
				"generic_search_start"
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
				"generic_search_start",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"generic_search_start",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwh_generic_success",
		response = "pwh_generic_success",
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
				"generic_success"
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
				"generic_success",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"generic_success",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwh_generic_unexpected_event_01",
		response = "pwh_generic_unexpected_event_01",
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
				"generic_unexpected_event"
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
				"generic_unexpected_event",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"generic_unexpected_event",
				OP.ADD,
				1
			}
		}
	})
	add_dialogues({
		pwh_gameplay_path_clear = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_generic_vo",
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
				"pwh_gameplay_path_clear_01",
				"pwh_gameplay_path_clear_02",
				"pwh_gameplay_path_clear_03",
				"pwh_gameplay_path_clear_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_gameplay_path_clear_01",
				"pwh_gameplay_path_clear_02",
				"pwh_gameplay_path_clear_03",
				"pwh_gameplay_path_clear_04"
			},
			sound_events_duration = {
				3.8468124866486,
				2.9111459255219,
				2.8924791812897,
				3.0797083377838
			}
		},
		pwh_generic_assemble = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_generic_vo",
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
				"pwh_generic_assemble_01",
				"pwh_generic_assemble_02",
				"pwh_generic_assemble_03",
				"pwh_generic_assemble_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_generic_assemble_01",
				"pwh_generic_assemble_02",
				"pwh_generic_assemble_03",
				"pwh_generic_assemble_04"
			},
			sound_events_duration = {
				0.67597913742065,
				0.57897919416428,
				0.93797916173935,
				1.5239791870117
			}
		},
		pwh_generic_cold_inside = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_generic_vo",
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
				"pwh_generic_cold_inside_01",
				"pwh_generic_cold_inside_02",
				"pwh_generic_cold_inside_03",
				"pwh_generic_cold_inside_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_generic_cold_inside_01",
				"pwh_generic_cold_inside_02",
				"pwh_generic_cold_inside_03",
				"pwh_generic_cold_inside_04"
			},
			sound_events_duration = {
				1.7479791641235,
				2.3629791736603,
				2.0819792747498,
				3.0249791145325
			}
		},
		pwh_generic_cold_outside = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_generic_vo",
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
				"pwh_generic_cold_outside_01",
				"pwh_generic_cold_outside_02",
				"pwh_generic_cold_outside_03",
				"pwh_generic_cold_outside_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_generic_cold_outside_01",
				"pwh_generic_cold_outside_02",
				"pwh_generic_cold_outside_03",
				"pwh_generic_cold_outside_04"
			},
			sound_events_duration = {
				2.5959792137146,
				1.5519791841507,
				2.5899791717529,
				4.1559791564941
			}
		},
		pwh_generic_dark = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_generic_vo",
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
				"pwh_generic_dark_01",
				"pwh_generic_dark_02",
				"pwh_generic_dark_03",
				"pwh_generic_dark_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_generic_dark_01",
				"pwh_generic_dark_02",
				"pwh_generic_dark_03",
				"pwh_generic_dark_04"
			},
			sound_events_duration = {
				1.2869791984558,
				0.88897913694382,
				2.158979177475,
				1.8639792203903
			}
		},
		pwh_generic_door_locked = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_generic_vo",
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
				"pwh_generic_door_locked_01",
				"pwh_generic_door_locked_02",
				"pwh_generic_door_locked_03",
				"pwh_generic_door_locked_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_generic_door_locked_01",
				"pwh_generic_door_locked_02",
				"pwh_generic_door_locked_03",
				"pwh_generic_door_locked_04"
			},
			sound_events_duration = {
				1.2109792232513,
				1.5799791812897,
				2.1959791183472,
				1.9619791507721
			}
		},
		pwh_generic_falling = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_generic_vo",
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
				"pwh_generic_falling_01",
				"pwh_generic_falling_02",
				"pwh_generic_falling_03",
				"pwh_generic_falling_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_generic_falling_01",
				"pwh_generic_falling_02",
				"pwh_generic_falling_03",
				"pwh_generic_falling_04"
			},
			sound_events_duration = {
				1.3949999809265,
				1.4759999513626,
				1.3639999628067,
				1.2569999694824
			}
		},
		pwh_generic_found_key_known_purpose_a = {
			randomize_indexes_n = 0,
			face_animations_n = 3,
			database = "witch_hunter_generic_vo",
			sound_events_n = 3,
			category = "level_talk",
			dialogue_animations_n = 3,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"pwh_gameplay_found_key_known_purpose_a_01",
				"pwh_gameplay_found_key_known_purpose_a_02",
				"pwh_gameplay_found_key_known_purpose_a_03"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_gameplay_found_key_known_purpose_a_01",
				"pwh_gameplay_found_key_known_purpose_a_02",
				"pwh_gameplay_found_key_known_purpose_a_03"
			},
			sound_events_duration = {
				2.0362083911896,
				1.7925000190735,
				2.0216040611267
			}
		},
		pwh_generic_found_key_unknown_purpose_a = {
			randomize_indexes_n = 0,
			face_animations_n = 3,
			database = "witch_hunter_generic_vo",
			sound_events_n = 3,
			category = "level_talk",
			dialogue_animations_n = 3,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"pwh_gameplay_found_key_unknown_purpose_a_01",
				"pwh_gameplay_found_key_unknown_purpose_a_02",
				"pwh_gameplay_found_key_unknown_purpose_a_03"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_gameplay_found_key_unknown_purpose_a_01",
				"pwh_gameplay_found_key_unknown_purpose_a_02",
				"pwh_gameplay_found_key_unknown_purpose_a_03"
			},
			sound_events_duration = {
				2.8103542327881,
				1.9000624418259,
				2.8217709064484
			}
		},
		pwh_generic_getting_dark_outside = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_generic_vo",
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
				"pwh_generic_getting_dark_outside_01",
				"pwh_generic_getting_dark_outside_02",
				"pwh_generic_getting_dark_outside_03",
				"pwh_generic_getting_dark_outside_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_generic_getting_dark_outside_01",
				"pwh_generic_getting_dark_outside_02",
				"pwh_generic_getting_dark_outside_03",
				"pwh_generic_getting_dark_outside_04"
			},
			sound_events_duration = {
				1.8559792041779,
				1.1389791965485,
				2.3019790649414,
				3.5909790992737
			}
		},
		pwh_generic_objective_complete = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_generic_vo",
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
				"pwh_generic_objective_complete_01",
				"pwh_generic_objective_complete_02",
				"pwh_generic_objective_complete_03",
				"pwh_generic_objective_complete_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_generic_objective_complete_01",
				"pwh_generic_objective_complete_02",
				"pwh_generic_objective_complete_03",
				"pwh_generic_objective_complete_04"
			},
			sound_events_duration = {
				1.4889999628067,
				1.3379791975021,
				1.2109792232513,
				1.0590000152588
			}
		},
		pwh_generic_path_blocked = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_generic_vo",
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
				"pwh_generic_path_blocked_01",
				"pwh_generic_path_blocked_02",
				"pwh_generic_path_blocked_03",
				"pwh_generic_path_blocked_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_generic_path_blocked_01",
				"pwh_generic_path_blocked_02",
				"pwh_generic_path_blocked_03",
				"pwh_generic_path_blocked_04"
			},
			sound_events_duration = {
				1.5699791908264,
				1.7909791469574,
				1.2149791717529,
				1.062979221344
			}
		},
		pwh_generic_rain = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_generic_vo",
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
				"pwh_generic_rain_01",
				"pwh_generic_rain_02",
				"pwh_generic_rain_03",
				"pwh_generic_rain_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_generic_rain_01",
				"pwh_generic_rain_02",
				"pwh_generic_rain_03",
				"pwh_generic_rain_04"
			},
			sound_events_duration = {
				2.7899792194366,
				4.1059789657593,
				3.3329792022705,
				1.880979180336
			}
		},
		pwh_generic_reaction_action = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_generic_vo",
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
				"pwh_generic_reaction_action_01",
				"pwh_generic_reaction_action_02",
				"pwh_generic_reaction_action_03",
				"pwh_generic_reaction_action_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_generic_reaction_action_01",
				"pwh_generic_reaction_action_02",
				"pwh_generic_reaction_action_03",
				"pwh_generic_reaction_action_04"
			},
			sound_events_duration = {
				1.1609791517258,
				0.77297914028168,
				1.7939791679382,
				0.76897919178009
			}
		},
		pwh_generic_reaction_sound = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_generic_vo",
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
				"pwh_generic_reaction_sound_01",
				"pwh_generic_reaction_sound_02",
				"pwh_generic_reaction_sound_03",
				"pwh_generic_reaction_sound_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_generic_reaction_sound_01",
				"pwh_generic_reaction_sound_02",
				"pwh_generic_reaction_sound_03",
				"pwh_generic_reaction_sound_04"
			},
			sound_events_duration = {
				1.3839792013168,
				0.67597913742065,
				0.84799998998642,
				0.79797917604446
			}
		},
		pwh_generic_search_complete = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_generic_vo",
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
				"pwh_generic_search_complete_01",
				"pwh_generic_search_complete_02",
				"pwh_generic_search_complete_03",
				"pwh_generic_search_complete_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_generic_search_complete_01",
				"pwh_generic_search_complete_02",
				"pwh_generic_search_complete_03",
				"pwh_generic_search_complete_04"
			},
			sound_events_duration = {
				0.59600001573563,
				0.57897919416428,
				3.1799790859222,
				4.3839793205261
			}
		},
		pwh_generic_search_progressing = {
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "witch_hunter_generic_vo",
			sound_events_n = 8,
			category = "level_talk",
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
				"pwh_generic_search_progressing_01",
				"pwh_generic_search_progressing_02",
				"pwh_generic_search_progressing_03",
				"pwh_generic_search_progressing_04",
				"pwh_generic_search_progressing_05",
				"pwh_generic_search_progressing_06",
				"pwh_generic_search_progressing_07",
				"pwh_generic_search_progressing_08"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_generic_search_progressing_01",
				"pwh_generic_search_progressing_02",
				"pwh_generic_search_progressing_03",
				"pwh_generic_search_progressing_04",
				"pwh_generic_search_progressing_05",
				"pwh_generic_search_progressing_06",
				"pwh_generic_search_progressing_07",
				"pwh_generic_search_progressing_08"
			},
			sound_events_duration = {
				2.4859790802002,
				0.96399998664856,
				3.0669791698456,
				3.7089791297913,
				4.2329792976379,
				4.2649793624878,
				2.6489791870117,
				2.9239792823791
			}
		},
		pwh_generic_search_start = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_generic_vo",
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
				"pwh_generic_search_start_01",
				"pwh_generic_search_start_02",
				"pwh_generic_search_start_03",
				"pwh_generic_search_start_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_generic_search_start_01",
				"pwh_generic_search_start_02",
				"pwh_generic_search_start_03",
				"pwh_generic_search_start_04"
			},
			sound_events_duration = {
				1.2979791164398,
				2.2139792442322,
				1.8539791107178,
				1.7109792232513
			}
		},
		pwh_generic_success = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_generic_vo",
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
				"pwh_generic_success_01",
				"pwh_generic_success_02",
				"pwh_generic_success_03",
				"pwh_generic_success_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_generic_success_01",
				"pwh_generic_success_02",
				"pwh_generic_success_03",
				"pwh_generic_success_04"
			},
			sound_events_duration = {
				1.9390000104904,
				1.936979174614,
				3.3899791240692,
				1.9279791116715
			}
		},
		pwh_generic_unexpected_event_01 = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_generic_vo",
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
				"pwh_generic_unexpected_event_01",
				"pwh_generic_unexpected_event_02",
				"pwh_generic_unexpected_event_03",
				"pwh_generic_unexpected_event_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_generic_unexpected_event_01",
				"pwh_generic_unexpected_event_02",
				"pwh_generic_unexpected_event_03",
				"pwh_generic_unexpected_event_04"
			},
			sound_events_duration = {
				3.658979177475,
				0.81097918748856,
				2.9879791736603,
				2.6859791278839
			}
		}
	})
end
