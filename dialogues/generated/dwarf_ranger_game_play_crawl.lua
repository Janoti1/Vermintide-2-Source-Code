return function ()
	define_rule({
		probability = 1,
		name = "pdr_activate_ability_dwarf_engineer_non_drunk",
		response = "pdr_activate_ability_dwarf_engineer_non_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"activate_ability"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_career",
				OP.EQ,
				"dr_engineer"
			},
			{
				"faction_memory",
				"last_activate_ability_dwarf_engineer",
				OP.TIMEDIFF,
				OP.GT,
				20
			},
			{
				"faction_memory",
				"crawl_spot_second_pub",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_activate_ability_dwarf_engineer",
				OP.TIMESET
			}
		}
	})
	define_rule({
		response = "pdr_activate_ability_ranger_non_drunk",
		name = "pdr_activate_ability_ranger_non_drunk",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"activate_ability"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_career",
				OP.EQ,
				"dr_ranger"
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"crawl_spot_second_pub",
				OP.EQ,
				0
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_burp",
		response = "pdr_burp",
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
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"crawl_heard_us",
				OP.EQ,
				1
			},
			{
				"user_memory",
				"time_since_burp",
				OP.TIMEDIFF,
				OP.GT,
				150
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_burp",
				OP.TIMESET
			}
		}
	})
	define_rule({
		response = "pdr_crawl_ability_drunk",
		name = "pdr_crawl_ability_drunk",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"activate_ability"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_career",
				OP.NEQ,
				"dr_engineer"
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_crawl_ability_okri_reply_pbw",
		response = "pdr_crawl_ability_okri_reply_pbw",
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
				"pbw_crawl_ability_04"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_memory",
				"pdr_okri_replies",
				OP.LT,
				2
			},
			{
				"user_memory",
				"time_since_okri_reply",
				OP.TIMEDIFF,
				OP.GT,
				120
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_okri_reply",
				OP.TIMESET
			},
			{
				"user_memory",
				"pdr_okri_replies",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_crawl_ability_okri_reply_pes",
		response = "pdr_crawl_ability_okri_reply_pes",
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
				"pes_crawl_ability_05"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_memory",
				"pdr_okri_replies",
				OP.LT,
				2
			},
			{
				"user_memory",
				"time_since_okri_reply",
				OP.TIMEDIFF,
				OP.GT,
				120
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_okri_reply",
				OP.TIMESET
			},
			{
				"user_memory",
				"pdr_okri_replies",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_crawl_ability_okri_reply_pes_gk",
		response = "pdr_crawl_ability_okri_reply_pes_gk",
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
				"pes_gk_crawl_ability_05"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_memory",
				"pdr_okri_replies",
				OP.LT,
				2
			},
			{
				"user_memory",
				"time_since_okri_reply",
				OP.TIMEDIFF,
				OP.GT,
				120
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_okri_reply",
				OP.TIMESET
			},
			{
				"user_memory",
				"pdr_okri_replies",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_crawl_ability_okri_reply_pwe",
		response = "pdr_crawl_ability_okri_reply_pwe",
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
				"pwe_crawl_ability_05"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_memory",
				"pdr_okri_replies",
				OP.LT,
				2
			},
			{
				"user_memory",
				"time_since_okri_reply",
				OP.TIMEDIFF,
				OP.GT,
				120
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_okri_reply",
				OP.TIMESET
			},
			{
				"user_memory",
				"pdr_okri_replies",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		response = "pdr_crawl_drank",
		name = "pdr_crawl_drank",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"player_drank_vce"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_crawl_drunk_buff_begins",
		response = "pdr_crawl_drunk_buff_begins",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"drunk_buff_begins"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_memory",
				"drunk_buff_begins",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"user_memory",
				"drunk_buff_begins",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_crawl_drunk_buff_begins_from_sick",
		response = "pdr_crawl_drunk_buff_begins_from_sick",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"buff_begins_from_sick"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_memory",
				"buff_begins_from_sick",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"user_memory",
				"buff_begins_from_sick",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_crawl_drunk_buff_wears_off",
		response = "pdr_crawl_drunk_buff_wears_off",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"buff_wears_off"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_memory",
				"buff_wears_off",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"user_memory",
				"buff_wears_off",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_crawl_head_shot_a",
		response = "pdr_crawl_head_shot_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"killed_enemy"
			},
			{
				"query_context",
				"hit_zone",
				OP.EQ,
				"head"
			},
			{
				"query_context",
				"weapon_slot",
				OP.EQ,
				"slot_ranged"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"time_since_last_special_kill_ranged",
				OP.TIMEDIFF,
				OP.GT,
				240
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_last_special_kill_ranged",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_crawl_head_shot_b",
		response = "pdr_crawl_head_shot_b",
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
				"crawl_head_shot_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_last_special_kill_ranged",
				OP.TIMESET
			}
		}
	})
	define_rule({
		response = "pdr_crawl_horde_incoming_b_ambush",
		name = "pdr_crawl_horde_incoming_b_ambush",
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
				"gameplay_ambush_horde_spawned_drunk"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			}
		}
	})
	define_rule({
		response = "pdr_crawl_horde_incoming_b_vector",
		name = "pdr_crawl_horde_incoming_b_vector",
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
				"gameplay_hears_incoming_horde_drunk"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_crawl_killing_spree_b",
		response = "pdr_crawl_killing_spree_b",
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
				"crawl_seen_killing_spree_bardin"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_last_frenzy_global",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_crawl_low_on_health_a",
		response = "pdr_crawl_low_on_health_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"health_trigger"
			},
			{
				"query_context",
				"current_amount",
				OP.LTEQ,
				0.4
			},
			{
				"query_context",
				"current_amount",
				OP.GTEQ,
				0.1
			},
			{
				"query_context",
				"trigger_type",
				OP.EQ,
				"decreasing"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				1
			},
			{
				"user_memory",
				"low_health",
				OP.TIMEDIFF,
				OP.GT,
				24
			}
		},
		on_done = {
			{
				"user_memory",
				"low_health",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_crawl_low_on_health_b",
		response = "pdr_crawl_low_on_health_b",
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
				"crawl_low_on_health_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"time_since_low_health",
				OP.TIMEDIFF,
				OP.GT,
				24
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_low_health",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_crawl_monster_spotted_b_chaos_spawn",
		response = "pdr_crawl_monster_spotted_b_chaos_spawn",
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
				"gameplay_hearing_a_chaos_spawn_drunk"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"time_since_incoming_boss_response",
				OP.TIMEDIFF,
				OP.GT,
				40
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_incoming_boss_response",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_crawl_monster_spotted_b_rat_ogre",
		response = "pdr_crawl_monster_spotted_b_rat_ogre",
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
				"gameplay_hearing_a_skaven_rat_ogre_drunk"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"time_since_incoming_boss_response",
				OP.TIMEDIFF,
				OP.GT,
				40
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_incoming_boss_response",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_crawl_monster_spotted_b_stormfiend",
		response = "pdr_crawl_monster_spotted_b_stormfiend",
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
				"gameplay_hearing_a_stormfiend_drunk"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"time_since_incoming_boss_response",
				OP.TIMEDIFF,
				OP.GT,
				40
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_incoming_boss_response",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_crawl_monster_spotted_b_troll",
		response = "pdr_crawl_monster_spotted_b_troll",
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
				"gameplay_hearing_a_troll_drunk"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"time_since_incoming_boss_response",
				OP.TIMEDIFF,
				OP.GT,
				40
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_incoming_boss_response",
				OP.TIMESET
			}
		}
	})
	define_rule({
		response = "pdr_crawl_monster_spotted_c_group",
		name = "pdr_crawl_monster_spotted_c_group",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"monster_spotted_crawl_done"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			}
		}
	})
	define_rule({
		response = "pdr_crawl_monster_spotted_c_group_three",
		name = "pdr_crawl_monster_spotted_c_group_three",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"monster_spotted_crawl_three_done"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			}
		}
	})
	define_rule({
		response = "pdr_crawl_monster_spotted_c_pbw",
		name = "pdr_crawl_monster_spotted_c_pbw",
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
				"pbw_crawl_monster_spotted_04_a_01"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			}
		}
	})
	define_rule({
		response = "pdr_crawl_monster_spotted_c_pes",
		name = "pdr_crawl_monster_spotted_c_pes",
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
				"pes_crawl_monster_spotted_04_a_01"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			}
		}
	})
	define_rule({
		response = "pdr_crawl_monster_spotted_c_pwe",
		name = "pdr_crawl_monster_spotted_c_pwe",
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
				"pwe_crawl_monster_spotted_04_a_01"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			}
		}
	})
	define_rule({
		response = "pdr_crawl_monster_spotted_c_pwh",
		name = "pdr_crawl_monster_spotted_c_pwh",
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
				"pwh_crawl_monster_spotted_04_a_01"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_crawl_pes_crawl_drunk_incoming_threat_new_b_globadier",
		response = "pdr_crawl_pes_crawl_drunk_incoming_threat_new_b_globadier",
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
				"gameplay_hearing_a_globadier_drunk"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"time_since_incoming_threat_response",
				OP.TIMEDIFF,
				OP.GT,
				40
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_incoming_threat_response",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_crawl_pes_crawl_drunk_incoming_threat_new_b_gutter_runner",
		response = "pdr_crawl_pes_crawl_drunk_incoming_threat_new_b_gutter_runner",
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
				"gameplay_hearing_a_gutter_runner_drunk"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"time_since_incoming_threat_response",
				OP.TIMEDIFF,
				OP.GT,
				40
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_incoming_threat_response",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_crawl_pes_crawl_drunk_incoming_threat_new_b_ratling",
		response = "pdr_crawl_pes_crawl_drunk_incoming_threat_new_b_ratling",
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
				"gameplay_hearing_a_skaven_ratling_gun_drunk"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"time_since_incoming_threat_response",
				OP.TIMEDIFF,
				OP.GT,
				40
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_incoming_threat_response",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_crawl_pes_crawl_drunk_incoming_threat_new_b_warpfire",
		response = "pdr_crawl_pes_crawl_drunk_incoming_threat_new_b_warpfire",
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
				"gameplay_hearing_a_Skaven_warpfire_thrower_drunk"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"time_since_incoming_threat_response",
				OP.TIMEDIFF,
				OP.GT,
				40
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_incoming_threat_response",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_crawl_seen_killing_spree_kerillian",
		response = "pdr_crawl_seen_killing_spree_kerillian",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"multikill"
			},
			{
				"query_context",
				"number_of_kills",
				OP.EQ,
				7
			},
			{
				"query_context",
				"profile_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"time_since_last_frenzy_wood_elf",
				OP.TIMEDIFF,
				OP.GT,
				600
			},
			{
				"faction_memory",
				"time_since_last_frenzy_global",
				OP.TIMEDIFF,
				OP.GT,
				45
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_last_frenzy_global",
				OP.TIMESET
			},
			{
				"faction_memory",
				"time_since_last_frenzy_wood_elf",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_crawl_seen_killing_spree_kruber",
		response = "pdr_crawl_seen_killing_spree_kruber",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"multikill"
			},
			{
				"query_context",
				"number_of_kills",
				OP.EQ,
				7
			},
			{
				"query_context",
				"profile_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"time_since_last_frenzy_empire_soldier",
				OP.TIMEDIFF,
				OP.GT,
				600
			},
			{
				"faction_memory",
				"time_since_last_frenzy_global",
				OP.TIMEDIFF,
				OP.GT,
				45
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_last_frenzy_global",
				OP.TIMESET
			},
			{
				"faction_memory",
				"time_since_last_frenzy_empire_soldier",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_crawl_seen_killing_spree_saltzpyre",
		response = "pdr_crawl_seen_killing_spree_saltzpyre",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"multikill"
			},
			{
				"query_context",
				"number_of_kills",
				OP.EQ,
				7
			},
			{
				"query_context",
				"profile_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"time_since_last_frenzy_witch_hunter",
				OP.TIMEDIFF,
				OP.GT,
				600
			},
			{
				"faction_memory",
				"time_since_last_frenzy_global",
				OP.TIMEDIFF,
				OP.GT,
				45
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_last_frenzy_global",
				OP.TIMESET
			},
			{
				"faction_memory",
				"time_since_last_frenzy_witch_hunter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_crawl_seen_killing_spree_sienna",
		response = "pdr_crawl_seen_killing_spree_sienna",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"multikill"
			},
			{
				"query_context",
				"number_of_kills",
				OP.EQ,
				7
			},
			{
				"query_context",
				"profile_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"time_since_last_frenzy_bright_wizard",
				OP.TIMEDIFF,
				OP.GT,
				600
			},
			{
				"faction_memory",
				"time_since_last_frenzy_global",
				OP.TIMEDIFF,
				OP.GT,
				45
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_last_frenzy_global",
				OP.TIMESET
			},
			{
				"faction_memory",
				"time_since_last_frenzy_bright_wizard",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_crawl_spots_item",
		response = "pdr_crawl_spots_item",
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
				OP.NEQ,
				"dummy_item"
			},
			{
				"query_context",
				"distance",
				OP.GT,
				1
			},
			{
				"query_context",
				"distance",
				OP.LT,
				17
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"last_saw_pickup",
				OP.TIMEDIFF,
				OP.GT,
				80
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_saw_pickup",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_crawl_throwing_bomb",
		response = "pdr_crawl_throwing_bomb",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"throwing_item"
			},
			{
				"query_context",
				"item_type",
				OP.EQ,
				"grenade"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				1
			},
			{
				"user_memory",
				"time_since_throwing_bomb",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_throwing_bomb",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_ambush_horde_spawned_drunk",
		response = "pdr_gameplay_ambush_horde_spawned_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"horde"
			},
			{
				"query_context",
				"horde_type",
				OP.EQ,
				"ambush"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"time_since_ambush",
				OP.TIMEDIFF,
				OP.GT,
				20
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_ambush",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_ambush_horde_spawned_no_drunk",
		response = "pdr_gameplay_ambush_horde_spawned_no_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"horde"
			},
			{
				"query_context",
				"horde_type",
				OP.EQ,
				"ambush"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_ambush",
				OP.TIMEDIFF,
				OP.GT,
				20
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_ambush",
				OP.TIMESET
			}
		}
	})
	define_rule({
		response = "pdr_gameplay_bright_wizard_being_helped_up_drunk",
		name = "pdr_gameplay_bright_wizard_being_helped_up_drunk",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"start_revive"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_bright_wizard_low_on_health_no_drunk",
		response = "pdr_gameplay_bright_wizard_low_on_health_no_drunk",
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
				"pbw_gameplay_low_on_health"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_low_health_pbw",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_low_health_pbw",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_casual_quotes_drunk",
		response = "pdr_gameplay_casual_quotes_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"story_trigger"
			},
			{
				"user_context",
				"enemies_close",
				OP.LT,
				5
			},
			{
				"user_context",
				"friends_close",
				OP.GT,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"crawl_spot_third_pub",
				OP.NOT,
				"crawl_spot_third_pub"
			},
			{
				"user_memory",
				"time_since_casual_quotes_bardin",
				OP.TIMEDIFF,
				OP.GT,
				300
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_casual_quotes_bardin",
				OP.TIMESET
			}
		}
	})
	define_rule({
		response = "pdr_gameplay_empire_soldier_being_helped_up_drunk",
		name = "pdr_gameplay_empire_soldier_being_helped_up_drunk",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"start_revive"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_empire_soldier_low_on_health_no_drunk",
		response = "pdr_gameplay_empire_soldier_low_on_health_no_drunk",
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
				"pes_gameplay_low_on_health"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_low_health_pes",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_low_health_pes",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_friendly_fire_bright_wizard_drunk",
		response = "pdr_gameplay_friendly_fire_bright_wizard_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"friendly_fire"
			},
			{
				"query_context",
				"target",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"query_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_memory",
				"last_friendly_fire",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"last_friendly_fire",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_friendly_fire_empire_soldier_drunk",
		response = "pdr_gameplay_friendly_fire_empire_soldier_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"friendly_fire"
			},
			{
				"query_context",
				"target",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"query_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_memory",
				"last_friendly_fire",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"last_friendly_fire",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_friendly_fire_witch_hunter_drunk",
		response = "pdr_gameplay_friendly_fire_witch_hunter_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"friendly_fire"
			},
			{
				"query_context",
				"target",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"query_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_memory",
				"last_friendly_fire",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"last_friendly_fire",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_friendly_fire_wood_elf_drunk",
		response = "pdr_gameplay_friendly_fire_wood_elf_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"friendly_fire"
			},
			{
				"query_context",
				"target",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"query_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_memory",
				"last_friendly_fire",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"last_friendly_fire",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_healing_bright_wizard_drunk",
		response = "pdr_gameplay_healing_bright_wizard_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heal_start"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_memory",
				"last_healed_someone",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"user_memory",
				"last_healed_someone",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_healing_draught_drunk",
		response = "pdr_gameplay_healing_draught_drunk",
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
				"health_flask"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"query_context",
				"enemies_distant",
				OP.EQ,
				0
			},
			{
				"query_context",
				"distance",
				OP.GT,
				1
			},
			{
				"query_context",
				"distance",
				OP.LT,
				1
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"last_saw_pickup",
				OP.TIMEDIFF,
				OP.GT,
				120
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_saw_pickup",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_healing_empire_soldier_drunk",
		response = "pdr_gameplay_healing_empire_soldier_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heal_start"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_memory",
				"last_healed_someone",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"user_memory",
				"last_healed_someone",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_healing_witch_hunter_drunk",
		response = "pdr_gameplay_healing_witch_hunter_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heal_start"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_memory",
				"last_healed_someone",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"user_memory",
				"last_healed_someone",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_healing_wood_elf_drunk",
		response = "pdr_gameplay_healing_wood_elf_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heal_start"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_memory",
				"last_healed_someone",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"user_memory",
				"last_healed_someone",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_hearing_a_Skaven_warpfire_thrower_combat_no_drunk",
		response = "pdr_gameplay_hearing_a_Skaven_warpfire_thrower_combat_no_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"skaven_warpfire_thrower"
			},
			{
				"user_context",
				"enemies_close",
				OP.GT,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"last_seen_skaven_warpfire_thrower",
				OP.TIMEDIFF,
				OP.GT,
				20
			},
			{
				"faction_memory",
				"last_heard_skaven_warpfire_thrower",
				OP.TIMEDIFF,
				OP.GT,
				120
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_heard_skaven_warpfire_thrower",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_hearing_a_Skaven_warpfire_thrower_drunk",
		response = "pdr_gameplay_hearing_a_Skaven_warpfire_thrower_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"skaven_warpfire_thrower"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_memory",
				"incoming_threat_bardin",
				OP.TIMEDIFF,
				OP.GT,
				75
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"last_seen_skaven_warpfire_thrower",
				OP.TIMEDIFF,
				OP.GT,
				20
			},
			{
				"faction_memory",
				"last_heard_skaven_warpfire_thrower",
				OP.TIMEDIFF,
				OP.GT,
				60
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_heard_skaven_warpfire_thrower",
				OP.TIMESET
			},
			{
				"user_memory",
				"incoming_threat_bardin",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_hearing_a_Skaven_warpfire_thrower_no_drunk",
		response = "pdr_gameplay_hearing_a_Skaven_warpfire_thrower_no_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"skaven_warpfire_thrower"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"last_seen_skaven_warpfire_thrower",
				OP.TIMEDIFF,
				OP.GT,
				20
			},
			{
				"faction_memory",
				"last_heard_skaven_warpfire_thrower",
				OP.TIMEDIFF,
				OP.GT,
				60
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_heard_skaven_warpfire_thrower",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_hearing_a_chaos_spawn_combat_no_drunk",
		response = "pdr_gameplay_hearing_a_chaos_spawn_combat_no_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"chaos_spawn"
			},
			{
				"user_context",
				"enemies_close",
				OP.GT,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"last_seen_chaos_spawn",
				OP.TIMEDIFF,
				OP.GT,
				20
			},
			{
				"faction_memory",
				"last_heard_chaos_spawn",
				OP.TIMEDIFF,
				OP.GT,
				300
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_heard_chaos_spawn",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_hearing_a_chaos_spawn_drunk",
		response = "pdr_gameplay_hearing_a_chaos_spawn_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"chaos_spawn"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_memory",
				"incoming_threat_bardin",
				OP.TIMEDIFF,
				OP.GT,
				75
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"last_seen_chaos_spawn",
				OP.TIMEDIFF,
				OP.GT,
				20
			},
			{
				"faction_memory",
				"last_heard_chaos_spawn",
				OP.TIMEDIFF,
				OP.GT,
				120
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_heard_chaos_spawn",
				OP.TIMESET
			},
			{
				"user_memory",
				"incoming_threat_bardin",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_hearing_a_chaos_spawn_no_drunk",
		response = "pdr_gameplay_hearing_a_chaos_spawn_no_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"chaos_spawn"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"last_seen_chaos_spawn",
				OP.TIMEDIFF,
				OP.GT,
				20
			},
			{
				"faction_memory",
				"last_heard_chaos_spawn",
				OP.TIMEDIFF,
				OP.GT,
				120
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_heard_chaos_spawn",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_hearing_a_chaos_warrior_combat_no_drunk",
		response = "pdr_gameplay_hearing_a_chaos_warrior_combat_no_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"chaos_warrior"
			},
			{
				"user_context",
				"enemies_close",
				OP.GT,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"last_seen_chaos_warrior",
				OP.TIMEDIFF,
				OP.GT,
				20
			},
			{
				"faction_memory",
				"last_heard_chaos_warrior",
				OP.TIMEDIFF,
				OP.GT,
				120
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_heard_chaos_warrior",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_hearing_a_chaos_wizard_wind_combat_drunk",
		response = "pdr_gameplay_hearing_a_chaos_wizard_wind_combat_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"chaos_vortex_sorcerer"
			},
			{
				"user_context",
				"enemies_close",
				OP.GT,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_memory",
				"incoming_threat_bardin",
				OP.TIMEDIFF,
				OP.GT,
				75
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"last_seen_chaos_vortex_sorcerer",
				OP.TIMEDIFF,
				OP.GT,
				20
			},
			{
				"faction_memory",
				"last_heard_chaos_vortex_sorcerer",
				OP.TIMEDIFF,
				OP.GT,
				120
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_heard_chaos_vortex_sorcerer",
				OP.TIMESET
			},
			{
				"user_memory",
				"incoming_threat_bardin",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_hearing_a_chaos_wizard_wind_combat_no_drunk",
		response = "pdr_gameplay_hearing_a_chaos_wizard_wind_combat_no_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"chaos_vortex_sorcerer"
			},
			{
				"user_context",
				"enemies_close",
				OP.GT,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"last_seen_chaos_vortex_sorcerer",
				OP.TIMEDIFF,
				OP.GT,
				20
			},
			{
				"faction_memory",
				"last_heard_chaos_vortex_sorcerer",
				OP.TIMEDIFF,
				OP.GT,
				120
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_heard_chaos_vortex_sorcerer",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_hearing_a_chaos_wizard_wind_drunk",
		response = "pdr_gameplay_hearing_a_chaos_wizard_wind_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"chaos_vortex_sorcerer"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_memory",
				"incoming_threat_bardin",
				OP.TIMEDIFF,
				OP.GT,
				75
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"last_seen_chaos_vortex_sorcerer",
				OP.TIMEDIFF,
				OP.GT,
				20
			},
			{
				"faction_memory",
				"last_heard_chaos_vortex_sorcerer",
				OP.TIMEDIFF,
				OP.GT,
				60
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_heard_chaos_vortex_sorcerer",
				OP.TIMESET
			},
			{
				"user_memory",
				"incoming_threat_bardin",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_hearing_a_chaos_wizard_wind_no_drunk",
		response = "pdr_gameplay_hearing_a_chaos_wizard_wind_no_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"chaos_vortex_sorcerer"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"last_seen_chaos_vortex_sorcerer",
				OP.TIMEDIFF,
				OP.GT,
				20
			},
			{
				"faction_memory",
				"last_heard_chaos_vortex_sorcerer",
				OP.TIMEDIFF,
				OP.GT,
				60
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_heard_chaos_vortex_sorcerer",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_hearing_a_globadier_drunk",
		response = "pdr_gameplay_hearing_a_globadier_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"skaven_poison_wind_globadier"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_memory",
				"incoming_threat_bardin",
				OP.TIMEDIFF,
				OP.GT,
				75
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"last_seen_globadier",
				OP.TIMEDIFF,
				OP.GT,
				20
			},
			{
				"faction_memory",
				"last_heard_globadier",
				OP.TIMEDIFF,
				OP.GT,
				60
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_heard_globadier",
				OP.TIMESET
			},
			{
				"user_memory",
				"incoming_threat_bardin",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_hearing_a_globadier_no_drunk",
		response = "pdr_gameplay_hearing_a_globadier_no_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"skaven_poison_wind_globadier"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"last_seen_globadier",
				OP.TIMEDIFF,
				OP.GT,
				10
			},
			{
				"faction_memory",
				"last_heard_globadier",
				OP.TIMEDIFF,
				OP.GT,
				30
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_heard_globadier",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_hearing_a_gutter_runner_combat_no_drunk",
		response = "pdr_gameplay_hearing_a_gutter_runner_combat_no_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"skaven_gutter_runner"
			},
			{
				"user_context",
				"enemies_close",
				OP.GT,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"last_seen_gutter_runner",
				OP.TIMEDIFF,
				OP.GT,
				10
			},
			{
				"faction_memory",
				"last_heard_gutter_runner",
				OP.TIMEDIFF,
				OP.GT,
				30
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_heard_gutter_runner",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_hearing_a_gutter_runner_drunk",
		response = "pdr_gameplay_hearing_a_gutter_runner_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"skaven_gutter_runner"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_memory",
				"incoming_threat_bardin",
				OP.TIMEDIFF,
				OP.GT,
				75
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"last_seen_gutter_runner",
				OP.TIMEDIFF,
				OP.GT,
				20
			},
			{
				"faction_memory",
				"last_heard_gutter_runner",
				OP.TIMEDIFF,
				OP.GT,
				60
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_heard_gutter_runner",
				OP.TIMESET
			},
			{
				"user_memory",
				"incoming_threat_bardin",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_hearing_a_gutter_runner_no_drunk",
		response = "pdr_gameplay_hearing_a_gutter_runner_no_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"skaven_gutter_runner"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"last_seen_gutter_runner",
				OP.TIMEDIFF,
				OP.GT,
				10
			},
			{
				"faction_memory",
				"last_heard_gutter_runner",
				OP.TIMEDIFF,
				OP.GT,
				30
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_heard_gutter_runner",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_hearing_a_pm_in_combat_no_drunk",
		response = "pdr_gameplay_hearing_a_pm_in_combat_no_drunk",
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
				"Play_plague_monk_alerted_vce"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"enemies_close",
				OP.GT,
				0
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"last_seen_skaven_plague_monk",
				OP.TIMEDIFF,
				OP.GT,
				20
			},
			{
				"faction_memory",
				"last_heard_skaven_plague_monk",
				OP.TIMEDIFF,
				OP.GT,
				60
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_heard_skaven_plague_monk",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_hearing_a_pm_no_drunk",
		response = "pdr_gameplay_hearing_a_pm_no_drunk",
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
				"Play_plague_monk_alerted_vce"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"last_seen_skaven_plague_monk",
				OP.TIMEDIFF,
				OP.GT,
				20
			},
			{
				"faction_memory",
				"last_heard_skaven_plague_monk",
				OP.TIMEDIFF,
				OP.GT,
				30
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_heard_skaven_plague_monk",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_hearing_a_skaven_patrol_stormvermin_drunk",
		response = "pdr_gameplay_hearing_a_skaven_patrol_stormvermin_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"skaven_storm_vermin"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_memory",
				"incoming_threat_bardin",
				OP.TIMEDIFF,
				OP.GT,
				75
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"last_seen_storm_vermin",
				OP.TIMEDIFF,
				OP.GT,
				20
			},
			{
				"faction_memory",
				"last_heard_storm_vermin",
				OP.TIMEDIFF,
				OP.GT,
				120
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_heard_storm_vermin",
				OP.TIMESET
			},
			{
				"user_memory",
				"incoming_threat_bardin",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_hearing_a_skaven_patrol_stormvermin_no_drunk",
		response = "pdr_gameplay_hearing_a_skaven_patrol_stormvermin_no_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"skaven_storm_vermin"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"last_seen_storm_vermin",
				OP.TIMEDIFF,
				OP.GT,
				10
			},
			{
				"faction_memory",
				"last_heard_storm_vermin",
				OP.TIMEDIFF,
				OP.GT,
				30
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_heard_storm_vermin",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_hearing_a_skaven_rat_ogre_drunk",
		response = "pdr_gameplay_hearing_a_skaven_rat_ogre_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"skaven_rat_ogre"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_memory",
				"incoming_threat_bardin",
				OP.TIMEDIFF,
				OP.GT,
				75
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"last_seen_rate_ogre",
				OP.TIMEDIFF,
				OP.GT,
				20
			},
			{
				"faction_memory",
				"last_heard_skaven_rat_ogre",
				OP.TIMEDIFF,
				OP.GT,
				120
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_heard_skaven_rat_ogre",
				OP.TIMESET
			},
			{
				"user_memory",
				"incoming_threat_bardin",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_hearing_a_skaven_rat_ogre_no_drunk",
		response = "pdr_gameplay_hearing_a_skaven_rat_ogre_no_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"skaven_rat_ogre"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"last_seen_rate_ogre",
				OP.TIMEDIFF,
				OP.GT,
				10
			},
			{
				"faction_memory",
				"last_heard_skaven_rat_ogre",
				OP.TIMEDIFF,
				OP.GT,
				30
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_heard_skaven_rat_ogre",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_hearing_a_skaven_ratling_gun_combat_no_drunk",
		response = "pdr_gameplay_hearing_a_skaven_ratling_gun_combat_no_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"skaven_ratling_gunner"
			},
			{
				"user_context",
				"enemies_close",
				OP.GT,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"last_seen_skaven_ratling_gunner",
				OP.TIMEDIFF,
				OP.GT,
				10
			},
			{
				"faction_memory",
				"last_heard_skaven_ratling_gunner",
				OP.TIMEDIFF,
				OP.GT,
				30
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_heard_skaven_ratling_gunner",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_hearing_a_skaven_ratling_gun_drunk",
		response = "pdr_gameplay_hearing_a_skaven_ratling_gun_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"skaven_ratling_gunner"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_memory",
				"incoming_threat_bardin",
				OP.TIMEDIFF,
				OP.GT,
				75
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"last_seen_skaven_ratling_gunner",
				OP.TIMEDIFF,
				OP.GT,
				20
			},
			{
				"faction_memory",
				"last_heard_skaven_ratling_gunner",
				OP.TIMEDIFF,
				OP.GT,
				60
			},
			{
				"user_memory",
				"incoming_threat_bardin",
				OP.TIMEDIFF,
				OP.GT,
				75
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_heard_skaven_ratling_gunner",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_hearing_a_skaven_ratling_gun_no_drunk",
		response = "pdr_gameplay_hearing_a_skaven_ratling_gun_no_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"skaven_ratling_gunner"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"last_seen_skaven_ratling_gunner",
				OP.TIMEDIFF,
				OP.GT,
				10
			},
			{
				"faction_memory",
				"last_heard_skaven_ratling_gunner",
				OP.TIMEDIFF,
				OP.GT,
				30
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_heard_skaven_ratling_gunner",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_hearing_a_stormfiend_combat_no_drunk",
		response = "pdr_gameplay_hearing_a_stormfiend_combat_no_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"skaven_stormfiend"
			},
			{
				"user_context",
				"enemies_close",
				OP.GT,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"last_seen_skaven_stormfiend",
				OP.TIMEDIFF,
				OP.GT,
				20
			},
			{
				"faction_memory",
				"last_heard_skaven_stormfiend",
				OP.TIMEDIFF,
				OP.GT,
				300
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_heard_skaven_stormfiend",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_hearing_a_stormfiend_drunk",
		response = "pdr_gameplay_hearing_a_stormfiend_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"skaven_stormfiend"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_memory",
				"incoming_threat_bardin",
				OP.TIMEDIFF,
				OP.GT,
				75
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"last_seen_skaven_stormfiend",
				OP.TIMEDIFF,
				OP.GT,
				20
			},
			{
				"faction_memory",
				"last_heard_skaven_stormfiend",
				OP.TIMEDIFF,
				OP.GT,
				120
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_heard_skaven_stormfiend",
				OP.TIMESET
			},
			{
				"user_memory",
				"incoming_threat_bardin",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_hearing_a_stormfiend_no_drunk",
		response = "pdr_gameplay_hearing_a_stormfiend_no_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"skaven_stormfiend"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"last_seen_skaven_stormfiend",
				OP.TIMEDIFF,
				OP.GT,
				20
			},
			{
				"faction_memory",
				"last_heard_skaven_stormfiend",
				OP.TIMEDIFF,
				OP.GT,
				120
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_heard_skaven_stormfiend",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_hearing_a_troll_combat_no_drunk",
		response = "pdr_gameplay_hearing_a_troll_combat_no_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"chaos_troll"
			},
			{
				"user_context",
				"enemies_close",
				OP.GT,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"last_seen_chaos_troll",
				OP.TIMEDIFF,
				OP.GT,
				20
			},
			{
				"faction_memory",
				"last_heard_chaos_troll",
				OP.TIMEDIFF,
				OP.GT,
				300
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_heard_chaos_troll",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_hearing_a_troll_drunk",
		response = "pdr_gameplay_hearing_a_troll_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"chaos_troll"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_memory",
				"incoming_threat_bardin",
				OP.TIMEDIFF,
				OP.GT,
				75
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"last_seen_chaos_troll",
				OP.TIMEDIFF,
				OP.GT,
				20
			},
			{
				"faction_memory",
				"last_heard_chaos_troll",
				OP.TIMEDIFF,
				OP.GT,
				120
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_heard_chaos_troll",
				OP.TIMESET
			},
			{
				"user_memory",
				"incoming_threat_bardin",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_hearing_a_troll_no_drunk",
		response = "pdr_gameplay_hearing_a_troll_no_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"chaos_troll"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"last_seen_chaos_troll",
				OP.TIMEDIFF,
				OP.GT,
				20
			},
			{
				"faction_memory",
				"last_heard_chaos_troll",
				OP.TIMEDIFF,
				OP.GT,
				120
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_heard_chaos_troll",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_hearing_marauder_berserker_combat_no_drunk",
		response = "pdr_gameplay_hearing_marauder_berserker_combat_no_drunk",
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
				"ecb_gameplay_running_towards_players"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"last_heard_chaos_berzerker",
				OP.TIMEDIFF,
				OP.GT,
				60
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_heard_chaos_berzerker",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_hears_incoming_horde_drunk",
		response = "pdr_gameplay_hears_incoming_horde_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"horde"
			},
			{
				"query_context",
				"horde_type",
				OP.EQ,
				"vector"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"time_since_horde",
				OP.TIMEDIFF,
				OP.GT,
				20
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_horde",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_hears_incoming_horde_no_drunk",
		response = "pdr_gameplay_hears_incoming_horde_no_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"horde"
			},
			{
				"query_context",
				"horde_type",
				OP.EQ,
				"vector"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_horde",
				OP.TIMEDIFF,
				OP.GT,
				20
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_horde",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_helped_by_bright_wizard_drunk",
		response = "pdr_gameplay_helped_by_bright_wizard_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heal_completed"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"query_context",
				"healer_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_memory",
				"last_helped",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"user_memory",
				"last_helped",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_helped_by_empire_soldier_drunk",
		response = "pdr_gameplay_helped_by_empire_soldier_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heal_completed"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"query_context",
				"healer_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_memory",
				"last_helped",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"user_memory",
				"last_helped",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_helped_by_witch_hunter_drunk",
		response = "pdr_gameplay_helped_by_witch_hunter_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heal_completed"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"query_context",
				"healer_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_memory",
				"last_helped",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"user_memory",
				"last_helped",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_helped_by_wood_elf_drunk",
		response = "pdr_gameplay_helped_by_wood_elf_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heal_completed"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"query_context",
				"healer_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_memory",
				"last_helped",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"user_memory",
				"last_helped",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_incoming_skaven_rat_ogre_drunk",
		response = "pdr_gameplay_incoming_skaven_rat_ogre_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"enemy_attack"
			},
			{
				"query_context",
				"attack_tag",
				OP.EQ,
				"rat_ogre_charge"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_memory",
				"incoming_threat_bardin",
				OP.TIMEDIFF,
				OP.GT,
				75
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"ogre_charges",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"faction_memory",
				"ogre_charges",
				OP.TIMESET
			},
			{
				"user_memory",
				"incoming_threat_bardin",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_incoming_skaven_rat_ogre_no_drunk",
		response = "pdr_gameplay_incoming_skaven_rat_ogre_no_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"enemy_attack"
			},
			{
				"query_context",
				"attack_tag",
				OP.EQ,
				"rat_ogre_charge"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"ogre_charges",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"faction_memory",
				"ogre_charges",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_killing_a_chaos_warrior_no_drunk",
		response = "pdr_gameplay_killing_a_chaos_warrior_no_drunk",
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
				"chaos_warrior"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_memory",
				"time_since_chaos_warrior",
				OP.TIMEDIFF,
				OP.GT,
				5
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_chaos_warrior",
				OP.TIMESET
			},
			{
				"faction_memory",
				"dwarf_ranger_special_kills_in_row",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"witch_hunter_special_kills_in_row",
				OP.NUMSET,
				0
			},
			{
				"faction_memory",
				"bright_wizard_special_kills_in_row",
				OP.NUMSET,
				0
			},
			{
				"faction_memory",
				"dwarf_ranger_special_kills_in_row",
				OP.NUMSET,
				0
			},
			{
				"faction_memory",
				"wood_elf_special_kills_in_row",
				OP.NUMSET,
				0
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_killing_a_chaos_wizard_leech_no_drunk",
		response = "pdr_gameplay_killing_a_chaos_wizard_leech_no_drunk",
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
				"chaos_corruptor_sorcerer"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_memory",
				"time_since_chaos_wizard_leech",
				OP.TIMEDIFF,
				OP.GT,
				3
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_chaos_wizard_leech",
				OP.TIMESET
			},
			{
				"faction_memory",
				"dwarf_ranger_special_kills_in_row",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"witch_hunter_special_kills_in_row",
				OP.NUMSET,
				0
			},
			{
				"faction_memory",
				"bright_wizard_special_kills_in_row",
				OP.NUMSET,
				0
			},
			{
				"faction_memory",
				"dwarf_ranger_special_kills_in_row",
				OP.NUMSET,
				0
			},
			{
				"faction_memory",
				"wood_elf_special_kills_in_row",
				OP.NUMSET,
				0
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_killing_a_chaos_wizard_wind_no_drunk",
		response = "pdr_gameplay_killing_a_chaos_wizard_wind_no_drunk",
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
				"chaos_vortex_sorcerer"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_memory",
				"time_since_chaos_vortex_sorcerer",
				OP.TIMEDIFF,
				OP.GT,
				3
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_chaos_vortex_sorcerer",
				OP.TIMESET
			},
			{
				"faction_memory",
				"dwarf_ranger_special_kills_in_row",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"witch_hunter_special_kills_in_row",
				OP.NUMSET,
				0
			},
			{
				"faction_memory",
				"bright_wizard_special_kills_in_row",
				OP.NUMSET,
				0
			},
			{
				"faction_memory",
				"dwarf_ranger_special_kills_in_row",
				OP.NUMSET,
				0
			},
			{
				"faction_memory",
				"wood_elf_special_kills_in_row",
				OP.NUMSET,
				0
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_killing_a_skaven_warpfire_thrower_no_drunk",
		response = "pdr_gameplay_killing_a_skaven_warpfire_thrower_no_drunk",
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
				"skaven_warpfire_thrower"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_memory",
				"time_since_skaven_warpfire_thrower",
				OP.TIMEDIFF,
				OP.GT,
				3
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_skaven_warpfire_thrower",
				OP.TIMESET
			},
			{
				"faction_memory",
				"dwarf_ranger_special_kills_in_row",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"witch_hunter_special_kills_in_row",
				OP.NUMSET,
				0
			},
			{
				"faction_memory",
				"bright_wizard_special_kills_in_row",
				OP.NUMSET,
				0
			},
			{
				"faction_memory",
				"dwarf_ranger_special_kills_in_row",
				OP.NUMSET,
				0
			},
			{
				"faction_memory",
				"wood_elf_special_kills_in_row",
				OP.NUMSET,
				0
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_killing_a_stormfiend_no_drunk",
		response = "pdr_gameplay_killing_a_stormfiend_no_drunk",
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
				"skaven_stormfiend"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_memory",
				"time_since_killing_skaven_stormfiend",
				OP.TIMEDIFF,
				OP.GT,
				5
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_killing_skaven_stormfiend",
				OP.TIMESET
			},
			{
				"faction_memory",
				"dwarf_ranger_special_kills_in_row",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"witch_hunter_special_kills_in_row",
				OP.NUMSET,
				0
			},
			{
				"faction_memory",
				"bright_wizard_special_kills_in_row",
				OP.NUMSET,
				0
			},
			{
				"faction_memory",
				"dwarf_ranger_special_kills_in_row",
				OP.NUMSET,
				0
			},
			{
				"faction_memory",
				"wood_elf_special_kills_in_row",
				OP.NUMSET,
				0
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_knocked_down_drunk",
		response = "pdr_gameplay_knocked_down_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"knocked_down"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_memory",
				"time_since_knocked_down",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_knocked_down",
				OP.TIMESET
			},
			{
				"faction_memory",
				"times_we_downed",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"times_down_dwarf_ranger",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_low_on_health_no_drunk",
		response = "pdr_gameplay_low_on_health_no_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"health_trigger"
			},
			{
				"query_context",
				"current_amount",
				OP.LTEQ,
				0.4
			},
			{
				"query_context",
				"current_amount",
				OP.GTEQ,
				0.1
			},
			{
				"query_context",
				"trigger_type",
				OP.EQ,
				"decreasing"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"user_memory",
				"low_health",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"user_memory",
				"low_health",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_out_of_ammo_drunk",
		response = "pdr_gameplay_out_of_ammo_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"reload_failed"
			},
			{
				"query_context",
				"fail_reason",
				OP.EQ,
				"out_of_ammo"
			},
			{
				"query_context",
				"item_name",
				OP.NEQ,
				"healthkit_first_aid_kit_01"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_memory",
				"time_since_out_of_ammo",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_out_of_ammo",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_player_pounced_drunk",
		response = "pdr_gameplay_player_pounced_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"pounced_down"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_memory",
				"time_since_knocked_down",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_knocked_down",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_seeing_a_Skaven_warpfire_thrower_no_drunk",
		response = "pdr_gameplay_seeing_a_Skaven_warpfire_thrower_no_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"skaven_warpfire_thrower"
			},
			{
				"query_context",
				"distance",
				OP.GTEQ,
				20
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"last_heard_skaven_warpfire_thrower",
				OP.TIMEDIFF,
				OP.GT,
				20
			},
			{
				"faction_memory",
				"last_seen_skaven_warpfire_thrower",
				OP.TIMEDIFF,
				OP.GT,
				120
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_seen_skaven_warpfire_thrower",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_seeing_a_chaos_spawn_no_drunk",
		response = "pdr_gameplay_seeing_a_chaos_spawn_no_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"chaos_spawn"
			},
			{
				"query_context",
				"distance",
				OP.GTEQ,
				20
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"last_heard_chaos_spawn",
				OP.TIMEDIFF,
				OP.GT,
				20
			},
			{
				"faction_memory",
				"last_seen_chaos_spawn",
				OP.TIMEDIFF,
				OP.GT,
				300
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_seen_chaos_spawn",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_seeing_a_chaos_warrior_no_drunk",
		response = "pdr_gameplay_seeing_a_chaos_warrior_no_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"chaos_warrior"
			},
			{
				"query_context",
				"distance",
				OP.GTEQ,
				20
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"last_heard_chaos_warrior",
				OP.TIMEDIFF,
				OP.GT,
				20
			},
			{
				"faction_memory",
				"last_seen_chaos_warrior",
				OP.TIMEDIFF,
				OP.GT,
				40
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_seen_chaos_warrior",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_seeing_a_chaos_wizard_wind_no_drunk",
		response = "pdr_gameplay_seeing_a_chaos_wizard_wind_no_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"chaos_vortex_sorcerer"
			},
			{
				"query_context",
				"distance",
				OP.GTEQ,
				20
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"last_heard_chaos_vortex_sorcerer",
				OP.TIMEDIFF,
				OP.GT,
				20
			},
			{
				"faction_memory",
				"last_seen_chaos_vortex_sorcerer",
				OP.TIMEDIFF,
				OP.GT,
				120
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_seen_chaos_vortex_sorcerer",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_seeing_a_globadier_no_drunk",
		response = "pdr_gameplay_seeing_a_globadier_no_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"skaven_poison_wind_globadier"
			},
			{
				"query_context",
				"distance",
				OP.GTEQ,
				4
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"last_seen_globadier",
				OP.TIMEDIFF,
				OP.GT,
				30
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_seen_globadier",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_seeing_a_gutter_runner_no_drunk",
		response = "pdr_gameplay_seeing_a_gutter_runner_no_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"skaven_gutter_runner"
			},
			{
				"query_context",
				"distance",
				OP.GTEQ,
				4
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"last_seen_gutter_runner",
				OP.TIMEDIFF,
				OP.GT,
				30
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_seen_gutter_runner",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_seeing_a_pm_no_drunk",
		response = "pdr_gameplay_seeing_a_pm_no_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"skaven_plague_monk"
			},
			{
				"query_context",
				"distance",
				OP.GTEQ,
				10
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"last_heard_skaven_plague_monk",
				OP.TIMEDIFF,
				OP.GT,
				20
			},
			{
				"faction_memory",
				"last_seen_skaven_plague_monk",
				OP.TIMEDIFF,
				OP.GT,
				40
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_seen_skaven_plague_monk",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_seeing_a_scr_no_drunk",
		response = "pdr_gameplay_seeing_a_scr_no_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"skaven_clan_rat_with_shield"
			},
			{
				"query_context",
				"distance",
				OP.GTEQ,
				20
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"seeing_a_scr",
				OP.TIMEDIFF,
				OP.GT,
				40
			}
		},
		on_done = {
			{
				"faction_memory",
				"seeing_a_scr",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_seeing_a_shield_stormvermin_no_drunk",
		response = "pdr_gameplay_seeing_a_shield_stormvermin_no_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"skaven_storm_vermin_with_shield"
			},
			{
				"query_context",
				"distance",
				OP.GTEQ,
				20
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"last_seen_skaven_storm_vermin_with_shield",
				OP.TIMEDIFF,
				OP.GT,
				40
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_seen_skaven_storm_vermin_with_shield",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_seeing_a_skaven_patrol_stormvermin_no_drunk",
		response = "pdr_gameplay_seeing_a_skaven_patrol_stormvermin_no_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"skaven_storm_vermin"
			},
			{
				"query_context",
				"distance",
				OP.GTEQ,
				4
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"last_seen_storm_vermin",
				OP.TIMEDIFF,
				OP.GT,
				30
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_seen_storm_vermin",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_seeing_a_skaven_rat_ogre_no_drunk",
		response = "pdr_gameplay_seeing_a_skaven_rat_ogre_no_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"skaven_rat_ogre"
			},
			{
				"query_context",
				"distance",
				OP.GTEQ,
				4
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"last_seen_rate_ogre",
				OP.TIMEDIFF,
				OP.GT,
				30
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_seen_rate_ogre",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_seeing_a_skaven_ratling_gun_no_drunk",
		response = "pdr_gameplay_seeing_a_skaven_ratling_gun_no_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"skaven_ratling_gunner"
			},
			{
				"query_context",
				"distance",
				OP.GTEQ,
				4
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"last_seen_skaven_ratling_gunner",
				OP.TIMEDIFF,
				OP.GT,
				30
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_seen_skaven_ratling_gunner",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_seeing_a_skaven_slaver_no_drunk",
		response = "pdr_gameplay_seeing_a_skaven_slaver_no_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"skaven_pack_master"
			},
			{
				"query_context",
				"distance",
				OP.GT,
				4
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_slaver",
				OP.TIMEDIFF,
				OP.GT,
				30
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_slaver",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_seeing_a_stormfiend_no_drunk",
		response = "pdr_gameplay_seeing_a_stormfiend_no_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"skaven_stormfiend"
			},
			{
				"query_context",
				"distance",
				OP.GTEQ,
				20
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"last_heard_skaven_stormfiend",
				OP.TIMEDIFF,
				OP.GT,
				20
			},
			{
				"faction_memory",
				"last_seen_skaven_stormfiend",
				OP.TIMEDIFF,
				OP.GT,
				300
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_seen_skaven_stormfiend",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_seeing_a_stormvermin_no_drunk",
		response = "pdr_gameplay_seeing_a_stormvermin_no_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"skaven_storm_vermin_commander"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"last_seen_storm_vermin_commander",
				OP.TIMEDIFF,
				OP.GT,
				30
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_seen_storm_vermin_commander",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_seeing_a_troll_no_drunk",
		response = "pdr_gameplay_seeing_a_troll_no_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"chaos_troll"
			},
			{
				"query_context",
				"distance",
				OP.GTEQ,
				20
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"last_heard_chaos_troll",
				OP.TIMEDIFF,
				OP.GT,
				20
			},
			{
				"faction_memory",
				"last_seen_chaos_troll",
				OP.TIMEDIFF,
				OP.GT,
				300
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_seen_chaos_troll",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_self_heal_drunk",
		response = "pdr_gameplay_self_heal_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heal_start"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_memory",
				"last_healed_someone",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"user_memory",
				"last_healed_someone",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_spots_ammo_no_drunk",
		response = "pdr_gameplay_spots_ammo_no_drunk",
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
				"ammo"
			},
			{
				"query_context",
				"distance",
				OP.GT,
				1
			},
			{
				"query_context",
				"distance",
				OP.LT,
				17
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"global_context",
				"current_level",
				OP.NEQ,
				"inn_level"
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"last_saw_pickup",
				OP.TIMEDIFF,
				OP.GT,
				240
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_saw_pickup",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_spots_bomb_no_drunk",
		response = "pdr_gameplay_spots_bomb_no_drunk",
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
				"bomb"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"query_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"query_context",
				"distance",
				OP.GT,
				1
			},
			{
				"query_context",
				"distance",
				OP.LT,
				17
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"last_saw_pickup",
				OP.TIMEDIFF,
				OP.GT,
				240
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_saw_pickup",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_spots_health_no_drunk",
		response = "pdr_gameplay_spots_health_no_drunk",
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
				"health"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"query_context",
				"enemies_distant",
				OP.EQ,
				0
			},
			{
				"query_context",
				"distance",
				OP.GT,
				1
			},
			{
				"query_context",
				"distance",
				OP.LT,
				17
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"last_saw_pickup",
				OP.TIMEDIFF,
				OP.GT,
				240
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_saw_pickup",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_spots_potion_drunk",
		response = "pdr_gameplay_spots_potion_drunk",
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
				"potion"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"query_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"query_context",
				"distance",
				OP.GT,
				1
			},
			{
				"query_context",
				"distance",
				OP.LT,
				1
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"last_saw_pickup",
				OP.TIMEDIFF,
				OP.GT,
				120
			}
		},
		on_done = {
			{
				"faction_memory",
				"last_saw_pickup",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_throwing_bomb_no_drunk",
		response = "pdr_gameplay_throwing_bomb_no_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"throwing_item"
			},
			{
				"query_context",
				"item_type",
				OP.EQ,
				"grenade"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"user_memory",
				"time_since_throwing_bomb",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_throwing_bomb",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_tips_wizard_wind_drunk",
		response = "pdr_gameplay_tips_wizard_wind_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"enemy_attack"
			},
			{
				"query_context",
				"attack_tag",
				OP.EQ,
				"chaos_vortex_spawned"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_memory",
				"incoming_threat_bardin",
				OP.TIMEDIFF,
				OP.GT,
				55
			},
			{
				"faction_memory",
				"chaos_vortex_spawned",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"faction_memory",
				"chaos_vortex_spawned",
				OP.TIMESET
			},
			{
				"user_memory",
				"incoming_threat_bardin",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_using_potion_drunk",
		response = "pdr_gameplay_using_potion_drunk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"on_healing_draught"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_memory",
				"time_since_used_potion",
				OP.TIMEDIFF,
				OP.GT,
				120
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_used_potion",
				OP.TIMESET
			}
		}
	})
	define_rule({
		response = "pdr_gameplay_witch_hunter_being_helped_up_drunk",
		name = "pdr_gameplay_witch_hunter_being_helped_up_drunk",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"start_revive"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_witch_hunter_low_on_health_no_drunk",
		response = "pdr_gameplay_witch_hunter_low_on_health_no_drunk",
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
				"pwh_gameplay_low_on_health"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_low_health_pwh",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_low_health_pwh",
				OP.TIMESET
			}
		}
	})
	define_rule({
		response = "pdr_gameplay_wood_elf_being_helped_up_drunk",
		name = "pdr_gameplay_wood_elf_being_helped_up_drunk",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"start_revive"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_gameplay_wood_elf_low_on_health_no_drunk",
		response = "pdr_gameplay_wood_elf_low_on_health_no_drunk",
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
				"pwe_gameplay_low_on_health"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_low_health_pwe",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_low_health_pwe",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_hiccup",
		response = "pdr_hiccup",
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
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"time_since_hiccup",
				OP.TIMEDIFF,
				OP.GT,
				150
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_hiccup",
				OP.TIMESET
			}
		}
	})
	define_rule({
		response = "pdr_special_ability_ironbreaker_non_drunk",
		name = "pdr_special_ability_ironbreaker_non_drunk",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"activate_ability"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_career",
				OP.EQ,
				"dr_ironbreaker"
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"crawl_spot_second_pub",
				OP.EQ,
				0
			}
		}
	})
	define_rule({
		response = "pdr_special_ability_ironbreaker_taunt_non_drunk",
		name = "pdr_special_ability_ironbreaker_taunt_non_drunk",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"activate_ability_taunt"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_career",
				OP.EQ,
				"dr_ironbreaker"
			},
			{
				"faction_memory",
				"crawl_spot_second_pub",
				OP.EQ,
				0
			}
		}
	})
	define_rule({
		response = "pdr_special_ability_slayer_non_drunk",
		name = "pdr_special_ability_slayer_non_drunk",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"activate_ability"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_career",
				OP.EQ,
				"dr_slayer"
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"crawl_spot_second_pub",
				OP.EQ,
				0
			}
		}
	})
	add_dialogues({
		pdr_activate_ability_dwarf_engineer_non_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 8,
			category = "activate_ability",
			dialogue_animations_n = 8,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pdr_activate_ability_dwarf_engineer_01",
				"pdr_activate_ability_dwarf_engineer_04",
				"pdr_activate_ability_dwarf_engineer_05",
				"pdr_activate_ability_dwarf_engineer_06",
				"pdr_activate_ability_dwarf_engineer_07",
				"pdr_activate_ability_dwarf_engineer_08",
				"pdr_activate_ability_dwarf_engineer_09",
				"pdr_activate_ability_dwarf_engineer_10"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_activate_ability_dwarf_engineer_01",
				"pdr_activate_ability_dwarf_engineer_04",
				"pdr_activate_ability_dwarf_engineer_05",
				"pdr_activate_ability_dwarf_engineer_06",
				"pdr_activate_ability_dwarf_engineer_07",
				"pdr_activate_ability_dwarf_engineer_08",
				"pdr_activate_ability_dwarf_engineer_09",
				"pdr_activate_ability_dwarf_engineer_10"
			},
			sound_events_duration = {
				1.4520416259766,
				1.9152292013168,
				1.5095624923706,
				1.5485208034515,
				1.1934167146683,
				1.3340417146683,
				2.2459790706634,
				2.3116042613983
			}
		},
		pdr_activate_ability_ranger_non_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 11,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 11,
			category = "activate_ability",
			dialogue_animations_n = 11,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pdr_activate_ability_ranger_01",
				"pdr_activate_ability_ranger_02",
				"pdr_activate_ability_ranger_03",
				"pdr_activate_ability_ranger_04",
				"pdr_activate_ability_ranger_05",
				"pdr_activate_ability_ranger_07",
				"pdr_activate_ability_ranger_08",
				"pdr_activate_ability_ranger_09",
				"pdr_activate_ability_ranger_10",
				"pdr_activate_ability_ranger_11",
				"pdr_activate_ability_ranger_12"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_activate_ability_ranger_01",
				"pdr_activate_ability_ranger_02",
				"pdr_activate_ability_ranger_03",
				"pdr_activate_ability_ranger_04",
				"pdr_activate_ability_ranger_05",
				"pdr_activate_ability_ranger_07",
				"pdr_activate_ability_ranger_08",
				"pdr_activate_ability_ranger_09",
				"pdr_activate_ability_ranger_10",
				"pdr_activate_ability_ranger_11",
				"pdr_activate_ability_ranger_12"
			},
			sound_events_duration = {
				2.7109792232513,
				1.7349375486374,
				1.5270416736603,
				1.6450624465942,
				3.9065415859222,
				1.6409791707993,
				1.9706041812897,
				2.2644166946411,
				1.7699583768845,
				1.63381254673,
				1.9777916669846
			}
		},
		pdr_burp = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dwarf_ranger_game_play_crawl",
			category = "story_talk_vce",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "pdr_burp"
			},
			sound_events = {
				[1] = "pdr_burp"
			},
			sound_events_duration = {
				[1] = 0.58172626793385
			}
		},
		pdr_crawl_ability_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 6,
			category = "activate_ability",
			dialogue_animations_n = 6,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_contempt",
				"face_contempt",
				"face_contempt",
				"face_contempt",
				"face_contempt",
				"face_contempt"
			},
			localization_strings = {
				"pdr_crawl_ability_01",
				"pdr_crawl_ability_02",
				"pdr_crawl_ability_03",
				"pdr_crawl_ability_04",
				"pdr_crawl_ability_05",
				"pdr_crawl_ability_06"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_crawl_ability_01",
				"pdr_crawl_ability_02",
				"pdr_crawl_ability_03",
				"pdr_crawl_ability_04",
				"pdr_crawl_ability_05",
				"pdr_crawl_ability_06"
			},
			sound_events_duration = {
				1.8229166269302,
				2.0406250953674,
				1.811604142189,
				5.2863540649414,
				2.8432290554047,
				3.1263332366943
			}
		},
		pdr_crawl_ability_okri_reply_pbw = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 2,
			category = "special_occasion",
			dialogue_animations_n = 2,
			dialogue_animations = {
				[1] = "dialogue_shout",
				[2] = "dialogue_shout"
			},
			face_animations = {
				[1] = "face_angry",
				[2] = "face_angry"
			},
			localization_strings = {
				[1] = "pdr_crawl_ability_okri_reply_01",
				[2] = "pdr_crawl_ability_okri_reply_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pdr_crawl_ability_okri_reply_01",
				[2] = "pdr_crawl_ability_okri_reply_02"
			},
			sound_events_duration = {
				[1] = 4.2598333358765,
				[2] = 2.542375087738
			}
		},
		pdr_crawl_ability_okri_reply_pes = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 2,
			category = "special_occasion",
			dialogue_animations_n = 2,
			dialogue_animations = {
				[1] = "dialogue_shout",
				[2] = "dialogue_shout"
			},
			face_animations = {
				[1] = "face_angry",
				[2] = "face_angry"
			},
			localization_strings = {
				[1] = "pdr_crawl_ability_okri_reply_01",
				[2] = "pdr_crawl_ability_okri_reply_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pdr_crawl_ability_okri_reply_01",
				[2] = "pdr_crawl_ability_okri_reply_02"
			},
			sound_events_duration = {
				[1] = 4.2598333358765,
				[2] = 2.542375087738
			}
		},
		pdr_crawl_ability_okri_reply_pes_gk = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 2,
			category = "special_occasion",
			dialogue_animations_n = 2,
			dialogue_animations = {
				[1] = "dialogue_shout",
				[2] = "dialogue_shout"
			},
			face_animations = {
				[1] = "face_angry",
				[2] = "face_angry"
			},
			localization_strings = {
				[1] = "pdr_crawl_ability_okri_reply_01",
				[2] = "pdr_crawl_ability_okri_reply_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pdr_crawl_ability_okri_reply_01",
				[2] = "pdr_crawl_ability_okri_reply_02"
			},
			sound_events_duration = {
				[1] = 4.2598333358765,
				[2] = 2.542375087738
			}
		},
		pdr_crawl_ability_okri_reply_pwe = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 2,
			category = "special_occasion",
			dialogue_animations_n = 2,
			dialogue_animations = {
				[1] = "dialogue_shout",
				[2] = "dialogue_shout"
			},
			face_animations = {
				[1] = "face_angry",
				[2] = "face_angry"
			},
			localization_strings = {
				[1] = "pdr_crawl_ability_okri_reply_01",
				[2] = "pdr_crawl_ability_okri_reply_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pdr_crawl_ability_okri_reply_01",
				[2] = "pdr_crawl_ability_okri_reply_02"
			},
			sound_events_duration = {
				[1] = 4.2598333358765,
				[2] = 2.542375087738
			}
		},
		pdr_crawl_drank = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dwarf_ranger_game_play_crawl",
			category = "story_talk_vce",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_shout"
			},
			face_animations = {
				[1] = "face_calm"
			},
			localization_strings = {
				[1] = "pdr_drank_drunk"
			},
			sound_events = {
				[1] = "pdr_drank_drunk"
			},
			sound_events_duration = {
				[1] = 2.7437137365341
			}
		},
		pdr_crawl_drunk_buff_begins = {
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 6,
			category = "player_feedback",
			dialogue_animations_n = 6,
			dialogue_animations = {
				"dialogue_shout",
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
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pdr_crawl_drunk_buff_begins_01",
				"pdr_crawl_drunk_buff_begins_02",
				"pdr_crawl_drunk_buff_begins_03",
				"pdr_crawl_drunk_buff_begins_04",
				"pdr_crawl_drunk_buff_begins_05",
				"pdr_crawl_drunk_buff_begins_06"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_crawl_drunk_buff_begins_01",
				"pdr_crawl_drunk_buff_begins_02",
				"pdr_crawl_drunk_buff_begins_03",
				"pdr_crawl_drunk_buff_begins_04",
				"pdr_crawl_drunk_buff_begins_05",
				"pdr_crawl_drunk_buff_begins_06"
			},
			sound_events_duration = {
				2.2457499504089,
				3.4899792671204,
				2.3450832366943,
				2.1927707195282,
				4.7717289924622,
				6.9484791755676
			}
		},
		pdr_crawl_drunk_buff_begins_from_sick = {
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 6,
			category = "player_feedback",
			dialogue_animations_n = 6,
			dialogue_animations = {
				"dialogue_shout",
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
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pdr_crawl_drunk_buff_begins_from_sick_01",
				"pdr_crawl_drunk_buff_begins_from_sick_02",
				"pdr_crawl_drunk_buff_begins_from_sick_03",
				"pdr_crawl_drunk_buff_begins_from_sick_04",
				"pdr_crawl_drunk_buff_begins_from_sick_05",
				"pdr_crawl_drunk_buff_begins_from_sick_06"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_crawl_drunk_buff_begins_from_sick_01",
				"pdr_crawl_drunk_buff_begins_from_sick_02",
				"pdr_crawl_drunk_buff_begins_from_sick_03",
				"pdr_crawl_drunk_buff_begins_from_sick_04",
				"pdr_crawl_drunk_buff_begins_from_sick_05",
				"pdr_crawl_drunk_buff_begins_from_sick_06"
			},
			sound_events_duration = {
				2.6423125267029,
				5.3136668205261,
				2.6046042442322,
				4.4384999275208,
				4.9532499313355,
				4.3420209884644
			}
		},
		pdr_crawl_drunk_buff_wears_off = {
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 8,
			category = "player_feedback",
			dialogue_animations_n = 8,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
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
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pdr_crawl_drunk_buff_wears_off_01",
				"pdr_crawl_drunk_buff_wears_off_02",
				"pdr_crawl_drunk_buff_wears_off_03",
				"pdr_crawl_drunk_buff_wears_off_04",
				"pdr_crawl_drunk_buff_wears_off_05",
				"pdr_crawl_drunk_buff_wears_off_06",
				"pdr_crawl_drunk_buff_wears_off_07",
				"pdr_crawl_drunk_buff_wears_off_08"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_crawl_drunk_buff_wears_off_01",
				"pdr_crawl_drunk_buff_wears_off_02",
				"pdr_crawl_drunk_buff_wears_off_03",
				"pdr_crawl_drunk_buff_wears_off_04",
				"pdr_crawl_drunk_buff_wears_off_05",
				"pdr_crawl_drunk_buff_wears_off_06",
				"pdr_crawl_drunk_buff_wears_off_07",
				"pdr_crawl_drunk_buff_wears_off_08"
			},
			sound_events_duration = {
				2.4721040725708,
				1.481229186058,
				3.975250005722,
				2.6333749294281,
				2.1066250801086,
				3.0042917728424,
				2.2551667690277,
				3.5185000896454
			}
		},
		pdr_crawl_head_shot_a = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 4,
			category = "player_feedback",
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
				"pdr_crawl_head_shot_a_01",
				"pdr_crawl_head_shot_a_02",
				"pdr_crawl_head_shot_a_03",
				"pdr_crawl_head_shot_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_crawl_head_shot_a_01",
				"pdr_crawl_head_shot_a_02",
				"pdr_crawl_head_shot_a_03",
				"pdr_crawl_head_shot_a_04"
			},
			sound_events_duration = {
				1.3146458864212,
				4.3214998245239,
				1.659916639328,
				2.9305000305176
			}
		},
		pdr_crawl_head_shot_b = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 4,
			category = "player_feedback",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pdr_crawl_head_shot_b_01",
				"pdr_crawl_head_shot_b_02",
				"pdr_crawl_head_shot_b_03",
				"pdr_crawl_head_shot_b_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_crawl_head_shot_b_01",
				"pdr_crawl_head_shot_b_02",
				"pdr_crawl_head_shot_b_03",
				"pdr_crawl_head_shot_b_04"
			},
			sound_events_duration = {
				2.9538125991821,
				2.2149584293366,
				2.2866249084473,
				2.4054584503174
			}
		},
		pdr_crawl_horde_incoming_b_ambush = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 4,
			category = "special_occasion",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pdr_crawl_horde_incoming_b_01",
				"pdr_crawl_horde_incoming_b_02",
				"pdr_crawl_horde_incoming_b_03",
				"pdr_crawl_horde_incoming_b_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_crawl_horde_incoming_b_01",
				"pdr_crawl_horde_incoming_b_02",
				"pdr_crawl_horde_incoming_b_03",
				"pdr_crawl_horde_incoming_b_04"
			},
			sound_events_duration = {
				2.4353957176209,
				3.0340416431427,
				2.6524584293366,
				2.6468958854675
			}
		},
		pdr_crawl_horde_incoming_b_vector = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 4,
			category = "special_occasion",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pdr_crawl_horde_incoming_b_01",
				"pdr_crawl_horde_incoming_b_02",
				"pdr_crawl_horde_incoming_b_03",
				"pdr_crawl_horde_incoming_b_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_crawl_horde_incoming_b_01",
				"pdr_crawl_horde_incoming_b_02",
				"pdr_crawl_horde_incoming_b_03",
				"pdr_crawl_horde_incoming_b_04"
			},
			sound_events_duration = {
				2.4353957176209,
				3.0340416431427,
				2.6524584293366,
				2.6468958854675
			}
		},
		pdr_crawl_killing_spree_b = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 4,
			category = "player_feedback",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pdr_crawl_killing_spree_b_01",
				"pdr_crawl_killing_spree_b_02",
				"pdr_crawl_killing_spree_b_03",
				"pdr_crawl_killing_spree_b_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_crawl_killing_spree_b_01",
				"pdr_crawl_killing_spree_b_02",
				"pdr_crawl_killing_spree_b_03",
				"pdr_crawl_killing_spree_b_04"
			},
			sound_events_duration = {
				5.5690627098083,
				2.5336248874664,
				4.2262082099915,
				3.6145417690277
			}
		},
		pdr_crawl_low_on_health_a = {
			randomize_indexes_n = 0,
			face_animations_n = 5,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 5,
			category = "player_feedback",
			dialogue_animations_n = 5,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_exhausted",
				"face_exhausted",
				"face_exhausted",
				"face_exhausted",
				"face_exhausted"
			},
			localization_strings = {
				"pdr_crawl_low_on_health_a_01",
				"pdr_crawl_low_on_health_a_02",
				"pdr_crawl_low_on_health_a_03",
				"pdr_crawl_low_on_health_a_04",
				"pdr_crawl_low_on_health_a_05"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_crawl_low_on_health_a_01",
				"pdr_crawl_low_on_health_a_02",
				"pdr_crawl_low_on_health_a_03",
				"pdr_crawl_low_on_health_a_04",
				"pdr_crawl_low_on_health_a_05"
			},
			sound_events_duration = {
				2.455374956131,
				2.4055624008179,
				2.874520778656,
				6.5076456069946,
				2.1560416221619
			}
		},
		pdr_crawl_low_on_health_b = {
			randomize_indexes_n = 0,
			face_animations_n = 5,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 5,
			category = "player_feedback",
			dialogue_animations_n = 5,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pdr_crawl_low_on_health_b_01",
				"pdr_crawl_low_on_health_b_02",
				"pdr_crawl_low_on_health_b_03",
				"pdr_crawl_low_on_health_b_04",
				"pdr_crawl_low_on_health_b_05"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_crawl_low_on_health_b_01",
				"pdr_crawl_low_on_health_b_02",
				"pdr_crawl_low_on_health_b_03",
				"pdr_crawl_low_on_health_b_04",
				"pdr_crawl_low_on_health_b_05"
			},
			sound_events_duration = {
				3.0942916870117,
				2.2966458797455,
				3.6148333549499,
				1.6963332891464,
				4.074812412262
			}
		},
		pdr_crawl_monster_spotted_b_chaos_spawn = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 4,
			category = "enemy_alerts_high",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pdr_crawl_monster_spotted_03_b_01",
				"pdr_crawl_monster_spotted_03_b_02",
				"pdr_crawl_monster_spotted_03_b_03",
				"pdr_crawl_monster_spotted_04_a_01"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_crawl_monster_spotted_03_b_01",
				"pdr_crawl_monster_spotted_03_b_02",
				"pdr_crawl_monster_spotted_03_b_03",
				"pdr_crawl_monster_spotted_04_a_01"
			},
			sound_events_duration = {
				2.0351666212082,
				2.3544583320618,
				3.2539999485016,
				3.40660405159
			}
		},
		pdr_crawl_monster_spotted_b_rat_ogre = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 4,
			category = "enemy_alerts_high",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pdr_crawl_monster_spotted_03_b_01",
				"pdr_crawl_monster_spotted_03_b_02",
				"pdr_crawl_monster_spotted_03_b_03",
				"pdr_crawl_monster_spotted_04_a_01"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_crawl_monster_spotted_03_b_01",
				"pdr_crawl_monster_spotted_03_b_02",
				"pdr_crawl_monster_spotted_03_b_03",
				"pdr_crawl_monster_spotted_04_a_01"
			},
			sound_events_duration = {
				2.0351666212082,
				2.3544583320618,
				3.2539999485016,
				3.40660405159
			}
		},
		pdr_crawl_monster_spotted_b_stormfiend = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 4,
			category = "enemy_alerts_high",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pdr_crawl_monster_spotted_03_b_01",
				"pdr_crawl_monster_spotted_03_b_02",
				"pdr_crawl_monster_spotted_03_b_03",
				"pdr_crawl_monster_spotted_04_a_01"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_crawl_monster_spotted_03_b_01",
				"pdr_crawl_monster_spotted_03_b_02",
				"pdr_crawl_monster_spotted_03_b_03",
				"pdr_crawl_monster_spotted_04_a_01"
			},
			sound_events_duration = {
				2.0351666212082,
				2.3544583320618,
				3.2539999485016,
				3.40660405159
			}
		},
		pdr_crawl_monster_spotted_b_troll = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 4,
			category = "enemy_alerts_high",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pdr_crawl_monster_spotted_03_b_01",
				"pdr_crawl_monster_spotted_03_b_02",
				"pdr_crawl_monster_spotted_03_b_03",
				"pdr_crawl_monster_spotted_04_a_01"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_crawl_monster_spotted_03_b_01",
				"pdr_crawl_monster_spotted_03_b_02",
				"pdr_crawl_monster_spotted_03_b_03",
				"pdr_crawl_monster_spotted_04_a_01"
			},
			sound_events_duration = {
				2.0351666212082,
				2.3544583320618,
				3.2539999485016,
				3.40660405159
			}
		},
		pdr_crawl_monster_spotted_c_group = {
			sound_events_n = 1,
			additional_trigger = "monster_spotted_crawl_two_done",
			face_animations_n = 1,
			database = "dwarf_ranger_game_play_crawl",
			category = "casual_singing_01",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_shout"
			},
			face_animations = {
				[1] = "face_happy"
			},
			localization_strings = {
				[1] = "pdr_crawl_monster_spotted_04_b_GROUP_01"
			},
			sound_events = {
				[1] = "pdr_crawl_monster_spotted_04_b_GROUP_01"
			},
			sound_events_duration = {
				[1] = 5.4961252212524
			}
		},
		pdr_crawl_monster_spotted_c_group_three = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dwarf_ranger_game_play_crawl",
			category = "casual_singing_03",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_shout"
			},
			face_animations = {
				[1] = "face_happy"
			},
			localization_strings = {
				[1] = "pdr_crawl_monster_spotted_04_b_GROUP_01"
			},
			sound_events = {
				[1] = "pdr_crawl_monster_spotted_04_b_GROUP_01"
			},
			sound_events_duration = {
				[1] = 5.4961252212524
			}
		},
		pdr_crawl_monster_spotted_c_pbw = {
			additional_trigger_heard = "monster_spotted_crawl_two_done",
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dwarf_ranger_game_play_crawl",
			category = "casual_singing_03",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_shout"
			},
			face_animations = {
				[1] = "face_happy"
			},
			localization_strings = {
				[1] = "pdr_crawl_monster_spotted_04_b_GROUP_01"
			},
			sound_events = {
				[1] = "pdr_crawl_monster_spotted_04_b_GROUP_01"
			},
			sound_events_duration = {
				[1] = 5.4961252212524
			}
		},
		pdr_crawl_monster_spotted_c_pes = {
			additional_trigger_heard = "monster_spotted_crawl_two_done",
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dwarf_ranger_game_play_crawl",
			category = "casual_singing_03",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_shout"
			},
			face_animations = {
				[1] = "face_happy"
			},
			localization_strings = {
				[1] = "pdr_crawl_monster_spotted_04_b_GROUP_01"
			},
			sound_events = {
				[1] = "pdr_crawl_monster_spotted_04_b_GROUP_01"
			},
			sound_events_duration = {
				[1] = 5.4961252212524
			}
		},
		pdr_crawl_monster_spotted_c_pwe = {
			additional_trigger_heard = "monster_spotted_crawl_two_done",
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dwarf_ranger_game_play_crawl",
			category = "casual_singing_03",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_shout"
			},
			face_animations = {
				[1] = "face_happy"
			},
			localization_strings = {
				[1] = "pdr_crawl_monster_spotted_04_b_GROUP_01"
			},
			sound_events = {
				[1] = "pdr_crawl_monster_spotted_04_b_GROUP_01"
			},
			sound_events_duration = {
				[1] = 5.4961252212524
			}
		},
		pdr_crawl_monster_spotted_c_pwh = {
			additional_trigger_heard = "monster_spotted_crawl_two_done",
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dwarf_ranger_game_play_crawl",
			category = "casual_singing_03",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_shout"
			},
			face_animations = {
				[1] = "face_happy"
			},
			localization_strings = {
				[1] = "pdr_crawl_monster_spotted_04_b_GROUP_01"
			},
			sound_events = {
				[1] = "pdr_crawl_monster_spotted_04_b_GROUP_01"
			},
			sound_events_duration = {
				[1] = 5.4961252212524
			}
		},
		pdr_crawl_pes_crawl_drunk_incoming_threat_new_b_globadier = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 4,
			category = "enemy_alerts_high",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pdr_crawl_pes_crawl_drunk_incoming_threat_new_b_01",
				"pdr_crawl_pes_crawl_drunk_incoming_threat_new_b_02",
				"pdr_crawl_pes_crawl_drunk_incoming_threat_new_b_03",
				"pdr_crawl_pes_crawl_drunk_incoming_threat_new_b_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_crawl_pes_crawl_drunk_incoming_threat_new_b_01",
				"pdr_crawl_pes_crawl_drunk_incoming_threat_new_b_02",
				"pdr_crawl_pes_crawl_drunk_incoming_threat_new_b_03",
				"pdr_crawl_pes_crawl_drunk_incoming_threat_new_b_04"
			},
			sound_events_duration = {
				3.301958322525,
				2.0488333702087,
				1.6958124637604,
				3.5411458015442
			}
		},
		pdr_crawl_pes_crawl_drunk_incoming_threat_new_b_gutter_runner = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 4,
			category = "enemy_alerts_high",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pdr_crawl_pes_crawl_drunk_incoming_threat_new_b_01",
				"pdr_crawl_pes_crawl_drunk_incoming_threat_new_b_02",
				"pdr_crawl_pes_crawl_drunk_incoming_threat_new_b_03",
				"pdr_crawl_pes_crawl_drunk_incoming_threat_new_b_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_crawl_pes_crawl_drunk_incoming_threat_new_b_01",
				"pdr_crawl_pes_crawl_drunk_incoming_threat_new_b_02",
				"pdr_crawl_pes_crawl_drunk_incoming_threat_new_b_03",
				"pdr_crawl_pes_crawl_drunk_incoming_threat_new_b_04"
			},
			sound_events_duration = {
				3.301958322525,
				2.0488333702087,
				1.6958124637604,
				3.5411458015442
			}
		},
		pdr_crawl_pes_crawl_drunk_incoming_threat_new_b_ratling = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 4,
			category = "enemy_alerts_high",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pdr_crawl_pes_crawl_drunk_incoming_threat_new_b_01",
				"pdr_crawl_pes_crawl_drunk_incoming_threat_new_b_02",
				"pdr_crawl_pes_crawl_drunk_incoming_threat_new_b_03",
				"pdr_crawl_pes_crawl_drunk_incoming_threat_new_b_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_crawl_pes_crawl_drunk_incoming_threat_new_b_01",
				"pdr_crawl_pes_crawl_drunk_incoming_threat_new_b_02",
				"pdr_crawl_pes_crawl_drunk_incoming_threat_new_b_03",
				"pdr_crawl_pes_crawl_drunk_incoming_threat_new_b_04"
			},
			sound_events_duration = {
				3.301958322525,
				2.0488333702087,
				1.6958124637604,
				3.5411458015442
			}
		},
		pdr_crawl_pes_crawl_drunk_incoming_threat_new_b_warpfire = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 4,
			category = "enemy_alerts_high",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pdr_crawl_pes_crawl_drunk_incoming_threat_new_b_01",
				"pdr_crawl_pes_crawl_drunk_incoming_threat_new_b_02",
				"pdr_crawl_pes_crawl_drunk_incoming_threat_new_b_03",
				"pdr_crawl_pes_crawl_drunk_incoming_threat_new_b_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_crawl_pes_crawl_drunk_incoming_threat_new_b_01",
				"pdr_crawl_pes_crawl_drunk_incoming_threat_new_b_02",
				"pdr_crawl_pes_crawl_drunk_incoming_threat_new_b_03",
				"pdr_crawl_pes_crawl_drunk_incoming_threat_new_b_04"
			},
			sound_events_duration = {
				3.301958322525,
				2.0488333702087,
				1.6958124637604,
				3.5411458015442
			}
		},
		pdr_crawl_seen_killing_spree_kerillian = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 4,
			category = "player_feedback",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pdr_crawl_seen_killing_spree_kerillian_a_01",
				"pdr_crawl_seen_killing_spree_kerillian_a_02",
				"pdr_crawl_seen_killing_spree_kerillian_a_03",
				"pdr_crawl_seen_killing_spree_kerillian_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_crawl_seen_killing_spree_kerillian_a_01",
				"pdr_crawl_seen_killing_spree_kerillian_a_02",
				"pdr_crawl_seen_killing_spree_kerillian_a_03",
				"pdr_crawl_seen_killing_spree_kerillian_a_04"
			},
			sound_events_duration = {
				1.963666677475,
				2.832624912262,
				4.3543334007263,
				4.0002708435059
			}
		},
		pdr_crawl_seen_killing_spree_kruber = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 4,
			category = "player_feedback",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pdr_crawl_seen_killing_spree_kruber_a_01",
				"pdr_crawl_seen_killing_spree_kruber_a_02",
				"pdr_crawl_seen_killing_spree_kruber_a_03",
				"pdr_crawl_seen_killing_spree_kruber_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_crawl_seen_killing_spree_kruber_a_01",
				"pdr_crawl_seen_killing_spree_kruber_a_02",
				"pdr_crawl_seen_killing_spree_kruber_a_03",
				"pdr_crawl_seen_killing_spree_kruber_a_04"
			},
			sound_events_duration = {
				2.5920624732971,
				1.946624994278,
				2.8085832595825,
				2.1940207481384
			}
		},
		pdr_crawl_seen_killing_spree_saltzpyre = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 4,
			category = "player_feedback",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pdr_crawl_seen_killing_spree_saltzpyre_a_01",
				"pdr_crawl_seen_killing_spree_saltzpyre_a_02",
				"pdr_crawl_seen_killing_spree_saltzpyre_a_03",
				"pdr_crawl_seen_killing_spree_saltzpyre_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_crawl_seen_killing_spree_saltzpyre_a_01",
				"pdr_crawl_seen_killing_spree_saltzpyre_a_02",
				"pdr_crawl_seen_killing_spree_saltzpyre_a_03",
				"pdr_crawl_seen_killing_spree_saltzpyre_a_04"
			},
			sound_events_duration = {
				2.315812587738,
				4.0260834693909,
				3.0708959102631,
				6.2280416488647
			}
		},
		pdr_crawl_seen_killing_spree_sienna = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 4,
			category = "player_feedback",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pdr_crawl_seen_killing_spree_sienna_a_01",
				"pdr_crawl_seen_killing_spree_sienna_a_02",
				"pdr_crawl_seen_killing_spree_sienna_a_03",
				"pdr_crawl_seen_killing_spree_sienna_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_crawl_seen_killing_spree_sienna_a_01",
				"pdr_crawl_seen_killing_spree_sienna_a_02",
				"pdr_crawl_seen_killing_spree_sienna_a_03",
				"pdr_crawl_seen_killing_spree_sienna_a_04"
			},
			sound_events_duration = {
				1.8913333415985,
				3.3517291545868,
				3.6055624485016,
				2.6092708110809
			}
		},
		pdr_crawl_spots_item = {
			randomize_indexes_n = 0,
			face_animations_n = 5,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 5,
			category = "seen_items",
			dialogue_animations_n = 5,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pdr_crawl_spots_item_01",
				"pdr_crawl_spots_item_02",
				"pdr_crawl_spots_item_03",
				"pdr_crawl_spots_item_04",
				"pdr_crawl_spots_item_05"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_crawl_spots_item_01",
				"pdr_crawl_spots_item_02",
				"pdr_crawl_spots_item_03",
				"pdr_crawl_spots_item_04",
				"pdr_crawl_spots_item_05"
			},
			sound_events_duration = {
				1.1334583759308,
				4.5777502059936,
				3.0843749046326,
				4.2255835533142,
				1.3711249828339
			}
		},
		pdr_crawl_throwing_bomb = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 4,
			category = "player_feedback",
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
				"pdr_crawl_throwing_bomb_01",
				"pdr_crawl_throwing_bomb_02",
				"pdr_crawl_throwing_bomb_03",
				"pdr_crawl_throwing_bomb_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_crawl_throwing_bomb_01",
				"pdr_crawl_throwing_bomb_02",
				"pdr_crawl_throwing_bomb_03",
				"pdr_crawl_throwing_bomb_04"
			},
			sound_events_duration = {
				1.1192291975021,
				2.1160624027252,
				3.248687505722,
				2.3487083911896
			}
		},
		pdr_gameplay_ambush_horde_spawned_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 4,
			category = "enemy_alerts_high",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_surprise",
				"face_surprise",
				"face_surprise",
				"face_surprise"
			},
			localization_strings = {
				"pdr_crawl_horde_incoming_a_01",
				"pdr_crawl_horde_incoming_a_02",
				"pdr_crawl_horde_incoming_a_03",
				"pdr_crawl_horde_incoming_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_crawl_horde_incoming_a_01",
				"pdr_crawl_horde_incoming_a_02",
				"pdr_crawl_horde_incoming_a_03",
				"pdr_crawl_horde_incoming_a_04"
			},
			sound_events_duration = {
				2.685729265213,
				3.7481875419617,
				1.8436666727066,
				7.4368543624878
			}
		},
		pdr_gameplay_ambush_horde_spawned_no_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 7,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 7,
			category = "enemy_alerts_high",
			dialogue_animations_n = 7,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_surprise",
				"face_surprise",
				"face_surprise",
				"face_surprise",
				"face_surprise",
				"face_surprise",
				"face_surprise"
			},
			localization_strings = {
				"pdr_gameplay_ambush_horde_spawned_02",
				"pdr_gameplay_ambush_horde_spawned_03",
				"pdr_gameplay_ambush_horde_spawned_05",
				"pdr_gameplay_ambush_horde_spawned_07",
				"pdr_gameplay_ambush_horde_spawned_08",
				"pdr_gameplay_ambush_horde_spawned_09",
				"pdr_gameplay_ambush_horde_spawned_10"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_ambush_horde_spawned_02",
				"pdr_gameplay_ambush_horde_spawned_03",
				"pdr_gameplay_ambush_horde_spawned_05",
				"pdr_gameplay_ambush_horde_spawned_07",
				"pdr_gameplay_ambush_horde_spawned_08",
				"pdr_gameplay_ambush_horde_spawned_09",
				"pdr_gameplay_ambush_horde_spawned_10"
			},
			sound_events_duration = {
				1.6419295072556,
				2.5736665725708,
				1.9277708530426,
				2.0216040611267,
				1.3750624656677,
				1.7952708005905,
				3.7713541984558
			}
		},
		pdr_gameplay_bright_wizard_being_helped_up_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 11,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 11,
			category = "player_feedback",
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
				"pdr_gameplay_bright_wizard_being_helped_up_01",
				"pdr_gameplay_bright_wizard_being_helped_up_02",
				"pdr_gameplay_bright_wizard_being_helped_up_03",
				"pdr_gameplay_bright_wizard_being_helped_up_04",
				"pdr_gameplay_bright_wizard_being_helped_up_05",
				"pdr_gameplay_bright_wizard_being_helped_up_06",
				"pdr_gameplay_bright_wizard_being_helped_up_07",
				"pdr_gameplay_bright_wizard_being_helped_up_08",
				"pdr_gameplay_bright_wizard_being_helped_up_09",
				"pdr_gameplay_bright_wizard_being_helped_up_10",
				"pdr_gameplay_bright_wizard_being_helped_up_11"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_bright_wizard_being_helped_up_01",
				"pdr_gameplay_bright_wizard_being_helped_up_02",
				"pdr_gameplay_bright_wizard_being_helped_up_03",
				"pdr_gameplay_bright_wizard_being_helped_up_04",
				"pdr_gameplay_bright_wizard_being_helped_up_05",
				"pdr_gameplay_bright_wizard_being_helped_up_06",
				"pdr_gameplay_bright_wizard_being_helped_up_07",
				"pdr_gameplay_bright_wizard_being_helped_up_08",
				"pdr_gameplay_bright_wizard_being_helped_up_09",
				"pdr_gameplay_bright_wizard_being_helped_up_10",
				"pdr_gameplay_bright_wizard_being_helped_up_11"
			},
			sound_events_duration = {
				1.644770860672,
				2.9065625667572,
				0.9784791469574,
				1.5072083473206,
				1.9866666793823,
				2.8461041450501,
				0.81883335113525,
				3.0595834255219,
				1.9448750019074,
				2.2999999523163,
				1.2673749923706
			}
		},
		pdr_gameplay_bright_wizard_low_on_health_no_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 8,
			category = "player_feedback",
			dialogue_animations_n = 8,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pdr_gameplay_bright_wizard_low_on_health_01",
				"pdr_gameplay_bright_wizard_low_on_health_02",
				"pdr_gameplay_bright_wizard_low_on_health_03",
				"pdr_gameplay_bright_wizard_low_on_health_04",
				"pdr_gameplay_bright_wizard_low_on_health_05",
				"pdr_gameplay_bright_wizard_low_on_health_06",
				"pdr_gameplay_bright_wizard_low_on_health_07",
				"pdr_gameplay_bright_wizard_low_on_health_08"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_bright_wizard_low_on_health_01",
				"pdr_gameplay_bright_wizard_low_on_health_02",
				"pdr_gameplay_bright_wizard_low_on_health_03",
				"pdr_gameplay_bright_wizard_low_on_health_04",
				"pdr_gameplay_bright_wizard_low_on_health_05",
				"pdr_gameplay_bright_wizard_low_on_health_06",
				"pdr_gameplay_bright_wizard_low_on_health_07",
				"pdr_gameplay_bright_wizard_low_on_health_08"
			},
			sound_events_duration = {
				1.9268125295639,
				2.1494998931885,
				2.1160209178925,
				2.2001042366028,
				2.2359790802002,
				2.2799582481384,
				1.5912499427795,
				1.504979133606
			}
		},
		pdr_gameplay_casual_quotes_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 5,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 5,
			category = "story_talk_vce",
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
				"pdr_bardin_song_01",
				"pdr_bardin_song_02",
				"pdr_bardin_song_03",
				"pdr_bardin_song_04",
				"pdr_bardin_song_05"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_bardin_song_01",
				"pdr_bardin_song_02",
				"pdr_bardin_song_03",
				"pdr_bardin_song_04",
				"pdr_bardin_song_05"
			},
			sound_events_duration = {
				8.210000038147,
				7.4000000953674,
				6.5517916679382,
				6.6199998855591,
				8.8467712402344
			}
		},
		pdr_gameplay_empire_soldier_being_helped_up_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 13,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 13,
			category = "player_feedback",
			dialogue_animations_n = 13,
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
				"face_neutral"
			},
			localization_strings = {
				"pdr_gameplay_empire_soldier_being_helped_up_01",
				"pdr_gameplay_empire_soldier_being_helped_up_02",
				"pdr_gameplay_empire_soldier_being_helped_up_03",
				"pdr_gameplay_empire_soldier_being_helped_up_04",
				"pdr_gameplay_empire_soldier_being_helped_up_05",
				"pdr_gameplay_empire_soldier_being_helped_up_06",
				"pdr_gameplay_empire_soldier_being_helped_up_07",
				"pdr_gameplay_empire_soldier_being_helped_up_08",
				"pdr_gameplay_empire_soldier_being_helped_up_09",
				"pdr_gameplay_empire_soldier_being_helped_up_10",
				"pdr_gameplay_empire_soldier_being_helped_up_11",
				"pdr_gameplay_empire_soldier_being_helped_up_12",
				"pdr_gameplay_empire_soldier_being_helped_up_13"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_empire_soldier_being_helped_up_01",
				"pdr_gameplay_empire_soldier_being_helped_up_02",
				"pdr_gameplay_empire_soldier_being_helped_up_03",
				"pdr_gameplay_empire_soldier_being_helped_up_04",
				"pdr_gameplay_empire_soldier_being_helped_up_05",
				"pdr_gameplay_empire_soldier_being_helped_up_06",
				"pdr_gameplay_empire_soldier_being_helped_up_07",
				"pdr_gameplay_empire_soldier_being_helped_up_08",
				"pdr_gameplay_empire_soldier_being_helped_up_09",
				"pdr_gameplay_empire_soldier_being_helped_up_10",
				"pdr_gameplay_empire_soldier_being_helped_up_11",
				"pdr_gameplay_empire_soldier_being_helped_up_12",
				"pdr_gameplay_empire_soldier_being_helped_up_13"
			},
			sound_events_duration = {
				1.2736666202545,
				2.0709373950958,
				2.9567084312439,
				2.8201665878296,
				2.0419583320618,
				2.3932707309723,
				1.600625038147,
				2.7467501163483,
				3.0650417804718,
				2.4041874408722,
				2.2159583568573,
				2.5668957233429,
				1.4860625267029
			}
		},
		pdr_gameplay_empire_soldier_low_on_health_no_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 6,
			category = "player_feedback",
			dialogue_animations_n = 6,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pdr_gameplay_empire_soldier_low_on_health_03",
				"pdr_gameplay_empire_soldier_low_on_health_04",
				"pdr_gameplay_empire_soldier_low_on_health_05",
				"pdr_gameplay_empire_soldier_low_on_health_06",
				"pdr_gameplay_empire_soldier_low_on_health_07",
				"pdr_gameplay_empire_soldier_low_on_health_08"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_empire_soldier_low_on_health_03",
				"pdr_gameplay_empire_soldier_low_on_health_04",
				"pdr_gameplay_empire_soldier_low_on_health_05",
				"pdr_gameplay_empire_soldier_low_on_health_06",
				"pdr_gameplay_empire_soldier_low_on_health_07",
				"pdr_gameplay_empire_soldier_low_on_health_08"
			},
			sound_events_duration = {
				3.7133541107178,
				3.7033541202545,
				1.6284166574478,
				3.2151041030884,
				2.6705832481384,
				2.3964166641235
			}
		},
		pdr_gameplay_friendly_fire_bright_wizard_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 8,
			category = "player_feedback",
			dialogue_animations_n = 8,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry"
			},
			localization_strings = {
				"pdr_gameplay_friendly_fire_bright_wizard_01",
				"pdr_gameplay_friendly_fire_bright_wizard_02",
				"pdr_gameplay_friendly_fire_bright_wizard_03",
				"pdr_gameplay_friendly_fire_bright_wizard_04",
				"pdr_gameplay_friendly_fire_bright_wizard_05",
				"pdr_gameplay_friendly_fire_bright_wizard_06",
				"pdr_gameplay_friendly_fire_bright_wizard_07",
				"pdr_gameplay_friendly_fire_bright_wizard_08"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_friendly_fire_bright_wizard_01",
				"pdr_gameplay_friendly_fire_bright_wizard_02",
				"pdr_gameplay_friendly_fire_bright_wizard_03",
				"pdr_gameplay_friendly_fire_bright_wizard_04",
				"pdr_gameplay_friendly_fire_bright_wizard_05",
				"pdr_gameplay_friendly_fire_bright_wizard_06",
				"pdr_gameplay_friendly_fire_bright_wizard_07",
				"pdr_gameplay_friendly_fire_bright_wizard_08"
			},
			sound_events_duration = {
				3.2221040725708,
				1.4814374446869,
				1.7179583311081,
				2.5068333148956,
				2.6680417060852,
				1.654000043869,
				2.876312494278,
				2.8222708702087
			}
		},
		pdr_gameplay_friendly_fire_empire_soldier_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 8,
			category = "player_feedback",
			dialogue_animations_n = 8,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry"
			},
			localization_strings = {
				"pdr_gameplay_friendly_fire_empire_soldier_01",
				"pdr_gameplay_friendly_fire_empire_soldier_02",
				"pdr_gameplay_friendly_fire_empire_soldier_03",
				"pdr_gameplay_friendly_fire_empire_soldier_04",
				"pdr_gameplay_friendly_fire_empire_soldier_05",
				"pdr_gameplay_friendly_fire_empire_soldier_06",
				"pdr_gameplay_friendly_fire_empire_soldier_07",
				"pdr_gameplay_friendly_fire_empire_soldier_08"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_friendly_fire_empire_soldier_01",
				"pdr_gameplay_friendly_fire_empire_soldier_02",
				"pdr_gameplay_friendly_fire_empire_soldier_03",
				"pdr_gameplay_friendly_fire_empire_soldier_04",
				"pdr_gameplay_friendly_fire_empire_soldier_05",
				"pdr_gameplay_friendly_fire_empire_soldier_06",
				"pdr_gameplay_friendly_fire_empire_soldier_07",
				"pdr_gameplay_friendly_fire_empire_soldier_08"
			},
			sound_events_duration = {
				4.5900831222534,
				3.1218540668488,
				2.3187708854675,
				3.0404584407806,
				1.7670832872391,
				2.8310000896454,
				1.8809374570847,
				1.7145208120346
			}
		},
		pdr_gameplay_friendly_fire_witch_hunter_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 8,
			category = "player_feedback",
			dialogue_animations_n = 8,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry"
			},
			localization_strings = {
				"pdr_gameplay_friendly_fire_witch_hunter_01",
				"pdr_gameplay_friendly_fire_witch_hunter_02",
				"pdr_gameplay_friendly_fire_witch_hunter_03",
				"pdr_gameplay_friendly_fire_witch_hunter_04",
				"pdr_gameplay_friendly_fire_witch_hunter_05",
				"pdr_gameplay_friendly_fire_witch_hunter_06",
				"pdr_gameplay_friendly_fire_witch_hunter_07",
				"pdr_gameplay_friendly_fire_witch_hunter_08"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_friendly_fire_witch_hunter_01",
				"pdr_gameplay_friendly_fire_witch_hunter_02",
				"pdr_gameplay_friendly_fire_witch_hunter_03",
				"pdr_gameplay_friendly_fire_witch_hunter_04",
				"pdr_gameplay_friendly_fire_witch_hunter_05",
				"pdr_gameplay_friendly_fire_witch_hunter_06",
				"pdr_gameplay_friendly_fire_witch_hunter_07",
				"pdr_gameplay_friendly_fire_witch_hunter_08"
			},
			sound_events_duration = {
				3.1496040821075,
				2.4701459407806,
				3.7880001068115,
				3.6604375839233,
				2.2968125343323,
				2.2146248817444,
				3.7078957557678,
				2.6258749961853
			}
		},
		pdr_gameplay_friendly_fire_wood_elf_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 7,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 7,
			category = "player_feedback",
			dialogue_animations_n = 7,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry"
			},
			localization_strings = {
				"pdr_gameplay_friendly_fire_wood_elf_01",
				"pdr_gameplay_friendly_fire_wood_elf_02",
				"pdr_gameplay_friendly_fire_wood_elf_03",
				"pdr_gameplay_friendly_fire_wood_elf_04",
				"pdr_gameplay_friendly_fire_wood_elf_05",
				"pdr_gameplay_friendly_fire_wood_elf_06",
				"pdr_gameplay_friendly_fire_wood_elf_07"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_friendly_fire_wood_elf_01",
				"pdr_gameplay_friendly_fire_wood_elf_02",
				"pdr_gameplay_friendly_fire_wood_elf_03",
				"pdr_gameplay_friendly_fire_wood_elf_04",
				"pdr_gameplay_friendly_fire_wood_elf_05",
				"pdr_gameplay_friendly_fire_wood_elf_06",
				"pdr_gameplay_friendly_fire_wood_elf_07"
			},
			sound_events_duration = {
				3.7512083053589,
				3.0756666660309,
				3.4313750267029,
				2.476083278656,
				2.6028332710266,
				1.9352707862854,
				2.5543749332428
			}
		},
		pdr_gameplay_healing_bright_wizard_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 8,
			category = "player_feedback",
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
				"pdr_gameplay_healing_bright_wizard_01",
				"pdr_gameplay_healing_bright_wizard_02",
				"pdr_gameplay_healing_bright_wizard_03",
				"pdr_gameplay_healing_bright_wizard_04",
				"pdr_gameplay_healing_bright_wizard_05",
				"pdr_gameplay_healing_bright_wizard_06",
				"pdr_gameplay_healing_bright_wizard_07",
				"pdr_gameplay_healing_bright_wizard_08"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_healing_bright_wizard_01",
				"pdr_gameplay_healing_bright_wizard_02",
				"pdr_gameplay_healing_bright_wizard_03",
				"pdr_gameplay_healing_bright_wizard_04",
				"pdr_gameplay_healing_bright_wizard_05",
				"pdr_gameplay_healing_bright_wizard_06",
				"pdr_gameplay_healing_bright_wizard_07",
				"pdr_gameplay_healing_bright_wizard_08"
			},
			sound_events_duration = {
				2.266562461853,
				2.5626666545868,
				2.6732292175293,
				1.4492499828339,
				2.5811042785645,
				2.606166601181,
				3.2202708721161,
				1.9624999761581
			}
		},
		pdr_gameplay_healing_draught_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 4,
			category = "seen_items",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pdr_crawl_drunk_spotted_liquid_01",
				"pdr_crawl_drunk_spotted_liquid_02",
				"pdr_crawl_drunk_spotted_liquid_03",
				"pdr_crawl_drunk_spotted_liquid_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_crawl_drunk_spotted_liquid_01",
				"pdr_crawl_drunk_spotted_liquid_02",
				"pdr_crawl_drunk_spotted_liquid_03",
				"pdr_crawl_drunk_spotted_liquid_04"
			},
			sound_events_duration = {
				1.6388125419617,
				1.6593542098999,
				1.5683333873749,
				2.5938124656677
			}
		},
		pdr_gameplay_healing_empire_soldier_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 8,
			category = "player_feedback",
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
				"pdr_gameplay_healing_empire_soldier_01",
				"pdr_gameplay_healing_empire_soldier_02",
				"pdr_gameplay_healing_empire_soldier_03",
				"pdr_gameplay_healing_empire_soldier_04",
				"pdr_gameplay_healing_empire_soldier_05",
				"pdr_gameplay_healing_empire_soldier_06",
				"pdr_gameplay_healing_empire_soldier_07",
				"pdr_gameplay_healing_empire_soldier_09"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_healing_empire_soldier_01",
				"pdr_gameplay_healing_empire_soldier_02",
				"pdr_gameplay_healing_empire_soldier_03",
				"pdr_gameplay_healing_empire_soldier_04",
				"pdr_gameplay_healing_empire_soldier_05",
				"pdr_gameplay_healing_empire_soldier_06",
				"pdr_gameplay_healing_empire_soldier_07",
				"pdr_gameplay_healing_empire_soldier_09"
			},
			sound_events_duration = {
				1.9819166660309,
				1.9733333587647,
				1.7332708835602,
				2.2437720298767,
				3.028062582016,
				1.8691458702087,
				1.9270499944687,
				2.2167499065399
			}
		},
		pdr_gameplay_healing_witch_hunter_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 9,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 9,
			category = "player_feedback",
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
				"pdr_gameplay_healing_witch_hunter_01",
				"pdr_gameplay_healing_witch_hunter_02",
				"pdr_gameplay_healing_witch_hunter_03",
				"pdr_gameplay_healing_witch_hunter_04",
				"pdr_gameplay_healing_witch_hunter_05",
				"pdr_gameplay_healing_witch_hunter_06",
				"pdr_gameplay_healing_witch_hunter_07",
				"pdr_gameplay_healing_witch_hunter_08",
				"pdr_gameplay_healing_witch_hunter_09"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_healing_witch_hunter_01",
				"pdr_gameplay_healing_witch_hunter_02",
				"pdr_gameplay_healing_witch_hunter_03",
				"pdr_gameplay_healing_witch_hunter_04",
				"pdr_gameplay_healing_witch_hunter_05",
				"pdr_gameplay_healing_witch_hunter_06",
				"pdr_gameplay_healing_witch_hunter_07",
				"pdr_gameplay_healing_witch_hunter_08",
				"pdr_gameplay_healing_witch_hunter_09"
			},
			sound_events_duration = {
				2.1914999485016,
				2.023414850235,
				1.7972223758698,
				2.3479101657867,
				2.4157917499542,
				2.6819167137146,
				2.7626249790192,
				1.8358330726624,
				2.5376665592194
			}
		},
		pdr_gameplay_healing_wood_elf_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 8,
			category = "player_feedback",
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
				"pdr_gameplay_healing_wood_elf_01",
				"pdr_gameplay_healing_wood_elf_02",
				"pdr_gameplay_healing_wood_elf_03",
				"pdr_gameplay_healing_wood_elf_04",
				"pdr_gameplay_healing_wood_elf_05",
				"pdr_gameplay_healing_wood_elf_06",
				"pdr_gameplay_healing_wood_elf_07",
				"pdr_gameplay_healing_wood_elf_08"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_healing_wood_elf_01",
				"pdr_gameplay_healing_wood_elf_02",
				"pdr_gameplay_healing_wood_elf_03",
				"pdr_gameplay_healing_wood_elf_04",
				"pdr_gameplay_healing_wood_elf_05",
				"pdr_gameplay_healing_wood_elf_06",
				"pdr_gameplay_healing_wood_elf_07",
				"pdr_gameplay_healing_wood_elf_08"
			},
			sound_events_duration = {
				3.0564999580383,
				3.1419999599457,
				2.25,
				2.0576040744781,
				2.4252500534058,
				2.5296041965485,
				2.7420833110809,
				1.5248333215714
			}
		},
		pdr_gameplay_hearing_a_Skaven_warpfire_thrower_combat_no_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 6,
			category = "enemy_alerts_high",
			dialogue_animations_n = 6,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			},
			localization_strings = {
				"pdr_gameplay_hearing_a_Skaven_warpfire_thrower_combat_01",
				"pdr_gameplay_hearing_a_Skaven_warpfire_thrower_combat_02",
				"pdr_gameplay_hearing_a_Skaven_warpfire_thrower_combat_03",
				"pdr_gameplay_hearing_a_Skaven_warpfire_thrower_combat_04",
				"pdr_gameplay_hearing_a_Skaven_warpfire_thrower_combat_05",
				"pdr_gameplay_hearing_a_Skaven_warpfire_thrower_combat_06"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_hearing_a_Skaven_warpfire_thrower_combat_01",
				"pdr_gameplay_hearing_a_Skaven_warpfire_thrower_combat_02",
				"pdr_gameplay_hearing_a_Skaven_warpfire_thrower_combat_03",
				"pdr_gameplay_hearing_a_Skaven_warpfire_thrower_combat_04",
				"pdr_gameplay_hearing_a_Skaven_warpfire_thrower_combat_05",
				"pdr_gameplay_hearing_a_Skaven_warpfire_thrower_combat_06"
			},
			sound_events_duration = {
				2.3980207443237,
				1.3486042022705,
				2.4221041202545,
				1.1622707843781,
				1.637791633606,
				1.5051666498184
			}
		},
		pdr_gameplay_hearing_a_Skaven_warpfire_thrower_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 8,
			category = "enemy_alerts",
			dialogue_animations_n = 8,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_contempt",
				"face_contempt",
				"face_contempt",
				"face_contempt"
			},
			localization_strings = {
				"pdr_crawl_drunk_incoming_threat_01",
				"pdr_crawl_drunk_incoming_threat_02",
				"pdr_crawl_drunk_incoming_threat_03",
				"pdr_crawl_drunk_incoming_threat_04",
				"pdr_crawl_pes_crawl_drunk_incoming_threat_new_a_01",
				"pdr_crawl_pes_crawl_drunk_incoming_threat_new_a_02",
				"pdr_crawl_pes_crawl_drunk_incoming_threat_new_a_03",
				"pdr_crawl_pes_crawl_drunk_incoming_threat_new_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_crawl_drunk_incoming_threat_01",
				"pdr_crawl_drunk_incoming_threat_02",
				"pdr_crawl_drunk_incoming_threat_03",
				"pdr_crawl_drunk_incoming_threat_04",
				"pdr_crawl_pes_crawl_drunk_incoming_threat_new_a_01",
				"pdr_crawl_pes_crawl_drunk_incoming_threat_new_a_02",
				"pdr_crawl_pes_crawl_drunk_incoming_threat_new_a_03",
				"pdr_crawl_pes_crawl_drunk_incoming_threat_new_a_04"
			},
			sound_events_duration = {
				5.0268335342407,
				2.3176667690277,
				2.968291759491,
				3.737104177475,
				2.7620832920074,
				2.9280416965485,
				3.6786665916443,
				3.3218958377838
			}
		},
		pdr_gameplay_hearing_a_Skaven_warpfire_thrower_no_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 6,
			category = "enemy_alerts",
			dialogue_animations_n = 6,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			},
			localization_strings = {
				"pdr_gameplay_hearing_a_Skaven_warpfire_thrower_01",
				"pdr_gameplay_hearing_a_Skaven_warpfire_thrower_02",
				"pdr_gameplay_hearing_a_Skaven_warpfire_thrower_03",
				"pdr_gameplay_hearing_a_Skaven_warpfire_thrower_04",
				"pdr_gameplay_hearing_a_Skaven_warpfire_thrower_05",
				"pdr_gameplay_hearing_a_Skaven_warpfire_thrower_06"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_hearing_a_Skaven_warpfire_thrower_01",
				"pdr_gameplay_hearing_a_Skaven_warpfire_thrower_02",
				"pdr_gameplay_hearing_a_Skaven_warpfire_thrower_03",
				"pdr_gameplay_hearing_a_Skaven_warpfire_thrower_04",
				"pdr_gameplay_hearing_a_Skaven_warpfire_thrower_05",
				"pdr_gameplay_hearing_a_Skaven_warpfire_thrower_06"
			},
			sound_events_duration = {
				1.700395822525,
				2.0572707653046,
				1.8263750076294,
				2.8980207443237,
				1.891520857811,
				1.0387707948685
			}
		},
		pdr_gameplay_hearing_a_chaos_spawn_combat_no_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 8,
			category = "enemy_alerts_high",
			dialogue_animations_n = 8,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			},
			localization_strings = {
				"pdr_gameplay_hearing_a_chaos_spawn_combat_01",
				"pdr_gameplay_hearing_a_chaos_spawn_combat_02",
				"pdr_gameplay_hearing_a_chaos_spawn_combat_03",
				"pdr_gameplay_hearing_a_chaos_spawn_combat_04",
				"pdr_gameplay_hearing_a_chaos_spawn_combat_05",
				"pdr_gameplay_hearing_a_chaos_spawn_combat_06",
				"pdr_gameplay_hearing_a_chaos_spawn_combat_07",
				"pdr_gameplay_hearing_a_chaos_spawn_combat_08"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_hearing_a_chaos_spawn_combat_01",
				"pdr_gameplay_hearing_a_chaos_spawn_combat_02",
				"pdr_gameplay_hearing_a_chaos_spawn_combat_03",
				"pdr_gameplay_hearing_a_chaos_spawn_combat_04",
				"pdr_gameplay_hearing_a_chaos_spawn_combat_05",
				"pdr_gameplay_hearing_a_chaos_spawn_combat_06",
				"pdr_gameplay_hearing_a_chaos_spawn_combat_07",
				"pdr_gameplay_hearing_a_chaos_spawn_combat_08"
			},
			sound_events_duration = {
				2.2703957557678,
				2.5832707881927,
				2.2373957633972,
				2.2540416717529,
				3.1335000991821,
				0.91722917556763,
				1.5132083892822,
				1.6647917032242
			}
		},
		pdr_gameplay_hearing_a_chaos_spawn_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 3,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 3,
			category = "enemy_alerts_high",
			dialogue_animations_n = 3,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pdr_crawl_monster_spotted_03_a_01",
				"pdr_crawl_monster_spotted_03_a_02",
				"pdr_crawl_monster_spotted_03_a_03"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_crawl_monster_spotted_03_a_01",
				"pdr_crawl_monster_spotted_03_a_02",
				"pdr_crawl_monster_spotted_03_a_03"
			},
			sound_events_duration = {
				1.1683332920075,
				1.9128541946411,
				2.7656457424164
			}
		},
		pdr_gameplay_hearing_a_chaos_spawn_no_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 8,
			category = "enemy_alerts_high",
			dialogue_animations_n = 8,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_contempt",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			},
			localization_strings = {
				"pdr_gameplay_hearing_a_chaos_spawn_01",
				"pdr_gameplay_hearing_a_chaos_spawn_02",
				"pdr_gameplay_hearing_a_chaos_spawn_03",
				"pdr_gameplay_hearing_a_chaos_spawn_04",
				"pdr_gameplay_hearing_a_chaos_spawn_05",
				"pdr_gameplay_hearing_a_chaos_spawn_06",
				"pdr_gameplay_hearing_a_chaos_spawn_07",
				"pdr_gameplay_hearing_a_chaos_spawn_08"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_hearing_a_chaos_spawn_01",
				"pdr_gameplay_hearing_a_chaos_spawn_02",
				"pdr_gameplay_hearing_a_chaos_spawn_03",
				"pdr_gameplay_hearing_a_chaos_spawn_04",
				"pdr_gameplay_hearing_a_chaos_spawn_05",
				"pdr_gameplay_hearing_a_chaos_spawn_06",
				"pdr_gameplay_hearing_a_chaos_spawn_07",
				"pdr_gameplay_hearing_a_chaos_spawn_08"
			},
			sound_events_duration = {
				3.2391667366028,
				3.5926041603088,
				3.4100625514984,
				3.0591666698456,
				1.1491041183472,
				1.3408124446869,
				1.3653750419617,
				1.9563332796097
			}
		},
		pdr_gameplay_hearing_a_chaos_warrior_combat_no_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 8,
			category = "enemy_alerts",
			dialogue_animations_n = 8,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			},
			localization_strings = {
				"pdr_gameplay_hearing_a_chaos_warrior_combat_01",
				"pdr_gameplay_hearing_a_chaos_warrior_combat_02",
				"pdr_gameplay_hearing_a_chaos_warrior_combat_03",
				"pdr_gameplay_hearing_a_chaos_warrior_combat_04",
				"pdr_gameplay_hearing_a_chaos_warrior_combat_05",
				"pdr_gameplay_hearing_a_chaos_warrior_combat_06",
				"pdr_gameplay_hearing_a_chaos_warrior_combat_07",
				"pdr_gameplay_hearing_a_chaos_warrior_combat_08"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_hearing_a_chaos_warrior_combat_01",
				"pdr_gameplay_hearing_a_chaos_warrior_combat_02",
				"pdr_gameplay_hearing_a_chaos_warrior_combat_03",
				"pdr_gameplay_hearing_a_chaos_warrior_combat_04",
				"pdr_gameplay_hearing_a_chaos_warrior_combat_05",
				"pdr_gameplay_hearing_a_chaos_warrior_combat_06",
				"pdr_gameplay_hearing_a_chaos_warrior_combat_07",
				"pdr_gameplay_hearing_a_chaos_warrior_combat_08"
			},
			sound_events_duration = {
				1.0303958654404,
				1.0929583311081,
				1.2392708063126,
				1.87600004673,
				2.7841041088104,
				1.5898749828339,
				1.9598333835602,
				1.7859582901001
			}
		},
		pdr_gameplay_hearing_a_chaos_wizard_wind_combat_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 4,
			category = "enemy_alerts_high",
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
				"pdr_crawl_drunk_incoming_threat_01",
				"pdr_crawl_drunk_incoming_threat_02",
				"pdr_crawl_drunk_incoming_threat_03",
				"pdr_crawl_drunk_incoming_threat_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_crawl_drunk_incoming_threat_01",
				"pdr_crawl_drunk_incoming_threat_02",
				"pdr_crawl_drunk_incoming_threat_03",
				"pdr_crawl_drunk_incoming_threat_04"
			},
			sound_events_duration = {
				5.0268335342407,
				2.3176667690277,
				2.968291759491,
				3.737104177475
			}
		},
		pdr_gameplay_hearing_a_chaos_wizard_wind_combat_no_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 5,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 5,
			category = "enemy_alerts_high",
			dialogue_animations_n = 5,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			},
			localization_strings = {
				"pdr_gameplay_hearing_a_chaos_wizard_wind_combat_03",
				"pdr_gameplay_hearing_a_chaos_wizard_wind_combat_04",
				"pdr_gameplay_hearing_a_chaos_wizard_wind_combat_05",
				"pdr_gameplay_hearing_a_chaos_wizard_wind_combat_06",
				"pdr_gameplay_hearing_a_chaos_wizard_wind_combat_07"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_hearing_a_chaos_wizard_wind_combat_03",
				"pdr_gameplay_hearing_a_chaos_wizard_wind_combat_04",
				"pdr_gameplay_hearing_a_chaos_wizard_wind_combat_05",
				"pdr_gameplay_hearing_a_chaos_wizard_wind_combat_06",
				"pdr_gameplay_hearing_a_chaos_wizard_wind_combat_07"
			},
			sound_events_duration = {
				1.8851041793823,
				2.0283749103546,
				2.0979375839233,
				1.9772499799728,
				3.3033542633057
			}
		},
		pdr_gameplay_hearing_a_chaos_wizard_wind_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 4,
			category = "enemy_alerts",
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
				"pdr_crawl_drunk_incoming_threat_01",
				"pdr_crawl_drunk_incoming_threat_02",
				"pdr_crawl_drunk_incoming_threat_03",
				"pdr_crawl_drunk_incoming_threat_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_crawl_drunk_incoming_threat_01",
				"pdr_crawl_drunk_incoming_threat_02",
				"pdr_crawl_drunk_incoming_threat_03",
				"pdr_crawl_drunk_incoming_threat_04"
			},
			sound_events_duration = {
				5.0268335342407,
				2.3176667690277,
				2.968291759491,
				3.737104177475
			}
		},
		pdr_gameplay_hearing_a_chaos_wizard_wind_no_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 8,
			category = "enemy_alerts",
			dialogue_animations_n = 8,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			},
			localization_strings = {
				"pdr_gameplay_hearing_a_chaos_wizard_wind_01",
				"pdr_gameplay_hearing_a_chaos_wizard_wind_02",
				"pdr_gameplay_hearing_a_chaos_wizard_wind_03",
				"pdr_gameplay_hearing_a_chaos_wizard_wind_04",
				"pdr_gameplay_hearing_a_chaos_wizard_wind_05",
				"pdr_gameplay_hearing_a_chaos_wizard_wind_06",
				"pdr_gameplay_hearing_a_chaos_wizard_wind_07",
				"pdr_gameplay_hearing_a_chaos_wizard_wind_08"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_hearing_a_chaos_wizard_wind_01",
				"pdr_gameplay_hearing_a_chaos_wizard_wind_02",
				"pdr_gameplay_hearing_a_chaos_wizard_wind_03",
				"pdr_gameplay_hearing_a_chaos_wizard_wind_04",
				"pdr_gameplay_hearing_a_chaos_wizard_wind_05",
				"pdr_gameplay_hearing_a_chaos_wizard_wind_06",
				"pdr_gameplay_hearing_a_chaos_wizard_wind_07",
				"pdr_gameplay_hearing_a_chaos_wizard_wind_08"
			},
			sound_events_duration = {
				4.0048751831055,
				3.1664373874664,
				3.4642083644867,
				5.5401873588562,
				1.9348332881927,
				1.7930208444595,
				5.71639585495,
				1.7296667098999
			}
		},
		pdr_gameplay_hearing_a_globadier_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 8,
			category = "enemy_alerts",
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
				"face_contempt",
				"face_contempt",
				"face_contempt",
				"face_contempt",
				"face_contempt",
				"face_contempt",
				"face_contempt",
				"face_contempt"
			},
			localization_strings = {
				"pdr_crawl_drunk_incoming_threat_01",
				"pdr_crawl_drunk_incoming_threat_02",
				"pdr_crawl_drunk_incoming_threat_03",
				"pdr_crawl_drunk_incoming_threat_04",
				"pdr_crawl_pes_crawl_drunk_incoming_threat_new_a_01",
				"pdr_crawl_pes_crawl_drunk_incoming_threat_new_a_02",
				"pdr_crawl_pes_crawl_drunk_incoming_threat_new_a_03",
				"pdr_crawl_pes_crawl_drunk_incoming_threat_new_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_crawl_drunk_incoming_threat_01",
				"pdr_crawl_drunk_incoming_threat_02",
				"pdr_crawl_drunk_incoming_threat_03",
				"pdr_crawl_drunk_incoming_threat_04",
				"pdr_crawl_pes_crawl_drunk_incoming_threat_new_a_01",
				"pdr_crawl_pes_crawl_drunk_incoming_threat_new_a_02",
				"pdr_crawl_pes_crawl_drunk_incoming_threat_new_a_03",
				"pdr_crawl_pes_crawl_drunk_incoming_threat_new_a_04"
			},
			sound_events_duration = {
				5.0268335342407,
				2.3176667690277,
				2.968291759491,
				3.737104177475,
				2.7620832920074,
				2.9280416965485,
				3.6786665916443,
				3.3218958377838
			}
		},
		pdr_gameplay_hearing_a_globadier_no_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 5,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 5,
			category = "enemy_alerts_high",
			dialogue_animations_n = 5,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_contempt",
				"face_fear",
				"face_contempt",
				"face_contempt",
				"face_contempt"
			},
			localization_strings = {
				"pdr_gameplay_hearing_a_globadier_02",
				"pdr_gameplay_hearing_a_globadier_05",
				"pdr_gameplay_hearing_a_globadier_06",
				"pdr_gameplay_hearing_a_globadier_01",
				"pdr_gameplay_hearing_a_globadier_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_hearing_a_globadier_02",
				"pdr_gameplay_hearing_a_globadier_05",
				"pdr_gameplay_hearing_a_globadier_06",
				"pdr_gameplay_hearing_a_globadier_01",
				"pdr_gameplay_hearing_a_globadier_04"
			},
			sound_events_duration = {
				3.7499375343323,
				3.1337292194366,
				3.1356041431427,
				1.8374166488648,
				2.1182916164398
			}
		},
		pdr_gameplay_hearing_a_gutter_runner_combat_no_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 3,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 3,
			category = "enemy_alerts_high",
			dialogue_animations_n = 3,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_shout"
			},
			face_animations = {
				"face_contempt",
				"face_contempt",
				"face_contempt"
			},
			localization_strings = {
				"pdr_gameplay_hearing_a_gutter_runner_combat_01",
				"pdr_gameplay_hearing_a_gutter_runner_combat_02",
				"pdr_gameplay_hearing_a_gutter_runner_03"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_hearing_a_gutter_runner_combat_01",
				"pdr_gameplay_hearing_a_gutter_runner_combat_02",
				"pdr_gameplay_hearing_a_gutter_runner_03"
			},
			sound_events_duration = {
				2.4572083950043,
				2.0174374580383,
				2.3018751144409
			}
		},
		pdr_gameplay_hearing_a_gutter_runner_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 8,
			category = "enemy_alerts",
			dialogue_animations_n = 8,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_contempt",
				"face_contempt",
				"face_contempt",
				"face_contempt",
				"face_contempt",
				"face_contempt",
				"face_contempt",
				"face_contempt"
			},
			localization_strings = {
				"pdr_crawl_drunk_incoming_threat_01",
				"pdr_crawl_drunk_incoming_threat_02",
				"pdr_crawl_drunk_incoming_threat_03",
				"pdr_crawl_drunk_incoming_threat_04",
				"pdr_crawl_pes_crawl_drunk_incoming_threat_new_a_01",
				"pdr_crawl_pes_crawl_drunk_incoming_threat_new_a_02",
				"pdr_crawl_pes_crawl_drunk_incoming_threat_new_a_03",
				"pdr_crawl_pes_crawl_drunk_incoming_threat_new_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_crawl_drunk_incoming_threat_01",
				"pdr_crawl_drunk_incoming_threat_02",
				"pdr_crawl_drunk_incoming_threat_03",
				"pdr_crawl_drunk_incoming_threat_04",
				"pdr_crawl_pes_crawl_drunk_incoming_threat_new_a_01",
				"pdr_crawl_pes_crawl_drunk_incoming_threat_new_a_02",
				"pdr_crawl_pes_crawl_drunk_incoming_threat_new_a_03",
				"pdr_crawl_pes_crawl_drunk_incoming_threat_new_a_04"
			},
			sound_events_duration = {
				5.0268335342407,
				2.3176667690277,
				2.968291759491,
				3.737104177475,
				2.7620832920074,
				2.9280416965485,
				3.6786665916443,
				3.3218958377838
			}
		},
		pdr_gameplay_hearing_a_gutter_runner_no_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 6,
			category = "enemy_alerts_high",
			dialogue_animations_n = 6,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_contempt",
				"face_contempt",
				"face_contempt",
				"face_contempt",
				"face_contempt",
				"face_contempt"
			},
			localization_strings = {
				"pdr_gameplay_hearing_a_gutter_runner_01",
				"pdr_gameplay_hearing_a_gutter_runner_02",
				"pdr_gameplay_hearing_a_gutter_runner_03",
				"pdr_gameplay_hearing_a_gutter_runner_04",
				"pdr_gameplay_hearing_a_gutter_runner_05",
				"pdr_gameplay_hearing_a_gutter_runner_06"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_hearing_a_gutter_runner_01",
				"pdr_gameplay_hearing_a_gutter_runner_02",
				"pdr_gameplay_hearing_a_gutter_runner_03",
				"pdr_gameplay_hearing_a_gutter_runner_04",
				"pdr_gameplay_hearing_a_gutter_runner_05",
				"pdr_gameplay_hearing_a_gutter_runner_06"
			},
			sound_events_duration = {
				2.1235415935516,
				2.5503125190735,
				2.3018751144409,
				1.8287916183472,
				2.621812582016,
				1.9276666641235
			}
		},
		pdr_gameplay_hearing_a_pm_in_combat_no_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 8,
			category = "enemy_alerts",
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
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pdr_gameplay_hearing_a_plague_monk_combat_01",
				"pdr_gameplay_hearing_a_plague_monk_combat_02",
				"pdr_gameplay_hearing_a_plague_monk_combat_03",
				"pdr_gameplay_hearing_a_plague_monk_combat_04",
				"pdr_gameplay_hearing_a_plague_monk_combat_05",
				"pdr_gameplay_hearing_a_plague_monk_combat_06",
				"pdr_gameplay_hearing_a_plague_monk_combat_07",
				"pdr_gameplay_hearing_a_plague_monk_combat_08"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_hearing_a_plague_monk_combat_01",
				"pdr_gameplay_hearing_a_plague_monk_combat_02",
				"pdr_gameplay_hearing_a_plague_monk_combat_03",
				"pdr_gameplay_hearing_a_plague_monk_combat_04",
				"pdr_gameplay_hearing_a_plague_monk_combat_05",
				"pdr_gameplay_hearing_a_plague_monk_combat_06",
				"pdr_gameplay_hearing_a_plague_monk_combat_07",
				"pdr_gameplay_hearing_a_plague_monk_combat_08"
			},
			sound_events_duration = {
				1.8339583873749,
				1.7893958091736,
				1.6279375553131,
				2.8586666584015,
				1.5751667022705,
				1.3816666603088,
				1.3742500543594,
				1.554208278656
			}
		},
		pdr_gameplay_hearing_a_pm_no_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 7,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 7,
			category = "enemy_alerts",
			dialogue_animations_n = 7,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pdr_gameplay_hearing_a_plague_monk_01",
				"pdr_gameplay_hearing_a_plague_monk_02",
				"pdr_gameplay_hearing_a_plague_monk_03",
				"pdr_gameplay_hearing_a_plague_monk_04",
				"pdr_gameplay_hearing_a_plague_monk_05",
				"pdr_gameplay_hearing_a_plague_monk_06",
				"pdr_gameplay_hearing_a_plague_monk_07"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_hearing_a_plague_monk_01",
				"pdr_gameplay_hearing_a_plague_monk_02",
				"pdr_gameplay_hearing_a_plague_monk_03",
				"pdr_gameplay_hearing_a_plague_monk_04",
				"pdr_gameplay_hearing_a_plague_monk_05",
				"pdr_gameplay_hearing_a_plague_monk_06",
				"pdr_gameplay_hearing_a_plague_monk_07"
			},
			sound_events_duration = {
				3.9656457901001,
				4.1432709693909,
				4.5286459922791,
				4.1946043968201,
				1.2226250171661,
				1.9351249933243,
				1.655770778656
			}
		},
		pdr_gameplay_hearing_a_skaven_patrol_stormvermin_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 4,
			category = "enemy_alerts_high",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_nervous",
				"face_concerned",
				"face_concerned",
				"face_nervous"
			},
			localization_strings = {
				"pdr_crawl_drunk_incoming_threat_01",
				"pdr_crawl_drunk_incoming_threat_02",
				"pdr_crawl_drunk_incoming_threat_03",
				"pdr_crawl_drunk_incoming_threat_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_crawl_drunk_incoming_threat_01",
				"pdr_crawl_drunk_incoming_threat_02",
				"pdr_crawl_drunk_incoming_threat_03",
				"pdr_crawl_drunk_incoming_threat_04"
			},
			sound_events_duration = {
				5.0268335342407,
				2.3176667690277,
				2.968291759491,
				3.737104177475
			}
		},
		pdr_gameplay_hearing_a_skaven_patrol_stormvermin_no_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 7,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 7,
			category = "enemy_alerts_high",
			dialogue_animations_n = 7,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_nervous",
				"face_concerned",
				"face_concerned",
				"face_nervous",
				"face_nervous",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pdr_gameplay_hearing_a_skaven_patrol_stormvermin_01",
				"pdr_gameplay_hearing_a_skaven_patrol_stormvermin_02",
				"pdr_gameplay_hearing_a_skaven_patrol_stormvermin_03",
				"pdr_gameplay_hearing_a_skaven_patrol_stormvermin_04",
				"pdr_gameplay_hearing_a_skaven_patrol_stormvermin_05",
				"pdr_gameplay_hearing_a_skaven_patrol_stormvermin_06",
				"pdr_gameplay_hearing_a_skaven_patrol_stormvermin_07"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_hearing_a_skaven_patrol_stormvermin_01",
				"pdr_gameplay_hearing_a_skaven_patrol_stormvermin_02",
				"pdr_gameplay_hearing_a_skaven_patrol_stormvermin_03",
				"pdr_gameplay_hearing_a_skaven_patrol_stormvermin_04",
				"pdr_gameplay_hearing_a_skaven_patrol_stormvermin_05",
				"pdr_gameplay_hearing_a_skaven_patrol_stormvermin_06",
				"pdr_gameplay_hearing_a_skaven_patrol_stormvermin_07"
			},
			sound_events_duration = {
				2.3795416355133,
				2.7820208072662,
				2.9383125305176,
				2.5463750362396,
				2.6670832633972,
				1.6935416460037,
				2.6639583110809
			}
		},
		pdr_gameplay_hearing_a_skaven_rat_ogre_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 3,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 3,
			category = "enemy_alerts_high",
			dialogue_animations_n = 3,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pdr_crawl_monster_spotted_03_a_01",
				"pdr_crawl_monster_spotted_03_a_02",
				"pdr_crawl_monster_spotted_03_a_03"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_crawl_monster_spotted_03_a_01",
				"pdr_crawl_monster_spotted_03_a_02",
				"pdr_crawl_monster_spotted_03_a_03"
			},
			sound_events_duration = {
				1.1683332920075,
				1.9128541946411,
				2.7656457424164
			}
		},
		pdr_gameplay_hearing_a_skaven_rat_ogre_no_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 6,
			category = "enemy_alerts_high",
			dialogue_animations_n = 6,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_talk",
				"dialogue_shout"
			},
			face_animations = {
				"face_contempt",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_contempt",
				"face_fear"
			},
			localization_strings = {
				"pdr_gameplay_hearing_a_skaven_rat_ogre_01",
				"pdr_gameplay_hearing_a_skaven_rat_ogre_04",
				"pdr_gameplay_hearing_a_skaven_rat_ogre_05",
				"pdr_gameplay_hearing_a_skaven_rat_ogre_02",
				"pdr_gameplay_hearing_a_skaven_rat_ogre_03",
				"pdr_gameplay_hearing_a_skaven_rat_ogre_06"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_hearing_a_skaven_rat_ogre_01",
				"pdr_gameplay_hearing_a_skaven_rat_ogre_04",
				"pdr_gameplay_hearing_a_skaven_rat_ogre_05",
				"pdr_gameplay_hearing_a_skaven_rat_ogre_02",
				"pdr_gameplay_hearing_a_skaven_rat_ogre_03",
				"pdr_gameplay_hearing_a_skaven_rat_ogre_06"
			},
			sound_events_duration = {
				3.987208366394,
				3.9959375858307,
				2.3307707309723,
				2.0023748874664,
				3.4566457271576,
				2.9308125972748
			}
		},
		pdr_gameplay_hearing_a_skaven_ratling_gun_combat_no_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 3,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 3,
			category = "enemy_alerts_high",
			dialogue_animations_n = 3,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pdr_gameplay_hearing_a_skaven_ratling_gun_combat_01",
				"pdr_gameplay_hearing_a_skaven_ratling_gun_combat_02",
				"pdr_gameplay_hearing_a_skaven_ratling_gun_combat_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_hearing_a_skaven_ratling_gun_combat_01",
				"pdr_gameplay_hearing_a_skaven_ratling_gun_combat_02",
				"pdr_gameplay_hearing_a_skaven_ratling_gun_combat_04"
			},
			sound_events_duration = {
				2.6085207462311,
				3.4567,
				3.4567
			}
		},
		pdr_gameplay_hearing_a_skaven_ratling_gun_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 8,
			category = "enemy_alerts",
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
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_contempt",
				"face_contempt",
				"face_contempt",
				"face_contempt"
			},
			localization_strings = {
				"pdr_crawl_drunk_incoming_threat_01",
				"pdr_crawl_drunk_incoming_threat_02",
				"pdr_crawl_drunk_incoming_threat_03",
				"pdr_crawl_drunk_incoming_threat_04",
				"pdr_crawl_pes_crawl_drunk_incoming_threat_new_a_01",
				"pdr_crawl_pes_crawl_drunk_incoming_threat_new_a_02",
				"pdr_crawl_pes_crawl_drunk_incoming_threat_new_a_03",
				"pdr_crawl_pes_crawl_drunk_incoming_threat_new_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_crawl_drunk_incoming_threat_01",
				"pdr_crawl_drunk_incoming_threat_02",
				"pdr_crawl_drunk_incoming_threat_03",
				"pdr_crawl_drunk_incoming_threat_04",
				"pdr_crawl_pes_crawl_drunk_incoming_threat_new_a_01",
				"pdr_crawl_pes_crawl_drunk_incoming_threat_new_a_02",
				"pdr_crawl_pes_crawl_drunk_incoming_threat_new_a_03",
				"pdr_crawl_pes_crawl_drunk_incoming_threat_new_a_04"
			},
			sound_events_duration = {
				5.0268335342407,
				2.3176667690277,
				2.968291759491,
				3.737104177475,
				2.7620832920074,
				2.9280416965485,
				3.6786665916443,
				3.3218958377838
			}
		},
		pdr_gameplay_hearing_a_skaven_ratling_gun_no_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 7,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 7,
			category = "enemy_alerts_high",
			dialogue_animations_n = 7,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pdr_gameplay_hearing_a_skaven_ratling_gun_04",
				"pdr_gameplay_hearing_a_skaven_ratling_gun_05",
				"pdr_gameplay_hearing_a_skaven_ratling_gun_06",
				"pdr_gameplay_hearing_a_skaven_ratling_gun_01",
				"pdr_gameplay_hearing_a_skaven_ratling_gun_02",
				"pdr_gameplay_hearing_a_skaven_ratling_gun_03",
				"pdr_gameplay_hearing_a_skaven_ratling_gun_07"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_hearing_a_skaven_ratling_gun_04",
				"pdr_gameplay_hearing_a_skaven_ratling_gun_05",
				"pdr_gameplay_hearing_a_skaven_ratling_gun_06",
				"pdr_gameplay_hearing_a_skaven_ratling_gun_01",
				"pdr_gameplay_hearing_a_skaven_ratling_gun_02",
				"pdr_gameplay_hearing_a_skaven_ratling_gun_03",
				"pdr_gameplay_hearing_a_skaven_ratling_gun_07"
			},
			sound_events_duration = {
				2.7703750133514,
				1.9408333301544,
				2.7557709217072,
				2.3485417366028,
				2.8240625858307,
				1.9628958702087,
				2.8803334236145
			}
		},
		pdr_gameplay_hearing_a_stormfiend_combat_no_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 8,
			category = "enemy_alerts_high",
			dialogue_animations_n = 8,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			},
			localization_strings = {
				"pdr_gameplay_hearing_a_stormfiend_combat_01",
				"pdr_gameplay_hearing_a_stormfiend_combat_02",
				"pdr_gameplay_hearing_a_stormfiend_combat_03",
				"pdr_gameplay_hearing_a_stormfiend_combat_04",
				"pdr_gameplay_hearing_a_stormfiend_combat_05",
				"pdr_gameplay_hearing_a_stormfiend_combat_06",
				"pdr_gameplay_hearing_a_stormfiend_combat_07",
				"pdr_gameplay_hearing_a_stormfiend_combat_08"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_hearing_a_stormfiend_combat_01",
				"pdr_gameplay_hearing_a_stormfiend_combat_02",
				"pdr_gameplay_hearing_a_stormfiend_combat_03",
				"pdr_gameplay_hearing_a_stormfiend_combat_04",
				"pdr_gameplay_hearing_a_stormfiend_combat_05",
				"pdr_gameplay_hearing_a_stormfiend_combat_06",
				"pdr_gameplay_hearing_a_stormfiend_combat_07",
				"pdr_gameplay_hearing_a_stormfiend_combat_08"
			},
			sound_events_duration = {
				1.1514375209808,
				1.512479186058,
				1.4332708120346,
				1.9342708587647,
				1.4105207920075,
				1.8399167060852,
				1.6362082958221,
				2.6163749694824
			}
		},
		pdr_gameplay_hearing_a_stormfiend_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 3,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 3,
			category = "enemy_alerts_high",
			dialogue_animations_n = 3,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pdr_crawl_monster_spotted_03_a_01",
				"pdr_crawl_monster_spotted_03_a_02",
				"pdr_crawl_monster_spotted_03_a_03"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_crawl_monster_spotted_03_a_01",
				"pdr_crawl_monster_spotted_03_a_02",
				"pdr_crawl_monster_spotted_03_a_03"
			},
			sound_events_duration = {
				1.1683332920075,
				1.9128541946411,
				2.7656457424164
			}
		},
		pdr_gameplay_hearing_a_stormfiend_no_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 6,
			category = "enemy_alerts_high",
			dialogue_animations_n = 6,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			},
			localization_strings = {
				"pdr_gameplay_hearing_a_stormfiend_01",
				"pdr_gameplay_hearing_a_stormfiend_02",
				"pdr_gameplay_hearing_a_stormfiend_03",
				"pdr_gameplay_hearing_a_stormfiend_04",
				"pdr_gameplay_hearing_a_stormfiend_05",
				"pdr_gameplay_hearing_a_stormfiend_06"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_hearing_a_stormfiend_01",
				"pdr_gameplay_hearing_a_stormfiend_02",
				"pdr_gameplay_hearing_a_stormfiend_03",
				"pdr_gameplay_hearing_a_stormfiend_04",
				"pdr_gameplay_hearing_a_stormfiend_05",
				"pdr_gameplay_hearing_a_stormfiend_06"
			},
			sound_events_duration = {
				3.7158541679382,
				5.0146040916443,
				4.1511874198914,
				3.2652916908264,
				1.9789375066757,
				2.0614583492279
			}
		},
		pdr_gameplay_hearing_a_troll_combat_no_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 8,
			category = "enemy_alerts_high",
			dialogue_animations_n = 8,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			},
			localization_strings = {
				"pdr_gameplay_hearing_a_troll_combat_01",
				"pdr_gameplay_hearing_a_troll_combat_02",
				"pdr_gameplay_hearing_a_troll_combat_03",
				"pdr_gameplay_hearing_a_troll_combat_04",
				"pdr_gameplay_hearing_a_troll_combat_05",
				"pdr_gameplay_hearing_a_troll_combat_06",
				"pdr_gameplay_hearing_a_troll_combat_07",
				"pdr_gameplay_hearing_a_troll_combat_08"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_hearing_a_troll_combat_01",
				"pdr_gameplay_hearing_a_troll_combat_02",
				"pdr_gameplay_hearing_a_troll_combat_03",
				"pdr_gameplay_hearing_a_troll_combat_04",
				"pdr_gameplay_hearing_a_troll_combat_05",
				"pdr_gameplay_hearing_a_troll_combat_06",
				"pdr_gameplay_hearing_a_troll_combat_07",
				"pdr_gameplay_hearing_a_troll_combat_08"
			},
			sound_events_duration = {
				0.85964584350586,
				1.2995417118073,
				1.678791642189,
				3.350145816803,
				2.3865625858307,
				2.9872500896454,
				2.3371250629425,
				2.3057916164398
			}
		},
		pdr_gameplay_hearing_a_troll_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 3,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 3,
			category = "enemy_alerts_high",
			dialogue_animations_n = 3,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pdr_crawl_monster_spotted_03_a_01",
				"pdr_crawl_monster_spotted_03_a_02",
				"pdr_crawl_monster_spotted_03_a_03"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_crawl_monster_spotted_03_a_01",
				"pdr_crawl_monster_spotted_03_a_02",
				"pdr_crawl_monster_spotted_03_a_03"
			},
			sound_events_duration = {
				1.1683332920075,
				1.9128541946411,
				2.7656457424164
			}
		},
		pdr_gameplay_hearing_a_troll_no_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 6,
			category = "enemy_alerts_high",
			dialogue_animations_n = 6,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			},
			localization_strings = {
				"pdr_gameplay_hearing_a_troll_01",
				"pdr_gameplay_hearing_a_troll_02",
				"pdr_gameplay_hearing_a_troll_03",
				"pdr_gameplay_hearing_a_troll_04",
				"pdr_gameplay_hearing_a_troll_05",
				"pdr_gameplay_hearing_a_troll_06"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_hearing_a_troll_01",
				"pdr_gameplay_hearing_a_troll_02",
				"pdr_gameplay_hearing_a_troll_03",
				"pdr_gameplay_hearing_a_troll_04",
				"pdr_gameplay_hearing_a_troll_05",
				"pdr_gameplay_hearing_a_troll_06"
			},
			sound_events_duration = {
				3.3918540477753,
				2.4378125667572,
				3.4300208091736,
				5.4446668624878,
				3.4500000476837,
				3.4337084293366
			}
		},
		pdr_gameplay_hearing_marauder_berserker_combat_no_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 8,
			category = "enemy_alerts",
			dialogue_animations_n = 8,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			},
			localization_strings = {
				"pdr_gameplay_hearing_marauder_berserker_combat_01",
				"pdr_gameplay_hearing_marauder_berserker_combat_02",
				"pdr_gameplay_hearing_marauder_berserker_combat_03",
				"pdr_gameplay_hearing_marauder_berserker_combat_04",
				"pdr_gameplay_hearing_marauder_berserker_combat_05",
				"pdr_gameplay_hearing_marauder_berserker_combat_06",
				"pdr_gameplay_hearing_marauder_berserker_combat_07",
				"pdr_gameplay_hearing_marauder_berserker_combat_08"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_hearing_marauder_berserker_combat_01",
				"pdr_gameplay_hearing_marauder_berserker_combat_02",
				"pdr_gameplay_hearing_marauder_berserker_combat_03",
				"pdr_gameplay_hearing_marauder_berserker_combat_04",
				"pdr_gameplay_hearing_marauder_berserker_combat_05",
				"pdr_gameplay_hearing_marauder_berserker_combat_06",
				"pdr_gameplay_hearing_marauder_berserker_combat_07",
				"pdr_gameplay_hearing_marauder_berserker_combat_08"
			},
			sound_events_duration = {
				1.4083541631699,
				1.0705416202545,
				2.6666874885559,
				1.2847291231155,
				2.486166715622,
				2.5627708435059,
				2.0425000190735,
				2.3704791069031
			}
		},
		pdr_gameplay_hears_incoming_horde_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 4,
			category = "enemy_alerts_high",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_shout"
			},
			face_animations = {
				"face_contempt",
				"face_smug",
				"face_smug",
				"face_contempt"
			},
			localization_strings = {
				"pdr_crawl_horde_incoming_a_01",
				"pdr_crawl_horde_incoming_a_02",
				"pdr_crawl_horde_incoming_a_03",
				"pdr_crawl_horde_incoming_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_crawl_horde_incoming_a_01",
				"pdr_crawl_horde_incoming_a_02",
				"pdr_crawl_horde_incoming_a_03",
				"pdr_crawl_horde_incoming_a_04"
			},
			sound_events_duration = {
				2.685729265213,
				3.7481875419617,
				1.8436666727066,
				7.4368543624878
			}
		},
		pdr_gameplay_hears_incoming_horde_no_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 7,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 7,
			category = "enemy_alerts_high",
			dialogue_animations_n = 7,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_shout",
				"dialogue_talk",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_contempt",
				"face_smug",
				"face_smug",
				"face_contempt",
				"face_contempt",
				"face_contempt",
				"face_contempt"
			},
			localization_strings = {
				"pdr_gameplay_hears_incoming_horde_11",
				"pdr_gameplay_hears_incoming_horde_12",
				"pdr_gameplay_hears_incoming_horde_13",
				"pdr_gameplay_hears_incoming_horde_14",
				"pdr_gameplay_hears_incoming_horde_15",
				"pdr_gameplay_hears_incoming_horde_16",
				"pdr_gameplay_hears_incoming_horde_17"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_hears_incoming_horde_11",
				"pdr_gameplay_hears_incoming_horde_12",
				"pdr_gameplay_hears_incoming_horde_13",
				"pdr_gameplay_hears_incoming_horde_14",
				"pdr_gameplay_hears_incoming_horde_15",
				"pdr_gameplay_hears_incoming_horde_16",
				"pdr_gameplay_hears_incoming_horde_17"
			},
			sound_events_duration = {
				3.7647500038147,
				2.7988958358765,
				2.942125082016,
				3.3633124828339,
				2.3589999675751,
				2.4054374694824,
				1.8674999475479
			}
		},
		pdr_gameplay_helped_by_bright_wizard_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 4,
			category = "player_feedback",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pdr_gameplay_helped_by_bright_wizard_02",
				"pdr_gameplay_helped_by_bright_wizard_05",
				"pdr_gameplay_helped_by_bright_wizard_06",
				"pdr_gameplay_helped_by_bright_wizard_07"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_helped_by_bright_wizard_02",
				"pdr_gameplay_helped_by_bright_wizard_05",
				"pdr_gameplay_helped_by_bright_wizard_06",
				"pdr_gameplay_helped_by_bright_wizard_07"
			},
			sound_events_duration = {
				1.2344583272934,
				2.8325417041779,
				2.2534792423248,
				1.7668333053589
			}
		},
		pdr_gameplay_helped_by_empire_soldier_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 6,
			category = "player_feedback",
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
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pdr_gameplay_helped_by_empire_soldier_01",
				"pdr_gameplay_helped_by_empire_soldier_02",
				"pdr_gameplay_helped_by_empire_soldier_03",
				"pdr_gameplay_helped_by_empire_soldier_04",
				"pdr_gameplay_helped_by_empire_soldier_05",
				"pdr_gameplay_helped_by_empire_soldier_06"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_helped_by_empire_soldier_01",
				"pdr_gameplay_helped_by_empire_soldier_02",
				"pdr_gameplay_helped_by_empire_soldier_03",
				"pdr_gameplay_helped_by_empire_soldier_04",
				"pdr_gameplay_helped_by_empire_soldier_05",
				"pdr_gameplay_helped_by_empire_soldier_06"
			},
			sound_events_duration = {
				1.8390624523163,
				1.5960832834244,
				2.2077083587647,
				1.8311666250229,
				2.7777917385101,
				2.8599166870117
			}
		},
		pdr_gameplay_helped_by_witch_hunter_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 7,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 7,
			category = "player_feedback",
			dialogue_animations_n = 7,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pdr_gameplay_helped_by_witch_hunter_01",
				"pdr_gameplay_helped_by_witch_hunter_02",
				"pdr_gameplay_helped_by_witch_hunter_03",
				"pdr_gameplay_helped_by_witch_hunter_04",
				"pdr_gameplay_helped_by_witch_hunter_05",
				"pdr_gameplay_helped_by_witch_hunter_06",
				"pdr_gameplay_helped_by_witch_hunter_07"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_helped_by_witch_hunter_01",
				"pdr_gameplay_helped_by_witch_hunter_02",
				"pdr_gameplay_helped_by_witch_hunter_03",
				"pdr_gameplay_helped_by_witch_hunter_04",
				"pdr_gameplay_helped_by_witch_hunter_05",
				"pdr_gameplay_helped_by_witch_hunter_06",
				"pdr_gameplay_helped_by_witch_hunter_07"
			},
			sound_events_duration = {
				1.3961042165756,
				1.9754791259766,
				1.7438541650772,
				2.784458398819,
				1.7521250247955,
				1.4527708292007,
				1.9288541078568
			}
		},
		pdr_gameplay_helped_by_wood_elf_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 4,
			category = "player_feedback",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pdr_gameplay_helped_by_wood_elf_01",
				"pdr_gameplay_helped_by_wood_elf_03",
				"pdr_gameplay_helped_by_wood_elf_05",
				"pdr_gameplay_helped_by_wood_elf_06"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_helped_by_wood_elf_01",
				"pdr_gameplay_helped_by_wood_elf_03",
				"pdr_gameplay_helped_by_wood_elf_05",
				"pdr_gameplay_helped_by_wood_elf_06"
			},
			sound_events_duration = {
				1.3966250419617,
				1.7445833683014,
				2.2417707443237,
				1.8280416727066
			}
		},
		pdr_gameplay_incoming_skaven_rat_ogre_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 4,
			category = "enemy_alerts_high",
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
				"pdr_crawl_drunk_incoming_threat_01",
				"pdr_crawl_drunk_incoming_threat_02",
				"pdr_crawl_drunk_incoming_threat_03",
				"pdr_crawl_drunk_incoming_threat_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_crawl_drunk_incoming_threat_01",
				"pdr_crawl_drunk_incoming_threat_02",
				"pdr_crawl_drunk_incoming_threat_03",
				"pdr_crawl_drunk_incoming_threat_04"
			},
			sound_events_duration = {
				5.0268335342407,
				2.3176667690277,
				2.968291759491,
				3.737104177475
			}
		},
		pdr_gameplay_incoming_skaven_rat_ogre_no_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 8,
			category = "enemy_alerts_high",
			dialogue_animations_n = 8,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			},
			localization_strings = {
				"pdr_gameplay_incoming_skaven_rat_ogre_01",
				"pdr_gameplay_incoming_skaven_rat_ogre_05",
				"pdr_gameplay_incoming_skaven_rat_ogre_06",
				"pdr_gameplay_incoming_skaven_rat_ogre_02",
				"pdr_gameplay_incoming_skaven_rat_ogre_03",
				"pdr_gameplay_incoming_skaven_rat_ogre_04",
				"pdr_gameplay_incoming_skaven_rat_ogre_07",
				"pdr_gameplay_incoming_skaven_rat_ogre_08"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_incoming_skaven_rat_ogre_01",
				"pdr_gameplay_incoming_skaven_rat_ogre_05",
				"pdr_gameplay_incoming_skaven_rat_ogre_06",
				"pdr_gameplay_incoming_skaven_rat_ogre_02",
				"pdr_gameplay_incoming_skaven_rat_ogre_03",
				"pdr_gameplay_incoming_skaven_rat_ogre_04",
				"pdr_gameplay_incoming_skaven_rat_ogre_07",
				"pdr_gameplay_incoming_skaven_rat_ogre_08"
			},
			sound_events_duration = {
				2.2917292118073,
				2.0923957824707,
				1.9653124809265,
				2.4666457176209,
				2.4595832824707,
				2.6078541278839,
				2.5913751125336,
				2.8338959217072
			}
		},
		pdr_gameplay_killing_a_chaos_warrior_no_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 8,
			category = "enemy_alerts",
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
				"pdr_gameplay_killing_a_chaos_warrior_01",
				"pdr_gameplay_killing_a_chaos_warrior_02",
				"pdr_gameplay_killing_a_chaos_warrior_03",
				"pdr_gameplay_killing_a_chaos_warrior_04",
				"pdr_gameplay_killing_a_chaos_warrior_05",
				"pdr_gameplay_killing_a_chaos_warrior_06",
				"pdr_gameplay_killing_a_chaos_warrior_07",
				"pdr_gameplay_killing_a_chaos_warrior_08"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_killing_a_chaos_warrior_01",
				"pdr_gameplay_killing_a_chaos_warrior_02",
				"pdr_gameplay_killing_a_chaos_warrior_03",
				"pdr_gameplay_killing_a_chaos_warrior_04",
				"pdr_gameplay_killing_a_chaos_warrior_05",
				"pdr_gameplay_killing_a_chaos_warrior_06",
				"pdr_gameplay_killing_a_chaos_warrior_07",
				"pdr_gameplay_killing_a_chaos_warrior_08"
			},
			sound_events_duration = {
				1.9545832872391,
				2.4841876029968,
				1.9703124761581,
				1.8665000200272,
				2.9621665477753,
				2.3980417251587,
				3.5380001068115,
				2.0299999713898
			}
		},
		pdr_gameplay_killing_a_chaos_wizard_leech_no_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 6,
			category = "enemy_alerts",
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
				"pdr_gameplay_killing_a_chaos_wizard_leech_01",
				"pdr_gameplay_killing_a_chaos_wizard_leech_02",
				"pdr_gameplay_killing_a_chaos_wizard_leech_03",
				"pdr_gameplay_killing_a_chaos_wizard_leech_04",
				"pdr_gameplay_killing_a_chaos_wizard_leech_05",
				"pdr_gameplay_killing_a_chaos_wizard_leech_06"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_killing_a_chaos_wizard_leech_01",
				"pdr_gameplay_killing_a_chaos_wizard_leech_02",
				"pdr_gameplay_killing_a_chaos_wizard_leech_03",
				"pdr_gameplay_killing_a_chaos_wizard_leech_04",
				"pdr_gameplay_killing_a_chaos_wizard_leech_05",
				"pdr_gameplay_killing_a_chaos_wizard_leech_06"
			},
			sound_events_duration = {
				1.7145208120346,
				1.7940624952316,
				2.0925624370575,
				1.958104133606,
				2.8283541202545,
				2.0775208473206
			}
		},
		pdr_gameplay_killing_a_chaos_wizard_wind_no_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 6,
			category = "enemy_alerts",
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
				"pdr_gameplay_killing_a_chaos_wizard_wind_01",
				"pdr_gameplay_killing_a_chaos_wizard_wind_02",
				"pdr_gameplay_killing_a_chaos_wizard_wind_03",
				"pdr_gameplay_killing_a_chaos_wizard_wind_04",
				"pdr_gameplay_killing_a_chaos_wizard_wind_05",
				"pdr_gameplay_killing_a_chaos_wizard_wind_06"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_killing_a_chaos_wizard_wind_01",
				"pdr_gameplay_killing_a_chaos_wizard_wind_02",
				"pdr_gameplay_killing_a_chaos_wizard_wind_03",
				"pdr_gameplay_killing_a_chaos_wizard_wind_04",
				"pdr_gameplay_killing_a_chaos_wizard_wind_05",
				"pdr_gameplay_killing_a_chaos_wizard_wind_06"
			},
			sound_events_duration = {
				2.4911458492279,
				2.5195000171661,
				3.1604166030884,
				3.7742500305176,
				2.4138958454132,
				2.8757500648499
			}
		},
		pdr_gameplay_killing_a_skaven_warpfire_thrower_no_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 8,
			category = "enemy_alerts",
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
				"pdr_gameplay_killing_a_Skaven_warpfire_thrower_01",
				"pdr_gameplay_killing_a_Skaven_warpfire_thrower_02",
				"pdr_gameplay_killing_a_Skaven_warpfire_thrower_03",
				"pdr_gameplay_killing_a_Skaven_warpfire_thrower_04",
				"pdr_gameplay_killing_a_Skaven_warpfire_thrower_05",
				"pdr_gameplay_killing_a_Skaven_warpfire_thrower_06",
				"pdr_gameplay_killing_a_Skaven_warpfire_thrower_07",
				"pdr_gameplay_killing_a_Skaven_warpfire_thrower_08"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_killing_a_Skaven_warpfire_thrower_01",
				"pdr_gameplay_killing_a_Skaven_warpfire_thrower_02",
				"pdr_gameplay_killing_a_Skaven_warpfire_thrower_03",
				"pdr_gameplay_killing_a_Skaven_warpfire_thrower_04",
				"pdr_gameplay_killing_a_Skaven_warpfire_thrower_05",
				"pdr_gameplay_killing_a_Skaven_warpfire_thrower_06",
				"pdr_gameplay_killing_a_Skaven_warpfire_thrower_07",
				"pdr_gameplay_killing_a_Skaven_warpfire_thrower_08"
			},
			sound_events_duration = {
				3.3688750267029,
				4.1476664543152,
				1.9613332748413,
				2.498687505722,
				4.0379791259766,
				5.6533751487732,
				3.3138542175293,
				3.8147292137146
			}
		},
		pdr_gameplay_killing_a_stormfiend_no_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 8,
			category = "enemy_alerts",
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
				"pdr_gameplay_killing_a_stormfiend_01",
				"pdr_gameplay_killing_a_stormfiend_02",
				"pdr_gameplay_killing_a_stormfiend_03",
				"pdr_gameplay_killing_a_stormfiend_04",
				"pdr_gameplay_killing_a_stormfiend_05",
				"pdr_gameplay_killing_a_stormfiend_06",
				"pdr_gameplay_killing_a_stormfiend_07",
				"pdr_gameplay_killing_a_stormfiend_08"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_killing_a_stormfiend_01",
				"pdr_gameplay_killing_a_stormfiend_02",
				"pdr_gameplay_killing_a_stormfiend_03",
				"pdr_gameplay_killing_a_stormfiend_04",
				"pdr_gameplay_killing_a_stormfiend_05",
				"pdr_gameplay_killing_a_stormfiend_06",
				"pdr_gameplay_killing_a_stormfiend_07",
				"pdr_gameplay_killing_a_stormfiend_08"
			},
			sound_events_duration = {
				4.4209790229797,
				3.6298749446869,
				2.4566874504089,
				4.8398752212524,
				3.069375038147,
				3.2797708511352,
				4.0683331489563,
				4.6468124389648
			}
		},
		pdr_gameplay_knocked_down_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 4,
			category = "player_alerts",
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
				"face_fear"
			},
			localization_strings = {
				"pdr_crawl_drunk_knocked_down_01",
				"pdr_crawl_drunk_knocked_down_02",
				"pdr_crawl_drunk_knocked_down_03",
				"pdr_crawl_drunk_knocked_down_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_crawl_drunk_knocked_down_01",
				"pdr_crawl_drunk_knocked_down_02",
				"pdr_crawl_drunk_knocked_down_03",
				"pdr_crawl_drunk_knocked_down_04"
			},
			sound_events_duration = {
				4.2889585494995,
				3.2805416584015,
				5.1108956336975,
				4.4000000953674
			}
		},
		pdr_gameplay_low_on_health_no_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 9,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 9,
			category = "player_feedback",
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
				"face_exhausted",
				"face_exhausted",
				"face_exhausted",
				"face_exhausted",
				"face_exhausted",
				"face_exhausted",
				"face_exhausted",
				"face_exhausted",
				"face_exhausted"
			},
			localization_strings = {
				"pdr_gameplay_low_on_health_01",
				"pdr_gameplay_low_on_health_02",
				"pdr_gameplay_low_on_health_03",
				"pdr_gameplay_low_on_health_04",
				"pdr_gameplay_low_on_health_05",
				"pdr_gameplay_low_on_health_06",
				"pdr_gameplay_low_on_health_07",
				"pdr_gameplay_low_on_health_08",
				"pdr_gameplay_low_on_health_09"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_low_on_health_01",
				"pdr_gameplay_low_on_health_02",
				"pdr_gameplay_low_on_health_03",
				"pdr_gameplay_low_on_health_04",
				"pdr_gameplay_low_on_health_05",
				"pdr_gameplay_low_on_health_06",
				"pdr_gameplay_low_on_health_07",
				"pdr_gameplay_low_on_health_08",
				"pdr_gameplay_low_on_health_09"
			},
			sound_events_duration = {
				3.4275417327881,
				3.7648959159851,
				3.5953540802002,
				1.7999999523163,
				1.8314583301544,
				0.97047919034958,
				1.9324375391007,
				3.5161874294281,
				2.2790832519531
			}
		},
		pdr_gameplay_out_of_ammo_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 8,
			category = "player_feedback",
			dialogue_animations_n = 8,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_contempt",
				"face_contempt",
				"face_contempt",
				"face_contempt",
				"face_contempt",
				"face_contempt",
				"face_contempt",
				"face_contempt"
			},
			localization_strings = {
				"pdr_gameplay_out_of_ammo_01",
				"pdr_gameplay_out_of_ammo_02",
				"pdr_gameplay_out_of_ammo_03",
				"pdr_gameplay_out_of_ammo_04",
				"pdr_gameplay_out_of_ammo_05",
				"pdr_gameplay_out_of_ammo_06",
				"pdr_gameplay_out_of_ammo_07",
				"pdr_gameplay_out_of_ammo_08"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_out_of_ammo_01",
				"pdr_gameplay_out_of_ammo_02",
				"pdr_gameplay_out_of_ammo_03",
				"pdr_gameplay_out_of_ammo_04",
				"pdr_gameplay_out_of_ammo_05",
				"pdr_gameplay_out_of_ammo_06",
				"pdr_gameplay_out_of_ammo_07",
				"pdr_gameplay_out_of_ammo_08"
			},
			sound_events_duration = {
				1.7999999523163,
				1.7781666517258,
				0.75170832872391,
				1.1845624446869,
				1.7942500114441,
				2.3383541107178,
				3.0143332481384,
				1.712249994278
			}
		},
		pdr_gameplay_player_pounced_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 4,
			category = "player_alerts",
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
				"face_fear"
			},
			localization_strings = {
				"pdr_crawl_drunk_knocked_down_01",
				"pdr_crawl_drunk_knocked_down_02",
				"pdr_crawl_drunk_knocked_down_03",
				"pdr_crawl_drunk_knocked_down_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_crawl_drunk_knocked_down_01",
				"pdr_crawl_drunk_knocked_down_02",
				"pdr_crawl_drunk_knocked_down_03",
				"pdr_crawl_drunk_knocked_down_04"
			},
			sound_events_duration = {
				4.2889585494995,
				3.2805416584015,
				5.1108956336975,
				4.4000000953674
			}
		},
		pdr_gameplay_seeing_a_Skaven_warpfire_thrower_no_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 8,
			category = "enemy_alerts_high",
			dialogue_animations_n = 8,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			},
			localization_strings = {
				"pdr_gameplay_seeing_a_Skaven_warpfire_thrower_01",
				"pdr_gameplay_seeing_a_Skaven_warpfire_thrower_02",
				"pdr_gameplay_seeing_a_Skaven_warpfire_thrower_03",
				"pdr_gameplay_seeing_a_Skaven_warpfire_thrower_04",
				"pdr_gameplay_seeing_a_Skaven_warpfire_thrower_05",
				"pdr_gameplay_seeing_a_Skaven_warpfire_thrower_06",
				"pdr_gameplay_seeing_a_Skaven_warpfire_thrower_07",
				"pdr_gameplay_seeing_a_Skaven_warpfire_thrower_08"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_seeing_a_Skaven_warpfire_thrower_01",
				"pdr_gameplay_seeing_a_Skaven_warpfire_thrower_02",
				"pdr_gameplay_seeing_a_Skaven_warpfire_thrower_03",
				"pdr_gameplay_seeing_a_Skaven_warpfire_thrower_04",
				"pdr_gameplay_seeing_a_Skaven_warpfire_thrower_05",
				"pdr_gameplay_seeing_a_Skaven_warpfire_thrower_06",
				"pdr_gameplay_seeing_a_Skaven_warpfire_thrower_07",
				"pdr_gameplay_seeing_a_Skaven_warpfire_thrower_08"
			},
			sound_events_duration = {
				3.4702916145325,
				3.9453542232513,
				5.2642917633057,
				5.1113333702087,
				2.9765000343323,
				3.1801042556763,
				2.7923123836517,
				3.0999999046326
			}
		},
		pdr_gameplay_seeing_a_chaos_spawn_no_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 8,
			category = "enemy_alerts_high",
			dialogue_animations_n = 8,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			},
			localization_strings = {
				"pdr_gameplay_seeing_a_chaos_spawn_01",
				"pdr_gameplay_seeing_a_chaos_spawn_02",
				"pdr_gameplay_seeing_a_chaos_spawn_03",
				"pdr_gameplay_seeing_a_chaos_spawn_04",
				"pdr_gameplay_seeing_a_chaos_spawn_05",
				"pdr_gameplay_seeing_a_chaos_spawn_06",
				"pdr_gameplay_seeing_a_chaos_spawn_07",
				"pdr_gameplay_seeing_a_chaos_spawn_08"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_seeing_a_chaos_spawn_01",
				"pdr_gameplay_seeing_a_chaos_spawn_02",
				"pdr_gameplay_seeing_a_chaos_spawn_03",
				"pdr_gameplay_seeing_a_chaos_spawn_04",
				"pdr_gameplay_seeing_a_chaos_spawn_05",
				"pdr_gameplay_seeing_a_chaos_spawn_06",
				"pdr_gameplay_seeing_a_chaos_spawn_07",
				"pdr_gameplay_seeing_a_chaos_spawn_08"
			},
			sound_events_duration = {
				2.6954584121704,
				2.9217915534973,
				4.365270614624,
				5.453145980835,
				6.1229791641235,
				3.2267291545868,
				4.5871667861939,
				3.057416677475
			}
		},
		pdr_gameplay_seeing_a_chaos_warrior_no_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 8,
			category = "enemy_alerts",
			dialogue_animations_n = 8,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			},
			localization_strings = {
				"pdr_gameplay_seeing_a_chaos_warrior_01",
				"pdr_gameplay_seeing_a_chaos_warrior_02",
				"pdr_gameplay_seeing_a_chaos_warrior_03",
				"pdr_gameplay_seeing_a_chaos_warrior_04",
				"pdr_gameplay_seeing_a_chaos_warrior_05",
				"pdr_gameplay_seeing_a_chaos_warrior_06",
				"pdr_gameplay_seeing_a_chaos_warrior_07",
				"pdr_gameplay_seeing_a_chaos_warrior_08"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_seeing_a_chaos_warrior_01",
				"pdr_gameplay_seeing_a_chaos_warrior_02",
				"pdr_gameplay_seeing_a_chaos_warrior_03",
				"pdr_gameplay_seeing_a_chaos_warrior_04",
				"pdr_gameplay_seeing_a_chaos_warrior_05",
				"pdr_gameplay_seeing_a_chaos_warrior_06",
				"pdr_gameplay_seeing_a_chaos_warrior_07",
				"pdr_gameplay_seeing_a_chaos_warrior_08"
			},
			sound_events_duration = {
				2.4782500267029,
				2.5368957519531,
				2.8637499809265,
				2.7619791030884,
				2.307416677475,
				2.6562917232513,
				3.6081666946411,
				3.4215416908264
			}
		},
		pdr_gameplay_seeing_a_chaos_wizard_wind_no_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 4,
			category = "enemy_alerts_high",
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
				"pdr_gameplay_seeing_a_chaos_wizard_wind_01",
				"pdr_gameplay_seeing_a_chaos_wizard_wind_02",
				"pdr_gameplay_seeing_a_chaos_wizard_wind_03",
				"pdr_gameplay_seeing_a_chaos_wizard_wind_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_seeing_a_chaos_wizard_wind_01",
				"pdr_gameplay_seeing_a_chaos_wizard_wind_02",
				"pdr_gameplay_seeing_a_chaos_wizard_wind_03",
				"pdr_gameplay_seeing_a_chaos_wizard_wind_04"
			},
			sound_events_duration = {
				3.5250208377838,
				3.4666249752045,
				3.2856667041779,
				5.3243751525879
			}
		},
		pdr_gameplay_seeing_a_globadier_no_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 6,
			category = "enemy_alerts_high",
			dialogue_animations_n = 6,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_contempt",
				"face_contempt",
				"face_contempt",
				"face_contempt",
				"face_contempt",
				"face_contempt"
			},
			localization_strings = {
				"pdr_gameplay_seeing_a_globadier_01",
				"pdr_gameplay_seeing_a_globadier_03",
				"pdr_gameplay_seeing_a_globadier_04",
				"pdr_gameplay_seeing_a_globadier_02",
				"pdr_gameplay_seeing_a_globadier_05",
				"pdr_gameplay_seeing_a_globadier_06"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_seeing_a_globadier_01",
				"pdr_gameplay_seeing_a_globadier_03",
				"pdr_gameplay_seeing_a_globadier_04",
				"pdr_gameplay_seeing_a_globadier_02",
				"pdr_gameplay_seeing_a_globadier_05",
				"pdr_gameplay_seeing_a_globadier_06"
			},
			sound_events_duration = {
				0.78350001573563,
				1.7310416698456,
				2.2000000476837,
				2.3795416355133,
				2.2583959102631,
				1.7092916965485
			}
		},
		pdr_gameplay_seeing_a_gutter_runner_no_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 6,
			category = "enemy_alerts_high",
			dialogue_animations_n = 6,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_neutral",
				"face_surprise",
				"face_contempt",
				"face_contempt",
				"face_contempt",
				"face_contempt"
			},
			localization_strings = {
				"pdr_gameplay_seeing_a_gutter_runner_01",
				"pdr_gameplay_seeing_a_gutter_runner_02",
				"pdr_gameplay_seeing_a_gutter_runner_03",
				"pdr_gameplay_seeing_a_gutter_runner_04",
				"pdr_gameplay_seeing_a_gutter_runner_05",
				"pdr_gameplay_seeing_a_gutter_runner_06"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_seeing_a_gutter_runner_01",
				"pdr_gameplay_seeing_a_gutter_runner_02",
				"pdr_gameplay_seeing_a_gutter_runner_03",
				"pdr_gameplay_seeing_a_gutter_runner_04",
				"pdr_gameplay_seeing_a_gutter_runner_05",
				"pdr_gameplay_seeing_a_gutter_runner_06"
			},
			sound_events_duration = {
				1.9182292222977,
				0.96768748760223,
				1.4616249799728,
				2.6431457996368,
				2.8068957328796,
				3.7946667671204
			}
		},
		pdr_gameplay_seeing_a_pm_no_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 8,
			category = "enemy_alerts",
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
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pdr_gameplay_seeing_a_plague_monk_01",
				"pdr_gameplay_seeing_a_plague_monk_02",
				"pdr_gameplay_seeing_a_plague_monk_03",
				"pdr_gameplay_seeing_a_plague_monk_04",
				"pdr_gameplay_seeing_a_plague_monk_05",
				"pdr_gameplay_seeing_a_plague_monk_06",
				"pdr_gameplay_seeing_a_plague_monk_07",
				"pdr_gameplay_seeing_a_plague_monk_08"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_seeing_a_plague_monk_01",
				"pdr_gameplay_seeing_a_plague_monk_02",
				"pdr_gameplay_seeing_a_plague_monk_03",
				"pdr_gameplay_seeing_a_plague_monk_04",
				"pdr_gameplay_seeing_a_plague_monk_05",
				"pdr_gameplay_seeing_a_plague_monk_06",
				"pdr_gameplay_seeing_a_plague_monk_07",
				"pdr_gameplay_seeing_a_plague_monk_08"
			},
			sound_events_duration = {
				2.1554999351502,
				2.4966666698456,
				1.9229166507721,
				2.9006042480469,
				2.7704999446869,
				3.2760417461395,
				2.1264791488648,
				3.4228959083557
			}
		},
		pdr_gameplay_seeing_a_scr_no_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 8,
			category = "enemy_alerts",
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
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pdr_gameplay_seeing_a_shield_clanrat_01",
				"pdr_gameplay_seeing_a_shield_clanrat_02",
				"pdr_gameplay_seeing_a_shield_clanrat_03",
				"pdr_gameplay_seeing_a_shield_clanrat_04",
				"pdr_gameplay_seeing_a_shield_clanrat_05",
				"pdr_gameplay_seeing_a_shield_clanrat_06",
				"pdr_gameplay_seeing_a_shield_clanrat_07",
				"pdr_gameplay_seeing_a_shield_clanrat_08"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_seeing_a_shield_clanrat_01",
				"pdr_gameplay_seeing_a_shield_clanrat_02",
				"pdr_gameplay_seeing_a_shield_clanrat_03",
				"pdr_gameplay_seeing_a_shield_clanrat_04",
				"pdr_gameplay_seeing_a_shield_clanrat_05",
				"pdr_gameplay_seeing_a_shield_clanrat_06",
				"pdr_gameplay_seeing_a_shield_clanrat_07",
				"pdr_gameplay_seeing_a_shield_clanrat_08"
			},
			sound_events_duration = {
				2.7097084522247,
				2.2739791870117,
				1.1825000047684,
				1.4385833740234,
				3.5803542137146,
				1.6978958845139,
				1.8895208835602,
				2.6033959388733
			}
		},
		pdr_gameplay_seeing_a_shield_stormvermin_no_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 8,
			category = "enemy_alerts",
			dialogue_animations_n = 8,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			},
			localization_strings = {
				"pdr_gameplay_seeing_a_shield_stormvermin_01",
				"pdr_gameplay_seeing_a_shield_stormvermin_02",
				"pdr_gameplay_seeing_a_shield_stormvermin_03",
				"pdr_gameplay_seeing_a_shield_stormvermin_04",
				"pdr_gameplay_seeing_a_shield_stormvermin_05",
				"pdr_gameplay_seeing_a_shield_stormvermin_06",
				"pdr_gameplay_seeing_a_shield_stormvermin_07",
				"pdr_gameplay_seeing_a_shield_stormvermin_08"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_seeing_a_shield_stormvermin_01",
				"pdr_gameplay_seeing_a_shield_stormvermin_02",
				"pdr_gameplay_seeing_a_shield_stormvermin_03",
				"pdr_gameplay_seeing_a_shield_stormvermin_04",
				"pdr_gameplay_seeing_a_shield_stormvermin_05",
				"pdr_gameplay_seeing_a_shield_stormvermin_06",
				"pdr_gameplay_seeing_a_shield_stormvermin_07",
				"pdr_gameplay_seeing_a_shield_stormvermin_08"
			},
			sound_events_duration = {
				2.0519375801086,
				2.3899583816528,
				2.6576459407806,
				3.999062538147,
				2.344708442688,
				2.2834582328796,
				2.5283749103546,
				3.4430000782013
			}
		},
		pdr_gameplay_seeing_a_skaven_patrol_stormvermin_no_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 7,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 7,
			category = "enemy_alerts_high",
			dialogue_animations_n = 7,
			dialogue_animations = {
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
				"face_concerned",
				"face_concerned",
				"face_contempt",
				"face_nervous",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pdr_gameplay_seeing_a_skaven_patrol_stormvermin_01",
				"pdr_gameplay_seeing_a_skaven_patrol_stormvermin_02",
				"pdr_gameplay_seeing_a_skaven_patrol_stormvermin_03",
				"pdr_gameplay_seeing_a_skaven_patrol_stormvermin_04",
				"pdr_gameplay_seeing_a_skaven_patrol_stormvermin_05",
				"pdr_gameplay_seeing_a_skaven_patrol_stormvermin_06",
				"pdr_gameplay_seeing_a_skaven_patrol_stormvermin_07"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_seeing_a_skaven_patrol_stormvermin_01",
				"pdr_gameplay_seeing_a_skaven_patrol_stormvermin_02",
				"pdr_gameplay_seeing_a_skaven_patrol_stormvermin_03",
				"pdr_gameplay_seeing_a_skaven_patrol_stormvermin_04",
				"pdr_gameplay_seeing_a_skaven_patrol_stormvermin_05",
				"pdr_gameplay_seeing_a_skaven_patrol_stormvermin_06",
				"pdr_gameplay_seeing_a_skaven_patrol_stormvermin_07"
			},
			sound_events_duration = {
				2.0766041278839,
				2.9452917575836,
				2.211895942688,
				2.274270772934,
				2.8728542327881,
				3.9711458683014,
				3.4870417118073
			}
		},
		pdr_gameplay_seeing_a_skaven_rat_ogre_no_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 6,
			category = "enemy_alerts_high",
			dialogue_animations_n = 6,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			},
			localization_strings = {
				"pdr_gameplay_seeing_a_skaven_rat_ogre_01",
				"pdr_gameplay_seeing_a_skaven_rat_ogre_04",
				"pdr_gameplay_seeing_a_skaven_rat_ogre_06",
				"pdr_gameplay_seeing_a_skaven_rat_ogre_02",
				"pdr_gameplay_seeing_a_skaven_rat_ogre_03",
				"pdr_gameplay_seeing_a_skaven_rat_ogre_05"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_seeing_a_skaven_rat_ogre_01",
				"pdr_gameplay_seeing_a_skaven_rat_ogre_04",
				"pdr_gameplay_seeing_a_skaven_rat_ogre_06",
				"pdr_gameplay_seeing_a_skaven_rat_ogre_02",
				"pdr_gameplay_seeing_a_skaven_rat_ogre_03",
				"pdr_gameplay_seeing_a_skaven_rat_ogre_05"
			},
			sound_events_duration = {
				0.90260416269302,
				2.4410417079926,
				1.9105000495911,
				2.3701250553131,
				1.3839583396912,
				2.4952292442322
			}
		},
		pdr_gameplay_seeing_a_skaven_ratling_gun_no_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 7,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 7,
			category = "enemy_alerts_high",
			dialogue_animations_n = 7,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pdr_gameplay_seeing_a_skaven_ratling_gun_01",
				"pdr_gameplay_seeing_a_skaven_ratling_gun_02",
				"pdr_gameplay_seeing_a_skaven_ratling_gun_03",
				"pdr_gameplay_seeing_a_skaven_ratling_gun_04",
				"pdr_gameplay_seeing_a_skaven_ratling_gun_05",
				"pdr_gameplay_seeing_a_skaven_ratling_gun_06",
				"pdr_gameplay_seeing_a_skaven_ratling_gun_07"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_seeing_a_skaven_ratling_gun_01",
				"pdr_gameplay_seeing_a_skaven_ratling_gun_02",
				"pdr_gameplay_seeing_a_skaven_ratling_gun_03",
				"pdr_gameplay_seeing_a_skaven_ratling_gun_04",
				"pdr_gameplay_seeing_a_skaven_ratling_gun_05",
				"pdr_gameplay_seeing_a_skaven_ratling_gun_06",
				"pdr_gameplay_seeing_a_skaven_ratling_gun_07"
			},
			sound_events_duration = {
				1.4744583368301,
				3.0902707576752,
				2.2358958721161,
				2.0123333930969,
				2.6204373836517,
				3.4370000362396,
				3.1293957233429
			}
		},
		pdr_gameplay_seeing_a_skaven_slaver_no_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 8,
			category = "enemy_alerts_high",
			dialogue_animations_n = 8,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pdr_gameplay_seeing_a_skaven_slaver_01",
				"pdr_gameplay_seeing_a_skaven_slaver_02",
				"pdr_gameplay_seeing_a_skaven_slaver_07",
				"pdr_gameplay_seeing_a_skaven_slaver_03",
				"pdr_gameplay_seeing_a_skaven_slaver_04",
				"pdr_gameplay_seeing_a_skaven_slaver_05",
				"pdr_gameplay_seeing_a_skaven_slaver_06",
				"pdr_gameplay_seeing_a_skaven_slaver_08"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_seeing_a_skaven_slaver_01",
				"pdr_gameplay_seeing_a_skaven_slaver_02",
				"pdr_gameplay_seeing_a_skaven_slaver_07",
				"pdr_gameplay_seeing_a_skaven_slaver_03",
				"pdr_gameplay_seeing_a_skaven_slaver_04",
				"pdr_gameplay_seeing_a_skaven_slaver_05",
				"pdr_gameplay_seeing_a_skaven_slaver_06",
				"pdr_gameplay_seeing_a_skaven_slaver_08"
			},
			sound_events_duration = {
				1.9516249895096,
				1.3174583911896,
				2.9727499485016,
				2.0299792289734,
				0.72427082061768,
				2.8370208740234,
				2.8320417404175,
				0.81135416030884
			}
		},
		pdr_gameplay_seeing_a_stormfiend_no_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 8,
			category = "enemy_alerts_high",
			dialogue_animations_n = 8,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			},
			localization_strings = {
				"pdr_gameplay_seeing_a_stormfiend_01",
				"pdr_gameplay_seeing_a_stormfiend_02",
				"pdr_gameplay_seeing_a_stormfiend_03",
				"pdr_gameplay_seeing_a_stormfiend_04",
				"pdr_gameplay_seeing_a_stormfiend_05",
				"pdr_gameplay_seeing_a_stormfiend_06",
				"pdr_gameplay_seeing_a_stormfiend_07",
				"pdr_gameplay_seeing_a_stormfiend_08"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_seeing_a_stormfiend_01",
				"pdr_gameplay_seeing_a_stormfiend_02",
				"pdr_gameplay_seeing_a_stormfiend_03",
				"pdr_gameplay_seeing_a_stormfiend_04",
				"pdr_gameplay_seeing_a_stormfiend_05",
				"pdr_gameplay_seeing_a_stormfiend_06",
				"pdr_gameplay_seeing_a_stormfiend_07",
				"pdr_gameplay_seeing_a_stormfiend_08"
			},
			sound_events_duration = {
				3.2501459121704,
				2.4382915496826,
				3.2673542499542,
				3.0572707653046,
				4.304229259491,
				2.3039374351502,
				2.5896875858307,
				3.6971666812897
			}
		},
		pdr_gameplay_seeing_a_stormvermin_no_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 8,
			category = "enemy_alerts_high",
			dialogue_animations_n = 8,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_contempt",
				"face_contempt",
				"face_contempt",
				"face_neutral",
				"face_neutral",
				"face_contempt",
				"face_neutral",
				"face_angry"
			},
			localization_strings = {
				"pdr_gameplay_seeing_a_stormvermin_01",
				"pdr_gameplay_seeing_a_stormvermin_02",
				"pdr_gameplay_seeing_a_stormvermin_03",
				"pdr_gameplay_seeing_a_stormvermin_04",
				"pdr_gameplay_seeing_a_stormvermin_05",
				"pdr_gameplay_seeing_a_stormvermin_06",
				"pdr_gameplay_seeing_a_stormvermin_07",
				"pdr_gameplay_seeing_a_stormvermin_08"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_seeing_a_stormvermin_01",
				"pdr_gameplay_seeing_a_stormvermin_02",
				"pdr_gameplay_seeing_a_stormvermin_03",
				"pdr_gameplay_seeing_a_stormvermin_04",
				"pdr_gameplay_seeing_a_stormvermin_05",
				"pdr_gameplay_seeing_a_stormvermin_06",
				"pdr_gameplay_seeing_a_stormvermin_07",
				"pdr_gameplay_seeing_a_stormvermin_08"
			},
			sound_events_duration = {
				1.1232291460037,
				1.4101041555405,
				1.96774995327,
				2.0123751163483,
				1.9935417175293,
				2.7631874084473,
				2.7478957176209,
				1.1241666078568
			}
		},
		pdr_gameplay_seeing_a_troll_no_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 8,
			category = "enemy_alerts_high",
			dialogue_animations_n = 8,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			},
			localization_strings = {
				"pdr_gameplay_seeing_a_troll_01",
				"pdr_gameplay_seeing_a_troll_02",
				"pdr_gameplay_seeing_a_troll_03",
				"pdr_gameplay_seeing_a_troll_04",
				"pdr_gameplay_seeing_a_troll_05",
				"pdr_gameplay_seeing_a_troll_06",
				"pdr_gameplay_seeing_a_troll_07",
				"pdr_gameplay_seeing_a_troll_08"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_seeing_a_troll_01",
				"pdr_gameplay_seeing_a_troll_02",
				"pdr_gameplay_seeing_a_troll_03",
				"pdr_gameplay_seeing_a_troll_04",
				"pdr_gameplay_seeing_a_troll_05",
				"pdr_gameplay_seeing_a_troll_06",
				"pdr_gameplay_seeing_a_troll_07",
				"pdr_gameplay_seeing_a_troll_08"
			},
			sound_events_duration = {
				4.8307709693909,
				4.8025207519531,
				4.4529376029968,
				4.1213331222534,
				4.1690831184387,
				4.7344999313355,
				4.2116665840149,
				3.7068541049957
			}
		},
		pdr_gameplay_self_heal_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 5,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 5,
			category = "player_feedback",
			dialogue_animations_n = 5,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_exhausted",
				"face_exhausted",
				"face_exhausted",
				"face_exhausted",
				"face_exhausted"
			},
			localization_strings = {
				"pdr_gameplay_self_heal_06",
				"pdr_gameplay_self_heal_07",
				"pdr_gameplay_self_heal_08",
				"pdr_gameplay_self_heal_09",
				"pdr_gameplay_self_heal_10"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_self_heal_06",
				"pdr_gameplay_self_heal_07",
				"pdr_gameplay_self_heal_08",
				"pdr_gameplay_self_heal_09",
				"pdr_gameplay_self_heal_10"
			},
			sound_events_duration = {
				2.2452082633972,
				2.5398750305176,
				3.1612708568573,
				2.4914584159851,
				3.1698334217072
			}
		},
		pdr_gameplay_spots_ammo_no_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 10,
			category = "seen_items",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pdr_gameplay_spots_ammo_01",
				"pdr_gameplay_spots_ammo_06",
				"pdr_gameplay_spots_ammo_07",
				"pdr_gameplay_spots_ammo_08",
				"pdr_gameplay_spots_ammo_09",
				"pdr_gameplay_spots_ammo_10",
				"pdr_gameplay_spots_ammo_11",
				"pdr_gameplay_spots_ammo_12",
				"pdr_gameplay_spots_ammo_13",
				"pdr_gameplay_spots_ammo_14"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_spots_ammo_01",
				"pdr_gameplay_spots_ammo_06",
				"pdr_gameplay_spots_ammo_07",
				"pdr_gameplay_spots_ammo_08",
				"pdr_gameplay_spots_ammo_09",
				"pdr_gameplay_spots_ammo_10",
				"pdr_gameplay_spots_ammo_11",
				"pdr_gameplay_spots_ammo_12",
				"pdr_gameplay_spots_ammo_13",
				"pdr_gameplay_spots_ammo_14"
			},
			sound_events_duration = {
				1.0678958892822,
				2.2196667194366,
				1.8813542127609,
				2.8519375324249,
				2.7655415534973,
				3.4181249141693,
				1.7340208292007,
				1.8232707977295,
				1.3774791955948,
				2.1222500801086
			}
		},
		pdr_gameplay_spots_bomb_no_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 8,
			category = "seen_items",
			dialogue_animations_n = 8,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pdr_gameplay_spots_bomb_10",
				"pdr_gameplay_spots_bomb_11",
				"pdr_gameplay_spots_bomb_12",
				"pdr_gameplay_spots_bomb_13",
				"pdr_gameplay_spots_bomb_14",
				"pdr_gameplay_spots_bomb_15",
				"pdr_gameplay_spots_bomb_16",
				"pdr_gameplay_spots_bomb_17"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_spots_bomb_10",
				"pdr_gameplay_spots_bomb_11",
				"pdr_gameplay_spots_bomb_12",
				"pdr_gameplay_spots_bomb_13",
				"pdr_gameplay_spots_bomb_14",
				"pdr_gameplay_spots_bomb_15",
				"pdr_gameplay_spots_bomb_16",
				"pdr_gameplay_spots_bomb_17"
			},
			sound_events_duration = {
				2.8272082805634,
				2.6578333377838,
				2.1991250514984,
				1.8385208845139,
				2.5205416679382,
				1.5076041221619,
				2.693541765213,
				1.838770866394
			}
		},
		pdr_gameplay_spots_health_no_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 13,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 13,
			category = "seen_items",
			dialogue_animations_n = 13,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pdr_gameplay_spots_health_01",
				"pdr_gameplay_spots_health_06",
				"pdr_gameplay_spots_health_07",
				"pdr_gameplay_spots_health_08",
				"pdr_gameplay_spots_health_09",
				"pdr_gameplay_spots_health_10",
				"pdr_gameplay_spots_health_11",
				"pdr_gameplay_spots_health_12",
				"pdr_gameplay_spots_health_13",
				"pdr_gameplay_spots_health_14",
				"pdr_gameplay_spots_health_15",
				"pdr_gameplay_spots_health_16",
				"pdr_gameplay_spots_health_17"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_spots_health_01",
				"pdr_gameplay_spots_health_06",
				"pdr_gameplay_spots_health_07",
				"pdr_gameplay_spots_health_08",
				"pdr_gameplay_spots_health_09",
				"pdr_gameplay_spots_health_10",
				"pdr_gameplay_spots_health_11",
				"pdr_gameplay_spots_health_12",
				"pdr_gameplay_spots_health_13",
				"pdr_gameplay_spots_health_14",
				"pdr_gameplay_spots_health_15",
				"pdr_gameplay_spots_health_16",
				"pdr_gameplay_spots_health_17"
			},
			sound_events_duration = {
				1.4754999876022,
				1.7034167051315,
				2.2538332939148,
				1.2027708292007,
				1.983479142189,
				3.0477292537689,
				1.6343333721161,
				1.5346666574478,
				1.8017499446869,
				1.8647916316986,
				1.8595416545868,
				2.2534167766571,
				2.651645898819
			}
		},
		pdr_gameplay_spots_potion_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 4,
			category = "seen_items",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pdr_crawl_drunk_spotted_liquid_01",
				"pdr_crawl_drunk_spotted_liquid_02",
				"pdr_crawl_drunk_spotted_liquid_03",
				"pdr_crawl_drunk_spotted_liquid_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_crawl_drunk_spotted_liquid_01",
				"pdr_crawl_drunk_spotted_liquid_02",
				"pdr_crawl_drunk_spotted_liquid_03",
				"pdr_crawl_drunk_spotted_liquid_04"
			},
			sound_events_duration = {
				1.6388125419617,
				1.6593542098999,
				1.5683333873749,
				2.5938124656677
			}
		},
		pdr_gameplay_throwing_bomb_no_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 5,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 5,
			category = "player_feedback",
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
				"pdr_gameplay_throwing_bomb_01",
				"pdr_gameplay_throwing_bomb_06",
				"pdr_gameplay_throwing_bomb_07",
				"pdr_gameplay_throwing_bomb_08",
				"pdr_gameplay_throwing_bomb_09"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_throwing_bomb_01",
				"pdr_gameplay_throwing_bomb_06",
				"pdr_gameplay_throwing_bomb_07",
				"pdr_gameplay_throwing_bomb_08",
				"pdr_gameplay_throwing_bomb_09"
			},
			sound_events_duration = {
				1.71875,
				3.9343333244324,
				1.522958278656,
				3.0660207271576,
				1.7718958854675
			}
		},
		pdr_gameplay_tips_wizard_wind_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 4,
			category = "player_alerts",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_surprise",
				"face_surprise",
				"face_surprise",
				"face_surprise"
			},
			localization_strings = {
				"pdr_crawl_drunk_incoming_threat_01",
				"pdr_crawl_drunk_incoming_threat_02",
				"pdr_crawl_drunk_incoming_threat_03",
				"pdr_crawl_drunk_incoming_threat_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_crawl_drunk_incoming_threat_01",
				"pdr_crawl_drunk_incoming_threat_02",
				"pdr_crawl_drunk_incoming_threat_03",
				"pdr_crawl_drunk_incoming_threat_04"
			},
			sound_events_duration = {
				5.0268335342407,
				2.3176667690277,
				2.968291759491,
				3.737104177475
			}
		},
		pdr_gameplay_using_potion_drunk = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dwarf_ranger_game_play_crawl",
			category = "player_feedback",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "pdr_drank"
			},
			sound_events = {
				[1] = "pdr_drank"
			},
			sound_events_duration = {
				[1] = 1.5686653852463
			}
		},
		pdr_gameplay_witch_hunter_being_helped_up_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 8,
			category = "player_feedback",
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
				"pdr_gameplay_witch_hunter_being_helped_up_03",
				"pdr_gameplay_witch_hunter_being_helped_up_05",
				"pdr_gameplay_witch_hunter_being_helped_up_06",
				"pdr_gameplay_witch_hunter_being_helped_up_07",
				"pdr_gameplay_witch_hunter_being_helped_up_08",
				"pdr_gameplay_witch_hunter_being_helped_up_09",
				"pdr_gameplay_witch_hunter_being_helped_up_10",
				"pdr_gameplay_witch_hunter_being_helped_up_11"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_witch_hunter_being_helped_up_03",
				"pdr_gameplay_witch_hunter_being_helped_up_05",
				"pdr_gameplay_witch_hunter_being_helped_up_06",
				"pdr_gameplay_witch_hunter_being_helped_up_07",
				"pdr_gameplay_witch_hunter_being_helped_up_08",
				"pdr_gameplay_witch_hunter_being_helped_up_09",
				"pdr_gameplay_witch_hunter_being_helped_up_10",
				"pdr_gameplay_witch_hunter_being_helped_up_11"
			},
			sound_events_duration = {
				1.4635000228882,
				2.9000000953674,
				2.0566666126251,
				2.1768958568573,
				2.840541601181,
				1.9558750391007,
				2.4860832691193,
				2.4167082309723
			}
		},
		pdr_gameplay_witch_hunter_low_on_health_no_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 5,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 5,
			category = "player_feedback",
			dialogue_animations_n = 5,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pdr_gameplay_witch_hunter_low_on_health_05",
				"pdr_gameplay_witch_hunter_low_on_health_06",
				"pdr_gameplay_witch_hunter_low_on_health_07",
				"pdr_gameplay_witch_hunter_low_on_health_08",
				"pdr_gameplay_witch_hunter_low_on_health_09"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_witch_hunter_low_on_health_05",
				"pdr_gameplay_witch_hunter_low_on_health_06",
				"pdr_gameplay_witch_hunter_low_on_health_07",
				"pdr_gameplay_witch_hunter_low_on_health_08",
				"pdr_gameplay_witch_hunter_low_on_health_09"
			},
			sound_events_duration = {
				1.8022916316986,
				1.8020207881927,
				2.5752291679382,
				2.8830416202545,
				2.0553958415985
			}
		},
		pdr_gameplay_wood_elf_being_helped_up_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 8,
			category = "player_feedback",
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
				"pdr_gameplay_wood_elf_being_helped_up_05",
				"pdr_gameplay_wood_elf_being_helped_up_06",
				"pdr_gameplay_wood_elf_being_helped_up_07",
				"pdr_gameplay_wood_elf_being_helped_up_08",
				"pdr_gameplay_wood_elf_being_helped_up_09",
				"pdr_gameplay_wood_elf_being_helped_up_10",
				"pdr_gameplay_wood_elf_being_helped_up_11",
				"pdr_gameplay_wood_elf_being_helped_up_12"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_wood_elf_being_helped_up_05",
				"pdr_gameplay_wood_elf_being_helped_up_06",
				"pdr_gameplay_wood_elf_being_helped_up_07",
				"pdr_gameplay_wood_elf_being_helped_up_08",
				"pdr_gameplay_wood_elf_being_helped_up_09",
				"pdr_gameplay_wood_elf_being_helped_up_10",
				"pdr_gameplay_wood_elf_being_helped_up_11",
				"pdr_gameplay_wood_elf_being_helped_up_12"
			},
			sound_events_duration = {
				2.5236876010895,
				2.6273958683014,
				3.408499956131,
				3.1036667823791,
				1.4115833044052,
				3.3512709140778,
				2.4296250343323,
				1.7086458206177
			}
		},
		pdr_gameplay_wood_elf_low_on_health_no_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 4,
			category = "player_feedback",
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
				"pdr_gameplay_wood_elf_low_on_health_05",
				"pdr_gameplay_wood_elf_low_on_health_06",
				"pdr_gameplay_wood_elf_low_on_health_07",
				"pdr_gameplay_wood_elf_low_on_health_08"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_wood_elf_low_on_health_05",
				"pdr_gameplay_wood_elf_low_on_health_06",
				"pdr_gameplay_wood_elf_low_on_health_07",
				"pdr_gameplay_wood_elf_low_on_health_08"
			},
			sound_events_duration = {
				2.9769375324249,
				2.0170209407806,
				2.4401249885559,
				1.8315207958221
			}
		},
		pdr_hiccup = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dwarf_ranger_game_play_crawl",
			category = "story_talk_vce",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "pdr_hiccup"
			},
			sound_events = {
				[1] = "pdr_hiccup"
			},
			sound_events_duration = {
				[1] = 1.3593830615282
			}
		},
		pdr_special_ability_ironbreaker_non_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 7,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 7,
			category = "activate_ability",
			dialogue_animations_n = 7,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pdr_activate_ability_ironbreaker_12",
				"pdr_activate_ability_ironbreaker_13",
				"pdr_activate_ability_ironbreaker_15",
				"pdr_activate_ability_ironbreaker_16",
				"pdr_activate_ability_ironbreaker_17",
				"pdr_activate_ability_ironbreaker_01",
				"pdr_activate_ability_ironbreaker_23"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_activate_ability_ironbreaker_12",
				"pdr_activate_ability_ironbreaker_13",
				"pdr_activate_ability_ironbreaker_15",
				"pdr_activate_ability_ironbreaker_16",
				"pdr_activate_ability_ironbreaker_17",
				"pdr_activate_ability_ironbreaker_01",
				"pdr_activate_ability_ironbreaker_23"
			},
			sound_events_duration = {
				1.4966630935669,
				1.3235077857971,
				1.4371507167816,
				1.0002807378769,
				1.3236976861954,
				1.0672279596329,
				2.1067707538605
			}
		},
		pdr_special_ability_ironbreaker_taunt_non_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 21,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 21,
			category = "activate_ability",
			dialogue_animations_n = 21,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pdr_activate_ability_ironbreaker_02",
				"pdr_activate_ability_ironbreaker_03",
				"pdr_activate_ability_ironbreaker_04",
				"pdr_activate_ability_ironbreaker_05",
				"pdr_activate_ability_ironbreaker_06",
				"pdr_activate_ability_ironbreaker_07",
				"pdr_activate_ability_ironbreaker_08",
				"pdr_activate_ability_ironbreaker_09",
				"pdr_activate_ability_ironbreaker_10",
				"pdr_activate_ability_ironbreaker_11",
				"pdr_activate_ability_ironbreaker_18",
				"pdr_activate_ability_ironbreaker_19",
				"pdr_activate_ability_ironbreaker_20",
				"pdr_activate_ability_ironbreaker_21",
				"pdr_activate_ability_ironbreaker_22",
				"pdr_activate_ability_ironbreaker_24",
				"pdr_activate_ability_ironbreaker_25",
				"pdr_activate_ability_ironbreaker_26",
				"pdr_activate_ability_ironbreaker_27",
				"pdr_activate_ability_ironbreaker_28",
				"pdr_activate_ability_ironbreaker_29"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_activate_ability_ironbreaker_02",
				"pdr_activate_ability_ironbreaker_03",
				"pdr_activate_ability_ironbreaker_04",
				"pdr_activate_ability_ironbreaker_05",
				"pdr_activate_ability_ironbreaker_06",
				"pdr_activate_ability_ironbreaker_07",
				"pdr_activate_ability_ironbreaker_08",
				"pdr_activate_ability_ironbreaker_09",
				"pdr_activate_ability_ironbreaker_10",
				"pdr_activate_ability_ironbreaker_11",
				"pdr_activate_ability_ironbreaker_18",
				"pdr_activate_ability_ironbreaker_19",
				"pdr_activate_ability_ironbreaker_20",
				"pdr_activate_ability_ironbreaker_21",
				"pdr_activate_ability_ironbreaker_22",
				"pdr_activate_ability_ironbreaker_24",
				"pdr_activate_ability_ironbreaker_25",
				"pdr_activate_ability_ironbreaker_26",
				"pdr_activate_ability_ironbreaker_27",
				"pdr_activate_ability_ironbreaker_28",
				"pdr_activate_ability_ironbreaker_29"
			},
			sound_events_duration = {
				4.0385723114014,
				2.7845916748047,
				2.2786667346954,
				1.9462790489197,
				2.9013516902924,
				3.0104010105133,
				2.1151297092438,
				1.6795819997788,
				3.760205745697,
				3.240611076355,
				3.3439178466797,
				3.2731964588165,
				4.3211245536804,
				1.6132113933563,
				2.3189792633057,
				2.6872084140778,
				2.977979183197,
				4.040979385376,
				3.7741041183472,
				1.7441041469574,
				2.811541557312
			}
		},
		pdr_special_ability_slayer_non_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 12,
			database = "dwarf_ranger_game_play_crawl",
			sound_events_n = 12,
			category = "activate_ability",
			dialogue_animations_n = 12,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pdr_special_ability_slayer_01",
				"pdr_special_ability_slayer_02",
				"pdr_special_ability_slayer_03",
				"pdr_special_ability_slayer_04",
				"pdr_activate_ability_slayer_05",
				"pdr_activate_ability_slayer_06",
				"pdr_activate_ability_slayer_07",
				"pdr_activate_ability_slayer_08",
				"pdr_activate_ability_slayer_09",
				"pdr_activate_ability_slayer_10",
				"pdr_activate_ability_slayer_11",
				"pdr_activate_ability_slayer_12"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_special_ability_slayer_01",
				"pdr_special_ability_slayer_02",
				"pdr_special_ability_slayer_03",
				"pdr_special_ability_slayer_04",
				"pdr_activate_ability_slayer_05",
				"pdr_activate_ability_slayer_06",
				"pdr_activate_ability_slayer_07",
				"pdr_activate_ability_slayer_08",
				"pdr_activate_ability_slayer_09",
				"pdr_activate_ability_slayer_10",
				"pdr_activate_ability_slayer_11",
				"pdr_activate_ability_slayer_12"
			},
			sound_events_duration = {
				3.6804165840149,
				3.6136250495911,
				3.9031875133514,
				3.6757917404175,
				1.3622708320618,
				1.3668124675751,
				2.4220623970032,
				2.7736041545868,
				2.5764582157135,
				2.0619583129883,
				3.1800625324249,
				1.8432083129883
			}
		}
	})
end
