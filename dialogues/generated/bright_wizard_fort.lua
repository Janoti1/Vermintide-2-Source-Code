return function ()
	define_rule({
		probability = 1,
		name = "pbw_level_fort_cannonballs",
		response = "pbw_level_fort_cannonballs",
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
				"level_fort_cannonballs"
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
				"level_fort_cannonballs",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_fort_cannonballs",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pbw_level_fort_fire_cannon_final",
		response = "pbw_level_fort_fire_cannon_final",
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
				"level_fort_fire_cannon_final"
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
				"level_fort_fire_cannon_final",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_fort_fire_cannon_final",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pbw_level_fort_fire_cannon_final_hit",
		response = "pbw_level_fort_fire_cannon_final_hit",
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
				"level_fort_fire_cannon_final_fire"
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
				"level_fort_fire_cannon_final_hit",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_fort_fire_cannon_final_hit",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pbw_level_fort_fire_cannon_first",
		response = "pbw_level_fort_fire_cannon_first",
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
				"level_fort_fire_cannon_first"
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
				"level_fort_fire_cannon_first",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_fort_fire_cannon_first",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pbw_level_fort_fire_cannon_first_hit",
		response = "pbw_level_fort_fire_cannon_first_hit",
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
				"level_fort_fire_cannon_first_hit"
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
				"level_fort_fire_cannon_first_hit",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_fort_fire_cannon_first_hit",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pbw_level_fort_fire_cannon_fuse_is_lit",
		response = "pbw_level_fort_fire_cannon_fuse_is_lit",
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
				"level_fort_fire_cannon_fuse_is_lit"
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
				"level_fort_fire_cannon_fuse_is_lit",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_fort_fire_cannon_fuse_is_lit",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pbw_level_fort_fire_cannon_second",
		response = "pbw_level_fort_fire_cannon_second",
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
				"level_fort_fire_cannon_second"
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
				"level_fort_fire_cannon_second",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_fort_fire_cannon_second",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pbw_level_fort_fire_cannon_second_hit",
		response = "pbw_level_fort_fire_cannon_second_hit",
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
				"level_fort_fire_cannon_second_hit"
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
				"level_fort_fire_cannon_second_hit",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_fort_fire_cannon_second_hit",
				OP.ADD,
				1
			}
		}
	})
	add_dialogues({
		pbw_level_fort_cannonballs = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard_fort",
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
				[1] = "pbw_level_fort_cannonballs_01",
				[2] = "pbw_level_fort_cannonballs_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pbw_level_fort_cannonballs_01",
				[2] = "pbw_level_fort_cannonballs_02"
			},
			sound_events_duration = {
				[1] = 3.9113540649414,
				[2] = 3.4015834331513
			}
		},
		pbw_level_fort_fire_cannon_final = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard_fort",
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
				[1] = "pbw_level_fort_fire_cannon_final_fire_01",
				[2] = "pbw_level_fort_fire_cannon_final_fire_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pbw_level_fort_fire_cannon_final_fire_01",
				[2] = "pbw_level_fort_fire_cannon_final_fire_02"
			},
			sound_events_duration = {
				[1] = 4.1717081069946,
				[2] = 4.5877914428711
			}
		},
		pbw_level_fort_fire_cannon_final_hit = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard_fort",
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
				[1] = "pbw_level_fort_fire_cannon_final_fire_01",
				[2] = "pbw_level_fort_fire_cannon_final_fire_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pbw_level_fort_fire_cannon_final_fire_01",
				[2] = "pbw_level_fort_fire_cannon_final_fire_02"
			},
			sound_events_duration = {
				[1] = 4.1717081069946,
				[2] = 4.5877914428711
			}
		},
		pbw_level_fort_fire_cannon_first = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard_fort",
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
				[1] = "pbw_level_fort_fire_cannon_first_01",
				[2] = "pbw_level_fort_fire_cannon_first_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pbw_level_fort_fire_cannon_first_01",
				[2] = "pbw_level_fort_fire_cannon_first_02"
			},
			sound_events_duration = {
				[1] = 2.9402916431427,
				[2] = 2.3709375858307
			}
		},
		pbw_level_fort_fire_cannon_first_hit = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard_fort",
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
				[1] = "pbw_level_fort_fire_cannon_first_hit_01",
				[2] = "pbw_level_fort_fire_cannon_first_hit_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pbw_level_fort_fire_cannon_first_hit_01",
				[2] = "pbw_level_fort_fire_cannon_first_hit_02"
			},
			sound_events_duration = {
				[1] = 3.5760416984558,
				[2] = 3.648895740509
			}
		},
		pbw_level_fort_fire_cannon_fuse_is_lit = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard_fort",
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
				[1] = "pbw_level_fort_fire_cannon_fuse_is_lit_01",
				[2] = "pbw_level_fort_fire_cannon_fuse_is_lit_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pbw_level_fort_fire_cannon_fuse_is_lit_01",
				[2] = "pbw_level_fort_fire_cannon_fuse_is_lit_02"
			},
			sound_events_duration = {
				[1] = 1.0521249771118,
				[2] = 1.0781667232513
			}
		},
		pbw_level_fort_fire_cannon_second = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard_fort",
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
				[1] = "pbw_level_fort_fire_cannon_second_01",
				[2] = "pbw_level_fort_fire_cannon_second_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pbw_level_fort_fire_cannon_second_01",
				[2] = "pbw_level_fort_fire_cannon_second_02"
			},
			sound_events_duration = {
				[1] = 3.1053125858307,
				[2] = 3.8245208263397
			}
		},
		pbw_level_fort_fire_cannon_second_hit = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard_fort",
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
				[1] = "pbw_level_fort_fire_cannon_second_hit_01",
				[2] = "pbw_level_fort_fire_cannon_second_hit_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pbw_level_fort_fire_cannon_second_hit_01",
				[2] = "pbw_level_fort_fire_cannon_second_hit_02"
			},
			sound_events_duration = {
				[1] = 4.202166557312,
				[2] = 7.2180833816528
			}
		}
	})
end
