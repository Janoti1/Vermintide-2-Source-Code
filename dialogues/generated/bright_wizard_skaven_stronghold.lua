return function ()
	define_rule({
		probability = 1,
		name = "pbw_gameplay_chieftain_tips_special_attack_cleave",
		response = "pbw_gameplay_chieftain_tips_special_attack_cleave",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"enemy_attack"
			},
			{
				"query_context",
				"attack_hit",
				OP.EQ,
				1
			},
			{
				"query_context",
				"attack_tag",
				OP.EQ,
				"special_attack_cleave"
			},
			{
				"user_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"query_context",
				"target_name",
				OP.NEQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_last_special_attack_cleave_hit",
				OP.TIMEDIFF,
				OP.GT,
				15
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_last_special_attack_cleave_hit",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pbw_gameplay_chieftain_tips_special_lunge_attack_2",
		response = "pbw_gameplay_chieftain_tips_special_lunge_attack_2",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"enemy_attack"
			},
			{
				"query_context",
				"attack_hit",
				OP.EQ,
				1
			},
			{
				"query_context",
				"attack_tag",
				OP.EQ,
				"special_lunge_attack_2"
			},
			{
				"user_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"query_context",
				"target_name",
				OP.NEQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"time_since_last_special_lunge_attack_2_hit",
				OP.TIMEDIFF,
				OP.GT,
				15
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_last_special_lunge_attack_2_hit",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pbw_gameplay_skaven_warlord_banter_reply",
		response = "pbw_gameplay_skaven_warlord_banter_reply",
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
				"ect_gameplay_banter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"gameplay_skaven_warlord_banter_reply",
				OP.TIMEDIFF,
				OP.GT,
				60
			}
		},
		on_done = {
			{
				"faction_memory",
				"gameplay_skaven_warlord_banter_reply",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pbw_gameplay_skaven_warlord_kill",
		response = "pbw_gameplay_skaven_warlord_kill",
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
				"skaven_storm_vermin_warlord"
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
				"user_memory",
				"level_skaven_stronghold_dead_warlord",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"level_skaven_stronghold_dead_warlord",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pbw_gameplay_skaven_warlord_summoning_reply",
		response = "pbw_gameplay_skaven_warlord_summoning_reply",
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
				"ect_gameplay_summoning_skaven"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"gameplay_skaven_warlord_summoning_reply",
				OP.TIMEDIFF,
				OP.GT,
				60
			}
		},
		on_done = {
			{
				"faction_memory",
				"gameplay_skaven_warlord_summoning_reply",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pbw_level_skaven_stronghold_barrier",
		response = "pbw_level_skaven_stronghold_barrier",
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
				"level_skaven_stronghold_barrier"
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
				"level_skaven_stronghold_barrier",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_skaven_stronghold_barrier",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pbw_level_skaven_stronghold_city_afire",
		response = "pbw_level_skaven_stronghold_city_afire",
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
				"level_skaven_stronghold_city_afire"
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
				"level_skaven_stronghold_city_afire",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_skaven_stronghold_city_afire",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pbw_level_skaven_stronghold_dead_warlord",
		response = "pbw_level_skaven_stronghold_dead_warlord",
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
				"level_skaven_stronghold_dead_warlord"
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
				"level_skaven_stronghold_dead_warlord",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_skaven_stronghold_dead_warlord",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pbw_level_skaven_stronghold_downtown",
		response = "pbw_level_skaven_stronghold_downtown",
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
				"level_skaven_stronghold_downtown"
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
				"level_skaven_stronghold_downtown",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_skaven_stronghold_downtown",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pbw_level_skaven_stronghold_elevator",
		response = "pbw_level_skaven_stronghold_elevator",
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
				"level_skaven_stronghold_elevator"
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
				"level_skaven_stronghold_elevator",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_skaven_stronghold_elevator",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pbw_level_skaven_stronghold_exit",
		response = "pbw_level_skaven_stronghold_exit",
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
				"level_skaven_stronghold_exit"
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
				"level_skaven_stronghold_exit",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_skaven_stronghold_exit",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pbw_level_skaven_stronghold_foundry_entered",
		response = "pbw_level_skaven_stronghold_foundry_entered",
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
				"level_skaven_stronghold_foundry_entered"
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
				"level_skaven_stronghold_foundry_entered",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_skaven_stronghold_foundry_entered",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pbw_level_skaven_stronghold_light_brazier",
		response = "pbw_level_skaven_stronghold_light_brazier",
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
				"level_skaven_stronghold_light_brazier"
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
				"level_skaven_stronghold_light_brazier",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_skaven_stronghold_light_brazier",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pbw_level_skaven_stronghold_long_way_down",
		response = "pbw_level_skaven_stronghold_long_way_down",
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
				"level_skaven_stronghold_long_way_down"
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
				"level_skaven_stronghold_long_way_down",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_skaven_stronghold_long_way_down",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pbw_level_skaven_stronghold_mission_complete",
		response = "pbw_level_skaven_stronghold_mission_complete",
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
				"level_skaven_stronghold_mission_complete"
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
				"level_skaven_stronghold_mission_complete",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_skaven_stronghold_mission_complete",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pbw_level_skaven_stronghold_patrol_lanes",
		response = "pbw_level_skaven_stronghold_patrol_lanes",
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
				"level_skaven_stronghold_patrol_lanes"
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
				"level_skaven_stronghold_patrol_lanes",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_skaven_stronghold_patrol_lanes",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pbw_level_skaven_stronghold_rat_ogre_rampage",
		response = "pbw_level_skaven_stronghold_rat_ogre_rampage",
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
				"level_skaven_stronghold_rat_ogre_rampage"
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
				"level_skaven_stronghold_rat_ogre_rampage",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_skaven_stronghold_rat_ogre_rampage",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pbw_level_skaven_stronghold_release_rat_ogre",
		response = "pbw_level_skaven_stronghold_release_rat_ogre",
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
				"level_skaven_stronghold_release_rat_ogre"
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
				"level_skaven_stronghold_release_rat_ogre",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_skaven_stronghold_release_rat_ogre",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pbw_level_skaven_stronghold_taunt_warlord",
		response = "pbw_level_skaven_stronghold_taunt_warlord",
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
				"level_skaven_stronghold_taunt_warlord"
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
				"level_skaven_stronghold_taunt_warlord",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_skaven_stronghold_taunt_warlord",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pbw_level_skaven_stronghold_vista",
		response = "pbw_level_skaven_stronghold_vista",
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
				"level_skaven_stronghold_vista"
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
				"level_skaven_stronghold_vista",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_skaven_stronghold_vista",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pbw_level_skaven_stronghold_warlord_nest",
		response = "pbw_level_skaven_stronghold_warlord_nest",
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
				"level_skaven_stronghold_warlord_nest"
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
				"level_skaven_stronghold_warlord_nest",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_skaven_stronghold_warlord_nest",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pbw_level_skaven_stronghold_waterwheel_complete",
		response = "pbw_level_skaven_stronghold_waterwheel_complete",
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
				"level_skaven_stronghold_waterwheel_complete"
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
				"level_skaven_stronghold_waterwheel_complete",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_skaven_stronghold_waterwheel_complete",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pbw_level_skaven_stronghold_waterwheel_move",
		response = "pbw_level_skaven_stronghold_waterwheel_move",
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
				"level_skaven_stronghold_waterwheel_move"
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
				"level_skaven_stronghold_waterwheel_move",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_skaven_stronghold_waterwheel_move",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pbw_skaven_stronghold_intro_a",
		response = "pbw_skaven_stronghold_intro_a",
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
				"skaven_stronghold_intro_a"
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
				"skaven_stronghold_intro_a",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"skaven_stronghold_intro_a",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pbw_skaven_stronghold_intro_b",
		response = "pbw_skaven_stronghold_intro_b",
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
				"skaven_stronghold_intro_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"skaven_stronghold_intro_b",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"skaven_stronghold_intro_b",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pbw_skaven_stronghold_intro_c",
		response = "pbw_skaven_stronghold_intro_c",
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
				"skaven_stronghold_intro_b"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"skaven_stronghold_intro_c",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"skaven_stronghold_intro_c",
				OP.TIMESET
			}
		}
	})
	add_dialogues({
		pbw_gameplay_chieftain_tips_special_attack_cleave = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_skaven_stronghold",
			sound_events_n = 4,
			category = "player_alerts",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_shout"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pbw_gameplay_chieftain_tips_01",
				"pbw_gameplay_chieftain_tips_02",
				"pbw_gameplay_chieftain_tips_03",
				"pbw_gameplay_chieftain_tips_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_gameplay_chieftain_tips_01",
				"pbw_gameplay_chieftain_tips_02",
				"pbw_gameplay_chieftain_tips_03",
				"pbw_gameplay_chieftain_tips_04"
			},
			sound_events_duration = {
				1.1974583864212,
				1.5837916135788,
				1.8058749437332,
				3.3715207576752
			}
		},
		pbw_gameplay_chieftain_tips_special_lunge_attack_2 = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_skaven_stronghold",
			sound_events_n = 4,
			category = "player_alerts",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_shout"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pbw_gameplay_chieftain_tips_01",
				"pbw_gameplay_chieftain_tips_02",
				"pbw_gameplay_chieftain_tips_03",
				"pbw_gameplay_chieftain_tips_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_gameplay_chieftain_tips_01",
				"pbw_gameplay_chieftain_tips_02",
				"pbw_gameplay_chieftain_tips_03",
				"pbw_gameplay_chieftain_tips_04"
			},
			sound_events_duration = {
				1.1974583864212,
				1.5837916135788,
				1.8058749437332,
				3.3715207576752
			}
		},
		pbw_gameplay_skaven_warlord_banter_reply = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_skaven_stronghold",
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
				"pbw_gameplay_chieftain_banter_reply_01",
				"pbw_gameplay_chieftain_banter_reply_02",
				"pbw_gameplay_chieftain_banter_reply_03",
				"pbw_gameplay_chieftain_banter_reply_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_gameplay_chieftain_banter_reply_01",
				"pbw_gameplay_chieftain_banter_reply_02",
				"pbw_gameplay_chieftain_banter_reply_03",
				"pbw_gameplay_chieftain_banter_reply_04"
			},
			sound_events_duration = {
				4.100604057312,
				2.528520822525,
				2.5821249485016,
				2.288125038147
			}
		},
		pbw_gameplay_skaven_warlord_kill = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_skaven_stronghold",
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
				"pbw_gameplay_skaven_warlord_kill_01",
				"pbw_gameplay_skaven_warlord_kill_02",
				"pbw_gameplay_skaven_warlord_kill_03",
				"pbw_gameplay_skaven_warlord_kill_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_gameplay_skaven_warlord_kill_01",
				"pbw_gameplay_skaven_warlord_kill_02",
				"pbw_gameplay_skaven_warlord_kill_03",
				"pbw_gameplay_skaven_warlord_kill_04"
			},
			sound_events_duration = {
				2.650687456131,
				2.0514166355133,
				3.0694582462311,
				3.5117917060852
			}
		},
		pbw_gameplay_skaven_warlord_summoning_reply = {
			randomize_indexes_n = 0,
			face_animations_n = 5,
			database = "bright_wizard_skaven_stronghold",
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
				"pbw_gameplay_skaven_warlord_summoning_reply_01",
				"pbw_gameplay_skaven_warlord_summoning_reply_02",
				"pbw_gameplay_skaven_warlord_summoning_reply_03",
				"pbw_gameplay_skaven_warlord_summoning_reply_04",
				"pbw_gameplay_skaven_warlord_summoning_reply_05"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_gameplay_skaven_warlord_summoning_reply_01",
				"pbw_gameplay_skaven_warlord_summoning_reply_02",
				"pbw_gameplay_skaven_warlord_summoning_reply_03",
				"pbw_gameplay_skaven_warlord_summoning_reply_04",
				"pbw_gameplay_skaven_warlord_summoning_reply_05"
			},
			sound_events_duration = {
				3.6424374580383,
				3.1910207271576,
				5.3455414772034,
				6.3318958282471,
				2.9363749027252
			}
		},
		pbw_level_skaven_stronghold_barrier = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_skaven_stronghold",
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
				"pbw_level_skaven_stronghold_barrier_01",
				"pbw_level_skaven_stronghold_barrier_02",
				"pbw_level_skaven_stronghold_barrier_03",
				"pbw_level_skaven_stronghold_barrier_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_level_skaven_stronghold_barrier_01",
				"pbw_level_skaven_stronghold_barrier_02",
				"pbw_level_skaven_stronghold_barrier_03",
				"pbw_level_skaven_stronghold_barrier_04"
			},
			sound_events_duration = {
				3.3028750419617,
				3.2588958740234,
				3.5893125534058,
				3.0399374961853
			}
		},
		pbw_level_skaven_stronghold_city_afire = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_skaven_stronghold",
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
				"pbw_level_skaven_stronghold_city_afire_01",
				"pbw_level_skaven_stronghold_city_afire_02",
				"pbw_level_skaven_stronghold_city_afire_03",
				"pbw_level_skaven_stronghold_city_afire_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_level_skaven_stronghold_city_afire_01",
				"pbw_level_skaven_stronghold_city_afire_02",
				"pbw_level_skaven_stronghold_city_afire_03",
				"pbw_level_skaven_stronghold_city_afire_04"
			},
			sound_events_duration = {
				3.7515625953674,
				2.0312082767487,
				5.4463958740234,
				4.9214792251587
			}
		},
		pbw_level_skaven_stronghold_dead_warlord = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_skaven_stronghold",
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
				"pbw_level_skaven_stronghold_dead_warlord_01",
				"pbw_level_skaven_stronghold_dead_warlord_02",
				"pbw_level_skaven_stronghold_dead_warlord_03",
				"pbw_level_skaven_stronghold_dead_warlord_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_level_skaven_stronghold_dead_warlord_01",
				"pbw_level_skaven_stronghold_dead_warlord_02",
				"pbw_level_skaven_stronghold_dead_warlord_03",
				"pbw_level_skaven_stronghold_dead_warlord_04"
			},
			sound_events_duration = {
				5.0323543548584,
				5.2413334846497,
				3.181562423706,
				4.0313334465027
			}
		},
		pbw_level_skaven_stronghold_downtown = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_skaven_stronghold",
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
				"pbw_level_skaven_stronghold_downtown_01",
				"pbw_level_skaven_stronghold_downtown_02",
				"pbw_level_skaven_stronghold_downtown_03",
				"pbw_level_skaven_stronghold_downtown_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_level_skaven_stronghold_downtown_01",
				"pbw_level_skaven_stronghold_downtown_02",
				"pbw_level_skaven_stronghold_downtown_03",
				"pbw_level_skaven_stronghold_downtown_04"
			},
			sound_events_duration = {
				6.0292291641235,
				3.6909375190735,
				4.6502289772034,
				6.558479309082
			}
		},
		pbw_level_skaven_stronghold_elevator = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_skaven_stronghold",
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
				"pbw_level_skaven_stronghold_elevator_01",
				"pbw_level_skaven_stronghold_elevator_02",
				"pbw_level_skaven_stronghold_elevator_03",
				"pbw_level_skaven_stronghold_elevator_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_level_skaven_stronghold_elevator_01",
				"pbw_level_skaven_stronghold_elevator_02",
				"pbw_level_skaven_stronghold_elevator_03",
				"pbw_level_skaven_stronghold_elevator_04"
			},
			sound_events_duration = {
				1.9626458883286,
				3.6301667690277,
				3.5189166069031,
				1.8113125562668
			}
		},
		pbw_level_skaven_stronghold_exit = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_skaven_stronghold",
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
				"pbw_level_skaven_stronghold_exit_01",
				"pbw_level_skaven_stronghold_exit_02",
				"pbw_level_skaven_stronghold_exit_03",
				"pbw_level_skaven_stronghold_exit_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_level_skaven_stronghold_exit_01",
				"pbw_level_skaven_stronghold_exit_02",
				"pbw_level_skaven_stronghold_exit_03",
				"pbw_level_skaven_stronghold_exit_04"
			},
			sound_events_duration = {
				1.5871458053589,
				3.6799790859222,
				1.9730833768845,
				3.3996040821075
			}
		},
		pbw_level_skaven_stronghold_foundry_entered = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_skaven_stronghold",
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
				"pbw_level_skaven_stronghold_foundry_entered_01",
				"pbw_level_skaven_stronghold_foundry_entered_02",
				"pbw_level_skaven_stronghold_foundry_entered_03",
				"pbw_level_skaven_stronghold_foundry_entered_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_level_skaven_stronghold_foundry_entered_01",
				"pbw_level_skaven_stronghold_foundry_entered_02",
				"pbw_level_skaven_stronghold_foundry_entered_03",
				"pbw_level_skaven_stronghold_foundry_entered_04"
			},
			sound_events_duration = {
				4.756395816803,
				3.4826978445053,
				5.7545623779297,
				5.0398540496826
			}
		},
		pbw_level_skaven_stronghold_light_brazier = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_skaven_stronghold",
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
				"pbw_level_skaven_stronghold_light_brazier_01",
				"pbw_level_skaven_stronghold_light_brazier_02",
				"pbw_level_skaven_stronghold_light_brazier_03",
				"pbw_level_skaven_stronghold_light_brazier_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_level_skaven_stronghold_light_brazier_01",
				"pbw_level_skaven_stronghold_light_brazier_02",
				"pbw_level_skaven_stronghold_light_brazier_03",
				"pbw_level_skaven_stronghold_light_brazier_04"
			},
			sound_events_duration = {
				4.3830623626709,
				2.214250087738,
				4.3522081375122,
				4.1595001220703
			}
		},
		pbw_level_skaven_stronghold_long_way_down = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_skaven_stronghold",
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
				"pbw_level_skaven_stronghold_long_way_down_01",
				"pbw_level_skaven_stronghold_long_way_down_02",
				"pbw_level_skaven_stronghold_long_way_down_03",
				"pbw_level_skaven_stronghold_long_way_down_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_level_skaven_stronghold_long_way_down_01",
				"pbw_level_skaven_stronghold_long_way_down_02",
				"pbw_level_skaven_stronghold_long_way_down_03",
				"pbw_level_skaven_stronghold_long_way_down_04"
			},
			sound_events_duration = {
				2.5936250686645,
				3.0139791965485,
				2.5864791870117,
				2.5152916908264
			}
		},
		pbw_level_skaven_stronghold_mission_complete = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_skaven_stronghold",
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
				"pbw_level_skaven_stronghold_mission_complete_01",
				"pbw_level_skaven_stronghold_mission_complete_02",
				"pbw_level_skaven_stronghold_mission_complete_03",
				"pbw_level_skaven_stronghold_mission_complete_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_level_skaven_stronghold_mission_complete_01",
				"pbw_level_skaven_stronghold_mission_complete_02",
				"pbw_level_skaven_stronghold_mission_complete_03",
				"pbw_level_skaven_stronghold_mission_complete_04"
			},
			sound_events_duration = {
				2.2183332443237,
				3.7155001163483,
				4.1073751449585,
				4.5838751792908
			}
		},
		pbw_level_skaven_stronghold_patrol_lanes = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_skaven_stronghold",
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
				"pbw_level_skaven_stronghold_patrol_lanes_01",
				"pbw_level_skaven_stronghold_patrol_lanes_02",
				"pbw_level_skaven_stronghold_patrol_lanes_03",
				"pbw_level_skaven_stronghold_patrol_lanes_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_level_skaven_stronghold_patrol_lanes_01",
				"pbw_level_skaven_stronghold_patrol_lanes_02",
				"pbw_level_skaven_stronghold_patrol_lanes_03",
				"pbw_level_skaven_stronghold_patrol_lanes_04"
			},
			sound_events_duration = {
				2.9117708206177,
				3.1404583454132,
				1.4716249704361,
				1.8402916193008
			}
		},
		pbw_level_skaven_stronghold_rat_ogre_rampage = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_skaven_stronghold",
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
				"pbw_level_skaven_stronghold_rat_ogre_rampage_01",
				"pbw_level_skaven_stronghold_rat_ogre_rampage_02",
				"pbw_level_skaven_stronghold_rat_ogre_rampage_03",
				"pbw_level_skaven_stronghold_rat_ogre_rampage_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_level_skaven_stronghold_rat_ogre_rampage_01",
				"pbw_level_skaven_stronghold_rat_ogre_rampage_02",
				"pbw_level_skaven_stronghold_rat_ogre_rampage_03",
				"pbw_level_skaven_stronghold_rat_ogre_rampage_04"
			},
			sound_events_duration = {
				1.9295417070389,
				2.8661041259766,
				3.2887291908264,
				2.6076250076294
			}
		},
		pbw_level_skaven_stronghold_release_rat_ogre = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_skaven_stronghold",
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
				"pbw_level_skaven_stronghold_release_rat_ogre_01",
				"pbw_level_skaven_stronghold_release_rat_ogre_02",
				"pbw_level_skaven_stronghold_release_rat_ogre_03",
				"pbw_level_skaven_stronghold_release_rat_ogre_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_level_skaven_stronghold_release_rat_ogre_01",
				"pbw_level_skaven_stronghold_release_rat_ogre_02",
				"pbw_level_skaven_stronghold_release_rat_ogre_03",
				"pbw_level_skaven_stronghold_release_rat_ogre_04"
			},
			sound_events_duration = {
				2.9649791717529,
				5.1491875648499,
				6.205979347229,
				5.6438541412353
			}
		},
		pbw_level_skaven_stronghold_taunt_warlord = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_skaven_stronghold",
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
				"pbw_level_skaven_stronghold_taunt_warlord_01",
				"pbw_level_skaven_stronghold_taunt_warlord_02",
				"pbw_level_skaven_stronghold_taunt_warlord_03",
				"pbw_level_skaven_stronghold_taunt_warlord_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_level_skaven_stronghold_taunt_warlord_01",
				"pbw_level_skaven_stronghold_taunt_warlord_02",
				"pbw_level_skaven_stronghold_taunt_warlord_03",
				"pbw_level_skaven_stronghold_taunt_warlord_04"
			},
			sound_events_duration = {
				3.2615416049957,
				6.0557498931885,
				2.6166458129883,
				6.3712291717529
			}
		},
		pbw_level_skaven_stronghold_vista = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_skaven_stronghold",
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
				"pbw_level_skaven_stronghold_vista_01",
				"pbw_level_skaven_stronghold_vista_02",
				"pbw_level_skaven_stronghold_vista_03",
				"pbw_level_skaven_stronghold_vista_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_level_skaven_stronghold_vista_01",
				"pbw_level_skaven_stronghold_vista_02",
				"pbw_level_skaven_stronghold_vista_03",
				"pbw_level_skaven_stronghold_vista_04"
			},
			sound_events_duration = {
				3.6166665554047,
				4.5604791641235,
				4.6492500305176,
				4.3039374351502
			}
		},
		pbw_level_skaven_stronghold_warlord_nest = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_skaven_stronghold",
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
				"pbw_level_skaven_stronghold_warlord_nest_01",
				"pbw_level_skaven_stronghold_warlord_nest_02",
				"pbw_level_skaven_stronghold_warlord_nest_03",
				"pbw_level_skaven_stronghold_warlord_nest_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_level_skaven_stronghold_warlord_nest_01",
				"pbw_level_skaven_stronghold_warlord_nest_02",
				"pbw_level_skaven_stronghold_warlord_nest_03",
				"pbw_level_skaven_stronghold_warlord_nest_04"
			},
			sound_events_duration = {
				2.1633124351502,
				3.7149167060852,
				7.9412293434143,
				4.3439168930054
			}
		},
		pbw_level_skaven_stronghold_waterwheel_complete = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_skaven_stronghold",
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
				"pbw_level_skaven_stronghold_waterwheel_complete_01",
				"pbw_level_skaven_stronghold_waterwheel_complete_02",
				"pbw_level_skaven_stronghold_waterwheel_complete_03",
				"pbw_level_skaven_stronghold_waterwheel_complete_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_level_skaven_stronghold_waterwheel_complete_01",
				"pbw_level_skaven_stronghold_waterwheel_complete_02",
				"pbw_level_skaven_stronghold_waterwheel_complete_03",
				"pbw_level_skaven_stronghold_waterwheel_complete_04"
			},
			sound_events_duration = {
				1.295041680336,
				1.1694166660309,
				2.0483541488648,
				2.2971875667572
			}
		},
		pbw_level_skaven_stronghold_waterwheel_move = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_skaven_stronghold",
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
				"pbw_level_skaven_stronghold_waterwheel_move_01",
				"pbw_level_skaven_stronghold_waterwheel_move_02",
				"pbw_level_skaven_stronghold_waterwheel_move_03",
				"pbw_level_skaven_stronghold_waterwheel_move_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_level_skaven_stronghold_waterwheel_move_01",
				"pbw_level_skaven_stronghold_waterwheel_move_02",
				"pbw_level_skaven_stronghold_waterwheel_move_03",
				"pbw_level_skaven_stronghold_waterwheel_move_04"
			},
			sound_events_duration = {
				2.1853957176209,
				3.9735207557678,
				2.5202083587647,
				3.1132292747498
			}
		},
		pbw_skaven_stronghold_intro_a = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard_skaven_stronghold",
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
				[1] = "pbw_skaven_stronghold_intro_a_01",
				[2] = "pbw_skaven_stronghold_intro_a_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pbw_skaven_stronghold_intro_a_01",
				[2] = "pbw_skaven_stronghold_intro_a_02"
			},
			sound_events_duration = {
				[1] = 4.2335209846497,
				[2] = 4.8107290267944
			}
		},
		pbw_skaven_stronghold_intro_b = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard_skaven_stronghold",
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
				[1] = "pbw_skaven_stronghold_intro_b_01",
				[2] = "pbw_skaven_stronghold_intro_b_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pbw_skaven_stronghold_intro_b_01",
				[2] = "pbw_skaven_stronghold_intro_b_02"
			},
			sound_events_duration = {
				[1] = 5.2051873207092,
				[2] = 5.660041809082
			}
		},
		pbw_skaven_stronghold_intro_c = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard_skaven_stronghold",
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
				[1] = "pbw_skaven_stronghold_intro_c_01",
				[2] = "pbw_skaven_stronghold_intro_c_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pbw_skaven_stronghold_intro_c_01",
				[2] = "pbw_skaven_stronghold_intro_c_02"
			},
			sound_events_duration = {
				[1] = 3.7501459121704,
				[2] = 4.273916721344
			}
		}
	})
end
