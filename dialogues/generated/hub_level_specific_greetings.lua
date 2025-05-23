return function ()
	define_rule({
		response = "nik_greeting_evening",
		name = "nik_greeting_evening",
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
				"hub_environment",
				OP.EQ,
				"evening"
			}
		}
	})
	define_rule({
		response = "nik_greeting_first_time",
		name = "nik_greeting_first_time",
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
				"nik_greeting_first_time"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"inn_keeper"
			}
		}
	})
	define_rule({
		response = "nik_greeting_halloween",
		name = "nik_greeting_halloween",
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
				"hub_environment",
				OP.EQ,
				"halloween"
			}
		}
	})
	define_rule({
		response = "nik_greeting_night",
		name = "nik_greeting_night",
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
				"hub_environment",
				OP.EQ,
				"night"
			}
		}
	})
	define_rule({
		response = "nik_greeting_rainy",
		name = "nik_greeting_rainy",
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
				"hub_environment",
				OP.EQ,
				"rainy"
			}
		}
	})
	define_rule({
		response = "nik_greeting_sunny",
		name = "nik_greeting_sunny",
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
				"hub_environment",
				OP.EQ,
				"sunny"
			}
		}
	})
	define_rule({
		response = "nik_hub_greeting_post_bogenhafen_a",
		name = "nik_hub_greeting_post_bogenhafen_a",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"nik_greeting_level"
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
				"dlc_bogenhafen_slum",
				CombiningOP.OR_NEXT
			},
			{
				"global_context",
				"last_level_played",
				OP.EQ,
				"dlc_bogenhafen_city"
			},
			{
				"global_context",
				"last_level_won",
				OP.EQ,
				true
			}
		}
	})
	define_rule({
		response = "nik_hub_greeting_post_drachenfels_a",
		name = "nik_hub_greeting_post_drachenfels_a",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"nik_greeting_level"
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
				"dlc_castle"
			},
			{
				"global_context",
				"last_level_won",
				OP.EQ,
				true
			}
		}
	})
	define_rule({
		response = "nik_hub_greeting_post_helmgart_a",
		name = "nik_hub_greeting_post_helmgart_a",
		probability = 0.7,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"nik_greeting_level"
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
				"military",
				CombiningOP.OR_NEXT
			},
			{
				"global_context",
				"last_level_played",
				OP.EQ,
				"ground_zero",
				CombiningOP.OR_NEXT
			},
			{
				"global_context",
				"last_level_played",
				OP.EQ,
				"bell",
				CombiningOP.OR_NEXT
			},
			{
				"global_context",
				"last_level_played",
				OP.EQ,
				"ussingen"
			},
			{
				"global_context",
				"last_level_won",
				OP.EQ,
				true
			}
		}
	})
	define_rule({
		response = "nik_hub_greeting_post_karak_a",
		name = "nik_hub_greeting_post_karak_a",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"nik_greeting_level"
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
				"dlc_dwarf_interior"
			},
			{
				"global_context",
				"last_level_won",
				OP.EQ,
				true
			}
		}
	})
	define_rule({
		response = "nik_hub_greeting_post_termite_3_a",
		name = "nik_hub_greeting_post_termite_3_a",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"nik_greeting_level"
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
				"dlc_termite_3"
			},
			{
				"global_context",
				"last_level_won",
				OP.EQ,
				true
			}
		}
	})
	define_rule({
		response = "nik_hub_greeting_post_termite_a",
		name = "nik_hub_greeting_post_termite_a",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"nik_greeting_level"
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
				"dlc_termite_1",
				CombiningOP.OR_NEXT
			},
			{
				"global_context",
				"last_level_played",
				OP.EQ,
				"dlc_termite_2"
			},
			{
				"global_context",
				"last_level_won",
				OP.EQ,
				true
			}
		}
	})
	define_rule({
		response = "nik_hub_greeting_post_tockstadt_a",
		name = "nik_hub_greeting_post_tockstadt_a",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"nik_greeting_level"
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
				"dlc_wizards_trail"
			},
			{
				"global_context",
				"last_level_won",
				OP.EQ,
				true
			}
		}
	})
	define_rule({
		response = "nik_hub_greeting_post_ubersreik_a",
		name = "nik_hub_greeting_post_ubersreik_a",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"nik_greeting_level"
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
				"magnus",
				CombiningOP.OR_NEXT
			},
			{
				"global_context",
				"last_level_played",
				OP.EQ,
				"cemetery",
				CombiningOP.OR_NEXT
			},
			{
				"global_context",
				"last_level_played",
				OP.EQ,
				"forest_ambush"
			},
			{
				"global_context",
				"last_level_won",
				OP.EQ,
				true
			}
		}
	})
	define_rule({
		response = "nik_hub_greeting_post_whaling_village_a",
		name = "nik_hub_greeting_post_whaling_village_a",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"nik_greeting_level"
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
				"dlc_dwarf_whaling"
			},
			{
				"global_context",
				"last_level_won",
				OP.EQ,
				true
			}
		}
	})
	define_rule({
		response = "nik_hub_greeting_post_winds_a",
		name = "nik_hub_greeting_post_winds_a",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"nik_greeting_level"
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
				"crater"
			},
			{
				"global_context",
				"last_level_won",
				OP.EQ,
				true
			}
		}
	})
	define_rule({
		response = "pwe_gateway_event_aftermath_cinematic_a",
		name = "pwe_gateway_event_aftermath_cinematic_a",
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
				"sound_event",
				OP.EQ,
				"nik_gateway_event_aftermath_elf_dummy_trigger"
			},
			{
				"query_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			}
		}
	})
	add_dialogues({
		nik_greeting_evening = {
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "hub_level_specific_greetings",
			sound_events_n = 10,
			category = "npc_talk",
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
				"nik_hub_greeting_evening_01",
				"nik_hub_greeting_evening_02",
				"nik_hub_greeting_evening_03",
				"nik_hub_greeting_evening_04",
				"nik_hub_greeting_evening_05",
				"nik_hub_greeting_evening_06",
				"nik_hub_greeting_evening_07",
				"nik_hub_greeting_evening_30",
				"nik_hub_greeting_evening_31",
				"nik_hub_greeting_evening_32"
			},
			randomize_indexes = {},
			sound_events = {
				"nik_hub_greeting_evening_01",
				"nik_hub_greeting_evening_02",
				"nik_hub_greeting_evening_03",
				"nik_hub_greeting_evening_04",
				"nik_hub_greeting_evening_05",
				"nik_hub_greeting_evening_06",
				"nik_hub_greeting_evening_07",
				"nik_hub_greeting_evening_30",
				"nik_hub_greeting_evening_31",
				"nik_hub_greeting_evening_32"
			},
			sound_events_duration = {
				3.8401458263397,
				3.8842084407806,
				4.4930210113525,
				2.8158540725708,
				4.2388334274292,
				2.3246250152588,
				5.6368541717529,
				4.4648542404175,
				3.3333749771118,
				1.0735000371933
			}
		},
		nik_greeting_first_time = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "hub_level_specific_greetings",
			category = "npc_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "nik_hub_welcome_01"
			},
			sound_events = {
				[1] = "nik_hub_welcome_01"
			},
			sound_events_duration = {
				[1] = 38.688293457031
			}
		},
		nik_greeting_halloween = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hub_level_specific_greetings",
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
				"nik_hub_event_geheimnisnacht_01",
				"nik_hub_event_geheimnisnacht_02",
				"nik_hub_event_geheimnisnacht_03",
				"nik_hub_event_geheimnisnacht_04"
			},
			randomize_indexes = {},
			sound_events = {
				"nik_hub_event_geheimnisnacht_01",
				"nik_hub_event_geheimnisnacht_02",
				"nik_hub_event_geheimnisnacht_03",
				"nik_hub_event_geheimnisnacht_04"
			},
			sound_events_duration = {
				6.9875416755676,
				4.6539373397827,
				6.7383127212524,
				10.055396080017
			}
		},
		nik_greeting_night = {
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "hub_level_specific_greetings",
			sound_events_n = 10,
			category = "npc_talk",
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
				"nik_hub_greeting_good_night_01",
				"nik_hub_greeting_good_night_02",
				"nik_hub_greeting_good_night_03",
				"nik_hub_greeting_good_night_04",
				"nik_hub_greeting_good_night_05",
				"nik_hub_greeting_good_night_06",
				"nik_hub_greeting_good_night_07",
				"nik_hub_greeting_night_27",
				"nik_hub_greeting_night_28",
				"nik_hub_greeting_night_29"
			},
			randomize_indexes = {},
			sound_events = {
				"nik_hub_greeting_good_night_01",
				"nik_hub_greeting_good_night_02",
				"nik_hub_greeting_good_night_03",
				"nik_hub_greeting_good_night_04",
				"nik_hub_greeting_good_night_05",
				"nik_hub_greeting_good_night_06",
				"nik_hub_greeting_good_night_07",
				"nik_hub_greeting_night_27",
				"nik_hub_greeting_night_28",
				"nik_hub_greeting_night_29"
			},
			sound_events_duration = {
				2.7527084350586,
				1.8072708845139,
				2.7666666507721,
				1.6047916412354,
				3.2974998950958,
				3.5403542518616,
				3.9356875419617,
				4.1783747673035,
				5.6291251182556,
				6.9817290306091
			}
		},
		nik_greeting_rainy = {
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "hub_level_specific_greetings",
			sound_events_n = 10,
			category = "npc_talk",
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
				"nik_hub_greeting_raining_01",
				"nik_hub_greeting_raining_02",
				"nik_hub_greeting_raining_03",
				"nik_hub_greeting_raining_04",
				"nik_hub_greeting_raining_05",
				"nik_hub_greeting_raining_06",
				"nik_hub_greeting_raining_07",
				"nik_hub_greeting_rainy_24",
				"nik_hub_greeting_rainy_25",
				"nik_hub_greeting_rainy_26"
			},
			randomize_indexes = {},
			sound_events = {
				"nik_hub_greeting_raining_01",
				"nik_hub_greeting_raining_02",
				"nik_hub_greeting_raining_03",
				"nik_hub_greeting_raining_04",
				"nik_hub_greeting_raining_05",
				"nik_hub_greeting_raining_06",
				"nik_hub_greeting_raining_07",
				"nik_hub_greeting_rainy_24",
				"nik_hub_greeting_rainy_25",
				"nik_hub_greeting_rainy_26"
			},
			sound_events_duration = {
				3.8818957805634,
				2.301374912262,
				2.6662707328796,
				3.8906042575836,
				5.6693959236145,
				3.4787292480469,
				3.4308333396912,
				2.4394583702087,
				6.7035417556763,
				5.4216456413269
			}
		},
		nik_greeting_sunny = {
			randomize_indexes_n = 0,
			face_animations_n = 11,
			database = "hub_level_specific_greetings",
			sound_events_n = 11,
			category = "npc_talk",
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
				"nik_hub_greeting_14",
				"nik_hub_greeting_sunny_01",
				"nik_hub_greeting_sunny_02",
				"nik_hub_greeting_sunny_03",
				"nik_hub_greeting_sunny_04",
				"nik_hub_greeting_sunny_05",
				"nik_hub_greeting_sunny_23",
				"nik_hub_greeting_sunny_22",
				"nik_hub_greeting_sunny_25",
				"nik_hub_greeting_sunny_21",
				"nik_hub_greeting_sunny_24"
			},
			randomize_indexes = {},
			sound_events = {
				"nik_hub_greeting_14",
				"nik_hub_greeting_sunny_01",
				"nik_hub_greeting_sunny_02",
				"nik_hub_greeting_sunny_03",
				"nik_hub_greeting_sunny_04",
				"nik_hub_greeting_sunny_05",
				"nik_hub_greeting_sunny_23",
				"nik_hub_greeting_sunny_22",
				"nik_hub_greeting_sunny_25",
				"nik_hub_greeting_sunny_21",
				"nik_hub_greeting_sunny_24"
			},
			sound_events_duration = {
				3.323979139328,
				2.727020740509,
				4.9666457176208,
				5.3645415306091,
				5.6548542976379,
				4.7416667938232,
				1.5245000123978,
				4.8956665992737,
				3.4472498893738,
				2.7051458358765,
				3.112104177475
			}
		},
		nik_hub_greeting_post_bogenhafen_a = {
			randomize_indexes_n = 0,
			face_animations_n = 5,
			database = "hub_level_specific_greetings",
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
				"nik_hub_greeting_post_bogenhafen_a_01",
				"nik_hub_greeting_post_bogenhafen_a_02",
				"nik_hub_greeting_post_bogenhafen_a_03",
				"nik_hub_greeting_post_bogenhafen_a_04",
				"nik_hub_greeting_post_bogenhafen_a_05"
			},
			randomize_indexes = {},
			sound_events = {
				"nik_hub_greeting_post_bogenhafen_a_01",
				"nik_hub_greeting_post_bogenhafen_a_02",
				"nik_hub_greeting_post_bogenhafen_a_03",
				"nik_hub_greeting_post_bogenhafen_a_04",
				"nik_hub_greeting_post_bogenhafen_a_05"
			},
			sound_events_duration = {
				3.6651041507721,
				3.444479227066,
				3.4773125648499,
				4.4015626907349,
				5.873583316803
			}
		},
		nik_hub_greeting_post_drachenfels_a = {
			randomize_indexes_n = 0,
			face_animations_n = 5,
			database = "hub_level_specific_greetings",
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
				"nik_hub_greeting_post_drachenfels_a_01",
				"nik_hub_greeting_post_drachenfels_a_02",
				"nik_hub_greeting_post_drachenfels_a_03",
				"nik_hub_greeting_post_drachenfels_a_04",
				"nik_hub_greeting_post_drachenfels_a_05"
			},
			randomize_indexes = {},
			sound_events = {
				"nik_hub_greeting_post_drachenfels_a_01",
				"nik_hub_greeting_post_drachenfels_a_02",
				"nik_hub_greeting_post_drachenfels_a_03",
				"nik_hub_greeting_post_drachenfels_a_04",
				"nik_hub_greeting_post_drachenfels_a_05"
			},
			sound_events_duration = {
				2.9828958511352,
				4.0924792289734,
				6.9257707595825,
				5.3232083320618,
				3.9961042404175
			}
		},
		nik_hub_greeting_post_helmgart_a = {
			randomize_indexes_n = 0,
			face_animations_n = 5,
			database = "hub_level_specific_greetings",
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
				"nik_hub_greeting_post_helmgart_a_01",
				"nik_hub_greeting_post_helmgart_a_02",
				"nik_hub_greeting_post_helmgart_a_03",
				"nik_hub_greeting_post_helmgart_a_04",
				"nik_hub_greeting_post_helmgart_a_05"
			},
			randomize_indexes = {},
			sound_events = {
				"nik_hub_greeting_post_helmgart_a_01",
				"nik_hub_greeting_post_helmgart_a_02",
				"nik_hub_greeting_post_helmgart_a_03",
				"nik_hub_greeting_post_helmgart_a_04",
				"nik_hub_greeting_post_helmgart_a_05"
			},
			sound_events_duration = {
				3.2263958454132,
				3.6131875514984,
				3.6844582557678,
				3.9554374217987,
				4.3062705993652
			}
		},
		nik_hub_greeting_post_karak_a = {
			randomize_indexes_n = 0,
			face_animations_n = 5,
			database = "hub_level_specific_greetings",
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
				"nik_hub_greeting_post_karak_a_01",
				"nik_hub_greeting_post_karak_a_02",
				"nik_hub_greeting_post_karak_a_03",
				"nik_hub_greeting_post_karak_a_04",
				"nik_hub_greeting_post_karak_a_05"
			},
			randomize_indexes = {},
			sound_events = {
				"nik_hub_greeting_post_karak_a_01",
				"nik_hub_greeting_post_karak_a_02",
				"nik_hub_greeting_post_karak_a_03",
				"nik_hub_greeting_post_karak_a_04",
				"nik_hub_greeting_post_karak_a_05"
			},
			sound_events_duration = {
				3.590562582016,
				3.2319583892822,
				4.7038331031799,
				5.6614789962769,
				4.5857915878296
			}
		},
		nik_hub_greeting_post_termite_3_a = {
			randomize_indexes_n = 0,
			face_animations_n = 5,
			database = "hub_level_specific_greetings",
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
				"nik_gateway_event_aftermath_cinematic_a_01",
				"nik_gateway_event_aftermath_cinematic_a_02",
				"nik_gateway_event_aftermath_cinematic_a_03",
				"nik_gateway_event_aftermath_elf_dummy_trigger",
				"nik_gateway_event_aftermath_elf_dummy_trigger"
			},
			randomize_indexes = {},
			sound_distance = math.huge,
			sound_event_filters = {
				nik_gateway_event_aftermath_elf_dummy_trigger = {
					{
						"global_context",
						"wood_elf",
						OP.EQ,
						false
					}
				}
			},
			sound_events = {
				"nik_gateway_event_aftermath_cinematic_a_01",
				"nik_gateway_event_aftermath_cinematic_a_02",
				"nik_gateway_event_aftermath_cinematic_a_03",
				"nik_gateway_event_aftermath_elf_dummy_trigger",
				"nik_gateway_event_aftermath_elf_dummy_trigger"
			},
			sound_events_duration = {
				5.4059545993805,
				5.5177707672119,
				6.0157084465027,
				0.20000000298023,
				0.20000000298023
			}
		},
		nik_hub_greeting_post_termite_a = {
			randomize_indexes_n = 0,
			face_animations_n = 5,
			database = "hub_level_specific_greetings",
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
				"nik_hub_greeting_post_termite_a_01",
				"nik_hub_greeting_post_termite_a_02",
				"nik_hub_greeting_post_termite_a_03",
				"nik_hub_greeting_post_termite_a_04",
				"nik_hub_greeting_post_termite_a_05"
			},
			randomize_indexes = {},
			sound_events = {
				"nik_hub_greeting_post_termite_a_01",
				"nik_hub_greeting_post_termite_a_02",
				"nik_hub_greeting_post_termite_a_03",
				"nik_hub_greeting_post_termite_a_04",
				"nik_hub_greeting_post_termite_a_05"
			},
			sound_events_duration = {
				3.0065207481384,
				4.2653956413269,
				3.7830624580383,
				2.1863749027252,
				2.425541639328
			}
		},
		nik_hub_greeting_post_tockstadt_a = {
			randomize_indexes_n = 0,
			face_animations_n = 5,
			database = "hub_level_specific_greetings",
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
				"nik_hub_greeting_post_tockstadt_a_01",
				"nik_hub_greeting_post_tockstadt_a_02",
				"nik_hub_greeting_post_tockstadt_a_03",
				"nik_hub_greeting_post_tockstadt_a_04",
				"nik_hub_greeting_post_tockstadt_a_05"
			},
			randomize_indexes = {},
			sound_events = {
				"nik_hub_greeting_post_tockstadt_a_01",
				"nik_hub_greeting_post_tockstadt_a_02",
				"nik_hub_greeting_post_tockstadt_a_03",
				"nik_hub_greeting_post_tockstadt_a_04",
				"nik_hub_greeting_post_tockstadt_a_05"
			},
			sound_events_duration = {
				2.6601667404175,
				4.3817915916443,
				3.5239791870117,
				3.7844166755676,
				4.1550626754761
			}
		},
		nik_hub_greeting_post_ubersreik_a = {
			randomize_indexes_n = 0,
			face_animations_n = 5,
			database = "hub_level_specific_greetings",
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
				"nik_hub_greeting_post_ubersreik_a_01",
				"nik_hub_greeting_post_ubersreik_a_02",
				"nik_hub_greeting_post_ubersreik_a_03",
				"nik_hub_greeting_post_ubersreik_a_04",
				"nik_hub_greeting_post_ubersreik_a_05"
			},
			randomize_indexes = {},
			sound_events = {
				"nik_hub_greeting_post_ubersreik_a_01",
				"nik_hub_greeting_post_ubersreik_a_02",
				"nik_hub_greeting_post_ubersreik_a_03",
				"nik_hub_greeting_post_ubersreik_a_04",
				"nik_hub_greeting_post_ubersreik_a_05"
			},
			sound_events_duration = {
				4.5269584655762,
				3.5697915554047,
				4.0737290382385,
				3.1604166030884,
				7.5361876487732
			}
		},
		nik_hub_greeting_post_whaling_village_a = {
			randomize_indexes_n = 0,
			face_animations_n = 5,
			database = "hub_level_specific_greetings",
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
				"nik_hub_greeting_post_whaling_village_a_01",
				"nik_hub_greeting_post_whaling_village_a_02",
				"nik_hub_greeting_post_whaling_village_a_03",
				"nik_hub_greeting_post_whaling_village_a_04",
				"nik_hub_greeting_post_whaling_village_a_05"
			},
			randomize_indexes = {},
			sound_events = {
				"nik_hub_greeting_post_whaling_village_a_01",
				"nik_hub_greeting_post_whaling_village_a_02",
				"nik_hub_greeting_post_whaling_village_a_03",
				"nik_hub_greeting_post_whaling_village_a_04",
				"nik_hub_greeting_post_whaling_village_a_05"
			},
			sound_events_duration = {
				2.5635833740234,
				2.7505209445953,
				2.9370832443237,
				2.0536251068115,
				2.6844375133514
			}
		},
		nik_hub_greeting_post_winds_a = {
			randomize_indexes_n = 0,
			face_animations_n = 5,
			database = "hub_level_specific_greetings",
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
				"nik_hub_greeting_post_winds_a_01",
				"nik_hub_greeting_post_winds_a_02",
				"nik_hub_greeting_post_winds_a_03",
				"nik_hub_greeting_post_winds_a_04",
				"nik_hub_greeting_post_winds_a_05"
			},
			randomize_indexes = {},
			sound_events = {
				"nik_hub_greeting_post_winds_a_01",
				"nik_hub_greeting_post_winds_a_02",
				"nik_hub_greeting_post_winds_a_03",
				"nik_hub_greeting_post_winds_a_04",
				"nik_hub_greeting_post_winds_a_05"
			},
			sound_events_duration = {
				3.0491459369659,
				3.959979057312,
				4.5024580955505,
				4.2939167022705,
				4.8461666107178
			}
		},
		pwe_gateway_event_aftermath_cinematic_a = {
			randomize_indexes_n = 0,
			face_animations_n = 3,
			database = "hub_level_specific_greetings",
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
				"pwe_gateway_event_aftermath_cinematic_a_01",
				"pwe_gateway_event_aftermath_cinematic_a_02",
				"pwe_gateway_event_aftermath_cinematic_a_03"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_gateway_event_aftermath_cinematic_a_01",
				"pwe_gateway_event_aftermath_cinematic_a_02",
				"pwe_gateway_event_aftermath_cinematic_a_03"
			},
			sound_events_duration = {
				5.6990623474121,
				4.4835834503174,
				5.1813335418701
			}
		}
	})
end
