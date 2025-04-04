return function ()
	define_rule({
		response = "pbw_activate_ability_battle_wizard_non_drunk",
		name = "pbw_activate_ability_battle_wizard_non_drunk",
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
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_career",
				OP.EQ,
				"bw_adept"
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
		response = "pbw_activate_ability_pyromancer_non_drunk",
		name = "pbw_activate_ability_pyromancer_non_drunk",
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
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_career",
				OP.EQ,
				"bw_scholar"
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
		response = "pbw_activate_ability_unchained_non_drunk",
		name = "pbw_activate_ability_unchained_non_drunk",
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
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_career",
				OP.EQ,
				"bw_unchained"
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
		name = "pbw_burp",
		response = "pbw_burp",
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
		response = "pbw_crawl_ability_drunk",
		name = "pbw_crawl_ability_drunk",
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
				"crawl_cheers",
				OP.EQ,
				1
			}
		}
	})
	define_rule({
		response = "pbw_crawl_drank",
		name = "pbw_crawl_drank",
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
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pbw_crawl_drunk_buff_begins",
		response = "pbw_crawl_drunk_buff_begins",
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
		name = "pbw_crawl_drunk_buff_begins_from_sick",
		response = "pbw_crawl_drunk_buff_begins_from_sick",
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
		name = "pbw_crawl_drunk_buff_wears_off",
		response = "pbw_crawl_drunk_buff_wears_off",
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
		name = "pbw_crawl_head_shot_a",
		response = "pbw_crawl_head_shot_a",
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
				"bright_wizard"
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
		name = "pbw_crawl_head_shot_b",
		response = "pbw_crawl_head_shot_b",
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
				"bright_wizard"
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
		response = "pbw_crawl_horde_incoming_b_ambush",
		name = "pbw_crawl_horde_incoming_b_ambush",
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
				"bright_wizard"
			}
		}
	})
	define_rule({
		response = "pbw_crawl_horde_incoming_b_vector",
		name = "pbw_crawl_horde_incoming_b_vector",
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
				"bright_wizard"
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pbw_crawl_killing_spree_b",
		response = "pbw_crawl_killing_spree_b",
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
				"crawl_seen_killing_spree_sienna"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
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
		name = "pbw_crawl_low_on_health_a",
		response = "pbw_crawl_low_on_health_a",
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
		name = "pbw_crawl_low_on_health_b",
		response = "pbw_crawl_low_on_health_b",
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
				"bright_wizard"
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
		name = "pbw_crawl_monster_spotted_b_chaos_spawn",
		response = "pbw_crawl_monster_spotted_b_chaos_spawn",
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
				"bright_wizard"
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
		name = "pbw_crawl_monster_spotted_b_rat_ogre",
		response = "pbw_crawl_monster_spotted_b_rat_ogre",
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
				"bright_wizard"
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
		name = "pbw_crawl_monster_spotted_b_stormfiend",
		response = "pbw_crawl_monster_spotted_b_stormfiend",
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
				"bright_wizard"
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
		name = "pbw_crawl_monster_spotted_b_troll",
		response = "pbw_crawl_monster_spotted_b_troll",
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
				"bright_wizard"
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
		response = "pbw_crawl_monster_spotted_c_group_2",
		name = "pbw_crawl_monster_spotted_c_group_2",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"monster_spotted_crawl_two_done"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			}
		}
	})
	define_rule({
		response = "pbw_crawl_monster_spotted_c_pdr",
		name = "pbw_crawl_monster_spotted_c_pdr",
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
				"pdr_crawl_monster_spotted_04_a_01"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			}
		}
	})
	define_rule({
		response = "pbw_crawl_monster_spotted_c_pes",
		name = "pbw_crawl_monster_spotted_c_pes",
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
				"bright_wizard"
			}
		}
	})
	define_rule({
		response = "pbw_crawl_monster_spotted_c_pwe",
		name = "pbw_crawl_monster_spotted_c_pwe",
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
				"bright_wizard"
			}
		}
	})
	define_rule({
		response = "pbw_crawl_monster_spotted_c_pwh",
		name = "pbw_crawl_monster_spotted_c_pwh",
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
				"bright_wizard"
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pbw_crawl_pes_crawl_drunk_incoming_threat_new_b_globadier",
		response = "pbw_crawl_pes_crawl_drunk_incoming_threat_new_b_globadier",
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
				"bright_wizard"
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
		name = "pbw_crawl_pes_crawl_drunk_incoming_threat_new_b_gutter_runner",
		response = "pbw_crawl_pes_crawl_drunk_incoming_threat_new_b_gutter_runner",
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
				"bright_wizard"
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
		name = "pbw_crawl_pes_crawl_drunk_incoming_threat_new_b_ratling",
		response = "pbw_crawl_pes_crawl_drunk_incoming_threat_new_b_ratling",
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
				"bright_wizard"
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
		name = "pbw_crawl_pes_crawl_drunk_incoming_threat_new_b_warpfire",
		response = "pbw_crawl_pes_crawl_drunk_incoming_threat_new_b_warpfire",
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
				"bright_wizard"
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
		name = "pbw_crawl_seen_killing_spree_bardin",
		response = "pbw_crawl_seen_killing_spree_bardin",
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
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"time_since_last_frenzy_dwarf_ranger",
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
				"time_since_last_frenzy_dwarf_ranger",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pbw_crawl_seen_killing_spree_kerillian",
		response = "pbw_crawl_seen_killing_spree_kerillian",
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
				"bright_wizard"
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
		name = "pbw_crawl_seen_killing_spree_kruber",
		response = "pbw_crawl_seen_killing_spree_kruber",
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
				"bright_wizard"
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
		name = "pbw_crawl_seen_killing_spree_saltzpyre",
		response = "pbw_crawl_seen_killing_spree_saltzpyre",
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
				"bright_wizard"
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
		name = "pbw_crawl_spots_item",
		response = "pbw_crawl_spots_item",
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
		name = "pbw_crawl_throwing_bomb",
		response = "pbw_crawl_throwing_bomb",
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
		name = "pbw_gameplay_ambush_horde_spawned_drunk",
		response = "pbw_gameplay_ambush_horde_spawned_drunk",
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
		response = "pbw_gameplay_dwarf_ranger_being_helped_drunk",
		name = "pbw_gameplay_dwarf_ranger_being_helped_drunk",
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
				"bright_wizard"
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
				"bright_wizard"
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pbw_gameplay_dwarf_ranger_low_on_health_no_drunk",
		response = "pbw_gameplay_dwarf_ranger_low_on_health_no_drunk",
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
				"pdr_gameplay_low_on_health"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"faction_memory",
				"crawl_cheers",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_low_health_pdr",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_low_health_pdr",
				OP.TIMESET
			}
		}
	})
	define_rule({
		response = "pbw_gameplay_empire_soldier_being_helped_up_drunk",
		name = "pbw_gameplay_empire_soldier_being_helped_up_drunk",
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
				"bright_wizard"
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
				"bright_wizard"
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pbw_gameplay_empire_soldier_low_on_health_no_drunk",
		response = "pbw_gameplay_empire_soldier_low_on_health_no_drunk",
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
				"bright_wizard"
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
		name = "pbw_gameplay_friendly_fire_dwarf_ranger_drunk",
		response = "pbw_gameplay_friendly_fire_dwarf_ranger_drunk",
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
				"bright_wizard"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"query_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
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
		name = "pbw_gameplay_friendly_fire_empire_soldier_drunk",
		response = "pbw_gameplay_friendly_fire_empire_soldier_drunk",
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
				"bright_wizard"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
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
				"bright_wizard"
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
		name = "pbw_gameplay_friendly_fire_witch_hunter_drunk",
		response = "pbw_gameplay_friendly_fire_witch_hunter_drunk",
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
				"bright_wizard"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
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
				"bright_wizard"
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
		name = "pbw_gameplay_friendly_fire_wood_elf_drunk",
		response = "pbw_gameplay_friendly_fire_wood_elf_drunk",
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
				"bright_wizard"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
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
				"bright_wizard"
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
		name = "pbw_gameplay_healing_draught_drunk",
		response = "pbw_gameplay_healing_draught_drunk",
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
				"bright_wizard"
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
				"bright_wizard"
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
		name = "pbw_gameplay_healing_dwarf_ranger_drunk",
		response = "pbw_gameplay_healing_dwarf_ranger_drunk",
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
				"bright_wizard"
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
				"bright_wizard"
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
		name = "pbw_gameplay_hearing_a_Skaven_warpfire_thrower_drunk",
		response = "pbw_gameplay_hearing_a_Skaven_warpfire_thrower_drunk",
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
				"incoming_threat_sienna",
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
				"incoming_threat_sienna",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pbw_gameplay_hearing_a_chaos_spawn_drunk",
		response = "pbw_gameplay_hearing_a_chaos_spawn_drunk",
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
				"incoming_threat_sienna",
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
				"incoming_threat_sienna",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pbw_gameplay_hearing_a_chaos_wizard_wind_combat_drunk",
		response = "pbw_gameplay_hearing_a_chaos_wizard_wind_combat_drunk",
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
				"incoming_threat_sienna",
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
				"incoming_threat_sienna",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pbw_gameplay_hearing_a_chaos_wizard_wind_drunk",
		response = "pbw_gameplay_hearing_a_chaos_wizard_wind_drunk",
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
				"incoming_threat_sienna",
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
				"incoming_threat_sienna",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pbw_gameplay_hearing_a_globadier_drunk",
		response = "pbw_gameplay_hearing_a_globadier_drunk",
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
				"incoming_threat_sienna",
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
				"incoming_threat_sienna",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pbw_gameplay_hearing_a_gutter_runner_drunk",
		response = "pbw_gameplay_hearing_a_gutter_runner_drunk",
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
				"incoming_threat_sienna",
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
				"incoming_threat_sienna",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pbw_gameplay_hearing_a_skaven_patrol_stormvermin_drunk",
		response = "pbw_gameplay_hearing_a_skaven_patrol_stormvermin_drunk",
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
				"incoming_threat_sienna",
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
				"incoming_threat_sienna",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pbw_gameplay_hearing_a_skaven_rat_ogre_drunk",
		response = "pbw_gameplay_hearing_a_skaven_rat_ogre_drunk",
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
				"incoming_threat_sienna",
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
				"incoming_threat_sienna",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pbw_gameplay_hearing_a_skaven_ratling_gun_drunk",
		response = "pbw_gameplay_hearing_a_skaven_ratling_gun_drunk",
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
				"incoming_threat_sienna",
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
				"incoming_threat_sienna",
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
		name = "pbw_gameplay_hearing_a_stormfiend_drunk",
		response = "pbw_gameplay_hearing_a_stormfiend_drunk",
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
				"incoming_threat_sienna",
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
				"incoming_threat_sienna",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pbw_gameplay_hearing_a_troll_drunk",
		response = "pbw_gameplay_hearing_a_troll_drunk",
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
				"incoming_threat_sienna",
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
				"incoming_threat_sienna",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pbw_gameplay_hears_incoming_horde_drunk",
		response = "pbw_gameplay_hears_incoming_horde_drunk",
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
		name = "pbw_gameplay_hears_incoming_horde_no_drunk",
		response = "pbw_gameplay_hears_incoming_horde_no_drunk",
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
		name = "pbw_gameplay_helped_by_dwarf_ranger_drunk",
		response = "pbw_gameplay_helped_by_dwarf_ranger_drunk",
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
				"bright_wizard"
			},
			{
				"query_context",
				"healer_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
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
		name = "pbw_gameplay_helped_by_empire_soldier_drunk",
		response = "pbw_gameplay_helped_by_empire_soldier_drunk",
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
				"bright_wizard"
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
				"bright_wizard"
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
		name = "pbw_gameplay_helped_by_witch_hunter_drunk",
		response = "pbw_gameplay_helped_by_witch_hunter_drunk",
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
				"bright_wizard"
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
				"bright_wizard"
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
		name = "pbw_gameplay_helped_by_wood_elf_drunk",
		response = "pbw_gameplay_helped_by_wood_elf_drunk",
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
				"bright_wizard"
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
				"bright_wizard"
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
		name = "pbw_gameplay_incoming_skaven_rat_ogre_drunk",
		response = "pbw_gameplay_incoming_skaven_rat_ogre_drunk",
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
				"incoming_threat_sienna",
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
				"incoming_threat_sienna",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pbw_gameplay_killing_a_chaos_warrior_no_drunk",
		response = "pbw_gameplay_killing_a_chaos_warrior_no_drunk",
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
				"bright_wizard_special_kills_in_row",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"bright_wizard_special_kills_in_row",
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
		name = "pbw_gameplay_killing_a_chaos_wizard_wind_no_drunk",
		response = "pbw_gameplay_killing_a_chaos_wizard_wind_no_drunk",
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
				"bright_wizard_special_kills_in_row",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"bright_wizard_special_kills_in_row",
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
		name = "pbw_gameplay_killing_a_skaven_warpfire_thrower_no_drunk",
		response = "pbw_gameplay_killing_a_skaven_warpfire_thrower_no_drunk",
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
				"bright_wizard_special_kills_in_row",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"bright_wizard_special_kills_in_row",
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
		name = "pbw_gameplay_killing_a_stormfiend_no_drunk",
		response = "pbw_gameplay_killing_a_stormfiend_no_drunk",
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
				"bright_wizard_special_kills_in_row",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"bright_wizard_special_kills_in_row",
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
		name = "pbw_gameplay_knocked_down_drunk",
		response = "pbw_gameplay_knocked_down_drunk",
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
				"bright_wizard"
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
				"bright_wizard"
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
				"times_down_bright_wizard",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pbw_gameplay_low_on_health_no_drunk",
		response = "pbw_gameplay_low_on_health_no_drunk",
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
		name = "pbw_gameplay_player_pounced_drunk",
		response = "pbw_gameplay_player_pounced_drunk",
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
				"bright_wizard"
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
				"bright_wizard"
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
		name = "pbw_gameplay_seeing_a_Skaven_warpfire_thrower_no_drunk",
		response = "pbw_gameplay_seeing_a_Skaven_warpfire_thrower_no_drunk",
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
		name = "pbw_gameplay_seeing_a_chaos_spawn_no_drunk",
		response = "pbw_gameplay_seeing_a_chaos_spawn_no_drunk",
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
		name = "pbw_gameplay_seeing_a_chaos_warrior_no_drunk",
		response = "pbw_gameplay_seeing_a_chaos_warrior_no_drunk",
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
		name = "pbw_gameplay_seeing_a_chaos_wizard_wind_no_drunk",
		response = "pbw_gameplay_seeing_a_chaos_wizard_wind_no_drunk",
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
		name = "pbw_gameplay_seeing_a_pm_no_drunk",
		response = "pbw_gameplay_seeing_a_pm_no_drunk",
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
		name = "pbw_gameplay_seeing_a_scr_no_drunk",
		response = "pbw_gameplay_seeing_a_scr_no_drunk",
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
		name = "pbw_gameplay_seeing_a_shield_stormvermin_no_drunk",
		response = "pbw_gameplay_seeing_a_shield_stormvermin_no_drunk",
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
		name = "pbw_gameplay_seeing_a_stormfiend_no_drunk",
		response = "pbw_gameplay_seeing_a_stormfiend_no_drunk",
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
		name = "pbw_gameplay_seeing_a_troll_no_drunk",
		response = "pbw_gameplay_seeing_a_troll_no_drunk",
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
		name = "pbw_gameplay_self_heal_drunk",
		response = "pbw_gameplay_self_heal_drunk",
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
				"bright_wizard"
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
				"bright_wizard"
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
		name = "pbw_gameplay_spots_ammo_no_drunk",
		response = "pbw_gameplay_spots_ammo_no_drunk",
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
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
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
		name = "pbw_gameplay_spots_bomb_no_drunk",
		response = "pbw_gameplay_spots_bomb_no_drunk",
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
				"bright_wizard"
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
				"bright_wizard"
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
		name = "pbw_gameplay_spots_health_no_drunk",
		response = "pbw_gameplay_spots_health_no_drunk",
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
				"bright_wizard"
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
				"bright_wizard"
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
		name = "pbw_gameplay_spots_potion_drunk",
		response = "pbw_gameplay_spots_potion_drunk",
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
				"bright_wizard"
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
				"bright_wizard"
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
		name = "pbw_gameplay_throwing_bomb_no_drunk",
		response = "pbw_gameplay_throwing_bomb_no_drunk",
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
		name = "pbw_gameplay_tips_wizard_wind_drunk",
		response = "pbw_gameplay_tips_wizard_wind_drunk",
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
				"incoming_threat_sienna",
				OP.TIMEDIFF,
				OP.GT,
				55
			},
			{
				"faction_memory",
				"chaos_vortex_spawned",
				OP.TIMEDIFF,
				OP.GT,
				60
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
				"incoming_threat_sienna",
				OP.TIMESET
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pbw_gameplay_using_potion_drunk",
		response = "pbw_gameplay_using_potion_drunk",
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
				"time_since_used_potion",
				OP.TIMEDIFF,
				OP.GT,
				1
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
		response = "pbw_gameplay_witch_hunter_being_helped_up_drunk",
		name = "pbw_gameplay_witch_hunter_being_helped_up_drunk",
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
				"bright_wizard"
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
				"bright_wizard"
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pbw_gameplay_witch_hunter_low_on_health_no_drunk",
		response = "pbw_gameplay_witch_hunter_low_on_health_no_drunk",
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
				"bright_wizard"
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
		response = "pbw_gameplay_wood_elf_being_helped_up_drunk",
		name = "pbw_gameplay_wood_elf_being_helped_up_drunk",
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
				"bright_wizard"
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
				"bright_wizard"
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pbw_gameplay_wood_elf_low_on_health_no_drunk",
		response = "pbw_gameplay_wood_elf_low_on_health_no_drunk",
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
				"bright_wizard"
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
	add_dialogues({
		pbw_activate_ability_battle_wizard_non_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 12,
			database = "bright_wizard_game_play_crawl",
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
				"pbw_activate_ability_battle_wizard_01",
				"pbw_activate_ability_battle_wizard_02",
				"pbw_activate_ability_battle_wizard_03",
				"pbw_activate_ability_battle_wizard_04",
				"pbw_activate_ability_battle_wizard_05",
				"pbw_activate_ability_battle_wizard_06",
				"pbw_activate_ability_battle_wizard_07",
				"pbw_activate_ability_battle_wizard_08",
				"pbw_activate_ability_battle_wizard_09",
				"pbw_activate_ability_battle_wizard_10",
				"pbw_activate_ability_battle_wizard_11",
				"pbw_activate_ability_battle_wizard_12"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_activate_ability_battle_wizard_01",
				"pbw_activate_ability_battle_wizard_02",
				"pbw_activate_ability_battle_wizard_03",
				"pbw_activate_ability_battle_wizard_04",
				"pbw_activate_ability_battle_wizard_05",
				"pbw_activate_ability_battle_wizard_06",
				"pbw_activate_ability_battle_wizard_07",
				"pbw_activate_ability_battle_wizard_08",
				"pbw_activate_ability_battle_wizard_09",
				"pbw_activate_ability_battle_wizard_10",
				"pbw_activate_ability_battle_wizard_11",
				"pbw_activate_ability_battle_wizard_12"
			},
			sound_events_duration = {
				1.8937499523163,
				2.5130207538605,
				2.3882083892822,
				1.9769166707993,
				1.2478125095367,
				2.8103125095367,
				1.5035208463669,
				1.0926666259766,
				1.9409999847412,
				1.8511874675751,
				2.3946666717529,
				3.3020207881927
			}
		},
		pbw_activate_ability_pyromancer_non_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 12,
			database = "bright_wizard_game_play_crawl",
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
				"pbw_activate_ability_pyromancer_01",
				"pbw_activate_ability_pyromancer_02",
				"pbw_activate_ability_pyromancer_03",
				"pbw_activate_ability_pyromancer_04",
				"pbw_activate_ability_pyromancer_05",
				"pbw_activate_ability_pyromancer_06",
				"pbw_activate_ability_pyromancer_07",
				"pbw_activate_ability_pyromancer_08",
				"pbw_activate_ability_pyromancer_09",
				"pbw_activate_ability_pyromancer_10",
				"pbw_activate_ability_pyromancer_11",
				"pbw_activate_ability_pyromancer_12"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_activate_ability_pyromancer_01",
				"pbw_activate_ability_pyromancer_02",
				"pbw_activate_ability_pyromancer_03",
				"pbw_activate_ability_pyromancer_04",
				"pbw_activate_ability_pyromancer_05",
				"pbw_activate_ability_pyromancer_06",
				"pbw_activate_ability_pyromancer_07",
				"pbw_activate_ability_pyromancer_08",
				"pbw_activate_ability_pyromancer_09",
				"pbw_activate_ability_pyromancer_10",
				"pbw_activate_ability_pyromancer_11",
				"pbw_activate_ability_pyromancer_12"
			},
			sound_events_duration = {
				1.9312916994095,
				1.5861874818802,
				1.0180833339691,
				2.31285405159,
				3.9249374866486,
				2.5165417194366,
				3.1542084217072,
				2.0076251029968,
				2.5495417118073,
				2.0251874923706,
				3.8913333415985,
				3.6621458530426
			}
		},
		pbw_activate_ability_unchained_non_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "bright_wizard_game_play_crawl",
			sound_events_n = 10,
			category = "activate_ability",
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
				"pbw_activate_ability_unchained_01",
				"pbw_activate_ability_unchained_02",
				"pbw_activate_ability_unchained_03",
				"pbw_activate_ability_unchained_04",
				"pbw_activate_ability_unchained_05",
				"pbw_activate_ability_unchained_06",
				"pbw_activate_ability_unchained_07",
				"pbw_activate_ability_unchained_08",
				"pbw_activate_ability_unchained_09",
				"pbw_activate_ability_unchained_10"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_activate_ability_unchained_01",
				"pbw_activate_ability_unchained_02",
				"pbw_activate_ability_unchained_03",
				"pbw_activate_ability_unchained_04",
				"pbw_activate_ability_unchained_05",
				"pbw_activate_ability_unchained_06",
				"pbw_activate_ability_unchained_07",
				"pbw_activate_ability_unchained_08",
				"pbw_activate_ability_unchained_09",
				"pbw_activate_ability_unchained_10"
			},
			sound_events_duration = {
				4.0252084732056,
				2.4528958797455,
				1.7375416755676,
				5.0076665878296,
				3.1394791603088,
				1.6660833358765,
				0.86472916603088,
				1.5493124723434,
				1.9696667194366,
				2.3059582710266
			}
		},
		pbw_burp = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "bright_wizard_game_play_crawl",
			category = "story_talk_vce",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "pbw_burp"
			},
			sound_events = {
				[1] = "pbw_burp"
			},
			sound_events_duration = {
				[1] = 0.49342796206474
			}
		},
		pbw_crawl_ability_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "bright_wizard_game_play_crawl",
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
				"pbw_crawl_ability_01",
				"pbw_crawl_ability_02",
				"pbw_crawl_ability_03",
				"pbw_crawl_ability_04",
				"pbw_crawl_ability_05",
				"pbw_crawl_ability_06"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_crawl_ability_01",
				"pbw_crawl_ability_02",
				"pbw_crawl_ability_03",
				"pbw_crawl_ability_04",
				"pbw_crawl_ability_05",
				"pbw_crawl_ability_06"
			},
			sound_events_duration = {
				3.3956458568573,
				2.602979183197,
				3.5373125076294,
				3.1210000514984,
				2.5238749980927,
				9.7404165267944
			}
		},
		pbw_crawl_drank = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "bright_wizard_game_play_crawl",
			category = "story_talk_vce",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_shout"
			},
			face_animations = {
				[1] = "face_calm"
			},
			localization_strings = {
				[1] = "pbw_drank_drunk"
			},
			sound_events = {
				[1] = "pbw_drank_drunk"
			},
			sound_events_duration = {
				[1] = 2.5
			}
		},
		pbw_crawl_drunk_buff_begins = {
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "bright_wizard_game_play_crawl",
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
				"pbw_crawl_drunk_buff_begins_01",
				"pbw_crawl_drunk_buff_begins_02",
				"pbw_crawl_drunk_buff_begins_03",
				"pbw_crawl_drunk_buff_begins_04",
				"pbw_crawl_drunk_buff_begins_05",
				"pbw_crawl_drunk_buff_begins_06"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_crawl_drunk_buff_begins_01",
				"pbw_crawl_drunk_buff_begins_02",
				"pbw_crawl_drunk_buff_begins_03",
				"pbw_crawl_drunk_buff_begins_04",
				"pbw_crawl_drunk_buff_begins_05",
				"pbw_crawl_drunk_buff_begins_06"
			},
			sound_events_duration = {
				2.9531457424164,
				3.2211041450501,
				3.4400417804718,
				3.7719583511352,
				3.9760208129883,
				2.9784998893738
			}
		},
		pbw_crawl_drunk_buff_begins_from_sick = {
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "bright_wizard_game_play_crawl",
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
				"pbw_crawl_drunk_buff_begins_from_sick_01",
				"pbw_crawl_drunk_buff_begins_from_sick_02",
				"pbw_crawl_drunk_buff_begins_from_sick_03",
				"pbw_crawl_drunk_buff_begins_from_sick_04",
				"pbw_crawl_drunk_buff_begins_from_sick_05",
				"pbw_crawl_drunk_buff_begins_from_sick_06"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_crawl_drunk_buff_begins_from_sick_01",
				"pbw_crawl_drunk_buff_begins_from_sick_02",
				"pbw_crawl_drunk_buff_begins_from_sick_03",
				"pbw_crawl_drunk_buff_begins_from_sick_04",
				"pbw_crawl_drunk_buff_begins_from_sick_05",
				"pbw_crawl_drunk_buff_begins_from_sick_06"
			},
			sound_events_duration = {
				8.0668544769287,
				5.5496249198914,
				3.2480416297913,
				4.3348751068115,
				3.0060832500458,
				4.1400418281555
			}
		},
		pbw_crawl_drunk_buff_wears_off = {
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "bright_wizard_game_play_crawl",
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
				"pbw_crawl_drunk_buff_wears_off_01",
				"pbw_crawl_drunk_buff_wears_off_02",
				"pbw_crawl_drunk_buff_wears_off_03",
				"pbw_crawl_drunk_buff_wears_off_04",
				"pbw_crawl_drunk_buff_wears_off_05",
				"pbw_crawl_drunk_buff_wears_off_06",
				"pbw_crawl_drunk_buff_wears_off_07",
				"pbw_crawl_drunk_buff_wears_off_08"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_crawl_drunk_buff_wears_off_01",
				"pbw_crawl_drunk_buff_wears_off_02",
				"pbw_crawl_drunk_buff_wears_off_03",
				"pbw_crawl_drunk_buff_wears_off_04",
				"pbw_crawl_drunk_buff_wears_off_05",
				"pbw_crawl_drunk_buff_wears_off_06",
				"pbw_crawl_drunk_buff_wears_off_07",
				"pbw_crawl_drunk_buff_wears_off_08"
			},
			sound_events_duration = {
				2.2181875705719,
				1.7289999723434,
				3.0194582939148,
				1.8420000076294,
				2.9552500247955,
				2.2082707881927,
				2.5056457519531,
				1.7189791202545
			}
		},
		pbw_crawl_head_shot_a = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_game_play_crawl",
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
				"pbw_crawl_head_shot_a_01",
				"pbw_crawl_head_shot_a_02",
				"pbw_crawl_head_shot_a_03",
				"pbw_crawl_head_shot_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_crawl_head_shot_a_01",
				"pbw_crawl_head_shot_a_02",
				"pbw_crawl_head_shot_a_03",
				"pbw_crawl_head_shot_a_04"
			},
			sound_events_duration = {
				3.6023125648499,
				3.5888540744781,
				6.0890626907349,
				5.946750164032
			}
		},
		pbw_crawl_head_shot_b = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_game_play_crawl",
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
				"pbw_crawl_head_shot_b_01",
				"pbw_crawl_head_shot_b_02",
				"pbw_crawl_head_shot_b_03",
				"pbw_crawl_head_shot_b_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_crawl_head_shot_b_01",
				"pbw_crawl_head_shot_b_02",
				"pbw_crawl_head_shot_b_03",
				"pbw_crawl_head_shot_b_04"
			},
			sound_events_duration = {
				3.6901667118073,
				4.5716042518616,
				3.0296041965485,
				4.1935000419617
			}
		},
		pbw_crawl_horde_incoming_b_ambush = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_game_play_crawl",
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
				"pbw_crawl_horde_incoming_b_01",
				"pbw_crawl_horde_incoming_b_02",
				"pbw_crawl_horde_incoming_b_03",
				"pbw_crawl_horde_incoming_b_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_crawl_horde_incoming_b_01",
				"pbw_crawl_horde_incoming_b_02",
				"pbw_crawl_horde_incoming_b_03",
				"pbw_crawl_horde_incoming_b_04"
			},
			sound_events_duration = {
				6.2250623703003,
				7.4693956375122,
				4.2580833435059,
				5.7097501754761
			}
		},
		pbw_crawl_horde_incoming_b_vector = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_game_play_crawl",
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
				"pbw_crawl_horde_incoming_b_01",
				"pbw_crawl_horde_incoming_b_02",
				"pbw_crawl_horde_incoming_b_03",
				"pbw_crawl_horde_incoming_b_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_crawl_horde_incoming_b_01",
				"pbw_crawl_horde_incoming_b_02",
				"pbw_crawl_horde_incoming_b_03",
				"pbw_crawl_horde_incoming_b_04"
			},
			sound_events_duration = {
				6.2250623703003,
				7.4693956375122,
				4.2580833435059,
				5.7097501754761
			}
		},
		pbw_crawl_killing_spree_b = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_game_play_crawl",
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
				"pbw_crawl_killing_spree_b_01",
				"pbw_crawl_killing_spree_b_02",
				"pbw_crawl_killing_spree_b_03",
				"pbw_crawl_killing_spree_b_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_crawl_killing_spree_b_01",
				"pbw_crawl_killing_spree_b_02",
				"pbw_crawl_killing_spree_b_03",
				"pbw_crawl_killing_spree_b_04"
			},
			sound_events_duration = {
				3.090437412262,
				4.6706666946411,
				4.346604347229,
				4.2664790153503
			}
		},
		pbw_crawl_low_on_health_a = {
			randomize_indexes_n = 0,
			face_animations_n = 5,
			database = "bright_wizard_game_play_crawl",
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
				"pbw_crawl_low_on_health_a_01",
				"pbw_crawl_low_on_health_a_02",
				"pbw_crawl_low_on_health_a_03",
				"pbw_crawl_low_on_health_a_04",
				"pbw_crawl_low_on_health_a_05"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_crawl_low_on_health_a_01",
				"pbw_crawl_low_on_health_a_02",
				"pbw_crawl_low_on_health_a_03",
				"pbw_crawl_low_on_health_a_04",
				"pbw_crawl_low_on_health_a_05"
			},
			sound_events_duration = {
				3.9663958549499,
				3.8323125839233,
				8.6478538513184,
				3.7858126163483,
				8.1606044769287
			}
		},
		pbw_crawl_low_on_health_b = {
			randomize_indexes_n = 0,
			face_animations_n = 5,
			database = "bright_wizard_game_play_crawl",
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
				"pbw_crawl_low_on_health_b_01",
				"pbw_crawl_low_on_health_b_02",
				"pbw_crawl_low_on_health_b_03",
				"pbw_crawl_low_on_health_b_04",
				"pbw_crawl_low_on_health_b_05"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_crawl_low_on_health_b_01",
				"pbw_crawl_low_on_health_b_02",
				"pbw_crawl_low_on_health_b_03",
				"pbw_crawl_low_on_health_b_04",
				"pbw_crawl_low_on_health_b_05"
			},
			sound_events_duration = {
				4.6027293205261,
				2.6098959445953,
				3.0768332481384,
				6.9267916679382,
				4.8655834197998
			}
		},
		pbw_crawl_monster_spotted_b_chaos_spawn = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_game_play_crawl",
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
				"pbw_crawl_monster_spotted_03_b_01",
				"pbw_crawl_monster_spotted_03_b_02",
				"pbw_crawl_monster_spotted_03_b_03",
				"pbw_crawl_monster_spotted_04_a_01"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_crawl_monster_spotted_03_b_01",
				"pbw_crawl_monster_spotted_03_b_02",
				"pbw_crawl_monster_spotted_03_b_03",
				"pbw_crawl_monster_spotted_04_a_01"
			},
			sound_events_duration = {
				2.5933125019074,
				3.2282707691193,
				3.844208240509,
				3.697208404541
			}
		},
		pbw_crawl_monster_spotted_b_rat_ogre = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_game_play_crawl",
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
				"pbw_crawl_monster_spotted_03_b_01",
				"pbw_crawl_monster_spotted_03_b_02",
				"pbw_crawl_monster_spotted_03_b_03",
				"pbw_crawl_monster_spotted_04_a_01"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_crawl_monster_spotted_03_b_01",
				"pbw_crawl_monster_spotted_03_b_02",
				"pbw_crawl_monster_spotted_03_b_03",
				"pbw_crawl_monster_spotted_04_a_01"
			},
			sound_events_duration = {
				2.5933125019074,
				3.2282707691193,
				3.844208240509,
				3.697208404541
			}
		},
		pbw_crawl_monster_spotted_b_stormfiend = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_game_play_crawl",
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
				"pbw_crawl_monster_spotted_03_b_01",
				"pbw_crawl_monster_spotted_03_b_02",
				"pbw_crawl_monster_spotted_03_b_03",
				"pbw_crawl_monster_spotted_04_a_01"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_crawl_monster_spotted_03_b_01",
				"pbw_crawl_monster_spotted_03_b_02",
				"pbw_crawl_monster_spotted_03_b_03",
				"pbw_crawl_monster_spotted_04_a_01"
			},
			sound_events_duration = {
				2.5933125019074,
				3.2282707691193,
				3.844208240509,
				3.697208404541
			}
		},
		pbw_crawl_monster_spotted_b_troll = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_game_play_crawl",
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
				"pbw_crawl_monster_spotted_03_b_01",
				"pbw_crawl_monster_spotted_03_b_02",
				"pbw_crawl_monster_spotted_03_b_03",
				"pbw_crawl_monster_spotted_04_a_01"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_crawl_monster_spotted_03_b_01",
				"pbw_crawl_monster_spotted_03_b_02",
				"pbw_crawl_monster_spotted_03_b_03",
				"pbw_crawl_monster_spotted_04_a_01"
			},
			sound_events_duration = {
				2.5933125019074,
				3.2282707691193,
				3.844208240509,
				3.697208404541
			}
		},
		pbw_crawl_monster_spotted_c_group_2 = {
			additional_trigger_heard = "monster_spotted_crawl_done",
			sound_events_n = 1,
			face_animations_n = 1,
			database = "bright_wizard_game_play_crawl",
			category = "casual_singing_03",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_shout"
			},
			face_animations = {
				[1] = "face_happy"
			},
			localization_strings = {
				[1] = "pbw_crawl_monster_spotted_04_b_GROUP_01"
			},
			sound_events = {
				[1] = "pbw_crawl_monster_spotted_04_b_GROUP_01"
			},
			sound_events_duration = {
				[1] = 4.9434585571289
			}
		},
		pbw_crawl_monster_spotted_c_pdr = {
			additional_trigger_heard = "monster_spotted_crawl_done",
			sound_events_n = 1,
			face_animations_n = 1,
			database = "bright_wizard_game_play_crawl",
			category = "casual_singing_03",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_shout"
			},
			face_animations = {
				[1] = "face_happy"
			},
			localization_strings = {
				[1] = "pbw_crawl_monster_spotted_04_b_GROUP_01"
			},
			sound_events = {
				[1] = "pbw_crawl_monster_spotted_04_b_GROUP_01"
			},
			sound_events_duration = {
				[1] = 4.9434585571289
			}
		},
		pbw_crawl_monster_spotted_c_pes = {
			additional_trigger_heard = "monster_spotted_crawl_done",
			sound_events_n = 1,
			face_animations_n = 1,
			database = "bright_wizard_game_play_crawl",
			category = "casual_singing_03",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_shout"
			},
			face_animations = {
				[1] = "face_happy"
			},
			localization_strings = {
				[1] = "pbw_crawl_monster_spotted_04_b_GROUP_01"
			},
			sound_events = {
				[1] = "pbw_crawl_monster_spotted_04_b_GROUP_01"
			},
			sound_events_duration = {
				[1] = 4.9434585571289
			}
		},
		pbw_crawl_monster_spotted_c_pwe = {
			additional_trigger_heard = "monster_spotted_crawl_done",
			sound_events_n = 1,
			face_animations_n = 1,
			database = "bright_wizard_game_play_crawl",
			category = "casual_singing_03",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_shout"
			},
			face_animations = {
				[1] = "face_happy"
			},
			localization_strings = {
				[1] = "pbw_crawl_monster_spotted_04_b_GROUP_01"
			},
			sound_events = {
				[1] = "pbw_crawl_monster_spotted_04_b_GROUP_01"
			},
			sound_events_duration = {
				[1] = 4.9434585571289
			}
		},
		pbw_crawl_monster_spotted_c_pwh = {
			additional_trigger_heard = "monster_spotted_crawl_done",
			sound_events_n = 1,
			face_animations_n = 1,
			database = "bright_wizard_game_play_crawl",
			category = "casual_singing_03",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_shout"
			},
			face_animations = {
				[1] = "face_happy"
			},
			localization_strings = {
				[1] = "pbw_crawl_monster_spotted_04_b_GROUP_01"
			},
			sound_events = {
				[1] = "pbw_crawl_monster_spotted_04_b_GROUP_01"
			},
			sound_events_duration = {
				[1] = 4.9434585571289
			}
		},
		pbw_crawl_pes_crawl_drunk_incoming_threat_new_b_globadier = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_game_play_crawl",
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
				"pbw_crawl_pes_crawl_drunk_incoming_threat_new_b_01",
				"pbw_crawl_pes_crawl_drunk_incoming_threat_new_b_02",
				"pbw_crawl_pes_crawl_drunk_incoming_threat_new_b_03",
				"pbw_crawl_pes_crawl_drunk_incoming_threat_new_b_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_crawl_pes_crawl_drunk_incoming_threat_new_b_01",
				"pbw_crawl_pes_crawl_drunk_incoming_threat_new_b_02",
				"pbw_crawl_pes_crawl_drunk_incoming_threat_new_b_03",
				"pbw_crawl_pes_crawl_drunk_incoming_threat_new_b_04"
			},
			sound_events_duration = {
				4.2693958282471,
				4.8845415115356,
				4.382354259491,
				7.0207915306091
			}
		},
		pbw_crawl_pes_crawl_drunk_incoming_threat_new_b_gutter_runner = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_game_play_crawl",
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
				"pbw_crawl_pes_crawl_drunk_incoming_threat_new_b_01",
				"pbw_crawl_pes_crawl_drunk_incoming_threat_new_b_02",
				"pbw_crawl_pes_crawl_drunk_incoming_threat_new_b_03",
				"pbw_crawl_pes_crawl_drunk_incoming_threat_new_b_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_crawl_pes_crawl_drunk_incoming_threat_new_b_01",
				"pbw_crawl_pes_crawl_drunk_incoming_threat_new_b_02",
				"pbw_crawl_pes_crawl_drunk_incoming_threat_new_b_03",
				"pbw_crawl_pes_crawl_drunk_incoming_threat_new_b_04"
			},
			sound_events_duration = {
				4.2693958282471,
				4.8845415115356,
				4.382354259491,
				7.0207915306091
			}
		},
		pbw_crawl_pes_crawl_drunk_incoming_threat_new_b_ratling = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_game_play_crawl",
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
				"pbw_crawl_pes_crawl_drunk_incoming_threat_new_b_01",
				"pbw_crawl_pes_crawl_drunk_incoming_threat_new_b_02",
				"pbw_crawl_pes_crawl_drunk_incoming_threat_new_b_03",
				"pbw_crawl_pes_crawl_drunk_incoming_threat_new_b_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_crawl_pes_crawl_drunk_incoming_threat_new_b_01",
				"pbw_crawl_pes_crawl_drunk_incoming_threat_new_b_02",
				"pbw_crawl_pes_crawl_drunk_incoming_threat_new_b_03",
				"pbw_crawl_pes_crawl_drunk_incoming_threat_new_b_04"
			},
			sound_events_duration = {
				4.2693958282471,
				4.8845415115356,
				4.382354259491,
				7.0207915306091
			}
		},
		pbw_crawl_pes_crawl_drunk_incoming_threat_new_b_warpfire = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_game_play_crawl",
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
				"pbw_crawl_pes_crawl_drunk_incoming_threat_new_b_01",
				"pbw_crawl_pes_crawl_drunk_incoming_threat_new_b_02",
				"pbw_crawl_pes_crawl_drunk_incoming_threat_new_b_03",
				"pbw_crawl_pes_crawl_drunk_incoming_threat_new_b_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_crawl_pes_crawl_drunk_incoming_threat_new_b_01",
				"pbw_crawl_pes_crawl_drunk_incoming_threat_new_b_02",
				"pbw_crawl_pes_crawl_drunk_incoming_threat_new_b_03",
				"pbw_crawl_pes_crawl_drunk_incoming_threat_new_b_04"
			},
			sound_events_duration = {
				4.2693958282471,
				4.8845415115356,
				4.382354259491,
				7.0207915306091
			}
		},
		pbw_crawl_seen_killing_spree_bardin = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_game_play_crawl",
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
				"pbw_crawl_seen_killing_spree_bardin_a_01",
				"pbw_crawl_seen_killing_spree_bardin_a_02",
				"pbw_crawl_seen_killing_spree_bardin_a_03",
				"pbw_crawl_seen_killing_spree_bardin_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_crawl_seen_killing_spree_bardin_a_01",
				"pbw_crawl_seen_killing_spree_bardin_a_02",
				"pbw_crawl_seen_killing_spree_bardin_a_03",
				"pbw_crawl_seen_killing_spree_bardin_a_04"
			},
			sound_events_duration = {
				2.877729177475,
				7.2417917251587,
				2.9282290935516,
				3.8458542823791
			}
		},
		pbw_crawl_seen_killing_spree_kerillian = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_game_play_crawl",
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
				"pbw_crawl_seen_killing_spree_kerillian_a_01",
				"pbw_crawl_seen_killing_spree_kerillian_a_02",
				"pbw_crawl_seen_killing_spree_kerillian_a_03",
				"pbw_crawl_seen_killing_spree_kerillian_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_crawl_seen_killing_spree_kerillian_a_01",
				"pbw_crawl_seen_killing_spree_kerillian_a_02",
				"pbw_crawl_seen_killing_spree_kerillian_a_03",
				"pbw_crawl_seen_killing_spree_kerillian_a_04"
			},
			sound_events_duration = {
				3.9878332614899,
				4.3097915649414,
				5.7589373588562,
				3.7676665782928
			}
		},
		pbw_crawl_seen_killing_spree_kruber = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_game_play_crawl",
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
				"pbw_crawl_seen_killing_spree_kruber_a_01",
				"pbw_crawl_seen_killing_spree_kruber_a_02",
				"pbw_crawl_seen_killing_spree_kruber_a_03",
				"pbw_crawl_seen_killing_spree_kruber_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_crawl_seen_killing_spree_kruber_a_01",
				"pbw_crawl_seen_killing_spree_kruber_a_02",
				"pbw_crawl_seen_killing_spree_kruber_a_03",
				"pbw_crawl_seen_killing_spree_kruber_a_04"
			},
			sound_events_duration = {
				4.5470209121704,
				3.4207708835602,
				4.2998957633972,
				4.0994582176208
			}
		},
		pbw_crawl_seen_killing_spree_saltzpyre = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_game_play_crawl",
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
				"pbw_crawl_seen_killing_spree_saltzpyre_a_01",
				"pbw_crawl_seen_killing_spree_saltzpyre_a_02",
				"pbw_crawl_seen_killing_spree_saltzpyre_a_03",
				"pbw_crawl_seen_killing_spree_saltzpyre_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_crawl_seen_killing_spree_saltzpyre_a_01",
				"pbw_crawl_seen_killing_spree_saltzpyre_a_02",
				"pbw_crawl_seen_killing_spree_saltzpyre_a_03",
				"pbw_crawl_seen_killing_spree_saltzpyre_a_04"
			},
			sound_events_duration = {
				3.5922708511352,
				5.944854259491,
				8.4759788513184,
				3.5965209007263
			}
		},
		pbw_crawl_spots_item = {
			randomize_indexes_n = 0,
			face_animations_n = 5,
			database = "bright_wizard_game_play_crawl",
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
				"pbw_crawl_spots_item_01",
				"pbw_crawl_spots_item_02",
				"pbw_crawl_spots_item_03",
				"pbw_crawl_spots_item_04",
				"pbw_crawl_spots_item_05"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_crawl_spots_item_01",
				"pbw_crawl_spots_item_02",
				"pbw_crawl_spots_item_03",
				"pbw_crawl_spots_item_04",
				"pbw_crawl_spots_item_05"
			},
			sound_events_duration = {
				3.6599583625794,
				5.3568334579468,
				5.2954998016357,
				3.3033125400543,
				6.2049584388733
			}
		},
		pbw_crawl_throwing_bomb = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_game_play_crawl",
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
				"pbw_crawl_throwing_bomb_01",
				"pbw_crawl_throwing_bomb_02",
				"pbw_crawl_throwing_bomb_03",
				"pbw_crawl_throwing_bomb_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_crawl_throwing_bomb_01",
				"pbw_crawl_throwing_bomb_02",
				"pbw_crawl_throwing_bomb_03",
				"pbw_crawl_throwing_bomb_04"
			},
			sound_events_duration = {
				2.3784582614899,
				4.0372085571289,
				4.1863956451416,
				4.3348541259766
			}
		},
		pbw_gameplay_ambush_horde_spawned_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_game_play_crawl",
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
				"pbw_crawl_horde_incoming_a_01",
				"pbw_crawl_horde_incoming_a_02",
				"pbw_crawl_horde_incoming_a_03",
				"pbw_crawl_horde_incoming_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_crawl_horde_incoming_a_01",
				"pbw_crawl_horde_incoming_a_02",
				"pbw_crawl_horde_incoming_a_03",
				"pbw_crawl_horde_incoming_a_04"
			},
			sound_events_duration = {
				2.7703750133514,
				2.8334167003632,
				3.8762500286102,
				5.6347498893738
			}
		},
		pbw_gameplay_dwarf_ranger_being_helped_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "bright_wizard_game_play_crawl",
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
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_gameplay_dwarf_ranger_being_helped_up_05",
				"pbw_gameplay_dwarf_ranger_being_helped_up_06",
				"pbw_gameplay_dwarf_ranger_being_helped_up_07",
				"pbw_gameplay_dwarf_ranger_being_helped_up_08",
				"pbw_gameplay_dwarf_ranger_being_helped_up_09",
				"pbw_gameplay_dwarf_ranger_being_helped_up_10"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_gameplay_dwarf_ranger_being_helped_up_05",
				"pbw_gameplay_dwarf_ranger_being_helped_up_06",
				"pbw_gameplay_dwarf_ranger_being_helped_up_07",
				"pbw_gameplay_dwarf_ranger_being_helped_up_08",
				"pbw_gameplay_dwarf_ranger_being_helped_up_09",
				"pbw_gameplay_dwarf_ranger_being_helped_up_10"
			},
			sound_events_duration = {
				3.6368334293366,
				2.2724583148956,
				2.7722709178925,
				2.1498749256134,
				3.4092707633972,
				1.8314167261124
			}
		},
		pbw_gameplay_dwarf_ranger_low_on_health_no_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 3,
			database = "bright_wizard_game_play_crawl",
			sound_events_n = 3,
			category = "player_feedback",
			dialogue_animations_n = 3,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pbw_gameplay_dwarf_ranger_low_on_health_05",
				"pbw_gameplay_dwarf_ranger_low_on_health_06",
				"pbw_gameplay_dwarf_ranger_low_on_health_07"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_gameplay_dwarf_ranger_low_on_health_05",
				"pbw_gameplay_dwarf_ranger_low_on_health_06",
				"pbw_gameplay_dwarf_ranger_low_on_health_07"
			},
			sound_events_duration = {
				2.80433344841,
				1.534916639328,
				3.3312916755676
			}
		},
		pbw_gameplay_empire_soldier_being_helped_up_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "bright_wizard_game_play_crawl",
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
				"pbw_gameplay_empire_soldier_being_helped_up_05",
				"pbw_gameplay_empire_soldier_being_helped_up_06",
				"pbw_gameplay_empire_soldier_being_helped_up_07",
				"pbw_gameplay_empire_soldier_being_helped_up_08",
				"pbw_gameplay_empire_soldier_being_helped_up_09",
				"pbw_gameplay_empire_soldier_being_helped_up_10",
				"pbw_gameplay_empire_soldier_being_helped_up_11",
				"pbw_gameplay_empire_soldier_being_helped_up_12"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_gameplay_empire_soldier_being_helped_up_05",
				"pbw_gameplay_empire_soldier_being_helped_up_06",
				"pbw_gameplay_empire_soldier_being_helped_up_07",
				"pbw_gameplay_empire_soldier_being_helped_up_08",
				"pbw_gameplay_empire_soldier_being_helped_up_09",
				"pbw_gameplay_empire_soldier_being_helped_up_10",
				"pbw_gameplay_empire_soldier_being_helped_up_11",
				"pbw_gameplay_empire_soldier_being_helped_up_12"
			},
			sound_events_duration = {
				2.303729057312,
				2.6612915992737,
				3.1944999694824,
				2.6099791526794,
				1.9544166326523,
				1.705374956131,
				2.0736041069031,
				2.3040416240692
			}
		},
		pbw_gameplay_empire_soldier_low_on_health_no_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_game_play_crawl",
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
				"pbw_gameplay_empire_soldier_low_on_health_05",
				"pbw_gameplay_empire_soldier_low_on_health_06",
				"pbw_gameplay_empire_soldier_low_on_health_07",
				"pbw_gameplay_empire_soldier_low_on_health_08"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_gameplay_empire_soldier_low_on_health_05",
				"pbw_gameplay_empire_soldier_low_on_health_06",
				"pbw_gameplay_empire_soldier_low_on_health_07",
				"pbw_gameplay_empire_soldier_low_on_health_08"
			},
			sound_events_duration = {
				2.1397082805634,
				2.2135624885559,
				2.5332915782928,
				2.4681875705719
			}
		},
		pbw_gameplay_friendly_fire_dwarf_ranger_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 5,
			database = "bright_wizard_game_play_crawl",
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
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry"
			},
			localization_strings = {
				"pbw_gameplay_friendly_fire_dwarf_ranger_05",
				"pbw_gameplay_friendly_fire_dwarf_ranger_06",
				"pbw_gameplay_friendly_fire_dwarf_ranger_07",
				"pbw_gameplay_friendly_fire_dwarf_ranger_08",
				"pbw_gameplay_friendly_fire_dwarf_ranger_09"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_gameplay_friendly_fire_dwarf_ranger_05",
				"pbw_gameplay_friendly_fire_dwarf_ranger_06",
				"pbw_gameplay_friendly_fire_dwarf_ranger_07",
				"pbw_gameplay_friendly_fire_dwarf_ranger_08",
				"pbw_gameplay_friendly_fire_dwarf_ranger_09"
			},
			sound_events_duration = {
				2.9248332977295,
				2.7182083129883,
				2.9121251106262,
				2.2930417060852,
				3.5499999523163
			}
		},
		pbw_gameplay_friendly_fire_empire_soldier_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 5,
			database = "bright_wizard_game_play_crawl",
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
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry"
			},
			localization_strings = {
				"pbw_gameplay_friendly_fire_empire_soldier_05",
				"pbw_gameplay_friendly_fire_empire_soldier_06",
				"pbw_gameplay_friendly_fire_empire_soldier_07",
				"pbw_gameplay_friendly_fire_empire_soldier_08",
				"pbw_gameplay_friendly_fire_empire_soldier_09"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_gameplay_friendly_fire_empire_soldier_05",
				"pbw_gameplay_friendly_fire_empire_soldier_06",
				"pbw_gameplay_friendly_fire_empire_soldier_07",
				"pbw_gameplay_friendly_fire_empire_soldier_08",
				"pbw_gameplay_friendly_fire_empire_soldier_09"
			},
			sound_events_duration = {
				2.9984583854675,
				1.8351041078568,
				2.569854259491,
				2.0312917232513,
				3.9130625724792
			}
		},
		pbw_gameplay_friendly_fire_witch_hunter_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 3,
			database = "bright_wizard_game_play_crawl",
			sound_events_n = 3,
			category = "player_feedback",
			dialogue_animations_n = 3,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_angry",
				"face_angry",
				"face_angry"
			},
			localization_strings = {
				"pbw_gameplay_friendly_fire_witch_hunter_05",
				"pbw_gameplay_friendly_fire_witch_hunter_06",
				"pbw_gameplay_friendly_fire_witch_hunter_07"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_gameplay_friendly_fire_witch_hunter_05",
				"pbw_gameplay_friendly_fire_witch_hunter_06",
				"pbw_gameplay_friendly_fire_witch_hunter_07"
			},
			sound_events_duration = {
				2.424124956131,
				2.6000833511352,
				3.2588334083557
			}
		},
		pbw_gameplay_friendly_fire_wood_elf_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard_game_play_crawl",
			sound_events_n = 2,
			category = "player_feedback",
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
				[1] = "pbw_gameplay_friendly_fire_wood_elf_05",
				[2] = "pbw_gameplay_friendly_fire_wood_elf_06"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pbw_gameplay_friendly_fire_wood_elf_05",
				[2] = "pbw_gameplay_friendly_fire_wood_elf_06"
			},
			sound_events_duration = {
				[1] = 4.1787710189819,
				[2] = 4.3544998168945
			}
		},
		pbw_gameplay_healing_draught_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_game_play_crawl",
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
				"pbw_crawl_drunk_spotted_liquid_01",
				"pbw_crawl_drunk_spotted_liquid_02",
				"pbw_crawl_drunk_spotted_liquid_03",
				"pbw_crawl_drunk_spotted_liquid_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_crawl_drunk_spotted_liquid_01",
				"pbw_crawl_drunk_spotted_liquid_02",
				"pbw_crawl_drunk_spotted_liquid_03",
				"pbw_crawl_drunk_spotted_liquid_04"
			},
			sound_events_duration = {
				0.65104168653488,
				2.877729177475,
				4.5337080955505,
				3.5209584236145
			}
		},
		pbw_gameplay_healing_dwarf_ranger_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "bright_wizard_game_play_crawl",
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
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_gameplay_healing_dwarf_ranger_05",
				"pbw_gameplay_healing_dwarf_ranger_06",
				"pbw_gameplay_healing_dwarf_ranger_07",
				"pbw_gameplay_healing_dwarf_ranger_08",
				"pbw_gameplay_healing_dwarf_ranger_09",
				"pbw_gameplay_healing_dwarf_ranger_14"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_gameplay_healing_dwarf_ranger_05",
				"pbw_gameplay_healing_dwarf_ranger_06",
				"pbw_gameplay_healing_dwarf_ranger_07",
				"pbw_gameplay_healing_dwarf_ranger_08",
				"pbw_gameplay_healing_dwarf_ranger_09",
				"pbw_gameplay_healing_dwarf_ranger_14"
			},
			sound_events_duration = {
				1.5319792032242,
				1.2002083063126,
				1.9663749933243,
				2.4315416812897,
				2.7979791164398,
				1.4670833349228
			}
		},
		pbw_gameplay_hearing_a_Skaven_warpfire_thrower_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "bright_wizard_game_play_crawl",
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
				"face_contempt",
				"face_contempt",
				"face_contempt",
				"face_contempt"
			},
			localization_strings = {
				"pbw_crawl_drunk_incoming_threat_01",
				"pbw_crawl_drunk_incoming_threat_02",
				"pbw_crawl_drunk_incoming_threat_03",
				"pbw_crawl_drunk_incoming_threat_04",
				"pbw_crawl_pes_crawl_drunk_incoming_threat_new_a_01",
				"pbw_crawl_pes_crawl_drunk_incoming_threat_new_a_02",
				"pbw_crawl_pes_crawl_drunk_incoming_threat_new_a_03",
				"pbw_crawl_pes_crawl_drunk_incoming_threat_new_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_crawl_drunk_incoming_threat_01",
				"pbw_crawl_drunk_incoming_threat_02",
				"pbw_crawl_drunk_incoming_threat_03",
				"pbw_crawl_drunk_incoming_threat_04",
				"pbw_crawl_pes_crawl_drunk_incoming_threat_new_a_01",
				"pbw_crawl_pes_crawl_drunk_incoming_threat_new_a_02",
				"pbw_crawl_pes_crawl_drunk_incoming_threat_new_a_03",
				"pbw_crawl_pes_crawl_drunk_incoming_threat_new_a_04"
			},
			sound_events_duration = {
				3.3346667289734,
				2.220624923706,
				3.4197292327881,
				4.4190831184387,
				3.6089375019074,
				3.655791759491,
				3.4551875591278,
				4.857958316803
			}
		},
		pbw_gameplay_hearing_a_chaos_spawn_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 3,
			database = "bright_wizard_game_play_crawl",
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
				"face_fear",
				"face_fear"
			},
			localization_strings = {
				"pbw_crawl_monster_spotted_03_a_01",
				"pbw_crawl_monster_spotted_03_a_02",
				"pbw_crawl_monster_spotted_03_a_03"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_crawl_monster_spotted_03_a_01",
				"pbw_crawl_monster_spotted_03_a_02",
				"pbw_crawl_monster_spotted_03_a_03"
			},
			sound_events_duration = {
				2.4997084140778,
				2.7680416107178,
				1.8515000343323
			}
		},
		pbw_gameplay_hearing_a_chaos_wizard_wind_combat_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_game_play_crawl",
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
				"pbw_crawl_drunk_incoming_threat_01",
				"pbw_crawl_drunk_incoming_threat_02",
				"pbw_crawl_drunk_incoming_threat_03",
				"pbw_crawl_drunk_incoming_threat_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_crawl_drunk_incoming_threat_01",
				"pbw_crawl_drunk_incoming_threat_02",
				"pbw_crawl_drunk_incoming_threat_03",
				"pbw_crawl_drunk_incoming_threat_04"
			},
			sound_events_duration = {
				3.3346667289734,
				2.220624923706,
				3.4197292327881,
				4.4190831184387
			}
		},
		pbw_gameplay_hearing_a_chaos_wizard_wind_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_game_play_crawl",
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
				"pbw_crawl_drunk_incoming_threat_01",
				"pbw_crawl_drunk_incoming_threat_02",
				"pbw_crawl_drunk_incoming_threat_03",
				"pbw_crawl_drunk_incoming_threat_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_crawl_drunk_incoming_threat_01",
				"pbw_crawl_drunk_incoming_threat_02",
				"pbw_crawl_drunk_incoming_threat_03",
				"pbw_crawl_drunk_incoming_threat_04"
			},
			sound_events_duration = {
				3.3346667289734,
				2.220624923706,
				3.4197292327881,
				4.4190831184387
			}
		},
		pbw_gameplay_hearing_a_globadier_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "bright_wizard_game_play_crawl",
			sound_events_n = 8,
			category = "enemy_alerts",
			dialogue_animations_n = 8,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
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
				"face_contempt",
				"face_contempt",
				"face_contempt"
			},
			localization_strings = {
				"pbw_crawl_drunk_incoming_threat_01",
				"pbw_crawl_drunk_incoming_threat_02",
				"pbw_crawl_drunk_incoming_threat_03",
				"pbw_crawl_drunk_incoming_threat_04",
				"pbw_crawl_pes_crawl_drunk_incoming_threat_new_a_01",
				"pbw_crawl_pes_crawl_drunk_incoming_threat_new_a_02",
				"pbw_crawl_pes_crawl_drunk_incoming_threat_new_a_03",
				"pbw_crawl_pes_crawl_drunk_incoming_threat_new_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_crawl_drunk_incoming_threat_01",
				"pbw_crawl_drunk_incoming_threat_02",
				"pbw_crawl_drunk_incoming_threat_03",
				"pbw_crawl_drunk_incoming_threat_04",
				"pbw_crawl_pes_crawl_drunk_incoming_threat_new_a_01",
				"pbw_crawl_pes_crawl_drunk_incoming_threat_new_a_02",
				"pbw_crawl_pes_crawl_drunk_incoming_threat_new_a_03",
				"pbw_crawl_pes_crawl_drunk_incoming_threat_new_a_04"
			},
			sound_events_duration = {
				3.3346667289734,
				2.220624923706,
				3.4197292327881,
				4.4190831184387,
				3.6089375019074,
				3.655791759491,
				3.4551875591278,
				4.857958316803
			}
		},
		pbw_gameplay_hearing_a_gutter_runner_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "bright_wizard_game_play_crawl",
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
				"pbw_crawl_drunk_incoming_threat_01",
				"pbw_crawl_drunk_incoming_threat_02",
				"pbw_crawl_drunk_incoming_threat_03",
				"pbw_crawl_drunk_incoming_threat_04",
				"pbw_crawl_pes_crawl_drunk_incoming_threat_new_a_01",
				"pbw_crawl_pes_crawl_drunk_incoming_threat_new_a_02",
				"pbw_crawl_pes_crawl_drunk_incoming_threat_new_a_03",
				"pbw_crawl_pes_crawl_drunk_incoming_threat_new_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_crawl_drunk_incoming_threat_01",
				"pbw_crawl_drunk_incoming_threat_02",
				"pbw_crawl_drunk_incoming_threat_03",
				"pbw_crawl_drunk_incoming_threat_04",
				"pbw_crawl_pes_crawl_drunk_incoming_threat_new_a_01",
				"pbw_crawl_pes_crawl_drunk_incoming_threat_new_a_02",
				"pbw_crawl_pes_crawl_drunk_incoming_threat_new_a_03",
				"pbw_crawl_pes_crawl_drunk_incoming_threat_new_a_04"
			},
			sound_events_duration = {
				3.3346667289734,
				2.220624923706,
				3.4197292327881,
				4.4190831184387,
				3.6089375019074,
				3.655791759491,
				3.4551875591278,
				4.857958316803
			}
		},
		pbw_gameplay_hearing_a_skaven_patrol_stormvermin_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_game_play_crawl",
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
				"pbw_crawl_drunk_incoming_threat_01",
				"pbw_crawl_drunk_incoming_threat_02",
				"pbw_crawl_drunk_incoming_threat_03",
				"pbw_crawl_drunk_incoming_threat_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_crawl_drunk_incoming_threat_01",
				"pbw_crawl_drunk_incoming_threat_02",
				"pbw_crawl_drunk_incoming_threat_03",
				"pbw_crawl_drunk_incoming_threat_04"
			},
			sound_events_duration = {
				3.3346667289734,
				2.220624923706,
				3.4197292327881,
				4.4190831184387
			}
		},
		pbw_gameplay_hearing_a_skaven_rat_ogre_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 3,
			database = "bright_wizard_game_play_crawl",
			sound_events_n = 3,
			category = "enemy_alerts_high",
			dialogue_animations_n = 3,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear"
			},
			localization_strings = {
				"pbw_crawl_monster_spotted_03_a_01",
				"pbw_crawl_monster_spotted_03_a_02",
				"pbw_crawl_monster_spotted_03_a_03"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_crawl_monster_spotted_03_a_01",
				"pbw_crawl_monster_spotted_03_a_02",
				"pbw_crawl_monster_spotted_03_a_03"
			},
			sound_events_duration = {
				2.4997084140778,
				2.7680416107178,
				1.8515000343323
			}
		},
		pbw_gameplay_hearing_a_skaven_ratling_gun_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "bright_wizard_game_play_crawl",
			sound_events_n = 8,
			category = "enemy_alerts",
			dialogue_animations_n = 8,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
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
				"face_contempt",
				"face_contempt",
				"face_contempt",
				"face_contempt"
			},
			localization_strings = {
				"pbw_crawl_drunk_incoming_threat_01",
				"pbw_crawl_drunk_incoming_threat_02",
				"pbw_crawl_drunk_incoming_threat_03",
				"pbw_crawl_drunk_incoming_threat_04",
				"pbw_crawl_pes_crawl_drunk_incoming_threat_new_a_01",
				"pbw_crawl_pes_crawl_drunk_incoming_threat_new_a_02",
				"pbw_crawl_pes_crawl_drunk_incoming_threat_new_a_03",
				"pbw_crawl_pes_crawl_drunk_incoming_threat_new_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_crawl_drunk_incoming_threat_01",
				"pbw_crawl_drunk_incoming_threat_02",
				"pbw_crawl_drunk_incoming_threat_03",
				"pbw_crawl_drunk_incoming_threat_04",
				"pbw_crawl_pes_crawl_drunk_incoming_threat_new_a_01",
				"pbw_crawl_pes_crawl_drunk_incoming_threat_new_a_02",
				"pbw_crawl_pes_crawl_drunk_incoming_threat_new_a_03",
				"pbw_crawl_pes_crawl_drunk_incoming_threat_new_a_04"
			},
			sound_events_duration = {
				3.3346667289734,
				2.220624923706,
				3.4197292327881,
				4.4190831184387,
				3.6089375019074,
				3.655791759491,
				3.4551875591278,
				4.857958316803
			}
		},
		pbw_gameplay_hearing_a_stormfiend_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 3,
			database = "bright_wizard_game_play_crawl",
			sound_events_n = 3,
			category = "enemy_alerts_high",
			dialogue_animations_n = 3,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear"
			},
			localization_strings = {
				"pbw_crawl_monster_spotted_03_a_01",
				"pbw_crawl_monster_spotted_03_a_02",
				"pbw_crawl_monster_spotted_03_a_03"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_crawl_monster_spotted_03_a_01",
				"pbw_crawl_monster_spotted_03_a_02",
				"pbw_crawl_monster_spotted_03_a_03"
			},
			sound_events_duration = {
				2.4997084140778,
				2.7680416107178,
				1.8515000343323
			}
		},
		pbw_gameplay_hearing_a_troll_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 3,
			database = "bright_wizard_game_play_crawl",
			sound_events_n = 3,
			category = "enemy_alerts_high",
			dialogue_animations_n = 3,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear"
			},
			localization_strings = {
				"pbw_crawl_monster_spotted_03_a_01",
				"pbw_crawl_monster_spotted_03_a_02",
				"pbw_crawl_monster_spotted_03_a_03"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_crawl_monster_spotted_03_a_01",
				"pbw_crawl_monster_spotted_03_a_02",
				"pbw_crawl_monster_spotted_03_a_03"
			},
			sound_events_duration = {
				2.4997084140778,
				2.7680416107178,
				1.8515000343323
			}
		},
		pbw_gameplay_hears_incoming_horde_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_game_play_crawl",
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
				"pbw_crawl_horde_incoming_a_01",
				"pbw_crawl_horde_incoming_a_02",
				"pbw_crawl_horde_incoming_a_03",
				"pbw_crawl_horde_incoming_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_crawl_horde_incoming_a_01",
				"pbw_crawl_horde_incoming_a_02",
				"pbw_crawl_horde_incoming_a_03",
				"pbw_crawl_horde_incoming_a_04"
			},
			sound_events_duration = {
				2.7703750133514,
				2.8334167003632,
				3.8762500286102,
				5.6347498893738
			}
		},
		pbw_gameplay_hears_incoming_horde_no_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "bright_wizard_game_play_crawl",
			sound_events_n = 6,
			category = "enemy_alerts_high",
			dialogue_animations_n = 6,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_shout",
				"dialogue_talk",
				"dialogue_shout"
			},
			face_animations = {
				"face_contempt",
				"face_smug",
				"face_smug",
				"face_contempt",
				"face_contempt",
				"face_contempt"
			},
			localization_strings = {
				"pbw_gameplay_hears_incoming_horde_11",
				"pbw_gameplay_hears_incoming_horde_12",
				"pbw_gameplay_hears_incoming_horde_13",
				"pbw_gameplay_hears_incoming_horde_14",
				"pbw_gameplay_hears_incoming_horde_15",
				"pbw_gameplay_hears_incoming_horde_16"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_gameplay_hears_incoming_horde_11",
				"pbw_gameplay_hears_incoming_horde_12",
				"pbw_gameplay_hears_incoming_horde_13",
				"pbw_gameplay_hears_incoming_horde_14",
				"pbw_gameplay_hears_incoming_horde_15",
				"pbw_gameplay_hears_incoming_horde_16"
			},
			sound_events_duration = {
				1.4198541641235,
				3.3412499427795,
				2.4601874351502,
				2.9245624542236,
				4.6996250152588,
				3.4326040744781
			}
		},
		pbw_gameplay_helped_by_dwarf_ranger_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_game_play_crawl",
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
				"pbw_gameplay_helped_by_dwarf_ranger_03",
				"pbw_gameplay_helped_by_dwarf_ranger_05",
				"pbw_gameplay_helped_by_dwarf_ranger_06",
				"pbw_gameplay_helped_by_dwarf_ranger_07"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_gameplay_helped_by_dwarf_ranger_03",
				"pbw_gameplay_helped_by_dwarf_ranger_05",
				"pbw_gameplay_helped_by_dwarf_ranger_06",
				"pbw_gameplay_helped_by_dwarf_ranger_07"
			},
			sound_events_duration = {
				1.1928124427795,
				2.1330208778381,
				1.4213750362396,
				2.2615833282471
			}
		},
		pbw_gameplay_helped_by_empire_soldier_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_game_play_crawl",
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
				"pbw_gameplay_helped_by_empire_soldier_05",
				"pbw_gameplay_helped_by_empire_soldier_06",
				"pbw_gameplay_helped_by_empire_soldier_07",
				"pbw_gameplay_healing_empire_soldier_09"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_gameplay_helped_by_empire_soldier_05",
				"pbw_gameplay_helped_by_empire_soldier_06",
				"pbw_gameplay_helped_by_empire_soldier_07",
				"pbw_gameplay_healing_empire_soldier_09"
			},
			sound_events_duration = {
				1.3056458234787,
				1.4301458597183,
				1.8839374780655,
				2.4242084026337
			}
		},
		pbw_gameplay_helped_by_witch_hunter_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 3,
			database = "bright_wizard_game_play_crawl",
			sound_events_n = 3,
			category = "player_feedback",
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
				"pbw_gameplay_helped_by_witch_hunter_05",
				"pbw_gameplay_helped_by_witch_hunter_06",
				"pbw_gameplay_helped_by_witch_hunter_07"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_gameplay_helped_by_witch_hunter_05",
				"pbw_gameplay_helped_by_witch_hunter_06",
				"pbw_gameplay_helped_by_witch_hunter_07"
			},
			sound_events_duration = {
				1.93850004673,
				2.2696459293366,
				3.5965209007263
			}
		},
		pbw_gameplay_helped_by_wood_elf_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 3,
			database = "bright_wizard_game_play_crawl",
			sound_events_n = 3,
			category = "player_feedback",
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
				"pbw_gameplay_helped_by_wood_elf_05",
				"pbw_gameplay_helped_by_wood_elf_06",
				"pbw_gameplay_helped_by_wood_elf_07"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_gameplay_helped_by_wood_elf_05",
				"pbw_gameplay_helped_by_wood_elf_06",
				"pbw_gameplay_helped_by_wood_elf_07"
			},
			sound_events_duration = {
				1.2043333053589,
				2.0004999637604,
				2.3414583206177
			}
		},
		pbw_gameplay_incoming_skaven_rat_ogre_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_game_play_crawl",
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
				"pbw_crawl_drunk_incoming_threat_01",
				"pbw_crawl_drunk_incoming_threat_02",
				"pbw_crawl_drunk_incoming_threat_03",
				"pbw_crawl_drunk_incoming_threat_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_crawl_drunk_incoming_threat_01",
				"pbw_crawl_drunk_incoming_threat_02",
				"pbw_crawl_drunk_incoming_threat_03",
				"pbw_crawl_drunk_incoming_threat_04"
			},
			sound_events_duration = {
				3.3346667289734,
				2.220624923706,
				3.4197292327881,
				4.4190831184387
			}
		},
		pbw_gameplay_killing_a_chaos_warrior_no_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "bright_wizard_game_play_crawl",
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
				"pbw_gameplay_killing_a_chaos_warrior_01",
				"pbw_gameplay_killing_a_chaos_warrior_02",
				"pbw_gameplay_killing_a_chaos_warrior_03",
				"pbw_gameplay_killing_a_chaos_warrior_04",
				"pbw_gameplay_killing_a_chaos_warrior_05",
				"pbw_gameplay_killing_a_chaos_warrior_06",
				"pbw_gameplay_killing_a_chaos_warrior_07",
				"pbw_gameplay_killing_a_chaos_warrior_08"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_gameplay_killing_a_chaos_warrior_01",
				"pbw_gameplay_killing_a_chaos_warrior_02",
				"pbw_gameplay_killing_a_chaos_warrior_03",
				"pbw_gameplay_killing_a_chaos_warrior_04",
				"pbw_gameplay_killing_a_chaos_warrior_05",
				"pbw_gameplay_killing_a_chaos_warrior_06",
				"pbw_gameplay_killing_a_chaos_warrior_07",
				"pbw_gameplay_killing_a_chaos_warrior_08"
			},
			sound_events_duration = {
				3.0988750457764,
				2.1317291259766,
				2.5179166793823,
				2.3296248912811,
				2.3906042575836,
				3.5757708549499,
				4.008291721344,
				2.7562708854675
			}
		},
		pbw_gameplay_killing_a_chaos_wizard_wind_no_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "bright_wizard_game_play_crawl",
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
				"pbw_gameplay_killing_a_chaos_wizard_wind_01",
				"pbw_gameplay_killing_a_chaos_wizard_wind_02",
				"pbw_gameplay_killing_a_chaos_wizard_wind_03",
				"pbw_gameplay_killing_a_chaos_wizard_wind_04",
				"pbw_gameplay_killing_a_chaos_wizard_wind_05",
				"pbw_gameplay_killing_a_chaos_wizard_wind_06"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_gameplay_killing_a_chaos_wizard_wind_01",
				"pbw_gameplay_killing_a_chaos_wizard_wind_02",
				"pbw_gameplay_killing_a_chaos_wizard_wind_03",
				"pbw_gameplay_killing_a_chaos_wizard_wind_04",
				"pbw_gameplay_killing_a_chaos_wizard_wind_05",
				"pbw_gameplay_killing_a_chaos_wizard_wind_06"
			},
			sound_events_duration = {
				3.7983748912811,
				1.8550624847412,
				2.0462915897369,
				3.3470833301544,
				2.0906040668488,
				2.0048542022705
			}
		},
		pbw_gameplay_killing_a_skaven_warpfire_thrower_no_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "bright_wizard_game_play_crawl",
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
				"pbw_gameplay_killing_a_Skaven_warpfire_thrower_01",
				"pbw_gameplay_killing_a_Skaven_warpfire_thrower_02",
				"pbw_gameplay_killing_a_Skaven_warpfire_thrower_03",
				"pbw_gameplay_killing_a_Skaven_warpfire_thrower_04",
				"pbw_gameplay_killing_a_Skaven_warpfire_thrower_05",
				"pbw_gameplay_killing_a_Skaven_warpfire_thrower_06",
				"pbw_gameplay_killing_a_Skaven_warpfire_thrower_07",
				"pbw_gameplay_killing_a_Skaven_warpfire_thrower_08"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_gameplay_killing_a_Skaven_warpfire_thrower_01",
				"pbw_gameplay_killing_a_Skaven_warpfire_thrower_02",
				"pbw_gameplay_killing_a_Skaven_warpfire_thrower_03",
				"pbw_gameplay_killing_a_Skaven_warpfire_thrower_04",
				"pbw_gameplay_killing_a_Skaven_warpfire_thrower_05",
				"pbw_gameplay_killing_a_Skaven_warpfire_thrower_06",
				"pbw_gameplay_killing_a_Skaven_warpfire_thrower_07",
				"pbw_gameplay_killing_a_Skaven_warpfire_thrower_08"
			},
			sound_events_duration = {
				2.0427916049957,
				4.0211043357849,
				1.5100833177566,
				3.0448124408722,
				4.1617498397827,
				5.5103335380554,
				1.9893333911896,
				5.0868124961853
			}
		},
		pbw_gameplay_killing_a_stormfiend_no_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "bright_wizard_game_play_crawl",
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
				"pbw_gameplay_killing_a_stormfiend_01",
				"pbw_gameplay_killing_a_stormfiend_02",
				"pbw_gameplay_killing_a_stormfiend_03",
				"pbw_gameplay_killing_a_stormfiend_04",
				"pbw_gameplay_killing_a_stormfiend_05",
				"pbw_gameplay_killing_a_stormfiend_06",
				"pbw_gameplay_killing_a_stormfiend_07",
				"pbw_gameplay_killing_a_stormfiend_08"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_gameplay_killing_a_stormfiend_01",
				"pbw_gameplay_killing_a_stormfiend_02",
				"pbw_gameplay_killing_a_stormfiend_03",
				"pbw_gameplay_killing_a_stormfiend_04",
				"pbw_gameplay_killing_a_stormfiend_05",
				"pbw_gameplay_killing_a_stormfiend_06",
				"pbw_gameplay_killing_a_stormfiend_07",
				"pbw_gameplay_killing_a_stormfiend_08"
			},
			sound_events_duration = {
				2.228354215622,
				3.391104221344,
				2.8451249599457,
				3.7110834121704,
				2.3971457481384,
				2.5882709026337,
				4.0003957748413,
				3.5962707996368
			}
		},
		pbw_gameplay_knocked_down_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_game_play_crawl",
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
				"pbw_crawl_drunk_knocked_down_01",
				"pbw_crawl_drunk_knocked_down_02",
				"pbw_crawl_drunk_knocked_down_03",
				"pbw_crawl_drunk_knocked_down_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_crawl_drunk_knocked_down_01",
				"pbw_crawl_drunk_knocked_down_02",
				"pbw_crawl_drunk_knocked_down_03",
				"pbw_crawl_drunk_knocked_down_04"
			},
			sound_events_duration = {
				4.3251667022705,
				2.5115416049957,
				4.0078125,
				3.9600417613983
			}
		},
		pbw_gameplay_low_on_health_no_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 3,
			database = "bright_wizard_game_play_crawl",
			sound_events_n = 3,
			category = "player_feedback",
			dialogue_animations_n = 3,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_exhausted",
				"face_exhausted",
				"face_exhausted"
			},
			localization_strings = {
				"pbw_gameplay_low_on_health_11",
				"pbw_gameplay_low_on_health_13",
				"pbw_gameplay_low_on_health_14"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_gameplay_low_on_health_11",
				"pbw_gameplay_low_on_health_13",
				"pbw_gameplay_low_on_health_14"
			},
			sound_events_duration = {
				1.79787504673,
				1.8741562366486,
				2.2006042003632
			}
		},
		pbw_gameplay_player_pounced_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_game_play_crawl",
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
				"pbw_crawl_drunk_knocked_down_01",
				"pbw_crawl_drunk_knocked_down_02",
				"pbw_crawl_drunk_knocked_down_03",
				"pbw_crawl_drunk_knocked_down_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_crawl_drunk_knocked_down_01",
				"pbw_crawl_drunk_knocked_down_02",
				"pbw_crawl_drunk_knocked_down_03",
				"pbw_crawl_drunk_knocked_down_04"
			},
			sound_events_duration = {
				4.3251667022705,
				2.5115416049957,
				4.0078125,
				3.9600417613983
			}
		},
		pbw_gameplay_seeing_a_Skaven_warpfire_thrower_no_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "bright_wizard_game_play_crawl",
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
				"pbw_gameplay_seeing_a_Skaven_warpfire_thrower_01",
				"pbw_gameplay_seeing_a_Skaven_warpfire_thrower_02",
				"pbw_gameplay_seeing_a_Skaven_warpfire_thrower_03",
				"pbw_gameplay_seeing_a_Skaven_warpfire_thrower_04",
				"pbw_gameplay_seeing_a_Skaven_warpfire_thrower_05",
				"pbw_gameplay_seeing_a_Skaven_warpfire_thrower_06",
				"pbw_gameplay_seeing_a_Skaven_warpfire_thrower_07",
				"pbw_gameplay_seeing_a_Skaven_warpfire_thrower_08"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_gameplay_seeing_a_Skaven_warpfire_thrower_01",
				"pbw_gameplay_seeing_a_Skaven_warpfire_thrower_02",
				"pbw_gameplay_seeing_a_Skaven_warpfire_thrower_03",
				"pbw_gameplay_seeing_a_Skaven_warpfire_thrower_04",
				"pbw_gameplay_seeing_a_Skaven_warpfire_thrower_05",
				"pbw_gameplay_seeing_a_Skaven_warpfire_thrower_06",
				"pbw_gameplay_seeing_a_Skaven_warpfire_thrower_07",
				"pbw_gameplay_seeing_a_Skaven_warpfire_thrower_08"
			},
			sound_events_duration = {
				3.597062587738,
				2.8307292461395,
				2.0537707805634,
				3.0204999446869,
				5.4553127288818,
				3.6602292060852,
				4.3384790420532,
				3.9912083148956
			}
		},
		pbw_gameplay_seeing_a_chaos_spawn_no_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "bright_wizard_game_play_crawl",
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
				"pbw_gameplay_seeing_a_chaos_spawn_01",
				"pbw_gameplay_seeing_a_chaos_spawn_02",
				"pbw_gameplay_seeing_a_chaos_spawn_03",
				"pbw_gameplay_seeing_a_chaos_spawn_04",
				"pbw_gameplay_seeing_a_chaos_spawn_05",
				"pbw_gameplay_seeing_a_chaos_spawn_06",
				"pbw_gameplay_seeing_a_chaos_spawn_07",
				"pbw_gameplay_seeing_a_chaos_spawn_08"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_gameplay_seeing_a_chaos_spawn_01",
				"pbw_gameplay_seeing_a_chaos_spawn_02",
				"pbw_gameplay_seeing_a_chaos_spawn_03",
				"pbw_gameplay_seeing_a_chaos_spawn_04",
				"pbw_gameplay_seeing_a_chaos_spawn_05",
				"pbw_gameplay_seeing_a_chaos_spawn_06",
				"pbw_gameplay_seeing_a_chaos_spawn_07",
				"pbw_gameplay_seeing_a_chaos_spawn_08"
			},
			sound_events_duration = {
				4.5718126296997,
				2.5718123912811,
				4.3003540039063,
				4.5713334083557,
				1.7646666765213,
				2.6483750343323,
				2.0226459503174,
				3.8768124580383
			}
		},
		pbw_gameplay_seeing_a_chaos_warrior_no_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "bright_wizard_game_play_crawl",
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
				"pbw_gameplay_seeing_a_chaos_warrior_01",
				"pbw_gameplay_seeing_a_chaos_warrior_02",
				"pbw_gameplay_seeing_a_chaos_warrior_03",
				"pbw_gameplay_seeing_a_chaos_warrior_04",
				"pbw_gameplay_seeing_a_chaos_warrior_05",
				"pbw_gameplay_seeing_a_chaos_warrior_06",
				"pbw_gameplay_seeing_a_chaos_warrior_07",
				"pbw_gameplay_seeing_a_chaos_warrior_08"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_gameplay_seeing_a_chaos_warrior_01",
				"pbw_gameplay_seeing_a_chaos_warrior_02",
				"pbw_gameplay_seeing_a_chaos_warrior_03",
				"pbw_gameplay_seeing_a_chaos_warrior_04",
				"pbw_gameplay_seeing_a_chaos_warrior_05",
				"pbw_gameplay_seeing_a_chaos_warrior_06",
				"pbw_gameplay_seeing_a_chaos_warrior_07",
				"pbw_gameplay_seeing_a_chaos_warrior_08"
			},
			sound_events_duration = {
				3.9117708206177,
				3.3820416927338,
				1.471895813942,
				3.8545417785645,
				4.156750202179,
				3.0422291755676,
				4.3150730133057,
				3.5143542289734
			}
		},
		pbw_gameplay_seeing_a_chaos_wizard_wind_no_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_game_play_crawl",
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
				"pbw_gameplay_seeing_a_chaos_wizard_wind_01",
				"pbw_gameplay_seeing_a_chaos_wizard_wind_02",
				"pbw_gameplay_seeing_a_chaos_wizard_wind_03",
				"pbw_gameplay_seeing_a_chaos_wizard_wind_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_gameplay_seeing_a_chaos_wizard_wind_01",
				"pbw_gameplay_seeing_a_chaos_wizard_wind_02",
				"pbw_gameplay_seeing_a_chaos_wizard_wind_03",
				"pbw_gameplay_seeing_a_chaos_wizard_wind_04"
			},
			sound_events_duration = {
				4.8703956604004,
				3.974312543869,
				3.6810417175293,
				3.7641041278839
			}
		},
		pbw_gameplay_seeing_a_pm_no_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "bright_wizard_game_play_crawl",
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
				"pbw_gameplay_seeing_a_plague_monk_01",
				"pbw_gameplay_seeing_a_plague_monk_02",
				"pbw_gameplay_seeing_a_plague_monk_03",
				"pbw_gameplay_seeing_a_plague_monk_04",
				"pbw_gameplay_seeing_a_plague_monk_05",
				"pbw_gameplay_seeing_a_plague_monk_06",
				"pbw_gameplay_seeing_a_plague_monk_07",
				"pbw_gameplay_seeing_a_plague_monk_08"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_gameplay_seeing_a_plague_monk_01",
				"pbw_gameplay_seeing_a_plague_monk_02",
				"pbw_gameplay_seeing_a_plague_monk_03",
				"pbw_gameplay_seeing_a_plague_monk_04",
				"pbw_gameplay_seeing_a_plague_monk_05",
				"pbw_gameplay_seeing_a_plague_monk_06",
				"pbw_gameplay_seeing_a_plague_monk_07",
				"pbw_gameplay_seeing_a_plague_monk_08"
			},
			sound_events_duration = {
				3.1865208148956,
				5.2673749923706,
				4.4918751716614,
				5.045437335968,
				2.1971249580383,
				2.5055208206177,
				3.7887291908264,
				2.8049166202545
			}
		},
		pbw_gameplay_seeing_a_scr_no_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "bright_wizard_game_play_crawl",
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
				"pbw_gameplay_seeing_a_shield_clanrat_01",
				"pbw_gameplay_seeing_a_shield_clanrat_02",
				"pbw_gameplay_seeing_a_shield_clanrat_03",
				"pbw_gameplay_seeing_a_shield_clanrat_04",
				"pbw_gameplay_seeing_a_shield_clanrat_05",
				"pbw_gameplay_seeing_a_shield_clanrat_06",
				"pbw_gameplay_seeing_a_shield_clanrat_07",
				"pbw_gameplay_seeing_a_shield_clanrat_08"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_gameplay_seeing_a_shield_clanrat_01",
				"pbw_gameplay_seeing_a_shield_clanrat_02",
				"pbw_gameplay_seeing_a_shield_clanrat_03",
				"pbw_gameplay_seeing_a_shield_clanrat_04",
				"pbw_gameplay_seeing_a_shield_clanrat_05",
				"pbw_gameplay_seeing_a_shield_clanrat_06",
				"pbw_gameplay_seeing_a_shield_clanrat_07",
				"pbw_gameplay_seeing_a_shield_clanrat_08"
			},
			sound_events_duration = {
				1.1306041479111,
				1.3849166631699,
				2.4013750553131,
				1.8164583444595,
				2.0038332939148,
				2.9868750572205,
				3.5969791412353,
				1.2484791278839
			}
		},
		pbw_gameplay_seeing_a_shield_stormvermin_no_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "bright_wizard_game_play_crawl",
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
				"pbw_gameplay_seeing_a_shield_stormvermin_01",
				"pbw_gameplay_seeing_a_shield_stormvermin_02",
				"pbw_gameplay_seeing_a_shield_stormvermin_03",
				"pbw_gameplay_seeing_a_shield_stormvermin_04",
				"pbw_gameplay_seeing_a_shield_stormvermin_05",
				"pbw_gameplay_seeing_a_shield_stormvermin_06",
				"pbw_gameplay_seeing_a_shield_stormvermin_07",
				"pbw_gameplay_seeing_a_shield_stormvermin_08"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_gameplay_seeing_a_shield_stormvermin_01",
				"pbw_gameplay_seeing_a_shield_stormvermin_02",
				"pbw_gameplay_seeing_a_shield_stormvermin_03",
				"pbw_gameplay_seeing_a_shield_stormvermin_04",
				"pbw_gameplay_seeing_a_shield_stormvermin_05",
				"pbw_gameplay_seeing_a_shield_stormvermin_06",
				"pbw_gameplay_seeing_a_shield_stormvermin_07",
				"pbw_gameplay_seeing_a_shield_stormvermin_08"
			},
			sound_events_duration = {
				1.7303333282471,
				1.7015000581741,
				1.3197083473206,
				1.672770857811,
				2.023916721344,
				3.4452707767487,
				2.9876041412353,
				2.2380623817444
			}
		},
		pbw_gameplay_seeing_a_stormfiend_no_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "bright_wizard_game_play_crawl",
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
				"pbw_gameplay_seeing_a_stormfiend_01",
				"pbw_gameplay_seeing_a_stormfiend_02",
				"pbw_gameplay_seeing_a_stormfiend_03",
				"pbw_gameplay_seeing_a_stormfiend_04",
				"pbw_gameplay_seeing_a_stormfiend_05",
				"pbw_gameplay_seeing_a_stormfiend_06",
				"pbw_gameplay_seeing_a_stormfiend_07",
				"pbw_gameplay_seeing_a_stormfiend_08"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_gameplay_seeing_a_stormfiend_01",
				"pbw_gameplay_seeing_a_stormfiend_02",
				"pbw_gameplay_seeing_a_stormfiend_03",
				"pbw_gameplay_seeing_a_stormfiend_04",
				"pbw_gameplay_seeing_a_stormfiend_05",
				"pbw_gameplay_seeing_a_stormfiend_06",
				"pbw_gameplay_seeing_a_stormfiend_07",
				"pbw_gameplay_seeing_a_stormfiend_08"
			},
			sound_events_duration = {
				3.8489582538605,
				3.3945000171661,
				2.8553750514984,
				3.3263957500458,
				3.6858124732971,
				3.4801666736603,
				3.0999584197998,
				3.0158958435059
			}
		},
		pbw_gameplay_seeing_a_troll_no_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "bright_wizard_game_play_crawl",
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
				"pbw_gameplay_seeing_a_troll_01",
				"pbw_gameplay_seeing_a_troll_02",
				"pbw_gameplay_seeing_a_troll_03",
				"pbw_gameplay_seeing_a_troll_04",
				"pbw_gameplay_seeing_a_troll_05",
				"pbw_gameplay_seeing_a_troll_06",
				"pbw_gameplay_seeing_a_troll_07",
				"pbw_gameplay_seeing_a_troll_08"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_gameplay_seeing_a_troll_01",
				"pbw_gameplay_seeing_a_troll_02",
				"pbw_gameplay_seeing_a_troll_03",
				"pbw_gameplay_seeing_a_troll_04",
				"pbw_gameplay_seeing_a_troll_05",
				"pbw_gameplay_seeing_a_troll_06",
				"pbw_gameplay_seeing_a_troll_07",
				"pbw_gameplay_seeing_a_troll_08"
			},
			sound_events_duration = {
				3.5281250476837,
				3.006500005722,
				2.0891873836517,
				3.1313126087189,
				2.6326875686645,
				3.6568124294281,
				3.3017292022705,
				2.5472083091736
			}
		},
		pbw_gameplay_self_heal_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "bright_wizard_game_play_crawl",
			sound_events_n = 10,
			category = "player_feedback",
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
				"face_exhausted",
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
				"pbw_gameplay_self_heal_06",
				"pbw_gameplay_self_heal_07",
				"pbw_gameplay_self_heal_08",
				"pbw_gameplay_self_heal_09",
				"pbw_gameplay_self_heal_10",
				"pbw_gameplay_self_heal_11",
				"pbw_gameplay_self_heal_12",
				"pbw_gameplay_self_heal_13",
				"pbw_gameplay_self_heal_14",
				"pbw_gameplay_self_heal_15"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_gameplay_self_heal_06",
				"pbw_gameplay_self_heal_07",
				"pbw_gameplay_self_heal_08",
				"pbw_gameplay_self_heal_09",
				"pbw_gameplay_self_heal_10",
				"pbw_gameplay_self_heal_11",
				"pbw_gameplay_self_heal_12",
				"pbw_gameplay_self_heal_13",
				"pbw_gameplay_self_heal_14",
				"pbw_gameplay_self_heal_15"
			},
			sound_events_duration = {
				1.0158958435059,
				2.9664583206177,
				1.9679374694824,
				2.9622082710266,
				3.7604374885559,
				3.3597707748413,
				2.89027094841,
				3.3087084293366,
				3.2199790477753,
				3.3332290649414
			}
		},
		pbw_gameplay_spots_ammo_no_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "bright_wizard_game_play_crawl",
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
				"pbw_gameplay_spots_ammo_06",
				"pbw_gameplay_spots_ammo_07",
				"pbw_gameplay_spots_ammo_08",
				"pbw_gameplay_spots_ammo_09",
				"pbw_gameplay_spots_ammo_10",
				"pbw_gameplay_spots_ammo_11",
				"pbw_gameplay_spots_ammo_12",
				"pbw_gameplay_spots_ammo_13"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_gameplay_spots_ammo_06",
				"pbw_gameplay_spots_ammo_07",
				"pbw_gameplay_spots_ammo_08",
				"pbw_gameplay_spots_ammo_09",
				"pbw_gameplay_spots_ammo_10",
				"pbw_gameplay_spots_ammo_11",
				"pbw_gameplay_spots_ammo_12",
				"pbw_gameplay_spots_ammo_13"
			},
			sound_events_duration = {
				1.8527708053589,
				1.3273750543594,
				2.4029583930969,
				1.4858125448227,
				1.9462916851044,
				1.5837500095367,
				2.2690207958221,
				2.5338542461395
			}
		},
		pbw_gameplay_spots_bomb_no_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 13,
			database = "bright_wizard_game_play_crawl",
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
				"pbw_gameplay_spots_bomb_06",
				"pbw_gameplay_spots_bomb_07",
				"pbw_gameplay_spots_bomb_08",
				"pbw_gameplay_spots_bomb_09",
				"pbw_gameplay_spots_bomb_10",
				"pbw_gameplay_spots_bomb_11",
				"pbw_gameplay_spots_bomb_12",
				"pbw_gameplay_spots_bomb_13",
				"pbw_gameplay_spots_bomb_14",
				"pbw_gameplay_spots_bomb_15",
				"pbw_gameplay_spots_bomb_16",
				"pbw_gameplay_spots_bomb_17",
				"pbw_gameplay_spots_bomb_18"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_gameplay_spots_bomb_06",
				"pbw_gameplay_spots_bomb_07",
				"pbw_gameplay_spots_bomb_08",
				"pbw_gameplay_spots_bomb_09",
				"pbw_gameplay_spots_bomb_10",
				"pbw_gameplay_spots_bomb_11",
				"pbw_gameplay_spots_bomb_12",
				"pbw_gameplay_spots_bomb_13",
				"pbw_gameplay_spots_bomb_14",
				"pbw_gameplay_spots_bomb_15",
				"pbw_gameplay_spots_bomb_16",
				"pbw_gameplay_spots_bomb_17",
				"pbw_gameplay_spots_bomb_18"
			},
			sound_events_duration = {
				1.8770833015442,
				2.6650416851044,
				2.5662083625794,
				1.6423541307449,
				1.3711458444595,
				1.1496249437332,
				2.642395734787,
				1.3044375181198,
				0.91660416126251,
				0.89635413885117,
				0.96643751859665,
				1.6388332843781,
				1.248687505722
			}
		},
		pbw_gameplay_spots_health_no_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 11,
			database = "bright_wizard_game_play_crawl",
			sound_events_n = 11,
			category = "seen_items",
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
				"pbw_gameplay_spots_health_06",
				"pbw_gameplay_spots_health_07",
				"pbw_gameplay_spots_health_08",
				"pbw_gameplay_spots_health_09",
				"pbw_gameplay_spots_health_10",
				"pbw_gameplay_spots_health_11",
				"pbw_gameplay_spots_health_12",
				"pbw_gameplay_spots_health_13",
				"pbw_gameplay_spots_health_14",
				"pbw_gameplay_spots_health_15",
				"pbw_gameplay_spots_health_16"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_gameplay_spots_health_06",
				"pbw_gameplay_spots_health_07",
				"pbw_gameplay_spots_health_08",
				"pbw_gameplay_spots_health_09",
				"pbw_gameplay_spots_health_10",
				"pbw_gameplay_spots_health_11",
				"pbw_gameplay_spots_health_12",
				"pbw_gameplay_spots_health_13",
				"pbw_gameplay_spots_health_14",
				"pbw_gameplay_spots_health_15",
				"pbw_gameplay_spots_health_16"
			},
			sound_events_duration = {
				1.6213958263397,
				1.730708360672,
				2.8236875534058,
				2.3509376049042,
				1.5527917146683,
				1.104333281517,
				1.5285832881927,
				1.5772082805634,
				1.4914166927338,
				1.7586041688919,
				2.2575209140778
			}
		},
		pbw_gameplay_spots_potion_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_game_play_crawl",
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
				"pbw_crawl_drunk_spotted_liquid_01",
				"pbw_crawl_drunk_spotted_liquid_02",
				"pbw_crawl_drunk_spotted_liquid_03",
				"pbw_crawl_drunk_spotted_liquid_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_crawl_drunk_spotted_liquid_01",
				"pbw_crawl_drunk_spotted_liquid_02",
				"pbw_crawl_drunk_spotted_liquid_03",
				"pbw_crawl_drunk_spotted_liquid_04"
			},
			sound_events_duration = {
				0.65104168653488,
				2.877729177475,
				4.5337080955505,
				3.5209584236145
			}
		},
		pbw_gameplay_throwing_bomb_no_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_game_play_crawl",
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
				"pbw_gameplay_throwing_bomb_06",
				"pbw_gameplay_throwing_bomb_07",
				"pbw_gameplay_throwing_bomb_08",
				"pbw_gameplay_throwing_bomb_09"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_gameplay_throwing_bomb_06",
				"pbw_gameplay_throwing_bomb_07",
				"pbw_gameplay_throwing_bomb_08",
				"pbw_gameplay_throwing_bomb_09"
			},
			sound_events_duration = {
				0.776187479496,
				2.3602917194366,
				1.0254583358765,
				2.1760833263397
			}
		},
		pbw_gameplay_tips_wizard_wind_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_game_play_crawl",
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
				"pbw_crawl_drunk_incoming_threat_01",
				"pbw_crawl_drunk_incoming_threat_02",
				"pbw_crawl_drunk_incoming_threat_03",
				"pbw_crawl_drunk_incoming_threat_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_crawl_drunk_incoming_threat_01",
				"pbw_crawl_drunk_incoming_threat_02",
				"pbw_crawl_drunk_incoming_threat_03",
				"pbw_crawl_drunk_incoming_threat_04"
			},
			sound_events_duration = {
				3.3346667289734,
				2.220624923706,
				3.4197292327881,
				4.4190831184387
			}
		},
		pbw_gameplay_using_potion_drunk = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "bright_wizard_game_play_crawl",
			category = "player_feedback",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "pbw_drank"
			},
			sound_events = {
				[1] = "pbw_drank"
			},
			sound_events_duration = {
				[1] = 1.9468085169792
			}
		},
		pbw_gameplay_witch_hunter_being_helped_up_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "bright_wizard_game_play_crawl",
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
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_gameplay_witch_hunter_being_helped_up_05",
				"pbw_gameplay_witch_hunter_being_helped_up_06",
				"pbw_gameplay_witch_hunter_being_helped_up_07",
				"pbw_gameplay_witch_hunter_being_helped_up_08",
				"pbw_gameplay_witch_hunter_being_helped_up_09",
				"pbw_gameplay_witch_hunter_being_helped_up_11"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_gameplay_witch_hunter_being_helped_up_05",
				"pbw_gameplay_witch_hunter_being_helped_up_06",
				"pbw_gameplay_witch_hunter_being_helped_up_07",
				"pbw_gameplay_witch_hunter_being_helped_up_08",
				"pbw_gameplay_witch_hunter_being_helped_up_09",
				"pbw_gameplay_witch_hunter_being_helped_up_11"
			},
			sound_events_duration = {
				2.0191667079926,
				2.6266667842865,
				2.4006667137146,
				1.8580207824707,
				3.2387707233429,
				2.0957500934601
			}
		},
		pbw_gameplay_witch_hunter_low_on_health_no_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 5,
			database = "bright_wizard_game_play_crawl",
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
				"pbw_gameplay_witch_hunter_low_on_health_05",
				"pbw_gameplay_witch_hunter_low_on_health_06",
				"pbw_gameplay_witch_hunter_low_on_health_07",
				"pbw_gameplay_witch_hunter_low_on_health_08",
				"pbw_gameplay_witch_hunter_low_on_health_09"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_gameplay_witch_hunter_low_on_health_05",
				"pbw_gameplay_witch_hunter_low_on_health_06",
				"pbw_gameplay_witch_hunter_low_on_health_07",
				"pbw_gameplay_witch_hunter_low_on_health_08",
				"pbw_gameplay_witch_hunter_low_on_health_09"
			},
			sound_events_duration = {
				1.4746249914169,
				1.6813333034515,
				1.5315833091736,
				1.7360208034515,
				2.0402290821075
			}
		},
		pbw_gameplay_wood_elf_being_helped_up_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "bright_wizard_game_play_crawl",
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
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"pbw_gameplay_wood_elf_being_helped_up_05",
				"pbw_gameplay_wood_elf_being_helped_up_06",
				"pbw_gameplay_wood_elf_being_helped_up_07",
				"pbw_gameplay_wood_elf_being_helped_up_08",
				"pbw_gameplay_wood_elf_being_helped_up_09",
				"pbw_gameplay_wood_elf_being_helped_up_10"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_gameplay_wood_elf_being_helped_up_05",
				"pbw_gameplay_wood_elf_being_helped_up_06",
				"pbw_gameplay_wood_elf_being_helped_up_07",
				"pbw_gameplay_wood_elf_being_helped_up_08",
				"pbw_gameplay_wood_elf_being_helped_up_09",
				"pbw_gameplay_wood_elf_being_helped_up_10"
			},
			sound_events_duration = {
				2.3344376087189,
				2.4717707633972,
				2.7072501182556,
				1.9368749856949,
				1.6324374675751,
				1.5442500114441
			}
		},
		pbw_gameplay_wood_elf_low_on_health_no_drunk = {
			randomize_indexes_n = 0,
			face_animations_n = 3,
			database = "bright_wizard_game_play_crawl",
			sound_events_n = 3,
			category = "player_feedback",
			dialogue_animations_n = 3,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_shout"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pbw_gameplay_wood_elf_low_on_health_05",
				"pbw_gameplay_wood_elf_low_on_health_06",
				"pbw_gameplay_wood_elf_low_on_health_07"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_gameplay_wood_elf_low_on_health_05",
				"pbw_gameplay_wood_elf_low_on_health_06",
				"pbw_gameplay_wood_elf_low_on_health_07"
			},
			sound_events_duration = {
				1.8882083892822,
				1.7235416173935,
				1.7451666593552
			}
		}
	})
end
