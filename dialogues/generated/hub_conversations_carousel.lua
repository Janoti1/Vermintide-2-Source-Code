return function ()
	define_rule({
		probability = 1,
		name = "nde_vs_hub_idle_a",
		response = "nde_vs_hub_idle_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"idle_vo"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_engineer"
			},
			{
				"user_memory",
				"vs_hub_idle_vo",
				OP.LT,
				2
			}
		},
		on_done = {
			{
				"user_memory",
				"vs_hub_idle_vo",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "nde_vs_hub_jump_puzzle_completed_a",
		response = "nde_vs_hub_jump_puzzle_completed_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"jump_puzzle_completed"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_engineer"
			},
			{
				"user_memory",
				"vs_hub_jump_puzzle_done",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"user_memory",
				"vs_hub_jump_puzzle_done",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		response = "nik_hub_vs_keep_onboarding_a",
		name = "nik_hub_vs_keep_onboarding_a",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"first_time_vs_hub"
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
		response = "nik_hub_vs_keep_onboarding_b",
		name = "nik_hub_vs_keep_onboarding_b",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak_self"
			},
			{
				"query_context",
				"dialogue_name",
				OP.EQ,
				"nik_hub_vs_keep_onboarding_a"
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
		response = "nik_hub_vs_keep_onboarding_c",
		name = "nik_hub_vs_keep_onboarding_c",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak_self"
			},
			{
				"query_context",
				"dialogue_name",
				OP.EQ,
				"nik_hub_vs_keep_onboarding_b"
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
		response = "nik_hub_vs_keep_onboarding_d",
		name = "nik_hub_vs_keep_onboarding_d",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak_self"
			},
			{
				"query_context",
				"dialogue_name",
				OP.EQ,
				"nik_hub_vs_keep_onboarding_c"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"inn_keeper"
			}
		}
	})
	add_dialogues({
		nde_vs_hub_idle_a = {
			randomize_indexes_n = 0,
			face_animations_n = 20,
			database = "hub_conversations_carousel",
			sound_events_n = 20,
			category = "story_talk_keep",
			dialogue_animations_n = 20,
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
				"face_neutral"
			},
			localization_strings = {
				"nde_vs_hub_idle_a_01",
				"nde_vs_hub_idle_a_02",
				"nde_vs_hub_idle_a_03",
				"nde_vs_hub_idle_a_04",
				"nde_vs_hub_idle_a_05",
				"nde_vs_hub_idle_a_06",
				"nde_vs_hub_idle_a_07",
				"nde_vs_hub_idle_a_08",
				"nde_vs_hub_idle_a_09",
				"nde_vs_hub_idle_a_10",
				"nde_vs_hub_idle_a_11",
				"nde_vs_hub_idle_a_12",
				"nde_vs_hub_idle_a_13",
				"nde_vs_hub_idle_a_14",
				"nde_vs_hub_idle_a_15",
				"nde_vs_hub_idle_a_16",
				"nde_vs_hub_idle_a_17",
				"nde_vs_hub_idle_a_18",
				"nde_vs_hub_idle_a_19",
				"nde_vs_hub_idle_a_20"
			},
			randomize_indexes = {},
			sound_events = {
				"nde_vs_hub_idle_a_01",
				"nde_vs_hub_idle_a_02",
				"nde_vs_hub_idle_a_03",
				"nde_vs_hub_idle_a_04",
				"nde_vs_hub_idle_a_05",
				"nde_vs_hub_idle_a_06",
				"nde_vs_hub_idle_a_07",
				"nde_vs_hub_idle_a_08",
				"nde_vs_hub_idle_a_09",
				"nde_vs_hub_idle_a_10",
				"nde_vs_hub_idle_a_11",
				"nde_vs_hub_idle_a_12",
				"nde_vs_hub_idle_a_13",
				"nde_vs_hub_idle_a_14",
				"nde_vs_hub_idle_a_15",
				"nde_vs_hub_idle_a_16",
				"nde_vs_hub_idle_a_17",
				"nde_vs_hub_idle_a_18",
				"nde_vs_hub_idle_a_19",
				"nde_vs_hub_idle_a_20"
			},
			sound_events_duration = {
				3.9562292098999,
				2.9117915630341,
				4.4378123283386,
				5.5999794006348,
				4.3811039924622,
				6.1630625724792,
				3.805645942688,
				6.1717710494995,
				4.7642707824707,
				6.0922708511353,
				4.6322293281555,
				5.5446667671204,
				6.8340835571289,
				5.5450835227966,
				4.3962082862854,
				7.6484789848328,
				7.1367292404175,
				7.6050000190735,
				6.1282501220703,
				5.8196873664856
			}
		},
		nde_vs_hub_jump_puzzle_completed_a = {
			randomize_indexes_n = 0,
			face_animations_n = 5,
			database = "hub_conversations_carousel",
			sound_events_n = 5,
			category = "story_talk_keep",
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
				"nde_vs_hub_jump_puzzle_completed_a_01",
				"nde_vs_hub_jump_puzzle_completed_a_02",
				"nde_vs_hub_jump_puzzle_completed_a_03",
				"nde_vs_hub_jump_puzzle_completed_a_04",
				"nde_vs_hub_jump_puzzle_completed_a_05"
			},
			randomize_indexes = {},
			sound_events = {
				"nde_vs_hub_jump_puzzle_completed_a_01",
				"nde_vs_hub_jump_puzzle_completed_a_02",
				"nde_vs_hub_jump_puzzle_completed_a_03",
				"nde_vs_hub_jump_puzzle_completed_a_04",
				"nde_vs_hub_jump_puzzle_completed_a_05"
			},
			sound_events_duration = {
				5.4603333473206,
				5.6317291259766,
				5.959979057312,
				5.5082292556763,
				3.9868125915527
			}
		},
		nik_hub_vs_keep_onboarding_a = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "hub_conversations_carousel",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "nik_hub_vs_keep_onboarding_a_01"
			},
			sound_events = {
				[1] = "nik_hub_vs_keep_onboarding_a_01"
			},
			sound_events_duration = {
				[1] = 2.732833147049
			}
		},
		nik_hub_vs_keep_onboarding_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "hub_conversations_carousel",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "nik_hub_vs_keep_onboarding_b_01"
			},
			sound_events = {
				[1] = "nik_hub_vs_keep_onboarding_b_01"
			},
			sound_events_duration = {
				[1] = 5.3698959350586
			}
		},
		nik_hub_vs_keep_onboarding_c = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "hub_conversations_carousel",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "nik_hub_vs_keep_onboarding_c_01"
			},
			sound_events = {
				[1] = "nik_hub_vs_keep_onboarding_c_01"
			},
			sound_events_duration = {
				[1] = 4.1025834083557
			}
		},
		nik_hub_vs_keep_onboarding_d = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "hub_conversations_carousel",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "nik_hub_vs_keep_onboarding_d_01"
			},
			sound_events = {
				[1] = "nik_hub_vs_keep_onboarding_d_01"
			},
			sound_events_duration = {
				[1] = 9.8119783401489
			}
		}
	})
end
