return function ()
	define_rule({
		response = "nik_greeting_skulls_event_first",
		name = "nik_greeting_skulls_event_first",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"nik_greeting"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"inn_keeper"
			},
			{
				"global_context",
				"last_level_played",
				OP.EQ,
				"none"
			},
			{
				"global_context",
				"hub_environment",
				OP.EQ,
				"skulls"
			}
		}
	})
	define_rule({
		response = "nik_greeting_skulls_event_second",
		name = "nik_greeting_skulls_event_second",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"nik_greeting"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"inn_keeper"
			},
			{
				"global_context",
				"last_level_played",
				OP.NEQ,
				"none"
			},
			{
				"global_context",
				"hub_environment",
				OP.EQ,
				"skulls"
			}
		}
	})
	define_rule({
		response = "nik_hub_backstory_interaction_skulls",
		name = "nik_hub_backstory_interaction_skulls",
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
				"nik_backstory_interacting"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"inn_keeper"
			},
			{
				"global_context",
				"hub_environment",
				OP.EQ,
				"skulls"
			}
		}
	})
	define_rule({
		response = "nik_skulls_event_start_banter_d_bastion",
		name = "nik_skulls_event_start_banter_d_bastion",
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
				"bastion_intro_line_c"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"inn_keeper"
			},
			{
				"global_context",
				"last_level_played",
				OP.EQ,
				"none"
			}
		}
	})
	define_rule({
		response = "nik_skulls_event_start_banter_d_bell",
		name = "nik_skulls_event_start_banter_d_bell",
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
				"bell_intro_c"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"inn_keeper"
			},
			{
				"global_context",
				"last_level_played",
				OP.EQ,
				"none"
			}
		}
	})
	define_rule({
		response = "nik_skulls_event_start_banter_d_bogenhafen_city",
		name = "nik_skulls_event_start_banter_d_bogenhafen_city",
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
				"level_bogenhafen_city_intro_c"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"inn_keeper"
			},
			{
				"global_context",
				"last_level_played",
				OP.EQ,
				"none"
			}
		}
	})
	define_rule({
		response = "nik_skulls_event_start_banter_d_bogenhafen_slum",
		name = "nik_skulls_event_start_banter_d_bogenhafen_slum",
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
				"level_bogenhafen_slum_intro_c"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"inn_keeper"
			},
			{
				"global_context",
				"last_level_played",
				OP.EQ,
				"none"
			}
		}
	})
	define_rule({
		response = "nik_skulls_event_start_banter_d_castle",
		name = "nik_skulls_event_start_banter_d_castle",
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
				"castle_intro_line_c"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"inn_keeper"
			},
			{
				"global_context",
				"last_level_played",
				OP.EQ,
				"none"
			}
		}
	})
	define_rule({
		response = "nik_skulls_event_start_banter_d_catacombs",
		name = "nik_skulls_event_start_banter_d_catacombs",
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
				"catacombs_intro_c"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"inn_keeper"
			},
			{
				"global_context",
				"last_level_played",
				OP.EQ,
				"none"
			}
		}
	})
	define_rule({
		response = "nik_skulls_event_start_banter_d_crater",
		name = "nik_skulls_event_start_banter_d_crater",
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
				"crater_intro_banter_c"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"inn_keeper"
			},
			{
				"global_context",
				"last_level_played",
				OP.EQ,
				"none"
			}
		}
	})
	define_rule({
		response = "nik_skulls_event_start_banter_d_elven_ruins",
		name = "nik_skulls_event_start_banter_d_elven_ruins",
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
				"elven_ruins_intro_c"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"inn_keeper"
			},
			{
				"global_context",
				"last_level_played",
				OP.EQ,
				"none"
			}
		}
	})
	define_rule({
		response = "nik_skulls_event_start_banter_d_farmlands",
		name = "nik_skulls_event_start_banter_d_farmlands",
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
				"farmlands_intro_c"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"inn_keeper"
			},
			{
				"global_context",
				"last_level_played",
				OP.EQ,
				"none"
			}
		}
	})
	define_rule({
		response = "nik_skulls_event_start_banter_d_fort",
		name = "nik_skulls_event_start_banter_d_fort",
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
				"fort_intro_c"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"inn_keeper"
			},
			{
				"global_context",
				"last_level_played",
				OP.EQ,
				"none"
			}
		}
	})
	define_rule({
		response = "nik_skulls_event_start_banter_d_ground_zero",
		name = "nik_skulls_event_start_banter_d_ground_zero",
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
				"ground_zero_intro_c"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"inn_keeper"
			},
			{
				"global_context",
				"last_level_played",
				OP.EQ,
				"none"
			}
		}
	})
	define_rule({
		response = "nik_skulls_event_start_banter_d_military",
		name = "nik_skulls_event_start_banter_d_military",
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
				"helmgart_military_c"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"inn_keeper"
			},
			{
				"global_context",
				"last_level_played",
				OP.EQ,
				"none"
			}
		}
	})
	define_rule({
		response = "nik_skulls_event_start_banter_d_mine",
		name = "nik_skulls_event_start_banter_d_mine",
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
				"mine_intro_c"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"inn_keeper"
			},
			{
				"global_context",
				"last_level_played",
				OP.EQ,
				"none"
			}
		}
	})
	define_rule({
		response = "nik_skulls_event_start_banter_d_nurgle",
		name = "nik_skulls_event_start_banter_d_nurgle",
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
				"nurgle_intro_b"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"inn_keeper"
			},
			{
				"global_context",
				"last_level_played",
				OP.EQ,
				"none"
			}
		}
	})
	define_rule({
		response = "nik_skulls_event_start_banter_d_portals",
		name = "nik_skulls_event_start_banter_d_portals",
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
				"portals_intro_line_c"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"inn_keeper"
			},
			{
				"global_context",
				"last_level_played",
				OP.EQ,
				"none"
			}
		}
	})
	define_rule({
		response = "nik_skulls_event_start_banter_d_skaven_stronghold",
		name = "nik_skulls_event_start_banter_d_skaven_stronghold",
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
				"skaven_stronghold_intro_c"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"inn_keeper"
			},
			{
				"global_context",
				"last_level_played",
				OP.EQ,
				"none"
			}
		}
	})
	define_rule({
		response = "nik_skulls_event_start_banter_d_skittergate",
		name = "nik_skulls_event_start_banter_d_skittergate",
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
				"skittergate_intro_c"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"inn_keeper"
			},
			{
				"global_context",
				"last_level_played",
				OP.EQ,
				"none"
			}
		}
	})
	define_rule({
		response = "nik_skulls_event_start_banter_d_ussingen",
		name = "nik_skulls_event_start_banter_d_ussingen",
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
				"ussingen_intro_c"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"inn_keeper"
			},
			{
				"global_context",
				"last_level_played",
				OP.EQ,
				"none"
			}
		}
	})
	define_rule({
		response = "nik_skulls_event_start_banter_d_warcamp",
		name = "nik_skulls_event_start_banter_d_warcamp",
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
				"chaos_war_camp_intro_c"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"inn_keeper"
			},
			{
				"global_context",
				"last_level_played",
				OP.EQ,
				"none"
			}
		}
	})
	define_rule({
		response = "nik_skulls_event_start_banter_d_wizards_trail",
		name = "nik_skulls_event_start_banter_d_wizards_trail",
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
				"wizard_trail_intro_c"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"inn_keeper"
			},
			{
				"global_context",
				"last_level_played",
				OP.EQ,
				"none"
			}
		}
	})
	add_dialogues({
		nik_greeting_skulls_event_first = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "npc_dlc_event_skulls",
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
				"nik_hub_skulls_01",
				"nik_hub_skulls_02",
				"nik_hub_skulls_03",
				"nik_hub_skulls_04"
			},
			randomize_indexes = {},
			sound_events = {
				"nik_hub_skulls_01",
				"nik_hub_skulls_02",
				"nik_hub_skulls_03",
				"nik_hub_skulls_04"
			},
			sound_events_duration = {
				14.034416198731,
				15.869750022888,
				14.959270477295,
				15.571478843689
			}
		},
		nik_greeting_skulls_event_second = {
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "npc_dlc_event_skulls",
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
				"nik_hub_skulls_05",
				"nik_hub_skulls_06",
				"nik_hub_skulls_07",
				"nik_hub_skulls_08",
				"nik_hub_skulls_09",
				"nik_hub_skulls_10"
			},
			randomize_indexes = {},
			sound_events = {
				"nik_hub_skulls_05",
				"nik_hub_skulls_06",
				"nik_hub_skulls_07",
				"nik_hub_skulls_08",
				"nik_hub_skulls_09",
				"nik_hub_skulls_10"
			},
			sound_events_duration = {
				2.7369582653046,
				3.6826040744781,
				8.9105205535889,
				6.1234169006348,
				8.0589170455933,
				3.6441667079926
			}
		},
		nik_hub_backstory_interaction_skulls = {
			randomize_indexes_n = 0,
			face_animations_n = 9,
			database = "npc_dlc_event_skulls",
			sound_events_n = 9,
			category = "npc_talk",
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
				"nik_keep_endtimes_07",
				"nik_keep_endtimes_08",
				"nik_keep_endtimes_12",
				"nik_keep_endtimes_09",
				"nik_keep_endtimes_14",
				"nik_keep_endtimes_11",
				"nik_keep_endtimes_13",
				"nik_keep_endtimes_10",
				"nik_keep_idle_12"
			},
			randomize_indexes = {},
			sound_events = {
				"nik_keep_endtimes_07",
				"nik_keep_endtimes_08",
				"nik_keep_endtimes_12",
				"nik_keep_endtimes_09",
				"nik_keep_endtimes_14",
				"nik_keep_endtimes_11",
				"nik_keep_endtimes_13",
				"nik_keep_endtimes_10",
				"nik_keep_idle_12"
			},
			sound_events_duration = {
				8.7913961410522,
				9.5934791564941,
				6.7096042633057,
				5.8461875915527,
				7.9246249198914,
				7.8400206565857,
				9.9928541183472,
				7.9879374504089,
				6.561999797821
			}
		},
		nik_skulls_event_start_banter_d_bastion = {
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "npc_dlc_event_skulls",
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
				"nik_banter_d_skulls_01",
				"nik_banter_d_skulls_02",
				"nik_banter_d_skulls_03",
				"nik_banter_d_skulls_04",
				"nik_banter_d_skulls_05",
				"nik_banter_d_skulls_06",
				"nik_banter_d_skulls_07",
				"nik_banter_d_skulls_08"
			},
			randomize_indexes = {},
			sound_events = {
				"nik_banter_d_skulls_01",
				"nik_banter_d_skulls_02",
				"nik_banter_d_skulls_03",
				"nik_banter_d_skulls_04",
				"nik_banter_d_skulls_05",
				"nik_banter_d_skulls_06",
				"nik_banter_d_skulls_07",
				"nik_banter_d_skulls_08"
			},
			sound_events_duration = {
				5.9430418014526,
				3.6819999217987,
				5.5304164886475,
				6.9877290725708,
				5.7070627212524,
				6.3253126144409,
				9.4732913970947,
				6.0918960571289
			}
		},
		nik_skulls_event_start_banter_d_bell = {
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "npc_dlc_event_skulls",
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
				"nik_banter_d_skulls_01",
				"nik_banter_d_skulls_02",
				"nik_banter_d_skulls_03",
				"nik_banter_d_skulls_04",
				"nik_banter_d_skulls_05",
				"nik_banter_d_skulls_06",
				"nik_banter_d_skulls_07",
				"nik_banter_d_skulls_08"
			},
			randomize_indexes = {},
			sound_events = {
				"nik_banter_d_skulls_01",
				"nik_banter_d_skulls_02",
				"nik_banter_d_skulls_03",
				"nik_banter_d_skulls_04",
				"nik_banter_d_skulls_05",
				"nik_banter_d_skulls_06",
				"nik_banter_d_skulls_07",
				"nik_banter_d_skulls_08"
			},
			sound_events_duration = {
				5.9430418014526,
				3.6819999217987,
				5.5304164886475,
				6.9877290725708,
				5.7070627212524,
				6.3253126144409,
				9.4732913970947,
				6.0918960571289
			}
		},
		nik_skulls_event_start_banter_d_bogenhafen_city = {
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "npc_dlc_event_skulls",
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
				"nik_banter_d_skulls_01",
				"nik_banter_d_skulls_02",
				"nik_banter_d_skulls_03",
				"nik_banter_d_skulls_04",
				"nik_banter_d_skulls_05",
				"nik_banter_d_skulls_06",
				"nik_banter_d_skulls_07",
				"nik_banter_d_skulls_08"
			},
			randomize_indexes = {},
			sound_events = {
				"nik_banter_d_skulls_01",
				"nik_banter_d_skulls_02",
				"nik_banter_d_skulls_03",
				"nik_banter_d_skulls_04",
				"nik_banter_d_skulls_05",
				"nik_banter_d_skulls_06",
				"nik_banter_d_skulls_07",
				"nik_banter_d_skulls_08"
			},
			sound_events_duration = {
				5.9430418014526,
				3.6819999217987,
				5.5304164886475,
				6.9877290725708,
				5.7070627212524,
				6.3253126144409,
				9.4732913970947,
				6.0918960571289
			}
		},
		nik_skulls_event_start_banter_d_bogenhafen_slum = {
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "npc_dlc_event_skulls",
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
				"nik_banter_d_skulls_01",
				"nik_banter_d_skulls_02",
				"nik_banter_d_skulls_03",
				"nik_banter_d_skulls_04",
				"nik_banter_d_skulls_05",
				"nik_banter_d_skulls_06",
				"nik_banter_d_skulls_07",
				"nik_banter_d_skulls_08"
			},
			randomize_indexes = {},
			sound_events = {
				"nik_banter_d_skulls_01",
				"nik_banter_d_skulls_02",
				"nik_banter_d_skulls_03",
				"nik_banter_d_skulls_04",
				"nik_banter_d_skulls_05",
				"nik_banter_d_skulls_06",
				"nik_banter_d_skulls_07",
				"nik_banter_d_skulls_08"
			},
			sound_events_duration = {
				5.9430418014526,
				3.6819999217987,
				5.5304164886475,
				6.9877290725708,
				5.7070627212524,
				6.3253126144409,
				9.4732913970947,
				6.0918960571289
			}
		},
		nik_skulls_event_start_banter_d_castle = {
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "npc_dlc_event_skulls",
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
				"nik_banter_d_skulls_01",
				"nik_banter_d_skulls_02",
				"nik_banter_d_skulls_03",
				"nik_banter_d_skulls_04",
				"nik_banter_d_skulls_05",
				"nik_banter_d_skulls_06",
				"nik_banter_d_skulls_07",
				"nik_banter_d_skulls_08"
			},
			randomize_indexes = {},
			sound_events = {
				"nik_banter_d_skulls_01",
				"nik_banter_d_skulls_02",
				"nik_banter_d_skulls_03",
				"nik_banter_d_skulls_04",
				"nik_banter_d_skulls_05",
				"nik_banter_d_skulls_06",
				"nik_banter_d_skulls_07",
				"nik_banter_d_skulls_08"
			},
			sound_events_duration = {
				5.9430418014526,
				3.6819999217987,
				5.5304164886475,
				6.9877290725708,
				5.7070627212524,
				6.3253126144409,
				9.4732913970947,
				6.0918960571289
			}
		},
		nik_skulls_event_start_banter_d_catacombs = {
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "npc_dlc_event_skulls",
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
				"nik_banter_d_skulls_01",
				"nik_banter_d_skulls_02",
				"nik_banter_d_skulls_03",
				"nik_banter_d_skulls_04",
				"nik_banter_d_skulls_05",
				"nik_banter_d_skulls_06",
				"nik_banter_d_skulls_07",
				"nik_banter_d_skulls_08"
			},
			randomize_indexes = {},
			sound_events = {
				"nik_banter_d_skulls_01",
				"nik_banter_d_skulls_02",
				"nik_banter_d_skulls_03",
				"nik_banter_d_skulls_04",
				"nik_banter_d_skulls_05",
				"nik_banter_d_skulls_06",
				"nik_banter_d_skulls_07",
				"nik_banter_d_skulls_08"
			},
			sound_events_duration = {
				5.9430418014526,
				3.6819999217987,
				5.5304164886475,
				6.9877290725708,
				5.7070627212524,
				6.3253126144409,
				9.4732913970947,
				6.0918960571289
			}
		},
		nik_skulls_event_start_banter_d_crater = {
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "npc_dlc_event_skulls",
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
				"nik_banter_d_skulls_01",
				"nik_banter_d_skulls_02",
				"nik_banter_d_skulls_03",
				"nik_banter_d_skulls_04",
				"nik_banter_d_skulls_05",
				"nik_banter_d_skulls_06",
				"nik_banter_d_skulls_07",
				"nik_banter_d_skulls_08"
			},
			randomize_indexes = {},
			sound_events = {
				"nik_banter_d_skulls_01",
				"nik_banter_d_skulls_02",
				"nik_banter_d_skulls_03",
				"nik_banter_d_skulls_04",
				"nik_banter_d_skulls_05",
				"nik_banter_d_skulls_06",
				"nik_banter_d_skulls_07",
				"nik_banter_d_skulls_08"
			},
			sound_events_duration = {
				5.9430418014526,
				3.6819999217987,
				5.5304164886475,
				6.9877290725708,
				5.7070627212524,
				6.3253126144409,
				9.4732913970947,
				6.0918960571289
			}
		},
		nik_skulls_event_start_banter_d_elven_ruins = {
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "npc_dlc_event_skulls",
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
				"nik_banter_d_skulls_01",
				"nik_banter_d_skulls_02",
				"nik_banter_d_skulls_03",
				"nik_banter_d_skulls_04",
				"nik_banter_d_skulls_05",
				"nik_banter_d_skulls_06",
				"nik_banter_d_skulls_07",
				"nik_banter_d_skulls_08"
			},
			randomize_indexes = {},
			sound_events = {
				"nik_banter_d_skulls_01",
				"nik_banter_d_skulls_02",
				"nik_banter_d_skulls_03",
				"nik_banter_d_skulls_04",
				"nik_banter_d_skulls_05",
				"nik_banter_d_skulls_06",
				"nik_banter_d_skulls_07",
				"nik_banter_d_skulls_08"
			},
			sound_events_duration = {
				5.9430418014526,
				3.6819999217987,
				5.5304164886475,
				6.9877290725708,
				5.7070627212524,
				6.3253126144409,
				9.4732913970947,
				6.0918960571289
			}
		},
		nik_skulls_event_start_banter_d_farmlands = {
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "npc_dlc_event_skulls",
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
				"nik_banter_d_skulls_01",
				"nik_banter_d_skulls_02",
				"nik_banter_d_skulls_03",
				"nik_banter_d_skulls_04",
				"nik_banter_d_skulls_05",
				"nik_banter_d_skulls_06",
				"nik_banter_d_skulls_07",
				"nik_banter_d_skulls_08"
			},
			randomize_indexes = {},
			sound_events = {
				"nik_banter_d_skulls_01",
				"nik_banter_d_skulls_02",
				"nik_banter_d_skulls_03",
				"nik_banter_d_skulls_04",
				"nik_banter_d_skulls_05",
				"nik_banter_d_skulls_06",
				"nik_banter_d_skulls_07",
				"nik_banter_d_skulls_08"
			},
			sound_events_duration = {
				5.9430418014526,
				3.6819999217987,
				5.5304164886475,
				6.9877290725708,
				5.7070627212524,
				6.3253126144409,
				9.4732913970947,
				6.0918960571289
			}
		},
		nik_skulls_event_start_banter_d_fort = {
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "npc_dlc_event_skulls",
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
				"nik_banter_d_skulls_01",
				"nik_banter_d_skulls_02",
				"nik_banter_d_skulls_03",
				"nik_banter_d_skulls_04",
				"nik_banter_d_skulls_05",
				"nik_banter_d_skulls_06",
				"nik_banter_d_skulls_07",
				"nik_banter_d_skulls_08"
			},
			randomize_indexes = {},
			sound_events = {
				"nik_banter_d_skulls_01",
				"nik_banter_d_skulls_02",
				"nik_banter_d_skulls_03",
				"nik_banter_d_skulls_04",
				"nik_banter_d_skulls_05",
				"nik_banter_d_skulls_06",
				"nik_banter_d_skulls_07",
				"nik_banter_d_skulls_08"
			},
			sound_events_duration = {
				5.9430418014526,
				3.6819999217987,
				5.5304164886475,
				6.9877290725708,
				5.7070627212524,
				6.3253126144409,
				9.4732913970947,
				6.0918960571289
			}
		},
		nik_skulls_event_start_banter_d_ground_zero = {
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "npc_dlc_event_skulls",
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
				"nik_banter_d_skulls_01",
				"nik_banter_d_skulls_02",
				"nik_banter_d_skulls_03",
				"nik_banter_d_skulls_04",
				"nik_banter_d_skulls_05",
				"nik_banter_d_skulls_06",
				"nik_banter_d_skulls_07",
				"nik_banter_d_skulls_08"
			},
			randomize_indexes = {},
			sound_events = {
				"nik_banter_d_skulls_01",
				"nik_banter_d_skulls_02",
				"nik_banter_d_skulls_03",
				"nik_banter_d_skulls_04",
				"nik_banter_d_skulls_05",
				"nik_banter_d_skulls_06",
				"nik_banter_d_skulls_07",
				"nik_banter_d_skulls_08"
			},
			sound_events_duration = {
				5.9430418014526,
				3.6819999217987,
				5.5304164886475,
				6.9877290725708,
				5.7070627212524,
				6.3253126144409,
				9.4732913970947,
				6.0918960571289
			}
		},
		nik_skulls_event_start_banter_d_military = {
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "npc_dlc_event_skulls",
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
				"nik_banter_d_skulls_01",
				"nik_banter_d_skulls_02",
				"nik_banter_d_skulls_03",
				"nik_banter_d_skulls_04",
				"nik_banter_d_skulls_05",
				"nik_banter_d_skulls_06",
				"nik_banter_d_skulls_07",
				"nik_banter_d_skulls_08"
			},
			randomize_indexes = {},
			sound_events = {
				"nik_banter_d_skulls_01",
				"nik_banter_d_skulls_02",
				"nik_banter_d_skulls_03",
				"nik_banter_d_skulls_04",
				"nik_banter_d_skulls_05",
				"nik_banter_d_skulls_06",
				"nik_banter_d_skulls_07",
				"nik_banter_d_skulls_08"
			},
			sound_events_duration = {
				5.9430418014526,
				3.6819999217987,
				5.5304164886475,
				6.9877290725708,
				5.7070627212524,
				6.3253126144409,
				9.4732913970947,
				6.0918960571289
			}
		},
		nik_skulls_event_start_banter_d_mine = {
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "npc_dlc_event_skulls",
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
				"nik_banter_d_skulls_01",
				"nik_banter_d_skulls_02",
				"nik_banter_d_skulls_03",
				"nik_banter_d_skulls_04",
				"nik_banter_d_skulls_05",
				"nik_banter_d_skulls_06",
				"nik_banter_d_skulls_07",
				"nik_banter_d_skulls_08"
			},
			randomize_indexes = {},
			sound_events = {
				"nik_banter_d_skulls_01",
				"nik_banter_d_skulls_02",
				"nik_banter_d_skulls_03",
				"nik_banter_d_skulls_04",
				"nik_banter_d_skulls_05",
				"nik_banter_d_skulls_06",
				"nik_banter_d_skulls_07",
				"nik_banter_d_skulls_08"
			},
			sound_events_duration = {
				5.9430418014526,
				3.6819999217987,
				5.5304164886475,
				6.9877290725708,
				5.7070627212524,
				6.3253126144409,
				9.4732913970947,
				6.0918960571289
			}
		},
		nik_skulls_event_start_banter_d_nurgle = {
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "npc_dlc_event_skulls",
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
				"nik_banter_d_skulls_01",
				"nik_banter_d_skulls_02",
				"nik_banter_d_skulls_03",
				"nik_banter_d_skulls_04",
				"nik_banter_d_skulls_05",
				"nik_banter_d_skulls_06",
				"nik_banter_d_skulls_07",
				"nik_banter_d_skulls_08"
			},
			randomize_indexes = {},
			sound_events = {
				"nik_banter_d_skulls_01",
				"nik_banter_d_skulls_02",
				"nik_banter_d_skulls_03",
				"nik_banter_d_skulls_04",
				"nik_banter_d_skulls_05",
				"nik_banter_d_skulls_06",
				"nik_banter_d_skulls_07",
				"nik_banter_d_skulls_08"
			},
			sound_events_duration = {
				5.9430418014526,
				3.6819999217987,
				5.5304164886475,
				6.9877290725708,
				5.7070627212524,
				6.3253126144409,
				9.4732913970947,
				6.0918960571289
			}
		},
		nik_skulls_event_start_banter_d_portals = {
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "npc_dlc_event_skulls",
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
				"nik_banter_d_skulls_01",
				"nik_banter_d_skulls_02",
				"nik_banter_d_skulls_03",
				"nik_banter_d_skulls_04",
				"nik_banter_d_skulls_05",
				"nik_banter_d_skulls_06",
				"nik_banter_d_skulls_07",
				"nik_banter_d_skulls_08"
			},
			randomize_indexes = {},
			sound_events = {
				"nik_banter_d_skulls_01",
				"nik_banter_d_skulls_02",
				"nik_banter_d_skulls_03",
				"nik_banter_d_skulls_04",
				"nik_banter_d_skulls_05",
				"nik_banter_d_skulls_06",
				"nik_banter_d_skulls_07",
				"nik_banter_d_skulls_08"
			},
			sound_events_duration = {
				5.9430418014526,
				3.6819999217987,
				5.5304164886475,
				6.9877290725708,
				5.7070627212524,
				6.3253126144409,
				9.4732913970947,
				6.0918960571289
			}
		},
		nik_skulls_event_start_banter_d_skaven_stronghold = {
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "npc_dlc_event_skulls",
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
				"nik_banter_d_skulls_01",
				"nik_banter_d_skulls_02",
				"nik_banter_d_skulls_03",
				"nik_banter_d_skulls_04",
				"nik_banter_d_skulls_05",
				"nik_banter_d_skulls_06",
				"nik_banter_d_skulls_07",
				"nik_banter_d_skulls_08"
			},
			randomize_indexes = {},
			sound_events = {
				"nik_banter_d_skulls_01",
				"nik_banter_d_skulls_02",
				"nik_banter_d_skulls_03",
				"nik_banter_d_skulls_04",
				"nik_banter_d_skulls_05",
				"nik_banter_d_skulls_06",
				"nik_banter_d_skulls_07",
				"nik_banter_d_skulls_08"
			},
			sound_events_duration = {
				5.9430418014526,
				3.6819999217987,
				5.5304164886475,
				6.9877290725708,
				5.7070627212524,
				6.3253126144409,
				9.4732913970947,
				6.0918960571289
			}
		},
		nik_skulls_event_start_banter_d_skittergate = {
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "npc_dlc_event_skulls",
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
				"nik_banter_d_skulls_01",
				"nik_banter_d_skulls_02",
				"nik_banter_d_skulls_03",
				"nik_banter_d_skulls_04",
				"nik_banter_d_skulls_05",
				"nik_banter_d_skulls_06",
				"nik_banter_d_skulls_07",
				"nik_banter_d_skulls_08"
			},
			randomize_indexes = {},
			sound_events = {
				"nik_banter_d_skulls_01",
				"nik_banter_d_skulls_02",
				"nik_banter_d_skulls_03",
				"nik_banter_d_skulls_04",
				"nik_banter_d_skulls_05",
				"nik_banter_d_skulls_06",
				"nik_banter_d_skulls_07",
				"nik_banter_d_skulls_08"
			},
			sound_events_duration = {
				5.9430418014526,
				3.6819999217987,
				5.5304164886475,
				6.9877290725708,
				5.7070627212524,
				6.3253126144409,
				9.4732913970947,
				6.0918960571289
			}
		},
		nik_skulls_event_start_banter_d_ussingen = {
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "npc_dlc_event_skulls",
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
				"nik_banter_d_skulls_01",
				"nik_banter_d_skulls_02",
				"nik_banter_d_skulls_03",
				"nik_banter_d_skulls_04",
				"nik_banter_d_skulls_05",
				"nik_banter_d_skulls_06",
				"nik_banter_d_skulls_07",
				"nik_banter_d_skulls_08"
			},
			randomize_indexes = {},
			sound_events = {
				"nik_banter_d_skulls_01",
				"nik_banter_d_skulls_02",
				"nik_banter_d_skulls_03",
				"nik_banter_d_skulls_04",
				"nik_banter_d_skulls_05",
				"nik_banter_d_skulls_06",
				"nik_banter_d_skulls_07",
				"nik_banter_d_skulls_08"
			},
			sound_events_duration = {
				5.9430418014526,
				3.6819999217987,
				5.5304164886475,
				6.9877290725708,
				5.7070627212524,
				6.3253126144409,
				9.4732913970947,
				6.0918960571289
			}
		},
		nik_skulls_event_start_banter_d_warcamp = {
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "npc_dlc_event_skulls",
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
				"nik_banter_d_skulls_01",
				"nik_banter_d_skulls_02",
				"nik_banter_d_skulls_03",
				"nik_banter_d_skulls_04",
				"nik_banter_d_skulls_05",
				"nik_banter_d_skulls_06",
				"nik_banter_d_skulls_07",
				"nik_banter_d_skulls_08"
			},
			randomize_indexes = {},
			sound_events = {
				"nik_banter_d_skulls_01",
				"nik_banter_d_skulls_02",
				"nik_banter_d_skulls_03",
				"nik_banter_d_skulls_04",
				"nik_banter_d_skulls_05",
				"nik_banter_d_skulls_06",
				"nik_banter_d_skulls_07",
				"nik_banter_d_skulls_08"
			},
			sound_events_duration = {
				5.9430418014526,
				3.6819999217987,
				5.5304164886475,
				6.9877290725708,
				5.7070627212524,
				6.3253126144409,
				9.4732913970947,
				6.0918960571289
			}
		},
		nik_skulls_event_start_banter_d_wizards_trail = {
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "npc_dlc_event_skulls",
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
				"nik_banter_d_skulls_01",
				"nik_banter_d_skulls_02",
				"nik_banter_d_skulls_03",
				"nik_banter_d_skulls_04",
				"nik_banter_d_skulls_05",
				"nik_banter_d_skulls_06",
				"nik_banter_d_skulls_07",
				"nik_banter_d_skulls_08"
			},
			randomize_indexes = {},
			sound_events = {
				"nik_banter_d_skulls_01",
				"nik_banter_d_skulls_02",
				"nik_banter_d_skulls_03",
				"nik_banter_d_skulls_04",
				"nik_banter_d_skulls_05",
				"nik_banter_d_skulls_06",
				"nik_banter_d_skulls_07",
				"nik_banter_d_skulls_08"
			},
			sound_events_duration = {
				5.9430418014526,
				3.6819999217987,
				5.5304164886475,
				6.9877290725708,
				5.7070627212524,
				6.3253126144409,
				9.4732913970947,
				6.0918960571289
			}
		}
	})
end
