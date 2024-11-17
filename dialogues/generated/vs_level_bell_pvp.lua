return function ()
	define_rule({
		response = "nde_vs_bell_set1_briefing_a",
		name = "nde_vs_bell_set1_briefing_a",
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
				"nde_vs_safe_room_start_a"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_heroes_mission_giver"
			},
			{
				"global_context",
				"current_level",
				OP.EQ,
				"bell_pvp"
			},
			{
				"global_context",
				"current_set",
				OP.EQ,
				1
			},
			{
				"global_context",
				"current_objective",
				OP.EQ,
				"start_zone"
			}
		}
	})
	define_rule({
		response = "nde_vs_bell_set1_obj1_a",
		name = "nde_vs_bell_set1_obj1_a",
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
				"nde_vs_safe_room_round_started_a"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_heroes_mission_giver"
			},
			{
				"global_context",
				"current_level",
				OP.EQ,
				"bell_pvp"
			},
			{
				"global_context",
				"current_set",
				OP.EQ,
				1
			}
		}
	})
	define_rule({
		response = "nde_vs_bell_set1_obj1_reached",
		name = "nde_vs_bell_set1_obj1_reached",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_mg_heroes_objective_reached"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_heroes_mission_giver"
			},
			{
				"global_context",
				"game_about_to_end",
				OP.EQ,
				0
			},
			{
				"global_context",
				"current_level",
				OP.EQ,
				"bell_pvp"
			},
			{
				"global_context",
				"current_set",
				OP.EQ,
				1
			},
			{
				"global_context",
				"current_objective",
				OP.EQ,
				"one"
			}
		}
	})
	define_rule({
		response = "nde_vs_bell_set1_obj2_a",
		name = "nde_vs_bell_set1_obj2_a",
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
				"nde_vs_bell_set1_obj2_a_BRIDGE"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_heroes_mission_giver"
			},
			{
				"global_context",
				"game_about_to_end",
				OP.EQ,
				0
			}
		}
	})
	define_rule({
		response = "nde_vs_bell_set1_obj2_a_BRIDGE",
		name = "nde_vs_bell_set1_obj2_a_BRIDGE",
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
				"nde_vs_objective_completed_agnostic_a"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_heroes_mission_giver"
			},
			{
				"global_context",
				"game_about_to_end",
				OP.EQ,
				0
			},
			{
				"global_context",
				"current_level",
				OP.EQ,
				"bell_pvp"
			},
			{
				"global_context",
				"current_set",
				OP.EQ,
				1
			},
			{
				"global_context",
				"current_objective",
				OP.EQ,
				"two"
			}
		}
	})
	define_rule({
		response = "nde_vs_bell_set1_obj2_reached",
		name = "nde_vs_bell_set1_obj2_reached",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_mg_heroes_objective_reached"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_heroes_mission_giver"
			},
			{
				"global_context",
				"game_about_to_end",
				OP.EQ,
				0
			},
			{
				"global_context",
				"current_level",
				OP.EQ,
				"bell_pvp"
			},
			{
				"global_context",
				"current_set",
				OP.EQ,
				1
			},
			{
				"global_context",
				"current_objective",
				OP.EQ,
				"two"
			}
		}
	})
	define_rule({
		response = "nde_vs_bell_set2_obj1_a",
		name = "nde_vs_bell_set2_obj1_a",
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
				"nde_vs_safe_room_round_started_a"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_heroes_mission_giver"
			},
			{
				"global_context",
				"current_level",
				OP.EQ,
				"bell_pvp"
			},
			{
				"global_context",
				"current_set",
				OP.EQ,
				2
			}
		}
	})
	define_rule({
		response = "nde_vs_bell_set2_obj1_reached",
		name = "nde_vs_bell_set2_obj1_reached",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_mg_heroes_objective_reached"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_heroes_mission_giver"
			},
			{
				"global_context",
				"game_about_to_end",
				OP.EQ,
				0
			},
			{
				"global_context",
				"current_level",
				OP.EQ,
				"bell_pvp"
			},
			{
				"global_context",
				"current_set",
				OP.EQ,
				2
			},
			{
				"global_context",
				"current_objective",
				OP.EQ,
				"one"
			}
		}
	})
	define_rule({
		response = "nde_vs_bell_set2_obj2_a",
		name = "nde_vs_bell_set2_obj2_a",
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
				"nde_vs_objective_completed_agnostic_a"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_heroes_mission_giver"
			},
			{
				"global_context",
				"game_about_to_end",
				OP.EQ,
				0
			},
			{
				"global_context",
				"current_level",
				OP.EQ,
				"bell_pvp"
			},
			{
				"global_context",
				"current_set",
				OP.EQ,
				2
			},
			{
				"global_context",
				"current_objective",
				OP.EQ,
				"two"
			}
		}
	})
	define_rule({
		response = "nde_vs_bell_set2_obj2_a_EXTRA",
		name = "nde_vs_bell_set2_obj2_a_EXTRA",
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
				"sound_event",
				OP.EQ,
				"nde_vs_new_objective_intro_a_06"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_heroes_mission_giver"
			},
			{
				"global_context",
				"game_about_to_end",
				OP.EQ,
				0
			},
			{
				"global_context",
				"current_level",
				OP.EQ,
				"bell_pvp"
			},
			{
				"global_context",
				"current_set",
				OP.EQ,
				2
			},
			{
				"global_context",
				"current_objective",
				OP.EQ,
				"two"
			}
		}
	})
	define_rule({
		response = "nde_vs_bell_set2_obj2_reached",
		name = "nde_vs_bell_set2_obj2_reached",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_mg_heroes_objective_reached"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_heroes_mission_giver"
			},
			{
				"global_context",
				"game_about_to_end",
				OP.EQ,
				0
			},
			{
				"global_context",
				"current_level",
				OP.EQ,
				"bell_pvp"
			},
			{
				"global_context",
				"current_set",
				OP.EQ,
				2
			},
			{
				"global_context",
				"current_objective",
				OP.EQ,
				"two"
			}
		}
	})
	define_rule({
		response = "nde_vs_bell_set2_waystone_reminder",
		name = "nde_vs_bell_set2_waystone_reminder",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_mg_heroes_objective_reached"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_heroes_mission_giver"
			},
			{
				"global_context",
				"game_about_to_end",
				OP.EQ,
				0
			},
			{
				"global_context",
				"current_level",
				OP.EQ,
				"bell_pvp"
			},
			{
				"global_context",
				"current_set",
				OP.EQ,
				2
			},
			{
				"global_context",
				"current_objective",
				OP.EQ,
				"waystone"
			}
		}
	})
	define_rule({
		response = "pbw_vs_safe_room_bell_01_b",
		name = "pbw_vs_safe_room_bell_01_b",
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
				"dialogue_name",
				OP.EQ,
				"pwh_vs_safe_room_bell_01_a"
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
		response = "pbw_vs_safe_room_bell_02_a",
		name = "pbw_vs_safe_room_bell_02_a",
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
				"dialogue_name",
				OP.EQ,
				"nde_vs_bell_set1_briefing_a"
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
				OP.EQ,
				"bell_pvp"
			},
			{
				"global_context",
				"current_set",
				OP.EQ,
				1
			},
			{
				"global_context",
				"current_objective",
				OP.EQ,
				"start_zone"
			}
		}
	})
	define_rule({
		response = "pbw_vs_safe_room_bell_03_b",
		name = "pbw_vs_safe_room_bell_03_b",
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
				"dialogue_name",
				OP.EQ,
				"pdr_vs_safe_room_bell_03_a"
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
		response = "pbw_vs_safe_room_bell_04_b",
		name = "pbw_vs_safe_room_bell_04_b",
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
				"dialogue_name",
				OP.EQ,
				"pwe_vs_safe_room_bell_04_a"
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
		response = "pbw_vs_safe_room_bell_05_b",
		name = "pbw_vs_safe_room_bell_05_b",
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
				"dialogue_name",
				OP.EQ,
				"pes_vs_safe_room_bell_05_a"
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
		response = "pbw_vs_safe_room_bell_06_b",
		name = "pbw_vs_safe_room_bell_06_b",
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
				"dialogue_name",
				OP.EQ,
				"pwh_vs_safe_room_bell_06_a"
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
		response = "pbw_vs_safe_room_bell_07_a",
		name = "pbw_vs_safe_room_bell_07_a",
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
				"dialogue_name",
				OP.EQ,
				"nde_vs_bell_set1_briefing_a"
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
				OP.EQ,
				"bell_pvp"
			},
			{
				"global_context",
				"current_set",
				OP.EQ,
				1
			},
			{
				"global_context",
				"current_objective",
				OP.EQ,
				"start_zone"
			}
		}
	})
	define_rule({
		response = "pbw_vs_safe_room_bell_08_b",
		name = "pbw_vs_safe_room_bell_08_b",
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
				"dialogue_name",
				OP.EQ,
				"pdr_vs_safe_room_bell_08_a"
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
		response = "pbw_vs_safe_room_bell_09_b",
		name = "pbw_vs_safe_room_bell_09_b",
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
				"dialogue_name",
				OP.EQ,
				"pwe_vs_safe_room_bell_09_a"
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
		response = "pbw_vs_safe_room_bell_10_b",
		name = "pbw_vs_safe_room_bell_10_b",
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
				"dialogue_name",
				OP.EQ,
				"pes_vs_safe_room_bell_10_a"
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
		name = "pdr_level_bell_destroyed_PVP",
		response = "pdr_level_bell_destroyed_PVP",
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
				"bell_destroyed"
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
				"level_bell_destroyed",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_bell_destroyed",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		response = "pdr_vs_safe_room_bell_01_b",
		name = "pdr_vs_safe_room_bell_01_b",
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
				"dialogue_name",
				OP.EQ,
				"pwh_vs_safe_room_bell_01_a"
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
		response = "pdr_vs_safe_room_bell_02_b",
		name = "pdr_vs_safe_room_bell_02_b",
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
				"dialogue_name",
				OP.EQ,
				"pbw_vs_safe_room_bell_02_a"
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
		response = "pdr_vs_safe_room_bell_03_a",
		name = "pdr_vs_safe_room_bell_03_a",
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
				"dialogue_name",
				OP.EQ,
				"nde_vs_bell_set1_briefing_a"
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
				OP.EQ,
				"bell_pvp"
			},
			{
				"global_context",
				"current_set",
				OP.EQ,
				1
			},
			{
				"global_context",
				"current_objective",
				OP.EQ,
				"start_zone"
			}
		}
	})
	define_rule({
		response = "pdr_vs_safe_room_bell_04_b",
		name = "pdr_vs_safe_room_bell_04_b",
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
				"dialogue_name",
				OP.EQ,
				"pwe_vs_safe_room_bell_04_a"
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
		response = "pdr_vs_safe_room_bell_05_b",
		name = "pdr_vs_safe_room_bell_05_b",
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
				"dialogue_name",
				OP.EQ,
				"pes_vs_safe_room_bell_05_a"
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
		response = "pdr_vs_safe_room_bell_06_b",
		name = "pdr_vs_safe_room_bell_06_b",
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
				"dialogue_name",
				OP.EQ,
				"pwh_vs_safe_room_bell_06_a"
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
		response = "pdr_vs_safe_room_bell_07_b",
		name = "pdr_vs_safe_room_bell_07_b",
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
				"dialogue_name",
				OP.EQ,
				"pbw_vs_safe_room_bell_07_a"
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
		response = "pdr_vs_safe_room_bell_08_a",
		name = "pdr_vs_safe_room_bell_08_a",
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
				"dialogue_name",
				OP.EQ,
				"nde_vs_bell_set1_briefing_a"
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
				OP.EQ,
				"bell_pvp"
			},
			{
				"global_context",
				"current_set",
				OP.EQ,
				1
			},
			{
				"global_context",
				"current_objective",
				OP.EQ,
				"start_zone"
			}
		}
	})
	define_rule({
		response = "pdr_vs_safe_room_bell_09_b",
		name = "pdr_vs_safe_room_bell_09_b",
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
				"dialogue_name",
				OP.EQ,
				"pwe_vs_safe_room_bell_09_a"
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
		response = "pdr_vs_safe_room_bell_10_b",
		name = "pdr_vs_safe_room_bell_10_b",
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
				"dialogue_name",
				OP.EQ,
				"pes_vs_safe_room_bell_10_a"
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
		response = "pes_vs_safe_room_bell_01_b",
		name = "pes_vs_safe_room_bell_01_b",
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
				"dialogue_name",
				OP.EQ,
				"pwh_vs_safe_room_bell_01_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			}
		}
	})
	define_rule({
		response = "pes_vs_safe_room_bell_02_b",
		name = "pes_vs_safe_room_bell_02_b",
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
				"dialogue_name",
				OP.EQ,
				"pbw_vs_safe_room_bell_02_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			}
		}
	})
	define_rule({
		response = "pes_vs_safe_room_bell_03_b",
		name = "pes_vs_safe_room_bell_03_b",
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
				"dialogue_name",
				OP.EQ,
				"pdr_vs_safe_room_bell_03_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			}
		}
	})
	define_rule({
		response = "pes_vs_safe_room_bell_04_b",
		name = "pes_vs_safe_room_bell_04_b",
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
				"dialogue_name",
				OP.EQ,
				"pwe_vs_safe_room_bell_04_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			}
		}
	})
	define_rule({
		response = "pes_vs_safe_room_bell_05_a",
		name = "pes_vs_safe_room_bell_05_a",
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
				"dialogue_name",
				OP.EQ,
				"nde_vs_bell_set1_briefing_a"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"global_context",
				"current_level",
				OP.EQ,
				"bell_pvp"
			},
			{
				"global_context",
				"current_set",
				OP.EQ,
				1
			},
			{
				"global_context",
				"current_objective",
				OP.EQ,
				"start_zone"
			}
		}
	})
	define_rule({
		response = "pes_vs_safe_room_bell_06_b",
		name = "pes_vs_safe_room_bell_06_b",
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
				"dialogue_name",
				OP.EQ,
				"pwh_vs_safe_room_bell_06_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			}
		}
	})
	define_rule({
		response = "pes_vs_safe_room_bell_07_b",
		name = "pes_vs_safe_room_bell_07_b",
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
				"dialogue_name",
				OP.EQ,
				"pbw_vs_safe_room_bell_07_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			}
		}
	})
	define_rule({
		response = "pes_vs_safe_room_bell_08_b",
		name = "pes_vs_safe_room_bell_08_b",
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
				"dialogue_name",
				OP.EQ,
				"pdr_vs_safe_room_bell_08_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			}
		}
	})
	define_rule({
		response = "pes_vs_safe_room_bell_09_b",
		name = "pes_vs_safe_room_bell_09_b",
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
				"dialogue_name",
				OP.EQ,
				"pwe_vs_safe_room_bell_09_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			}
		}
	})
	define_rule({
		response = "pes_vs_safe_room_bell_10_a",
		name = "pes_vs_safe_room_bell_10_a",
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
				"dialogue_name",
				OP.EQ,
				"nde_vs_bell_set1_briefing_a"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"global_context",
				"current_level",
				OP.EQ,
				"bell_pvp"
			},
			{
				"global_context",
				"current_set",
				OP.EQ,
				1
			},
			{
				"global_context",
				"current_objective",
				OP.EQ,
				"start_zone"
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pwe_level_bell_destroyed_PVP",
		response = "pwe_level_bell_destroyed_PVP",
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
				"bell_destroyed"
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
				"level_bell_destroyed",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_bell_destroyed",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		response = "pwe_vs_safe_room_bell_01_b",
		name = "pwe_vs_safe_room_bell_01_b",
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
				"dialogue_name",
				OP.EQ,
				"pwh_vs_safe_room_bell_01_a"
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
		response = "pwe_vs_safe_room_bell_02_b",
		name = "pwe_vs_safe_room_bell_02_b",
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
				"dialogue_name",
				OP.EQ,
				"pbw_vs_safe_room_bell_02_a"
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
		response = "pwe_vs_safe_room_bell_03_b",
		name = "pwe_vs_safe_room_bell_03_b",
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
				"dialogue_name",
				OP.EQ,
				"pdr_vs_safe_room_bell_03_a"
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
		response = "pwe_vs_safe_room_bell_04_a",
		name = "pwe_vs_safe_room_bell_04_a",
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
				"dialogue_name",
				OP.EQ,
				"nde_vs_bell_set1_briefing_a"
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
				"global_context",
				"current_level",
				OP.EQ,
				"bell_pvp"
			},
			{
				"global_context",
				"current_set",
				OP.EQ,
				1
			},
			{
				"global_context",
				"current_objective",
				OP.EQ,
				"start_zone"
			}
		}
	})
	define_rule({
		response = "pwe_vs_safe_room_bell_05_b",
		name = "pwe_vs_safe_room_bell_05_b",
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
				"dialogue_name",
				OP.EQ,
				"pes_vs_safe_room_bell_05_a"
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
		response = "pwe_vs_safe_room_bell_06_b",
		name = "pwe_vs_safe_room_bell_06_b",
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
				"dialogue_name",
				OP.EQ,
				"pwh_vs_safe_room_bell_06_a"
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
		response = "pwe_vs_safe_room_bell_07_b",
		name = "pwe_vs_safe_room_bell_07_b",
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
				"dialogue_name",
				OP.EQ,
				"pbw_vs_safe_room_bell_07_a"
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
		response = "pwe_vs_safe_room_bell_08_b",
		name = "pwe_vs_safe_room_bell_08_b",
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
				"dialogue_name",
				OP.EQ,
				"pdr_vs_safe_room_bell_08_a"
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
		response = "pwe_vs_safe_room_bell_09_a",
		name = "pwe_vs_safe_room_bell_09_a",
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
				"dialogue_name",
				OP.EQ,
				"nde_vs_bell_set1_briefing_a"
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
				"global_context",
				"current_level",
				OP.EQ,
				"bell_pvp"
			},
			{
				"global_context",
				"current_set",
				OP.EQ,
				1
			},
			{
				"global_context",
				"current_objective",
				OP.EQ,
				"start_zone"
			}
		}
	})
	define_rule({
		response = "pwe_vs_safe_room_bell_10_b",
		name = "pwe_vs_safe_room_bell_10_b",
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
				"dialogue_name",
				OP.EQ,
				"pes_vs_safe_room_bell_10_a"
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
		name = "pwh_level_bell_destroyed_PVP",
		response = "pwh_level_bell_destroyed_PVP",
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
				"bell_destroyed"
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
				"level_bell_destroyed",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_bell_destroyed",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		response = "pwh_vs_safe_room_bell_01_a",
		name = "pwh_vs_safe_room_bell_01_a",
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
				"dialogue_name",
				OP.EQ,
				"nde_vs_bell_set1_briefing_a"
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
				"global_context",
				"current_level",
				OP.EQ,
				"bell_pvp"
			},
			{
				"global_context",
				"current_set",
				OP.EQ,
				1
			},
			{
				"global_context",
				"current_objective",
				OP.EQ,
				"start_zone"
			}
		}
	})
	define_rule({
		response = "pwh_vs_safe_room_bell_02_b",
		name = "pwh_vs_safe_room_bell_02_b",
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
				"dialogue_name",
				OP.EQ,
				"pbw_vs_safe_room_bell_02_a"
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
		response = "pwh_vs_safe_room_bell_03_b",
		name = "pwh_vs_safe_room_bell_03_b",
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
				"dialogue_name",
				OP.EQ,
				"pdr_vs_safe_room_bell_03_a"
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
		response = "pwh_vs_safe_room_bell_04_b",
		name = "pwh_vs_safe_room_bell_04_b",
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
				"dialogue_name",
				OP.EQ,
				"pwe_vs_safe_room_bell_04_a"
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
		response = "pwh_vs_safe_room_bell_05_b",
		name = "pwh_vs_safe_room_bell_05_b",
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
				"dialogue_name",
				OP.EQ,
				"pes_vs_safe_room_bell_05_a"
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
		response = "pwh_vs_safe_room_bell_06_a",
		name = "pwh_vs_safe_room_bell_06_a",
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
				"dialogue_name",
				OP.EQ,
				"nde_vs_bell_set1_briefing_a"
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
				"global_context",
				"current_level",
				OP.EQ,
				"bell_pvp"
			},
			{
				"global_context",
				"current_set",
				OP.EQ,
				1
			},
			{
				"global_context",
				"current_objective",
				OP.EQ,
				"start_zone"
			}
		}
	})
	define_rule({
		response = "pwh_vs_safe_room_bell_07_b",
		name = "pwh_vs_safe_room_bell_07_b",
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
				"dialogue_name",
				OP.EQ,
				"pbw_vs_safe_room_bell_07_a"
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
		response = "pwh_vs_safe_room_bell_08_b",
		name = "pwh_vs_safe_room_bell_08_b",
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
				"dialogue_name",
				OP.EQ,
				"pdr_vs_safe_room_bell_08_a"
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
		response = "pwh_vs_safe_room_bell_09_b",
		name = "pwh_vs_safe_room_bell_09_b",
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
				"dialogue_name",
				OP.EQ,
				"pwe_vs_safe_room_bell_09_a"
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
		response = "pwh_vs_safe_room_bell_10_b",
		name = "pwh_vs_safe_room_bell_10_b",
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
				"dialogue_name",
				OP.EQ,
				"pes_vs_safe_room_bell_10_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			}
		}
	})
	add_dialogues({
		nde_vs_bell_set1_briefing_a = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 3,
			database = "vs_level_bell_pvp",
			category = "npc_talk",
			dialogue_animations_n = 3,
			sound_events_n = 3,
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
				"nde_vs_bell_set1_briefing_a_01",
				"nde_vs_bell_set1_briefing_a_02",
				"nde_vs_bell_set1_briefing_a_03"
			},
			randomize_indexes = {},
			sound_distance = math.huge,
			sound_events = {
				"nde_vs_bell_set1_briefing_a_01",
				"nde_vs_bell_set1_briefing_a_02",
				"nde_vs_bell_set1_briefing_a_03"
			},
			sound_events_duration = {
				6.9880628585815,
				7.4982085227966,
				8.303750038147
			}
		},
		nde_vs_bell_set1_obj1_a = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 3,
			database = "vs_level_bell_pvp",
			sound_events_n = 3,
			category = "npc_talk",
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
				"nde_vs_bell_set1_obj1_a_01",
				"nde_vs_bell_set1_obj1_a_02",
				"nde_vs_bell_set1_obj1_a_03"
			},
			randomize_indexes = {},
			sound_events = {
				"nde_vs_bell_set1_obj1_a_01",
				"nde_vs_bell_set1_obj1_a_02",
				"nde_vs_bell_set1_obj1_a_03"
			},
			sound_events_duration = {
				5.1700000762939,
				5.8300004005432,
				4.6530003547669
			}
		},
		nde_vs_bell_set1_obj1_reached = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 3,
			database = "vs_level_bell_pvp",
			sound_events_n = 3,
			category = "npc_talk",
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
				"nde_vs_objective_sighted_agnostic_object_a_01",
				"nde_vs_objective_sighted_agnostic_object_a_02",
				"nde_vs_objective_sighted_agnostic_object_a_03"
			},
			randomize_indexes = {},
			sound_events = {
				"nde_vs_objective_sighted_agnostic_object_a_01",
				"nde_vs_objective_sighted_agnostic_object_a_02",
				"nde_vs_objective_sighted_agnostic_object_a_03"
			},
			sound_events_duration = {
				1.8589792251587,
				2.3599998950958,
				1.8589792251587
			}
		},
		nde_vs_bell_set1_obj2_a = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 3,
			database = "vs_level_bell_pvp",
			sound_events_n = 3,
			category = "npc_talk",
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
				"nde_vs_bell_set1_obj2_a_01",
				"nde_vs_bell_set1_obj2_a_02",
				"nde_vs_bell_set1_obj2_a_03"
			},
			randomize_indexes = {},
			sound_events = {
				"nde_vs_bell_set1_obj2_a_01",
				"nde_vs_bell_set1_obj2_a_02",
				"nde_vs_bell_set1_obj2_a_03"
			},
			sound_events_duration = {
				3.3959999084473,
				4.3260002136231,
				3.6349999904633
			}
		},
		nde_vs_bell_set1_obj2_a_BRIDGE = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "vs_level_bell_pvp",
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
				"nde_vs_new_objective_intro_a_01",
				"nde_vs_new_objective_intro_a_02",
				"nde_vs_new_objective_intro_a_03",
				"nde_vs_new_objective_intro_a_04",
				"nde_vs_new_objective_intro_a_05",
				"nde_vs_new_objective_intro_a_06"
			},
			randomize_indexes = {},
			sound_events = {
				"nde_vs_new_objective_intro_a_01",
				"nde_vs_new_objective_intro_a_02",
				"nde_vs_new_objective_intro_a_03",
				"nde_vs_new_objective_intro_a_04",
				"nde_vs_new_objective_intro_a_05",
				"nde_vs_new_objective_intro_a_06"
			},
			sound_events_duration = {
				2.0169999599457,
				2.1679999828339,
				2.8559999465942,
				2.7655208110809,
				2.8721873760223,
				3.0592291355133
			}
		},
		nde_vs_bell_set1_obj2_reached = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "vs_level_bell_pvp",
			sound_events_n = 2,
			category = "npc_talk",
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
				[1] = "nde_vs_agnostic_open_gate_a_01",
				[2] = "nde_vs_agnostic_open_gate_a_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "nde_vs_agnostic_open_gate_a_01",
				[2] = "nde_vs_agnostic_open_gate_a_02"
			},
			sound_events_duration = {
				[1] = 2.0710000991821,
				[2] = 2.4470000267029
			}
		},
		nde_vs_bell_set2_obj1_a = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 3,
			database = "vs_level_bell_pvp",
			sound_events_n = 3,
			category = "npc_talk",
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
				"nde_vs_bell_set2_obj1_a_01",
				"nde_vs_bell_set2_obj1_a_02",
				"nde_vs_bell_set2_obj1_a_03"
			},
			randomize_indexes = {},
			sound_events = {
				"nde_vs_bell_set2_obj1_a_01",
				"nde_vs_bell_set2_obj1_a_02",
				"nde_vs_bell_set2_obj1_a_03"
			},
			sound_events_duration = {
				4.7970004081726,
				6.2740001678467,
				5.6500000953674
			}
		},
		nde_vs_bell_set2_obj1_reached = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 3,
			database = "vs_level_bell_pvp",
			sound_events_n = 3,
			category = "npc_talk",
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
				"nde_vs_objective_sighted_agnostic_object_a_01",
				"nde_vs_objective_sighted_agnostic_object_a_02",
				"nde_vs_objective_sighted_agnostic_object_a_03"
			},
			randomize_indexes = {},
			sound_events = {
				"nde_vs_objective_sighted_agnostic_object_a_01",
				"nde_vs_objective_sighted_agnostic_object_a_02",
				"nde_vs_objective_sighted_agnostic_object_a_03"
			},
			sound_events_duration = {
				1.8589792251587,
				2.3599998950958,
				1.8589792251587
			}
		},
		nde_vs_bell_set2_obj2_a = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 3,
			database = "vs_level_bell_pvp",
			sound_events_n = 3,
			category = "npc_talk",
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
				"nde_vs_bell_set2_obj2_a_01",
				"nde_vs_bell_set2_obj2_a_02",
				"nde_vs_new_objective_intro_a_06"
			},
			randomize_indexes = {},
			sound_events = {
				"nde_vs_bell_set2_obj2_a_01",
				"nde_vs_bell_set2_obj2_a_02",
				"nde_vs_new_objective_intro_a_06"
			},
			sound_events_duration = {
				4.6050000190735,
				5.2610001564026,
				3.0592291355133
			}
		},
		nde_vs_bell_set2_obj2_a_EXTRA = {
			only_allies = true,
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_level_bell_pvp",
			category = "npc_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_calm"
			},
			localization_strings = {
				[1] = "nde_vs_bell_set2_obj2_a_03"
			},
			sound_events = {
				[1] = "nde_vs_bell_set2_obj2_a_03"
			},
			sound_events_duration = {
				[1] = 6.7323336601257
			}
		},
		nde_vs_bell_set2_obj2_reached = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "vs_level_bell_pvp",
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
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"nde_vs_agnostic_destroy_chains_a_01",
				"nde_vs_agnostic_destroy_chains_a_02",
				"nde_vs_agnostic_destroy_chains_a_03",
				"nde_vs_agnostic_destroy_chains_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"nde_vs_agnostic_destroy_chains_a_01",
				"nde_vs_agnostic_destroy_chains_a_02",
				"nde_vs_agnostic_destroy_chains_a_03",
				"nde_vs_agnostic_destroy_chains_a_04"
			},
			sound_events_duration = {
				2.9860000610352,
				3.6710000038147,
				4.6040000915527,
				4.3600001335144
			}
		},
		nde_vs_bell_set2_waystone_reminder = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 3,
			database = "vs_level_bell_pvp",
			sound_events_n = 3,
			category = "npc_talk",
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
				"nde_vs_waystone_near_a_01",
				"nde_vs_waystone_near_a_02",
				"nde_vs_waystone_near_a_03"
			},
			randomize_indexes = {},
			sound_events = {
				"nde_vs_waystone_near_a_01",
				"nde_vs_waystone_near_a_02",
				"nde_vs_waystone_near_a_03"
			},
			sound_events_duration = {
				2.8053541183472,
				2.4749999046326,
				3.1210000514984
			}
		},
		pbw_vs_safe_room_bell_01_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_level_bell_pvp",
			category = "level_talk_must_play",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_calm"
			},
			localization_strings = {
				[1] = "pbw_vs_safe_room_bell_01_b_01"
			},
			sound_events = {
				[1] = "pbw_vs_safe_room_bell_01_b_01"
			},
			sound_events_duration = {
				[1] = 3.0941250324249
			}
		},
		pbw_vs_safe_room_bell_02_a = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_level_bell_pvp",
			category = "level_talk_must_play",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_calm"
			},
			localization_strings = {
				[1] = "pbw_vs_safe_room_bell_02_a_01"
			},
			sound_events = {
				[1] = "pbw_vs_safe_room_bell_02_a_01"
			},
			sound_events_duration = {
				[1] = 3.330020904541
			}
		},
		pbw_vs_safe_room_bell_03_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_level_bell_pvp",
			category = "level_talk_must_play",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_calm"
			},
			localization_strings = {
				[1] = "pbw_vs_safe_room_bell_03_b_01"
			},
			sound_events = {
				[1] = "pbw_vs_safe_room_bell_03_b_01"
			},
			sound_events_duration = {
				[1] = 4.3536043167114
			}
		},
		pbw_vs_safe_room_bell_04_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_level_bell_pvp",
			category = "level_talk_must_play",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_calm"
			},
			localization_strings = {
				[1] = "pbw_vs_safe_room_bell_04_b_01"
			},
			sound_events = {
				[1] = "pbw_vs_safe_room_bell_04_b_01"
			},
			sound_events_duration = {
				[1] = 3.584041595459
			}
		},
		pbw_vs_safe_room_bell_05_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_level_bell_pvp",
			category = "level_talk_must_play",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_calm"
			},
			localization_strings = {
				[1] = "pbw_vs_safe_room_bell_05_b_01"
			},
			sound_events = {
				[1] = "pbw_vs_safe_room_bell_05_b_01"
			},
			sound_events_duration = {
				[1] = 3.4146459102631
			}
		},
		pbw_vs_safe_room_bell_06_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_level_bell_pvp",
			category = "level_talk_must_play",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_calm"
			},
			localization_strings = {
				[1] = "pbw_vs_safe_room_bell_06_b_01"
			},
			sound_events = {
				[1] = "pbw_vs_safe_room_bell_06_b_01"
			},
			sound_events_duration = {
				[1] = 3.2405834197998
			}
		},
		pbw_vs_safe_room_bell_07_a = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_level_bell_pvp",
			category = "level_talk_must_play",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_calm"
			},
			localization_strings = {
				[1] = "pbw_vs_safe_room_bell_07_a_01"
			},
			sound_events = {
				[1] = "pbw_vs_safe_room_bell_07_a_01"
			},
			sound_events_duration = {
				[1] = 4.2487292289734
			}
		},
		pbw_vs_safe_room_bell_08_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_level_bell_pvp",
			category = "level_talk_must_play",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_calm"
			},
			localization_strings = {
				[1] = "pbw_vs_safe_room_bell_08_b_01"
			},
			sound_events = {
				[1] = "pbw_vs_safe_room_bell_08_b_01"
			},
			sound_events_duration = {
				[1] = 2.1706666946411
			}
		},
		pbw_vs_safe_room_bell_09_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_level_bell_pvp",
			category = "level_talk_must_play",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_calm"
			},
			localization_strings = {
				[1] = "pbw_vs_safe_room_bell_09_b_01"
			},
			sound_events = {
				[1] = "pbw_vs_safe_room_bell_09_b_01"
			},
			sound_events_duration = {
				[1] = 2.6913750171661
			}
		},
		pbw_vs_safe_room_bell_10_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_level_bell_pvp",
			category = "level_talk_must_play",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_calm"
			},
			localization_strings = {
				[1] = "pbw_vs_safe_room_bell_10_b_01"
			},
			sound_events = {
				[1] = "pbw_vs_safe_room_bell_10_b_01"
			},
			sound_events_duration = {
				[1] = 3.4187917709351
			}
		},
		pdr_level_bell_destroyed_PVP = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "vs_level_bell_pvp",
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
				"pdr_level_bell_destroyed_01",
				"pdr_level_bell_destroyed_02",
				"pdr_level_bell_destroyed_03",
				"pdr_level_bell_destroyed_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_level_bell_destroyed_01",
				"pdr_level_bell_destroyed_02",
				"pdr_level_bell_destroyed_03",
				"pdr_level_bell_destroyed_04"
			},
			sound_events_duration = {
				5.8755416870117,
				5.7366666793823,
				9.2258539199829,
				8.4164171218872
			}
		},
		pdr_vs_safe_room_bell_01_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_level_bell_pvp",
			category = "level_talk_must_play",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_calm"
			},
			localization_strings = {
				[1] = "pdr_vs_safe_room_bell_01_b_01"
			},
			sound_events = {
				[1] = "pdr_vs_safe_room_bell_01_b_01"
			},
			sound_events_duration = {
				[1] = 2.9266250133514
			}
		},
		pdr_vs_safe_room_bell_02_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_level_bell_pvp",
			category = "level_talk_must_play",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_calm"
			},
			localization_strings = {
				[1] = "pdr_vs_safe_room_bell_02_b_01"
			},
			sound_events = {
				[1] = "pdr_vs_safe_room_bell_02_b_01"
			},
			sound_events_duration = {
				[1] = 3.0601875782013
			}
		},
		pdr_vs_safe_room_bell_03_a = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_level_bell_pvp",
			category = "level_talk_must_play",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_calm"
			},
			localization_strings = {
				[1] = "pdr_vs_safe_room_bell_03_a_01"
			},
			sound_events = {
				[1] = "pdr_vs_safe_room_bell_03_a_01"
			},
			sound_events_duration = {
				[1] = 3.3318123817444
			}
		},
		pdr_vs_safe_room_bell_04_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_level_bell_pvp",
			category = "level_talk_must_play",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_calm"
			},
			localization_strings = {
				[1] = "pdr_vs_safe_room_bell_04_b_01"
			},
			sound_events = {
				[1] = "pdr_vs_safe_room_bell_04_b_01"
			},
			sound_events_duration = {
				[1] = 2.6171040534973
			}
		},
		pdr_vs_safe_room_bell_05_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_level_bell_pvp",
			category = "level_talk_must_play",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_calm"
			},
			localization_strings = {
				[1] = "pdr_vs_safe_room_bell_05_b_01"
			},
			sound_events = {
				[1] = "pdr_vs_safe_room_bell_05_b_01"
			},
			sound_events_duration = {
				[1] = 2.5548541545868
			}
		},
		pdr_vs_safe_room_bell_06_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_level_bell_pvp",
			category = "level_talk_must_play",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_calm"
			},
			localization_strings = {
				[1] = "pdr_vs_safe_room_bell_06_b_01"
			},
			sound_events = {
				[1] = "pdr_vs_safe_room_bell_06_b_01"
			},
			sound_events_duration = {
				[1] = 2.5941874980927
			}
		},
		pdr_vs_safe_room_bell_07_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_level_bell_pvp",
			category = "level_talk_must_play",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_calm"
			},
			localization_strings = {
				[1] = "pdr_vs_safe_room_bell_07_b_01"
			},
			sound_events = {
				[1] = "pdr_vs_safe_room_bell_07_b_01"
			},
			sound_events_duration = {
				[1] = 5.5781874656677
			}
		},
		pdr_vs_safe_room_bell_08_a = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_level_bell_pvp",
			category = "level_talk_must_play",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_calm"
			},
			localization_strings = {
				[1] = "pdr_vs_safe_room_bell_08_a_01"
			},
			sound_events = {
				[1] = "pdr_vs_safe_room_bell_08_a_01"
			},
			sound_events_duration = {
				[1] = 3.846937417984
			}
		},
		pdr_vs_safe_room_bell_09_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_level_bell_pvp",
			category = "level_talk_must_play",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_calm"
			},
			localization_strings = {
				[1] = "pdr_vs_safe_room_bell_09_b_01"
			},
			sound_events = {
				[1] = "pdr_vs_safe_room_bell_09_b_01"
			},
			sound_events_duration = {
				[1] = 3.7677083015442
			}
		},
		pdr_vs_safe_room_bell_10_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_level_bell_pvp",
			category = "level_talk_must_play",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_calm"
			},
			localization_strings = {
				[1] = "pdr_vs_safe_room_bell_10_b_01"
			},
			sound_events = {
				[1] = "pdr_vs_safe_room_bell_10_b_01"
			},
			sound_events_duration = {
				[1] = 3.6588749885559
			}
		},
		pes_vs_safe_room_bell_01_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_level_bell_pvp",
			category = "level_talk_must_play",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_calm"
			},
			localization_strings = {
				[1] = "pes_vs_safe_room_bell_01_b_01"
			},
			sound_events = {
				[1] = "pes_vs_safe_room_bell_01_b_01"
			},
			sound_events_duration = {
				[1] = 2.0723958015442
			}
		},
		pes_vs_safe_room_bell_02_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_level_bell_pvp",
			category = "level_talk_must_play",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_calm"
			},
			localization_strings = {
				[1] = "pes_vs_safe_room_bell_02_b_01"
			},
			sound_events = {
				[1] = "pes_vs_safe_room_bell_02_b_01"
			},
			sound_events_duration = {
				[1] = 2.9925625324249
			}
		},
		pes_vs_safe_room_bell_03_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_level_bell_pvp",
			category = "level_talk_must_play",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_calm"
			},
			localization_strings = {
				[1] = "pes_vs_safe_room_bell_03_b_01"
			},
			sound_events = {
				[1] = "pes_vs_safe_room_bell_03_b_01"
			},
			sound_events_duration = {
				[1] = 4.9473333358765
			}
		},
		pes_vs_safe_room_bell_04_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_level_bell_pvp",
			category = "level_talk_must_play",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_calm"
			},
			localization_strings = {
				[1] = "pes_vs_safe_room_bell_04_b_01"
			},
			sound_events = {
				[1] = "pes_vs_safe_room_bell_04_b_01"
			},
			sound_events_duration = {
				[1] = 2.9485623836517
			}
		},
		pes_vs_safe_room_bell_05_a = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_level_bell_pvp",
			category = "level_talk_must_play",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_calm"
			},
			localization_strings = {
				[1] = "pes_vs_safe_room_bell_05_a_01"
			},
			sound_events = {
				[1] = "pes_vs_safe_room_bell_05_a_01"
			},
			sound_events_duration = {
				[1] = 3.0963125228882
			}
		},
		pes_vs_safe_room_bell_06_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_level_bell_pvp",
			category = "level_talk_must_play",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_calm"
			},
			localization_strings = {
				[1] = "pes_vs_safe_room_bell_06_b_01"
			},
			sound_events = {
				[1] = "pes_vs_safe_room_bell_06_b_01"
			},
			sound_events_duration = {
				[1] = 2.0791459083557
			}
		},
		pes_vs_safe_room_bell_07_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_level_bell_pvp",
			category = "level_talk_must_play",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_calm"
			},
			localization_strings = {
				[1] = "pes_vs_safe_room_bell_07_b_01"
			},
			sound_events = {
				[1] = "pes_vs_safe_room_bell_07_b_01"
			},
			sound_events_duration = {
				[1] = 4.8762707710266
			}
		},
		pes_vs_safe_room_bell_08_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_level_bell_pvp",
			category = "level_talk_must_play",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_calm"
			},
			localization_strings = {
				[1] = "pes_vs_safe_room_bell_08_b_01"
			},
			sound_events = {
				[1] = "pes_vs_safe_room_bell_08_b_01"
			},
			sound_events_duration = {
				[1] = 3.4378333091736
			}
		},
		pes_vs_safe_room_bell_09_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_level_bell_pvp",
			category = "level_talk_must_play",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_calm"
			},
			localization_strings = {
				[1] = "pes_vs_safe_room_bell_09_b_01"
			},
			sound_events = {
				[1] = "pes_vs_safe_room_bell_09_b_01"
			},
			sound_events_duration = {
				[1] = 3.4319167137146
			}
		},
		pes_vs_safe_room_bell_10_a = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_level_bell_pvp",
			category = "level_talk_must_play",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_calm"
			},
			localization_strings = {
				[1] = "pes_vs_safe_room_bell_10_a_01"
			},
			sound_events = {
				[1] = "pes_vs_safe_room_bell_10_a_01"
			},
			sound_events_duration = {
				[1] = 4.4446249008179
			}
		},
		pwe_level_bell_destroyed_PVP = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "vs_level_bell_pvp",
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
				[1] = "pwe_level_bell_destroyed_01",
				[2] = "pwe_level_bell_destroyed_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pwe_level_bell_destroyed_01",
				[2] = "pwe_level_bell_destroyed_02"
			},
			sound_events_duration = {
				[1] = 2.9728751182556,
				[2] = 2.2525417804718
			}
		},
		pwe_vs_safe_room_bell_01_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_level_bell_pvp",
			category = "level_talk_must_play",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_calm"
			},
			localization_strings = {
				[1] = "pwe_vs_safe_room_bell_01_b_01"
			},
			sound_events = {
				[1] = "pwe_vs_safe_room_bell_01_b_01"
			},
			sound_events_duration = {
				[1] = 2.7204999923706
			}
		},
		pwe_vs_safe_room_bell_02_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_level_bell_pvp",
			category = "level_talk_must_play",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_calm"
			},
			localization_strings = {
				[1] = "pwe_vs_safe_room_bell_02_b_01"
			},
			sound_events = {
				[1] = "pwe_vs_safe_room_bell_02_b_01"
			},
			sound_events_duration = {
				[1] = 3.7119791507721
			}
		},
		pwe_vs_safe_room_bell_03_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_level_bell_pvp",
			category = "level_talk_must_play",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_calm"
			},
			localization_strings = {
				[1] = "pwe_vs_safe_room_bell_03_b_01"
			},
			sound_events = {
				[1] = "pwe_vs_safe_room_bell_03_b_01"
			},
			sound_events_duration = {
				[1] = 3.4270207881927
			}
		},
		pwe_vs_safe_room_bell_04_a = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_level_bell_pvp",
			category = "level_talk_must_play",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_calm"
			},
			localization_strings = {
				[1] = "pwe_vs_safe_room_bell_04_a_01"
			},
			sound_events = {
				[1] = "pwe_vs_safe_room_bell_04_a_01"
			},
			sound_events_duration = {
				[1] = 3.3359167575836
			}
		},
		pwe_vs_safe_room_bell_05_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_level_bell_pvp",
			category = "level_talk_must_play",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_calm"
			},
			localization_strings = {
				[1] = "pwe_vs_safe_room_bell_05_b_01"
			},
			sound_events = {
				[1] = "pwe_vs_safe_room_bell_05_b_01"
			},
			sound_events_duration = {
				[1] = 2.7876250743866
			}
		},
		pwe_vs_safe_room_bell_06_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_level_bell_pvp",
			category = "level_talk_must_play",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_calm"
			},
			localization_strings = {
				[1] = "pwe_vs_safe_room_bell_06_b_01"
			},
			sound_events = {
				[1] = "pwe_vs_safe_room_bell_06_b_01"
			},
			sound_events_duration = {
				[1] = 4.1895418167114
			}
		},
		pwe_vs_safe_room_bell_07_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_level_bell_pvp",
			category = "level_talk_must_play",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_calm"
			},
			localization_strings = {
				[1] = "pwe_vs_safe_room_bell_07_b_01"
			},
			sound_events = {
				[1] = "pwe_vs_safe_room_bell_07_b_01"
			},
			sound_events_duration = {
				[1] = 3.5618541240692
			}
		},
		pwe_vs_safe_room_bell_08_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_level_bell_pvp",
			category = "level_talk_must_play",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_calm"
			},
			localization_strings = {
				[1] = "pwe_vs_safe_room_bell_08_b_01"
			},
			sound_events = {
				[1] = "pwe_vs_safe_room_bell_08_b_01"
			},
			sound_events_duration = {
				[1] = 2.5420000553131
			}
		},
		pwe_vs_safe_room_bell_09_a = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_level_bell_pvp",
			category = "level_talk_must_play",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_calm"
			},
			localization_strings = {
				[1] = "pwe_vs_safe_room_bell_09_a_01"
			},
			sound_events = {
				[1] = "pwe_vs_safe_room_bell_09_a_01"
			},
			sound_events_duration = {
				[1] = 4.4489793777466
			}
		},
		pwe_vs_safe_room_bell_10_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_level_bell_pvp",
			category = "level_talk_must_play",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_calm"
			},
			localization_strings = {
				[1] = "pwe_vs_safe_room_bell_10_b_01"
			},
			sound_events = {
				[1] = "pwe_vs_safe_room_bell_10_b_01"
			},
			sound_events_duration = {
				[1] = 4.1572709083557
			}
		},
		pwh_level_bell_destroyed_PVP = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "vs_level_bell_pvp",
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
				"pwh_level_bell_destroyed_01",
				"pwh_level_bell_destroyed_02",
				"pwh_level_bell_destroyed_03",
				"pwh_level_bell_destroyed_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_level_bell_destroyed_01",
				"pwh_level_bell_destroyed_02",
				"pwh_level_bell_destroyed_03",
				"pwh_level_bell_destroyed_04"
			},
			sound_events_duration = {
				7.7287707328796,
				8.5542497634888,
				6.7414164543152,
				7.5535416603088
			}
		},
		pwh_vs_safe_room_bell_01_a = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_level_bell_pvp",
			category = "level_talk_must_play",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_calm"
			},
			localization_strings = {
				[1] = "pwh_vs_safe_room_bell_01_a_01"
			},
			sound_events = {
				[1] = "pwh_vs_safe_room_bell_01_a_01"
			},
			sound_events_duration = {
				[1] = 6.031729221344
			}
		},
		pwh_vs_safe_room_bell_02_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_level_bell_pvp",
			category = "level_talk_must_play",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_calm"
			},
			localization_strings = {
				[1] = "pwh_vs_safe_room_bell_02_b_01"
			},
			sound_events = {
				[1] = "pwh_vs_safe_room_bell_02_b_01"
			},
			sound_events_duration = {
				[1] = 4.922833442688
			}
		},
		pwh_vs_safe_room_bell_03_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_level_bell_pvp",
			category = "level_talk_must_play",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_calm"
			},
			localization_strings = {
				[1] = "pwh_vs_safe_room_bell_03_b_01"
			},
			sound_events = {
				[1] = "pwh_vs_safe_room_bell_03_b_01"
			},
			sound_events_duration = {
				[1] = 5.9296040534973
			}
		},
		pwh_vs_safe_room_bell_04_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_level_bell_pvp",
			category = "level_talk_must_play",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_calm"
			},
			localization_strings = {
				[1] = "pwh_vs_safe_room_bell_04_b_01"
			},
			sound_events = {
				[1] = "pwh_vs_safe_room_bell_04_b_01"
			},
			sound_events_duration = {
				[1] = 4.1344375610352
			}
		},
		pwh_vs_safe_room_bell_05_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_level_bell_pvp",
			category = "level_talk_must_play",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_calm"
			},
			localization_strings = {
				[1] = "pwh_vs_safe_room_bell_05_b_01"
			},
			sound_events = {
				[1] = "pwh_vs_safe_room_bell_05_b_01"
			},
			sound_events_duration = {
				[1] = 3.6405415534973
			}
		},
		pwh_vs_safe_room_bell_06_a = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_level_bell_pvp",
			category = "level_talk_must_play",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_calm"
			},
			localization_strings = {
				[1] = "pwh_vs_safe_room_bell_06_a_01"
			},
			sound_events = {
				[1] = "pwh_vs_safe_room_bell_06_a_01"
			},
			sound_events_duration = {
				[1] = 6.9309582710266
			}
		},
		pwh_vs_safe_room_bell_07_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_level_bell_pvp",
			category = "level_talk_must_play",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_calm"
			},
			localization_strings = {
				[1] = "pwh_vs_safe_room_bell_07_b_01"
			},
			sound_events = {
				[1] = "pwh_vs_safe_room_bell_07_b_01"
			},
			sound_events_duration = {
				[1] = 3.450291633606
			}
		},
		pwh_vs_safe_room_bell_08_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_level_bell_pvp",
			category = "level_talk_must_play",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_calm"
			},
			localization_strings = {
				[1] = "pwh_vs_safe_room_bell_08_b_01"
			},
			sound_events = {
				[1] = "pwh_vs_safe_room_bell_08_b_01"
			},
			sound_events_duration = {
				[1] = 4.6807708740234
			}
		},
		pwh_vs_safe_room_bell_09_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_level_bell_pvp",
			category = "level_talk_must_play",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_calm"
			},
			localization_strings = {
				[1] = "pwh_vs_safe_room_bell_09_b_01"
			},
			sound_events = {
				[1] = "pwh_vs_safe_room_bell_09_b_01"
			},
			sound_events_duration = {
				[1] = 4.0243124961853
			}
		},
		pwh_vs_safe_room_bell_10_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_level_bell_pvp",
			category = "level_talk_must_play",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_calm"
			},
			localization_strings = {
				[1] = "pwh_vs_safe_room_bell_10_b_01"
			},
			sound_events = {
				[1] = "pwh_vs_safe_room_bell_10_b_01"
			},
			sound_events_duration = {
				[1] = 3.4142084121704
			}
		}
	})
end
