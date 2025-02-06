return function ()
	define_rule({
		probability = 1,
		name = "pdr_temple_lake_crossing_destroy_bell_complete_a",
		response = "pdr_temple_lake_crossing_destroy_bell_complete_a",
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
				"temple_lake_crossing_destroy_bell_complete_a"
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
				"temple_lake_crossing_destroy_bell_complete",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"temple_lake_crossing_destroy_bell_complete",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_temple_lake_crossing_long_route_a",
		response = "pdr_temple_lake_crossing_long_route_a",
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
				"temple_lake_crossing_long_route_a"
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
				"enemies_close",
				OP.LT,
				5
			},
			{
				"faction_memory",
				"temple_lake_crossing_long_route",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"temple_lake_crossing_long_route",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		response = "pdr_temple_lake_crossing_maze_b",
		name = "pdr_temple_lake_crossing_maze_b",
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
				"temple_lake_crossing_maze_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"enemies_close",
				OP.LT,
				7
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_temple_lake_crossing_red_herring_a",
		response = "pdr_temple_lake_crossing_red_herring_a",
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
				"temple_lake_crossing_red_herring_a"
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
				"enemies_close",
				OP.LT,
				7
			},
			{
				"faction_memory",
				"temple_lake_crossing_red_herring",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"temple_lake_crossing_red_herring",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		response = "pdr_temple_lake_crossing_red_herring_b",
		name = "pdr_temple_lake_crossing_red_herring_b",
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
				"temple_lake_crossing_red_herring_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"enemies_close",
				OP.LT,
				7
			}
		}
	})
	define_rule({
		response = "pdr_temple_lake_crossing_statue_b",
		name = "pdr_temple_lake_crossing_statue_b",
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
				"temple_lake_crossing_statue_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"enemies_close",
				OP.LT,
				7
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_temple_lake_crossing_temple_sighted_elf_a",
		response = "pdr_temple_lake_crossing_temple_sighted_elf_a",
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
				"temple_lake_crossing_temple_sighted"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"global_context",
				"wood_elf",
				OP.EQ,
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
				"temple_lake_crossing_temple_sighted",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"temple_lake_crossing_temple_sighted",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_temple_lake_crossing_temple_sighted_no_elf_a",
		response = "pdr_temple_lake_crossing_temple_sighted_no_elf_a",
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
				"temple_lake_crossing_temple_sighted"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"global_context",
				"wood_elf",
				OP.EQ,
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
				"temple_lake_crossing_temple_sighted",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"temple_lake_crossing_temple_sighted",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_temple_lake_crossing_toxic_air_a",
		response = "pdr_temple_lake_crossing_toxic_air_a",
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
				"temple_lake_crossing_toxic_air_a"
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
				"enemies_close",
				OP.LT,
				5
			},
			{
				"faction_memory",
				"temple_lake_crossing_toxic_air",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"temple_lake_crossing_toxic_air",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		response = "pdr_temple_sanctum_find_waystone_c",
		name = "pdr_temple_sanctum_find_waystone_c",
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
				"nik_temple_sanctum_find_waystone_b"
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
		response = "pdr_temple_sanctum_find_waystone_puzzle_area_open_b",
		name = "pdr_temple_sanctum_find_waystone_puzzle_area_open_b",
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
				"temple_sanctum_find_waystone_puzzle_area_open_a"
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
		response = "pdr_temple_sanctum_find_waystone_puzzle_first_step_b",
		name = "pdr_temple_sanctum_find_waystone_puzzle_first_step_b",
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
				"temple_sanctum_find_waystone_puzzle_first_step_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_memory",
				"slotted_first_event_piece",
				OP.EQ,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_temple_sanctum_find_waystone_puzzle_fragment_through_gap_a",
		response = "pdr_temple_sanctum_find_waystone_puzzle_fragment_through_gap_a",
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
				"temple_sanctum_find_waystone_puzzle_fragment_through_gap_a"
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
				"flow_event_started",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"flow_gap_piece_blocker",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"temple_sanctum_find_waystone_puzzle_fragment_through_gap",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"temple_sanctum_find_waystone_puzzle_fragment_through_gap",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		response = "pdr_temple_sanctum_find_waystone_puzzle_fragment_through_gap_b",
		name = "pdr_temple_sanctum_find_waystone_puzzle_fragment_through_gap_b",
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
				"temple_sanctum_find_waystone_puzzle_fragment_through_gap_a"
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
		name = "pdr_temple_sanctum_find_waystone_puzzle_scaffold_a",
		response = "pdr_temple_sanctum_find_waystone_puzzle_scaffold_a",
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
				"temple_sanctum_find_waystone_puzzle_scaffold_a"
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
				"temple_sanctum_find_waystone_puzzle_scaffold",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"temple_sanctum_find_waystone_puzzle_scaffold",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_temple_sanctum_find_waystone_puzzle_scaffold_broken_a",
		response = "pdr_temple_sanctum_find_waystone_puzzle_scaffold_broken_a",
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
				"temple_sanctum_find_waystone_puzzle_scaffold_broken_a"
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
				"temple_sanctum_find_waystone_puzzle_scaffold_broken",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"temple_sanctum_find_waystone_puzzle_scaffold_broken",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_temple_sanctum_find_waystone_puzzle_start_a",
		response = "pdr_temple_sanctum_find_waystone_puzzle_start_a",
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
				"temple_sanctum_find_waystone_puzzle_start_a"
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
				"temple_sanctum_find_waystone_puzzle_start",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"temple_sanctum_find_waystone_puzzle_start",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_temple_sanctum_find_waystone_puzzle_start_a_HEARD",
		response = "pdr_temple_sanctum_find_waystone_puzzle_start_a_HEARD",
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
				"temple_sanctum_find_waystone_c"
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
				"flow_found_waystone",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"temple_sanctum_find_waystone_puzzle_start",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"temple_sanctum_find_waystone_puzzle_start",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_temple_sanctum_find_waystone_puzzle_waystone_complete_a",
		response = "pdr_temple_sanctum_find_waystone_puzzle_waystone_complete_a",
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
				"temple_sanctum_find_waystone_puzzle_waystone_complete_a"
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
				"temple_sanctum_find_waystone_puzzle_waystone_complete",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"temple_sanctum_find_waystone_puzzle_waystone_complete",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_temple_sanctum_goods_elevator_a",
		response = "pdr_temple_sanctum_goods_elevator_a",
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
				"temple_sanctum_goods_elevator_a"
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
				"enemies_close",
				OP.LT,
				5
			},
			{
				"faction_memory",
				"temple_sanctum_goods_elevator",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"temple_sanctum_goods_elevator",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		response = "pdr_temple_sanctum_goods_elevator_b",
		name = "pdr_temple_sanctum_goods_elevator_b",
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
				"temple_sanctum_goods_elevator_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"enemies_close",
				OP.LT,
				7
			}
		}
	})
	define_rule({
		response = "pdr_temple_sanctum_great_seal_b",
		name = "pdr_temple_sanctum_great_seal_b",
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
				"temple_sanctum_great_seal_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"enemies_close",
				OP.LT,
				7
			}
		}
	})
	define_rule({
		response = "pdr_temple_sanctum_nightmare_gate_d",
		name = "pdr_temple_sanctum_nightmare_gate_d",
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
				"temple_sanctum_nightmare_gate_c"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"enemies_close",
				OP.LT,
				7
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_temple_slotted_waystone_DUMMY",
		response = "pdr_temple_slotted_waystone_DUMMY",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"temple_slotted_first_event_piece"
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
				"slotted_first_event_piece",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"user_memory",
				"slotted_first_event_piece",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pdr_temple_start_banter_a",
		response = "pdr_temple_start_banter_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"start_banter_a"
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
				"start_banter_a",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"start_banter_a",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		response = "pdr_temple_start_banter_c",
		name = "pdr_temple_start_banter_c",
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
				"temple_start_banter_b"
			},
			{
				"global_context",
				"wood_elf",
				OP.EQ,
				0
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
		name = "pdr_temple_wilds_gate_gather_a",
		response = "pdr_temple_wilds_gate_gather_a",
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
				"temple_wilds_gate_gather_a"
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
				"enemies_close",
				OP.LT,
				5
			},
			{
				"faction_memory",
				"temple_wilds_gate_gather",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"temple_wilds_gate_gather",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		response = "pdr_temple_wilds_lake_vista_elf_b",
		name = "pdr_temple_wilds_lake_vista_elf_b",
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
				"temple_wilds_lake_vista_elf_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"enemies_close",
				OP.LT,
				7
			}
		}
	})
	define_rule({
		response = "pdr_temple_wilds_lake_vista_no_elf_b",
		name = "pdr_temple_wilds_lake_vista_no_elf_b",
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
				"temple_wilds_lake_vista_no_elf_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"enemies_close",
				OP.LT,
				7
			}
		}
	})
	add_dialogues({
		pdr_temple_lake_crossing_destroy_bell_complete_a = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "dwarf_ranger_dlc_termite_1",
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
				[1] = "pdr_temple_lake_crossing_destroy_bell_complete_a_01",
				[2] = "pdr_temple_lake_crossing_destroy_bell_complete_a_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pdr_temple_lake_crossing_destroy_bell_complete_a_01",
				[2] = "pdr_temple_lake_crossing_destroy_bell_complete_a_02"
			},
			sound_events_duration = {
				[1] = 2.5967917442322,
				[2] = 3.0812916755676
			}
		},
		pdr_temple_lake_crossing_long_route_a = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "dwarf_ranger_dlc_termite_1",
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
				[1] = "pdr_temple_lake_crossing_long_route_a_01",
				[2] = "pdr_temple_lake_crossing_long_route_a_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pdr_temple_lake_crossing_long_route_a_01",
				[2] = "pdr_temple_lake_crossing_long_route_a_02"
			},
			sound_events_duration = {
				[1] = 2.4918959140778,
				[2] = 2.9383957386017
			}
		},
		pdr_temple_lake_crossing_maze_b = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "dwarf_ranger_dlc_termite_1",
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
				[1] = "pdr_temple_lake_crossing_maze_b_01",
				[2] = "pdr_temple_lake_crossing_maze_b_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pdr_temple_lake_crossing_maze_b_01",
				[2] = "pdr_temple_lake_crossing_maze_b_02"
			},
			sound_events_duration = {
				[1] = 3.5237500667572,
				[2] = 3.729749917984
			}
		},
		pdr_temple_lake_crossing_red_herring_a = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dwarf_ranger_dlc_termite_1",
			category = "level_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "pdr_temple_lake_crossing_red_herring_a_01"
			},
			sound_events = {
				[1] = "pdr_temple_lake_crossing_red_herring_a_01"
			},
			sound_events_duration = {
				[1] = 2.0843958854675
			}
		},
		pdr_temple_lake_crossing_red_herring_b = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "dwarf_ranger_dlc_termite_1",
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
				[1] = "pdr_temple_lake_crossing_red_herring_b_01",
				[2] = "pdr_temple_lake_crossing_red_herring_b_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pdr_temple_lake_crossing_red_herring_b_01",
				[2] = "pdr_temple_lake_crossing_red_herring_b_02"
			},
			sound_events_duration = {
				[1] = 4.996687412262,
				[2] = 4.7120418548584
			}
		},
		pdr_temple_lake_crossing_statue_b = {
			randomize_indexes_n = 0,
			face_animations_n = 3,
			database = "dwarf_ranger_dlc_termite_1",
			sound_events_n = 3,
			category = "level_talk",
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
				"pdr_temple_lake_crossing_statue_b_01",
				"pdr_temple_lake_crossing_statue_b_02",
				"pdr_temple_lake_crossing_statue_b_03"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_temple_lake_crossing_statue_b_01",
				"pdr_temple_lake_crossing_statue_b_02",
				"pdr_temple_lake_crossing_statue_b_03"
			},
			sound_events_duration = {
				1.143770813942,
				1.5972499847412,
				2.1156666278839
			}
		},
		pdr_temple_lake_crossing_temple_sighted_elf_a = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "dwarf_ranger_dlc_termite_1",
			sound_events_n = 2,
			category = "level_talk_must_play",
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
				[1] = "pdr_temple_lake_crossing_temple_sighted_elf_a_01",
				[2] = "pdr_temple_lake_crossing_temple_sighted_elf_a_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pdr_temple_lake_crossing_temple_sighted_elf_a_01",
				[2] = "pdr_temple_lake_crossing_temple_sighted_elf_a_02"
			},
			sound_events_duration = {
				[1] = 2.975145816803,
				[2] = 2.9757916927338
			}
		},
		pdr_temple_lake_crossing_temple_sighted_no_elf_a = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "dwarf_ranger_dlc_termite_1",
			sound_events_n = 2,
			category = "level_talk_must_play",
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
				[1] = "pdr_temple_lake_crossing_temple_sighted_no_elf_a_01",
				[2] = "pdr_temple_lake_crossing_temple_sighted_no_elf_a_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pdr_temple_lake_crossing_temple_sighted_no_elf_a_01",
				[2] = "pdr_temple_lake_crossing_temple_sighted_no_elf_a_02"
			},
			sound_events_duration = {
				[1] = 4.9632501602173,
				[2] = 4.7810416221619
			}
		},
		pdr_temple_lake_crossing_toxic_air_a = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "dwarf_ranger_dlc_termite_1",
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
				[1] = "pdr_temple_lake_crossing_toxic_air_a_01",
				[2] = "pdr_temple_lake_crossing_toxic_air_a_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pdr_temple_lake_crossing_toxic_air_a_01",
				[2] = "pdr_temple_lake_crossing_toxic_air_a_02"
			},
			sound_events_duration = {
				[1] = 4.1979789733887,
				[2] = 3.0842499732971
			}
		},
		pdr_temple_sanctum_find_waystone_c = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "dwarf_ranger_dlc_termite_1",
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
				[1] = "pdr_temple_sanctum_find_waystone_c_01",
				[2] = "pdr_temple_sanctum_find_waystone_c_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pdr_temple_sanctum_find_waystone_c_01",
				[2] = "pdr_temple_sanctum_find_waystone_c_02"
			},
			sound_events_duration = {
				[1] = 3.5991041660309,
				[2] = 3.7814791202545
			}
		},
		pdr_temple_sanctum_find_waystone_puzzle_area_open_b = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "dwarf_ranger_dlc_termite_1",
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
				[1] = "pdr_temple_sanctum_find_waystone_puzzle_area_open_b_01",
				[2] = "pdr_temple_sanctum_find_waystone_puzzle_area_open_b_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pdr_temple_sanctum_find_waystone_puzzle_area_open_b_01",
				[2] = "pdr_temple_sanctum_find_waystone_puzzle_area_open_b_02"
			},
			sound_events_duration = {
				[1] = 2.0943541526794,
				[2] = 3.0913541316986
			}
		},
		pdr_temple_sanctum_find_waystone_puzzle_first_step_b = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "dwarf_ranger_dlc_termite_1",
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
				[1] = "pdr_temple_sanctum_find_waystone_puzzle_first_step_b_01",
				[2] = "pdr_temple_sanctum_find_waystone_puzzle_first_step_b_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pdr_temple_sanctum_find_waystone_puzzle_first_step_b_01",
				[2] = "pdr_temple_sanctum_find_waystone_puzzle_first_step_b_02"
			},
			sound_events_duration = {
				[1] = 3.818437576294,
				[2] = 4.4981250762939
			}
		},
		pdr_temple_sanctum_find_waystone_puzzle_fragment_through_gap_a = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "dwarf_ranger_dlc_termite_1",
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
				[1] = "pdr_temple_sanctum_find_waystone_puzzle_fragment_through_gap_a_01",
				[2] = "pdr_temple_sanctum_find_waystone_puzzle_fragment_through_gap_a_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pdr_temple_sanctum_find_waystone_puzzle_fragment_through_gap_a_01",
				[2] = "pdr_temple_sanctum_find_waystone_puzzle_fragment_through_gap_a_02"
			},
			sound_events_duration = {
				[1] = 2.8750834465027,
				[2] = 1.9369583129883
			}
		},
		pdr_temple_sanctum_find_waystone_puzzle_fragment_through_gap_b = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "dwarf_ranger_dlc_termite_1",
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
				[1] = "pdr_temple_sanctum_find_waystone_puzzle_fragment_through_gap_b_01",
				[2] = "pdr_temple_sanctum_find_waystone_puzzle_fragment_through_gap_b_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pdr_temple_sanctum_find_waystone_puzzle_fragment_through_gap_b_01",
				[2] = "pdr_temple_sanctum_find_waystone_puzzle_fragment_through_gap_b_02"
			},
			sound_events_duration = {
				[1] = 4.1294584274292,
				[2] = 3.970062494278
			}
		},
		pdr_temple_sanctum_find_waystone_puzzle_scaffold_a = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "dwarf_ranger_dlc_termite_1",
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
				[1] = "pdr_temple_sanctum_find_waystone_puzzle_scaffold_a_01",
				[2] = "pdr_temple_sanctum_find_waystone_puzzle_scaffold_a_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pdr_temple_sanctum_find_waystone_puzzle_scaffold_a_01",
				[2] = "pdr_temple_sanctum_find_waystone_puzzle_scaffold_a_02"
			},
			sound_events_duration = {
				[1] = 4.8341665267944,
				[2] = 3.0176665782928
			}
		},
		pdr_temple_sanctum_find_waystone_puzzle_scaffold_broken_a = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "dwarf_ranger_dlc_termite_1",
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
				[1] = "pdr_temple_sanctum_find_waystone_puzzle_scaffold_broken_a_01",
				[2] = "pdr_temple_sanctum_find_waystone_puzzle_scaffold_broken_a_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pdr_temple_sanctum_find_waystone_puzzle_scaffold_broken_a_01",
				[2] = "pdr_temple_sanctum_find_waystone_puzzle_scaffold_broken_a_02"
			},
			sound_events_duration = {
				[1] = 1.8048541545868,
				[2] = 2.5156042575836
			}
		},
		pdr_temple_sanctum_find_waystone_puzzle_start_a = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "dwarf_ranger_dlc_termite_1",
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
				[1] = "pdr_temple_sanctum_find_waystone_puzzle_start_a_01",
				[2] = "pdr_temple_sanctum_find_waystone_puzzle_start_a_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pdr_temple_sanctum_find_waystone_puzzle_start_a_01",
				[2] = "pdr_temple_sanctum_find_waystone_puzzle_start_a_02"
			},
			sound_events_duration = {
				[1] = 3.7093541622162,
				[2] = 3.1863334178925
			}
		},
		pdr_temple_sanctum_find_waystone_puzzle_start_a_HEARD = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "dwarf_ranger_dlc_termite_1",
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
				[1] = "pdr_temple_sanctum_find_waystone_puzzle_start_a_01",
				[2] = "pdr_temple_sanctum_find_waystone_puzzle_start_a_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pdr_temple_sanctum_find_waystone_puzzle_start_a_01",
				[2] = "pdr_temple_sanctum_find_waystone_puzzle_start_a_02"
			},
			sound_events_duration = {
				[1] = 3.7093541622162,
				[2] = 3.1863334178925
			}
		},
		pdr_temple_sanctum_find_waystone_puzzle_waystone_complete_a = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "dwarf_ranger_dlc_termite_1",
			sound_events_n = 2,
			category = "level_talk_must_play",
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
				[1] = "pdr_temple_sanctum_find_waystone_puzzle_waystone_complete_a_01",
				[2] = "pdr_temple_sanctum_find_waystone_puzzle_waystone_complete_a_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pdr_temple_sanctum_find_waystone_puzzle_waystone_complete_a_01",
				[2] = "pdr_temple_sanctum_find_waystone_puzzle_waystone_complete_a_02"
			},
			sound_events_duration = {
				[1] = 1.8174583911896,
				[2] = 1.5907708406448
			}
		},
		pdr_temple_sanctum_goods_elevator_a = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "dwarf_ranger_dlc_termite_1",
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
				[1] = "pdr_temple_sanctum_goods_elevator_a_01",
				[2] = "pdr_temple_sanctum_goods_elevator_a_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pdr_temple_sanctum_goods_elevator_a_01",
				[2] = "pdr_temple_sanctum_goods_elevator_a_02"
			},
			sound_events_duration = {
				[1] = 3.3388957977295,
				[2] = 2.1718332767487
			}
		},
		pdr_temple_sanctum_goods_elevator_b = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "dwarf_ranger_dlc_termite_1",
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
				[1] = "pdr_temple_sanctum_goods_elevator_b_01",
				[2] = "pdr_temple_sanctum_goods_elevator_b_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pdr_temple_sanctum_goods_elevator_b_01",
				[2] = "pdr_temple_sanctum_goods_elevator_b_02"
			},
			sound_events_duration = {
				[1] = 3.628666639328,
				[2] = 3.8521249294281
			}
		},
		pdr_temple_sanctum_great_seal_b = {
			randomize_indexes_n = 0,
			face_animations_n = 3,
			database = "dwarf_ranger_dlc_termite_1",
			sound_events_n = 3,
			category = "level_talk",
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
				"pdr_temple_sanctum_great_seal_b_01",
				"pdr_temple_sanctum_great_seal_b_02",
				"pdr_temple_sanctum_great_seal_b_03"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_temple_sanctum_great_seal_b_01",
				"pdr_temple_sanctum_great_seal_b_02",
				"pdr_temple_sanctum_great_seal_b_03"
			},
			sound_events_duration = {
				1.0612499713898,
				2.682416677475,
				3.5011250972748
			}
		},
		pdr_temple_sanctum_nightmare_gate_d = {
			override_awareness = "override_nightmare_gate_c_done",
			randomize_indexes_n = 0,
			face_animations_n = 3,
			database = "dwarf_ranger_dlc_termite_1",
			sound_events_n = 3,
			category = "level_talk",
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
				"pdr_temple_sanctum_nightmare_gate_d_01",
				"pdr_temple_sanctum_nightmare_gate_d_02",
				"pdr_temple_sanctum_nightmare_gate_d_03"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_temple_sanctum_nightmare_gate_d_01",
				"pdr_temple_sanctum_nightmare_gate_d_02",
				"pdr_temple_sanctum_nightmare_gate_d_03"
			},
			sound_events_duration = {
				2.850250005722,
				4.2119998931885,
				2.6063542366028
			}
		},
		pdr_temple_slotted_waystone_DUMMY = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dwarf_ranger_dlc_termite_1",
			category = "level_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "dummy"
			},
			sound_events = {
				[1] = "dummy"
			},
			sound_events_duration = {
				[1] = 0.20000000298023
			}
		},
		pdr_temple_start_banter_a = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "dwarf_ranger_dlc_termite_1",
			sound_events_n = 2,
			category = "level_talk_must_play",
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
				[1] = "pdr_temple_start_banter_no_elf_a_01",
				[2] = "pdr_temple_start_banter_no_elf_a_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pdr_temple_start_banter_no_elf_a_01",
				[2] = "pdr_temple_start_banter_no_elf_a_02"
			},
			sound_events_duration = {
				[1] = 4.3079166412353,
				[2] = 3.5311040878296
			}
		},
		pdr_temple_start_banter_c = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "dwarf_ranger_dlc_termite_1",
			sound_events_n = 2,
			category = "level_talk_must_play",
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
				[1] = "pdr_temple_start_banter_no_elf_c_01",
				[2] = "pdr_temple_start_banter_no_elf_c_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pdr_temple_start_banter_no_elf_c_01",
				[2] = "pdr_temple_start_banter_no_elf_c_02"
			},
			sound_events_duration = {
				[1] = 5.6126041412353,
				[2] = 3.9897499084473
			}
		},
		pdr_temple_wilds_gate_gather_a = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "dwarf_ranger_dlc_termite_1",
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
				[1] = "pdr_temple_wilds_gate_gather_a_01",
				[2] = "pdr_temple_wilds_gate_gather_a_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pdr_temple_wilds_gate_gather_a_01",
				[2] = "pdr_temple_wilds_gate_gather_a_02"
			},
			sound_events_duration = {
				[1] = 3.0512917041779,
				[2] = 2.2778959274292
			}
		},
		pdr_temple_wilds_lake_vista_elf_b = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "dwarf_ranger_dlc_termite_1",
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
				[1] = "pdr_temple_wilds_lake_vista_elf_b_01",
				[2] = "pdr_temple_wilds_lake_vista_elf_b_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pdr_temple_wilds_lake_vista_elf_b_01",
				[2] = "pdr_temple_wilds_lake_vista_elf_b_02"
			},
			sound_events_duration = {
				[1] = 5.4499793052673,
				[2] = 5.4371666908264
			}
		},
		pdr_temple_wilds_lake_vista_no_elf_b = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "dwarf_ranger_dlc_termite_1",
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
				[1] = "pdr_temple_wilds_lake_vista_no_elf_b_01",
				[2] = "pdr_temple_wilds_lake_vista_no_elf_b_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pdr_temple_wilds_lake_vista_no_elf_b_01",
				[2] = "pdr_temple_wilds_lake_vista_no_elf_b_02"
			},
			sound_events_duration = {
				[1] = 5.2204999923706,
				[2] = 6.5780210494995
			}
		}
	})
end
