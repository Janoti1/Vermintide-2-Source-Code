return function ()
	define_rule({
		probability = 1,
		name = "pwe_gameplay_path_clear",
		response = "pwe_gameplay_path_clear",
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
		name = "pwe_generic_assemble",
		response = "pwe_generic_assemble",
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
		name = "pwe_generic_cold_inside",
		response = "pwe_generic_cold_inside",
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
		name = "pwe_generic_cold_outside",
		response = "pwe_generic_cold_outside",
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
		name = "pwe_generic_dark",
		response = "pwe_generic_dark",
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
		name = "pwe_generic_door_locked",
		response = "pwe_generic_door_locked",
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
		response = "pwe_generic_falling",
		name = "pwe_generic_falling",
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
		name = "pwe_generic_found_key_known_purpose_a",
		response = "pwe_generic_found_key_known_purpose_a",
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
		name = "pwe_generic_found_key_unknown_purpose_a",
		response = "pwe_generic_found_key_unknown_purpose_a",
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
		name = "pwe_generic_getting_dark_outside",
		response = "pwe_generic_getting_dark_outside",
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
		name = "pwe_generic_objective_complete",
		response = "pwe_generic_objective_complete",
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
		name = "pwe_generic_path_blocked",
		response = "pwe_generic_path_blocked",
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
		name = "pwe_generic_rain",
		response = "pwe_generic_rain",
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
		name = "pwe_generic_reaction_action",
		response = "pwe_generic_reaction_action",
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
		name = "pwe_generic_reaction_sound",
		response = "pwe_generic_reaction_sound",
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
		name = "pwe_generic_search_complete",
		response = "pwe_generic_search_complete",
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
		name = "pwe_generic_search_progressing",
		response = "pwe_generic_search_progressing",
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
		name = "pwe_generic_search_start",
		response = "pwe_generic_search_start",
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
		name = "pwe_generic_success",
		response = "pwe_generic_success",
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
		name = "pwe_generic_unexpected_event_01",
		response = "pwe_generic_unexpected_event_01",
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
		pwe_gameplay_path_clear = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_generic_vo",
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
				"pwe_gameplay_path_clear_01",
				"pwe_gameplay_path_clear_02",
				"pwe_gameplay_path_clear_03",
				"pwe_gameplay_path_clear_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_gameplay_path_clear_01",
				"pwe_gameplay_path_clear_02",
				"pwe_gameplay_path_clear_03",
				"pwe_gameplay_path_clear_04"
			},
			sound_events_duration = {
				1.4148854613304,
				1.6782083511352,
				1.5519374608993,
				1.1726042032242
			}
		},
		pwe_generic_assemble = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_generic_vo",
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
				"pwe_generic_assemble_01",
				"pwe_generic_assemble_02",
				"pwe_generic_assemble_03",
				"pwe_generic_assemble_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_generic_assemble_01",
				"pwe_generic_assemble_02",
				"pwe_generic_assemble_03",
				"pwe_generic_assemble_04"
			},
			sound_events_duration = {
				0.93313539028168,
				1.0799791812897,
				0.86400002241135,
				1.0579792261124
			}
		},
		pwe_generic_cold_inside = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_generic_vo",
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
				"pwe_generic_cold_inside_01",
				"pwe_generic_cold_inside_02",
				"pwe_generic_cold_inside_03",
				"pwe_generic_cold_inside_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_generic_cold_inside_01",
				"pwe_generic_cold_inside_02",
				"pwe_generic_cold_inside_03",
				"pwe_generic_cold_inside_04"
			},
			sound_events_duration = {
				3.3099792003632,
				1.880979180336,
				3.294979095459,
				2.6969792842865
			}
		},
		pwe_generic_cold_outside = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_generic_vo",
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
				"pwe_generic_cold_outside_01",
				"pwe_generic_cold_outside_02",
				"pwe_generic_cold_outside_03",
				"pwe_generic_cold_outside_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_generic_cold_outside_01",
				"pwe_generic_cold_outside_02",
				"pwe_generic_cold_outside_03",
				"pwe_generic_cold_outside_04"
			},
			sound_events_duration = {
				2.3580000400543,
				4.3629999160767,
				3.5639998912811,
				3.4689791202545
			}
		},
		pwe_generic_dark = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_generic_vo",
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
				"pwe_generic_dark_01",
				"pwe_generic_dark_02",
				"pwe_generic_dark_03",
				"pwe_generic_dark_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_generic_dark_01",
				"pwe_generic_dark_02",
				"pwe_generic_dark_03",
				"pwe_generic_dark_04"
			},
			sound_events_duration = {
				1.5529791116715,
				2.1770000457764,
				1.1339999437332,
				1.1269791126251
			}
		},
		pwe_generic_door_locked = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_generic_vo",
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
				"pwe_generic_door_locked_01",
				"pwe_generic_door_locked_02",
				"pwe_generic_door_locked_03",
				"pwe_generic_door_locked_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_generic_door_locked_01",
				"pwe_generic_door_locked_02",
				"pwe_generic_door_locked_03",
				"pwe_generic_door_locked_04"
			},
			sound_events_duration = {
				1.0939999818802,
				1.3819999694824,
				0.94400000572205,
				1.2999792098999
			}
		},
		pwe_generic_falling = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_generic_vo",
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
				"pwe_generic_falling_01",
				"pwe_generic_falling_02",
				"pwe_generic_falling_03",
				"pwe_generic_falling_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_generic_falling_01",
				"pwe_generic_falling_02",
				"pwe_generic_falling_03",
				"pwe_generic_falling_04"
			},
			sound_events_duration = {
				1.0709999799728,
				1.180999994278,
				0.85799998044968,
				0.98699998855591
			}
		},
		pwe_generic_found_key_known_purpose_a = {
			randomize_indexes_n = 0,
			face_animations_n = 3,
			database = "wood_elf_generic_vo",
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
				"pwe_gameplay_found_key_known_purpose_a_01",
				"pwe_gameplay_found_key_known_purpose_a_02",
				"pwe_gameplay_found_key_known_purpose_a_03"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_gameplay_found_key_known_purpose_a_01",
				"pwe_gameplay_found_key_known_purpose_a_02",
				"pwe_gameplay_found_key_known_purpose_a_03"
			},
			sound_events_duration = {
				1.9008541107178,
				1.7396041154861,
				1.8878124952316
			}
		},
		pwe_generic_found_key_unknown_purpose_a = {
			randomize_indexes_n = 0,
			face_animations_n = 3,
			database = "wood_elf_generic_vo",
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
				"pwe_gameplay_found_key_unknown_purpose_a_01",
				"pwe_gameplay_found_key_unknown_purpose_a_02",
				"pwe_gameplay_found_key_unknown_purpose_a_03"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_gameplay_found_key_unknown_purpose_a_01",
				"pwe_gameplay_found_key_unknown_purpose_a_02",
				"pwe_gameplay_found_key_unknown_purpose_a_03"
			},
			sound_events_duration = {
				1.5154374837875,
				2.5117082595825,
				1.6583125591278
			}
		},
		pwe_generic_getting_dark_outside = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_generic_vo",
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
				"pwe_generic_getting_dark_outside_01",
				"pwe_generic_getting_dark_outside_02",
				"pwe_generic_getting_dark_outside_03",
				"pwe_generic_getting_dark_outside_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_generic_getting_dark_outside_01",
				"pwe_generic_getting_dark_outside_02",
				"pwe_generic_getting_dark_outside_03",
				"pwe_generic_getting_dark_outside_04"
			},
			sound_events_duration = {
				1.2599791288376,
				1.198979139328,
				0.98597913980484,
				2.7289791107178
			}
		},
		pwe_generic_objective_complete = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_generic_vo",
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
				"pwe_generic_objective_complete_01",
				"pwe_generic_objective_complete_02",
				"pwe_generic_objective_complete_03",
				"pwe_generic_objective_complete_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_generic_objective_complete_01",
				"pwe_generic_objective_complete_02",
				"pwe_generic_objective_complete_03",
				"pwe_generic_objective_complete_04"
			},
			sound_events_duration = {
				1.3109791278839,
				1.4509791135788,
				0.82497918605804,
				1.9039791822434
			}
		},
		pwe_generic_path_blocked = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_generic_vo",
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
				"pwe_generic_path_blocked_01",
				"pwe_generic_path_blocked_02",
				"pwe_generic_path_blocked_03",
				"pwe_generic_path_blocked_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_generic_path_blocked_01",
				"pwe_generic_path_blocked_02",
				"pwe_generic_path_blocked_03",
				"pwe_generic_path_blocked_04"
			},
			sound_events_duration = {
				0.86000001430511,
				1.9159791469574,
				1.2020000219345,
				1.2529791593552
			}
		},
		pwe_generic_rain = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_generic_vo",
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
				"pwe_generic_rain_01",
				"pwe_generic_rain_02",
				"pwe_generic_rain_03",
				"pwe_generic_rain_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_generic_rain_01",
				"pwe_generic_rain_02",
				"pwe_generic_rain_03",
				"pwe_generic_rain_04"
			},
			sound_events_duration = {
				2.9370000362396,
				3.0709791183472,
				2.0230000019074,
				3.3859791755676
			}
		},
		pwe_generic_reaction_action = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_generic_vo",
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
				"pwe_generic_reaction_action_01",
				"pwe_generic_reaction_action_02",
				"pwe_generic_reaction_action_03",
				"pwe_generic_reaction_action_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_generic_reaction_action_01",
				"pwe_generic_reaction_action_02",
				"pwe_generic_reaction_action_03",
				"pwe_generic_reaction_action_04"
			},
			sound_events_duration = {
				0.84497916698456,
				0.61297917366028,
				0.658999979496,
				0.78100001811981
			}
		},
		pwe_generic_reaction_sound = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_generic_vo",
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
				"pwe_generic_reaction_sound_01",
				"pwe_generic_reaction_sound_02",
				"pwe_generic_reaction_sound_03",
				"pwe_generic_reaction_sound_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_generic_reaction_sound_01",
				"pwe_generic_reaction_sound_02",
				"pwe_generic_reaction_sound_03",
				"pwe_generic_reaction_sound_04"
			},
			sound_events_duration = {
				0.88697916269302,
				0.69300001859665,
				0.9139791727066,
				0.66797918081284
			}
		},
		pwe_generic_search_complete = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_generic_vo",
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
				"pwe_generic_search_complete_01",
				"pwe_generic_search_complete_02",
				"pwe_generic_search_complete_03",
				"pwe_generic_search_complete_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_generic_search_complete_01",
				"pwe_generic_search_complete_02",
				"pwe_generic_search_complete_03",
				"pwe_generic_search_complete_04"
			},
			sound_events_duration = {
				1.4389791488648,
				2.4300000667572,
				1.254979133606,
				0.90100002288818
			}
		},
		pwe_generic_search_progressing = {
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "wood_elf_generic_vo",
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
				"pwe_generic_search_progressing_01",
				"pwe_generic_search_progressing_02",
				"pwe_generic_search_progressing_03",
				"pwe_generic_search_progressing_04",
				"pwe_generic_search_progressing_05",
				"pwe_generic_search_progressing_06",
				"pwe_generic_search_progressing_07",
				"pwe_generic_search_progressing_08"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_generic_search_progressing_01",
				"pwe_generic_search_progressing_02",
				"pwe_generic_search_progressing_03",
				"pwe_generic_search_progressing_04",
				"pwe_generic_search_progressing_05",
				"pwe_generic_search_progressing_06",
				"pwe_generic_search_progressing_07",
				"pwe_generic_search_progressing_08"
			},
			sound_events_duration = {
				1.3219791650772,
				1.2919791936874,
				0.75997918844223,
				1.6950000524521,
				1.1469792127609,
				1.0769791603088,
				0.97699999809265,
				1.0859792232513
			}
		},
		pwe_generic_search_start = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_generic_vo",
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
				"pwe_generic_search_start_01",
				"pwe_generic_search_start_02",
				"pwe_generic_search_start_03",
				"pwe_generic_search_start_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_generic_search_start_01",
				"pwe_generic_search_start_02",
				"pwe_generic_search_start_03",
				"pwe_generic_search_start_04"
			},
			sound_events_duration = {
				1.4569791555405,
				1.2159999608993,
				1.2749791145325,
				1.629979133606
			}
		},
		pwe_generic_success = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_generic_vo",
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
				"pwe_generic_success_01",
				"pwe_generic_success_02",
				"pwe_generic_success_03",
				"pwe_generic_success_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_generic_success_01",
				"pwe_generic_success_02",
				"pwe_generic_success_03",
				"pwe_generic_success_04"
			},
			sound_events_duration = {
				1.4880000352859,
				1.7409791946411,
				1.0029791593552,
				1.3509792089462
			}
		},
		pwe_generic_unexpected_event_01 = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_generic_vo",
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
				"pwe_generic_unexpected_event_01",
				"pwe_generic_unexpected_event_02",
				"pwe_generic_unexpected_event_03",
				"pwe_generic_unexpected_event_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_generic_unexpected_event_01",
				"pwe_generic_unexpected_event_02",
				"pwe_generic_unexpected_event_03",
				"pwe_generic_unexpected_event_04"
			},
			sound_events_duration = {
				1.2039791345596,
				0.99597918987274,
				1.3149791955948,
				2.9149792194366
			}
		}
	})
end
