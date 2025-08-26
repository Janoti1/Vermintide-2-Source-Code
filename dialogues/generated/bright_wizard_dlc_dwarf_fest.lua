return function ()
	define_rule({
		response = "pbw_dal_finale_filth_halls_a",
		name = "pbw_dal_finale_filth_halls_a",
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
				"dal_finale_filth_halls_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"enemies_close",
				OP.LT,
				5
			}
		}
	})
	define_rule({
		response = "pbw_dal_finale_hall_of_heroes_leave_a",
		name = "pbw_dal_finale_hall_of_heroes_leave_a",
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
				"dal_finale_hall_of_heroes_leave_a"
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
		name = "pbw_dal_finale_hall_of_heroes_troll_mid_fight_a",
		response = "pbw_dal_finale_hall_of_heroes_troll_mid_fight_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"dal_troll_mid_fight_a"
			},
			{
				"user_memory",
				"dal_finale_hall_of_heroes_troll_mid_fight_a",
				OP.EQ,
				0
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
				"user_memory",
				"dal_finale_hall_of_heroes_troll_mid_fight_a",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		response = "pbw_dal_finale_hall_of_heroes_troll_slain_a",
		name = "pbw_dal_finale_hall_of_heroes_troll_slain_a",
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
				"dal_finale_hall_of_heroes_troll_slain_a"
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
		response = "pbw_dal_finale_troll_chief_b",
		name = "pbw_dal_finale_troll_chief_b",
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
				"dal_finale_troll_chief_a"
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
		response = "pbw_dal_lifts_hub_first_task_a",
		name = "pbw_dal_lifts_hub_first_task_a",
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
				"dal_lifts_hub_first_task"
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
		response = "pbw_dal_lifts_hub_lever_pulled_a",
		name = "pbw_dal_lifts_hub_lever_pulled_a",
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
				"dal_lifts_hub_lever_pulled_a"
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
		response = "pbw_dal_lifts_hub_lever_pulled_b",
		name = "pbw_dal_lifts_hub_lever_pulled_b",
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
				"dal_lifts_hub_lever_pulled_a"
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
		response = "pbw_dal_lifts_hub_lever_pulled_c",
		name = "pbw_dal_lifts_hub_lever_pulled_c",
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
				"dal_lifts_hub_lever_pulled_b"
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
		response = "pbw_dal_lifts_hub_lift_sighted_c",
		name = "pbw_dal_lifts_hub_lift_sighted_c",
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
				"dal_lifts_hub_lift_sighted_b"
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
		response = "pbw_dal_lifts_hub_lift_started_a",
		name = "pbw_dal_lifts_hub_lift_started_a",
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
				"dal_lifts_hub_lift_started_a"
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
		name = "pbw_dal_lifts_hub_return_final_task_complete_a",
		response = "pbw_dal_lifts_hub_return_final_task_complete_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"faction_memory",
				"flow_tasks_complete",
				OP.EQ,
				3
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"dal_lifts_hub_return_task_complete"
			},
			{
				"faction_memory",
				"dal_lifts_hub_return_final_task_complete_a",
				OP.EQ,
				0
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
				"dal_lifts_hub_return_final_task_complete_a",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pbw_dal_lifts_hub_return_first_task_complete_a",
		response = "pbw_dal_lifts_hub_return_first_task_complete_a",
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
				"dal_lifts_hub_return_task_complete"
			},
			{
				"faction_memory",
				"flow_tasks_complete",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"dal_lifts_hub_return_first_task_complete_a",
				OP.EQ,
				0
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
				"dal_lifts_hub_return_first_task_complete_a",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pbw_dal_lifts_hub_return_pipe_complete_a",
		response = "pbw_dal_lifts_hub_return_pipe_complete_a",
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
				"dal_lifts_hub_return_pipe_complete_a"
			},
			{
				"faction_memory",
				"flow_task_water_complete",
				OP.EQ,
				1
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"enemies_close",
				OP.LT,
				5
			}
		},
		on_done = {
			{
				"faction_memory",
				"flow_task_water_complete",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		response = "pbw_dal_lifts_lift_is_moving_reminder_a",
		name = "pbw_dal_lifts_lift_is_moving_reminder_a",
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
				"dal_lifts_lift_is_moving_reminder_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
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
		response = "pbw_dal_lifts_lift_rising_water_a",
		name = "pbw_dal_lifts_lift_rising_water_a",
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
				"dal_lifts_lift_rising_water_a"
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
		response = "pbw_dal_lifts_path_cog_cog_placed_a",
		name = "pbw_dal_lifts_path_cog_cog_placed_a",
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
				"dal_lifts_path_cog_cog_placed_a"
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
		response = "pbw_dal_lifts_path_cog_entered_a",
		name = "pbw_dal_lifts_path_cog_entered_a",
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
				"dal_lifts_path_cog_entered_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"enemies_close",
				OP.LT,
				5
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pbw_dal_lifts_path_cog_seeing_cog_a",
		response = "pbw_dal_lifts_path_cog_seeing_cog_a",
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
				"dal_lifts_path_cog_seeing_cog_a"
			},
			{
				"faction_memory",
				"dal_lifts_path_cog_seeing_cog_a",
				OP.EQ,
				0
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"query_context",
				"distance",
				OP.LTEQ,
				150
			}
		},
		on_done = {
			{
				"faction_memory",
				"dal_lifts_path_cog_seeing_cog_a",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		response = "pbw_dal_lifts_path_cog_taken_cog_a",
		name = "pbw_dal_lifts_path_cog_taken_cog_a",
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
				"dal_lifts_path_cog_taken_cog_a"
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
		response = "pbw_dal_lifts_path_pipe_entered_a",
		name = "pbw_dal_lifts_path_pipe_entered_a",
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
				"dal_lifts_path_pipe_entered_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"enemies_close",
				OP.LT,
				5
			}
		}
	})
	define_rule({
		response = "pbw_dal_lifts_path_pipe_entered_b",
		name = "pbw_dal_lifts_path_pipe_entered_b",
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
				"dal_lifts_path_pipe_entered_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"enemies_close",
				OP.LT,
				5
			}
		}
	})
	define_rule({
		response = "pbw_dal_lifts_path_pipe_lever_pulled_complete_a",
		name = "pbw_dal_lifts_path_pipe_lever_pulled_complete_a",
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
				"dal_lifts_path_pipe_lever_pulled_complete_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"enemies_close",
				OP.LT,
				5
			}
		}
	})
	define_rule({
		probability = 1,
		name = "pbw_dal_lifts_path_pipe_seeing_blockage_a",
		response = "pbw_dal_lifts_path_pipe_seeing_blockage_a",
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
				"dal_lifts_path_pipe_seeing_blockage_a"
			},
			{
				"faction_memory",
				"dal_lifts_path_pipe_seeing_blockage_a",
				OP.EQ,
				0
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
				"dal_lifts_path_pipe_seeing_blockage_a",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		response = "pbw_dal_lifts_path_pipe_seeing_blockage_b",
		name = "pbw_dal_lifts_path_pipe_seeing_blockage_b",
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
				"dal_lifts_path_pipe_seeing_blockage_a"
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
		response = "pbw_dal_lifts_path_pipe_seeing_lever_a",
		name = "pbw_dal_lifts_path_pipe_seeing_lever_a",
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
				"dal_lifts_path_pipe_seeing_lever_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"enemies_close",
				OP.LT,
				5
			}
		}
	})
	define_rule({
		response = "pbw_dal_lifts_path_pipe_shutter_walk_b",
		name = "pbw_dal_lifts_path_pipe_shutter_walk_b",
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
				"nco_dal_lifts_path_pipe_shutter_walk_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"enemies_close",
				OP.LT,
				5
			}
		}
	})
	define_rule({
		response = "pbw_dal_lifts_path_pipe_traversal_a",
		name = "pbw_dal_lifts_path_pipe_traversal_a",
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
				"dal_lifts_path_pipe_traversal_a"
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
		response = "pbw_dal_lifts_path_pipe_traversal_b",
		name = "pbw_dal_lifts_path_pipe_traversal_b",
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
				"dal_lifts_path_pipe_traversal_a"
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
		response = "pbw_dal_lifts_path_wheel_complete_a",
		name = "pbw_dal_lifts_path_wheel_complete_a",
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
				"dal_lifts_path_wheel_complete_a"
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
		response = "pbw_dal_lifts_path_wheel_complete_b",
		name = "pbw_dal_lifts_path_wheel_complete_b",
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
				"dal_lifts_path_wheel_complete_a"
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
		response = "pbw_dal_lifts_path_wheel_entered_a",
		name = "pbw_dal_lifts_path_wheel_entered_a",
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
				"dal_lifts_path_wheel_entered_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"enemies_close",
				OP.LT,
				5
			}
		}
	})
	define_rule({
		response = "pbw_dal_lifts_path_wheel_seeing_brake_a",
		name = "pbw_dal_lifts_path_wheel_seeing_brake_a",
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
				"dal_lifts_path_wheel_seeing_brake_a"
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
		response = "pbw_dal_lights_gate_sealed_b",
		name = "pbw_dal_lights_gate_sealed_b",
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
				"dal_lights_gate_sealed_a"
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
		response = "pbw_dal_lights_trolls_dead_complete_b",
		name = "pbw_dal_lights_trolls_dead_complete_b",
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
				"dal_lights_trolls_dead_complete_a"
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
		response = "pbw_dal_outer_approach_a",
		name = "pbw_dal_outer_approach_a",
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
				"dal_outer_approach_a"
			},
			{
				"user_context",
				"enemies_close",
				OP.LT,
				5
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
		response = "pbw_dal_outer_close_c",
		name = "pbw_dal_outer_close_c",
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
				"dal_outer_close_b"
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
		response = "pbw_dal_outer_troll_a",
		name = "pbw_dal_outer_troll_a",
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
				"dal_outer_troll_a"
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
		response = "pbw_dal_outer_troll_dead_complete_a",
		name = "pbw_dal_outer_troll_dead_complete_a",
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
				"dal_outer_troll_dead_complete_a"
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
		response = "pbw_dal_start_banter_d",
		name = "pbw_dal_start_banter_d",
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
				"nco_dal_start_banter_c"
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
		name = "pbw_dal_start_vista_a",
		response = "pbw_dal_start_vista_a",
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
				"dal_start_vista_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"enemies_close",
				OP.LT,
				7
			},
			{
				"faction_memory",
				"dal_start_vista_a",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"dal_start_vista_a",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		response = "pbw_dal_start_vista_b",
		name = "pbw_dal_start_vista_b",
		probability = 1,
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"user_context",
				"enemies_close",
				OP.LT,
				7
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"dal_start_vista_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			}
		}
	})
	add_dialogues({
		pbw_dal_finale_filth_halls_a = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard_dlc_dwarf_fest",
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
				[1] = "pbw_dal_finale_filth_halls_a_01",
				[2] = "pbw_dal_finale_filth_halls_a_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pbw_dal_finale_filth_halls_a_01",
				[2] = "pbw_dal_finale_filth_halls_a_02"
			},
			sound_events_duration = {
				[1] = 4.2481460571289,
				[2] = 4.7502918243408
			}
		},
		pbw_dal_finale_hall_of_heroes_leave_a = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard_dlc_dwarf_fest",
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
				[1] = "pbw_dal_finale_hall_of_heroes_leave_a_01",
				[2] = "pbw_dal_finale_hall_of_heroes_leave_a_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pbw_dal_finale_hall_of_heroes_leave_a_01",
				[2] = "pbw_dal_finale_hall_of_heroes_leave_a_02"
			},
			sound_events_duration = {
				[1] = 2.3776874542236,
				[2] = 4.8670415878296
			}
		},
		pbw_dal_finale_hall_of_heroes_troll_mid_fight_a = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard_dlc_dwarf_fest",
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
				[1] = "pbw_dal_finale_hall_of_heroes_troll_mid_fight_a_01",
				[2] = "pbw_dal_finale_hall_of_heroes_troll_mid_fight_a_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pbw_dal_finale_hall_of_heroes_troll_mid_fight_a_01",
				[2] = "pbw_dal_finale_hall_of_heroes_troll_mid_fight_a_02"
			},
			sound_events_duration = {
				[1] = 2.6194791793823,
				[2] = 2.5223541259766
			}
		},
		pbw_dal_finale_hall_of_heroes_troll_slain_a = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard_dlc_dwarf_fest",
			sound_events_n = 2,
			category = "special_occasion_interrupt",
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
				[1] = "pbw_dal_finale_hall_of_heroes_troll_slain_a_01",
				[2] = "pbw_dal_finale_hall_of_heroes_troll_slain_a_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pbw_dal_finale_hall_of_heroes_troll_slain_a_01",
				[2] = "pbw_dal_finale_hall_of_heroes_troll_slain_a_02"
			},
			sound_events_duration = {
				[1] = 3.7635416984558,
				[2] = 3.683833360672
			}
		},
		pbw_dal_finale_troll_chief_b = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard_dlc_dwarf_fest",
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
				[1] = "pbw_dal_finale_troll_chief_b_01",
				[2] = "pbw_dal_finale_troll_chief_b_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pbw_dal_finale_troll_chief_b_01",
				[2] = "pbw_dal_finale_troll_chief_b_02"
			},
			sound_events_duration = {
				[1] = 3.4954373836517,
				[2] = 5.0813956260681
			}
		},
		pbw_dal_lifts_hub_first_task_a = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard_dlc_dwarf_fest",
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
				[1] = "pbw_dal_lifts_hub_first_task_a_01",
				[2] = "pbw_dal_lifts_hub_first_task_a_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pbw_dal_lifts_hub_first_task_a_01",
				[2] = "pbw_dal_lifts_hub_first_task_a_02"
			},
			sound_events_duration = {
				[1] = 3.5801875591278,
				[2] = 2.9864375591278
			}
		},
		pbw_dal_lifts_hub_lever_pulled_a = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "bright_wizard_dlc_dwarf_fest",
			category = "level_talk_must_play",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "pbw_dal_lifts_hub_lever_pulled_a_01"
			},
			sound_events = {
				[1] = "pbw_dal_lifts_hub_lever_pulled_a_01"
			},
			sound_events_duration = {
				[1] = 2.8858125209808
			}
		},
		pbw_dal_lifts_hub_lever_pulled_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "bright_wizard_dlc_dwarf_fest",
			category = "level_talk_must_play",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "pbw_dal_lifts_hub_lever_pulled_b_01"
			},
			sound_events = {
				[1] = "pbw_dal_lifts_hub_lever_pulled_b_01"
			},
			sound_events_duration = {
				[1] = 7.7916460037231
			}
		},
		pbw_dal_lifts_hub_lever_pulled_c = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard_dlc_dwarf_fest",
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
				[1] = "pbw_dal_lifts_hub_lever_pulled_c_01",
				[2] = "pbw_dal_lifts_hub_lever_pulled_c_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pbw_dal_lifts_hub_lever_pulled_c_01",
				[2] = "pbw_dal_lifts_hub_lever_pulled_c_02"
			},
			sound_events_duration = {
				[1] = 2.9153542518616,
				[2] = 3.907083272934
			}
		},
		pbw_dal_lifts_hub_lift_sighted_c = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard_dlc_dwarf_fest",
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
				[1] = "pbw_dal_lifts_hub_lift_sighted_c_01",
				[2] = "pbw_dal_lifts_hub_lift_sighted_c_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pbw_dal_lifts_hub_lift_sighted_c_01",
				[2] = "pbw_dal_lifts_hub_lift_sighted_c_02"
			},
			sound_events_duration = {
				[1] = 2.2865417003632,
				[2] = 3.6485624313355
			}
		},
		pbw_dal_lifts_hub_lift_started_a = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard_dlc_dwarf_fest",
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
				[1] = "pbw_dal_lifts_hub_lift_started_a_01",
				[2] = "pbw_dal_lifts_hub_lift_started_a_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pbw_dal_lifts_hub_lift_started_a_01",
				[2] = "pbw_dal_lifts_hub_lift_started_a_02"
			},
			sound_events_duration = {
				[1] = 2.7572290897369,
				[2] = 3.4758334159851
			}
		},
		pbw_dal_lifts_hub_return_final_task_complete_a = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard_dlc_dwarf_fest",
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
				[1] = "pbw_dal_lifts_hub_return_final_task_complete_a_01",
				[2] = "pbw_dal_lifts_hub_return_final_task_complete_a_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pbw_dal_lifts_hub_return_final_task_complete_a_01",
				[2] = "pbw_dal_lifts_hub_return_final_task_complete_a_02"
			},
			sound_events_duration = {
				[1] = 3.4390833377838,
				[2] = 4.7128748893738
			}
		},
		pbw_dal_lifts_hub_return_first_task_complete_a = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard_dlc_dwarf_fest",
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
				[1] = "pbw_dal_lifts_hub_return_first_task_complete_a_01",
				[2] = "pbw_dal_lifts_hub_return_first_task_complete_a_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pbw_dal_lifts_hub_return_first_task_complete_a_01",
				[2] = "pbw_dal_lifts_hub_return_first_task_complete_a_02"
			},
			sound_events_duration = {
				[1] = 2.6912291049957,
				[2] = 4.3006458282471
			}
		},
		pbw_dal_lifts_hub_return_pipe_complete_a = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard_dlc_dwarf_fest",
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
				[1] = "pbw_dal_lifts_hub_return_pipe_complete_a_01",
				[2] = "pbw_dal_lifts_hub_return_pipe_complete_a_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pbw_dal_lifts_hub_return_pipe_complete_a_01",
				[2] = "pbw_dal_lifts_hub_return_pipe_complete_a_02"
			},
			sound_events_duration = {
				[1] = 2.2066874504089,
				[2] = 2.4967501163483
			}
		},
		pbw_dal_lifts_lift_is_moving_reminder_a = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard_dlc_dwarf_fest",
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
				[1] = "pbw_dal_lifts_lift_is_moving_reminder_a_01",
				[2] = "pbw_dal_lifts_lift_is_moving_reminder_a_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pbw_dal_lifts_lift_is_moving_reminder_a_01",
				[2] = "pbw_dal_lifts_lift_is_moving_reminder_a_02"
			},
			sound_events_duration = {
				[1] = 2.9065415859222,
				[2] = 2.5860416889191
			}
		},
		pbw_dal_lifts_lift_rising_water_a = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard_dlc_dwarf_fest",
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
				[1] = "pbw_dal_lifts_lift_rising_water_a_01",
				[2] = "pbw_dal_lifts_lift_rising_water_a_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pbw_dal_lifts_lift_rising_water_a_01",
				[2] = "pbw_dal_lifts_lift_rising_water_a_02"
			},
			sound_events_duration = {
				[1] = 3.884708404541,
				[2] = 2.7664999961853
			}
		},
		pbw_dal_lifts_path_cog_cog_placed_a = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard_dlc_dwarf_fest",
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
				[1] = "pbw_dal_lifts_path_cog_cog_placed_a_01",
				[2] = "pbw_dal_lifts_path_cog_cog_placed_a_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pbw_dal_lifts_path_cog_cog_placed_a_01",
				[2] = "pbw_dal_lifts_path_cog_cog_placed_a_02"
			},
			sound_events_duration = {
				[1] = 3.477979183197,
				[2] = 1.8664582967758
			}
		},
		pbw_dal_lifts_path_cog_entered_a = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard_dlc_dwarf_fest",
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
				[1] = "pbw_dal_lifts_path_cog_entered_a_01",
				[2] = "pbw_dal_lifts_path_cog_entered_a_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pbw_dal_lifts_path_cog_entered_a_01",
				[2] = "pbw_dal_lifts_path_cog_entered_a_02"
			},
			sound_events_duration = {
				[1] = 2.6540417671204,
				[2] = 3.3343749046326
			}
		},
		pbw_dal_lifts_path_cog_seeing_cog_a = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard_dlc_dwarf_fest",
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
				[1] = "pbw_dal_lifts_path_cog_seeing_cog_a_01",
				[2] = "pbw_dal_lifts_path_cog_seeing_cog_a_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pbw_dal_lifts_path_cog_seeing_cog_a_01",
				[2] = "pbw_dal_lifts_path_cog_seeing_cog_a_02"
			},
			sound_events_duration = {
				[1] = 3.9117083549499,
				[2] = 2.9945833683014
			}
		},
		pbw_dal_lifts_path_cog_taken_cog_a = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard_dlc_dwarf_fest",
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
				[1] = "pbw_dal_lifts_path_cog_taken_cog_a_01",
				[2] = "pbw_dal_lifts_path_cog_taken_cog_a_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pbw_dal_lifts_path_cog_taken_cog_a_01",
				[2] = "pbw_dal_lifts_path_cog_taken_cog_a_02"
			},
			sound_events_duration = {
				[1] = 2.2241041660309,
				[2] = 2.9823541641235
			}
		},
		pbw_dal_lifts_path_pipe_entered_a = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard_dlc_dwarf_fest",
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
				[1] = "pbw_dal_lifts_path_pipe_entered_a_01",
				[2] = "pbw_dal_lifts_path_pipe_entered_a_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pbw_dal_lifts_path_pipe_entered_a_01",
				[2] = "pbw_dal_lifts_path_pipe_entered_a_02"
			},
			sound_events_duration = {
				[1] = 4.2690834999084,
				[2] = 2.823041677475
			}
		},
		pbw_dal_lifts_path_pipe_entered_b = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard_dlc_dwarf_fest",
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
				[1] = "pbw_dal_lifts_path_pipe_entered_b_01",
				[2] = "pbw_dal_lifts_path_pipe_entered_b_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pbw_dal_lifts_path_pipe_entered_b_01",
				[2] = "pbw_dal_lifts_path_pipe_entered_b_02"
			},
			sound_events_duration = {
				[1] = 3.7309999465942,
				[2] = 3.0024583339691
			}
		},
		pbw_dal_lifts_path_pipe_lever_pulled_complete_a = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard_dlc_dwarf_fest",
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
				[1] = "pbw_dal_lifts_path_pipe_lever_pulled_complete_a_01",
				[2] = "pbw_dal_lifts_path_pipe_lever_pulled_complete_a_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pbw_dal_lifts_path_pipe_lever_pulled_complete_a_01",
				[2] = "pbw_dal_lifts_path_pipe_lever_pulled_complete_a_02"
			},
			sound_events_duration = {
				[1] = 3.4726667404175,
				[2] = 3.3994998931885
			}
		},
		pbw_dal_lifts_path_pipe_seeing_blockage_a = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard_dlc_dwarf_fest",
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
				[1] = "pbw_dal_lifts_path_pipe_seeing_blockage_a_01",
				[2] = "pbw_dal_lifts_path_pipe_seeing_blockage_a_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pbw_dal_lifts_path_pipe_seeing_blockage_a_01",
				[2] = "pbw_dal_lifts_path_pipe_seeing_blockage_a_02"
			},
			sound_events_duration = {
				[1] = 3.9874999523163,
				[2] = 2.3350625038147
			}
		},
		pbw_dal_lifts_path_pipe_seeing_blockage_b = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard_dlc_dwarf_fest",
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
				[1] = "pbw_dal_lifts_path_pipe_seeing_blockage_b_01",
				[2] = "pbw_dal_lifts_path_pipe_seeing_blockage_b_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pbw_dal_lifts_path_pipe_seeing_blockage_b_01",
				[2] = "pbw_dal_lifts_path_pipe_seeing_blockage_b_02"
			},
			sound_events_duration = {
				[1] = 4.8771877288818,
				[2] = 2.454083442688
			}
		},
		pbw_dal_lifts_path_pipe_seeing_lever_a = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard_dlc_dwarf_fest",
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
				[1] = "pbw_dal_lifts_path_pipe_seeing_lever_a_01",
				[2] = "pbw_dal_lifts_path_pipe_seeing_lever_a_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pbw_dal_lifts_path_pipe_seeing_lever_a_01",
				[2] = "pbw_dal_lifts_path_pipe_seeing_lever_a_02"
			},
			sound_events_duration = {
				[1] = 7.814416885376,
				[2] = 2.9716458320618
			}
		},
		pbw_dal_lifts_path_pipe_shutter_walk_b = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard_dlc_dwarf_fest",
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
				[1] = "pbw_dal_lifts_path_pipe_shutter_walk_b_01",
				[2] = "pbw_dal_lifts_path_pipe_shutter_walk_b_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pbw_dal_lifts_path_pipe_shutter_walk_b_01",
				[2] = "pbw_dal_lifts_path_pipe_shutter_walk_b_02"
			},
			sound_events_duration = {
				[1] = 2.5591249465942,
				[2] = 4.5866250991821
			}
		},
		pbw_dal_lifts_path_pipe_traversal_a = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard_dlc_dwarf_fest",
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
				[1] = "pbw_dal_lifts_path_pipe_traversal_a_01",
				[2] = "pbw_dal_lifts_path_pipe_traversal_a_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pbw_dal_lifts_path_pipe_traversal_a_01",
				[2] = "pbw_dal_lifts_path_pipe_traversal_a_02"
			},
			sound_events_duration = {
				[1] = 3.6296665668488,
				[2] = 2.819479227066
			}
		},
		pbw_dal_lifts_path_pipe_traversal_b = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard_dlc_dwarf_fest",
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
				[1] = "pbw_dal_lifts_path_pipe_traversal_b_01",
				[2] = "pbw_dal_lifts_path_pipe_traversal_b_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pbw_dal_lifts_path_pipe_traversal_b_01",
				[2] = "pbw_dal_lifts_path_pipe_traversal_b_02"
			},
			sound_events_duration = {
				[1] = 2.9271042346954,
				[2] = 4.1964168548584
			}
		},
		pbw_dal_lifts_path_wheel_complete_a = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard_dlc_dwarf_fest",
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
				[1] = "pbw_dal_lifts_path_wheel_complete_a_01",
				[2] = "pbw_dal_lifts_path_wheel_complete_a_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pbw_dal_lifts_path_wheel_complete_a_01",
				[2] = "pbw_dal_lifts_path_wheel_complete_a_02"
			},
			sound_events_duration = {
				[1] = 1.1711041927338,
				[2] = 5.1032710075378
			}
		},
		pbw_dal_lifts_path_wheel_complete_b = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard_dlc_dwarf_fest",
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
				[1] = "pbw_dal_lifts_path_wheel_complete_b_01",
				[2] = "pbw_dal_lifts_path_wheel_complete_b_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pbw_dal_lifts_path_wheel_complete_b_01",
				[2] = "pbw_dal_lifts_path_wheel_complete_b_02"
			},
			sound_events_duration = {
				[1] = 3.2696249485016,
				[2] = 3.0118334293366
			}
		},
		pbw_dal_lifts_path_wheel_entered_a = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard_dlc_dwarf_fest",
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
				[1] = "pbw_dal_lifts_path_wheel_entered_a_01",
				[2] = "pbw_dal_lifts_path_wheel_entered_a_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pbw_dal_lifts_path_wheel_entered_a_01",
				[2] = "pbw_dal_lifts_path_wheel_entered_a_02"
			},
			sound_events_duration = {
				[1] = 3.4340207576752,
				[2] = 1.9007083177566
			}
		},
		pbw_dal_lifts_path_wheel_seeing_brake_a = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard_dlc_dwarf_fest",
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
				[1] = "pbw_dal_lifts_path_wheel_seeing_brake_a_01",
				[2] = "pbw_dal_lifts_path_wheel_seeing_brake_a_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pbw_dal_lifts_path_wheel_seeing_brake_a_01",
				[2] = "pbw_dal_lifts_path_wheel_seeing_brake_a_02"
			},
			sound_events_duration = {
				[1] = 3.4843332767487,
				[2] = 3.0194582939148
			}
		},
		pbw_dal_lights_gate_sealed_b = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard_dlc_dwarf_fest",
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
				[1] = "pbw_dal_lights_gate_sealed_b_01",
				[2] = "pbw_dal_lights_gate_sealed_b_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pbw_dal_lights_gate_sealed_b_01",
				[2] = "pbw_dal_lights_gate_sealed_b_02"
			},
			sound_events_duration = {
				[1] = 5.3992915153503,
				[2] = 3.4938542842865
			}
		},
		pbw_dal_lights_trolls_dead_complete_b = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard_dlc_dwarf_fest",
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
				[1] = "pbw_dal_lights_trolls_dead_complete_b_01",
				[2] = "pbw_dal_lights_trolls_dead_complete_b_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pbw_dal_lights_trolls_dead_complete_b_01",
				[2] = "pbw_dal_lights_trolls_dead_complete_b_02"
			},
			sound_events_duration = {
				[1] = 3.2244791984558,
				[2] = 3.4598751068115
			}
		},
		pbw_dal_outer_approach_a = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard_dlc_dwarf_fest",
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
				[1] = "pbw_dal_outer_approach_a_01",
				[2] = "pbw_dal_outer_approach_a_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pbw_dal_outer_approach_a_01",
				[2] = "pbw_dal_outer_approach_a_02"
			},
			sound_events_duration = {
				[1] = 3.3311042785645,
				[2] = 3.203958272934
			}
		},
		pbw_dal_outer_close_c = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "bright_wizard_dlc_dwarf_fest",
			category = "level_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "pbw_dal_outer_close_c_01"
			},
			sound_events = {
				[1] = "pbw_dal_outer_close_c_01"
			},
			sound_events_duration = {
				[1] = 2.0670626163483
			}
		},
		pbw_dal_outer_troll_a = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard_dlc_dwarf_fest",
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
				[1] = "pbw_dal_outer_troll_a_01",
				[2] = "pbw_dal_outer_troll_a_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pbw_dal_outer_troll_a_01",
				[2] = "pbw_dal_outer_troll_a_02"
			},
			sound_events_duration = {
				[1] = 3.4567,
				[2] = 1.9321458339691
			}
		},
		pbw_dal_outer_troll_dead_complete_a = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard_dlc_dwarf_fest",
			sound_events_n = 2,
			category = "special_occasion_interrupt",
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
				[1] = "pbw_dal_outer_troll_dead_complete_a_01",
				[2] = "pbw_dal_outer_troll_dead_complete_a_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pbw_dal_outer_troll_dead_complete_a_01",
				[2] = "pbw_dal_outer_troll_dead_complete_a_02"
			},
			sound_events_duration = {
				[1] = 3.0224375724792,
				[2] = 3.0306041240692
			}
		},
		pbw_dal_start_banter_d = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard_dlc_dwarf_fest",
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
				[1] = "pbw_dal_start_banter_d_01",
				[2] = "pbw_dal_start_banter_d_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pbw_dal_start_banter_d_01",
				[2] = "pbw_dal_start_banter_d_02"
			},
			sound_events_duration = {
				[1] = 3.5401875972748,
				[2] = 5.2512292861939
			}
		},
		pbw_dal_start_vista_a = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard_dlc_dwarf_fest",
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
				[1] = "pbw_dal_start_vista_a_01",
				[2] = "pbw_dal_start_vista_a_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pbw_dal_start_vista_a_01",
				[2] = "pbw_dal_start_vista_a_02"
			},
			sound_events_duration = {
				[1] = 3.0939583778381,
				[2] = 3.7866249084473
			}
		},
		pbw_dal_start_vista_b = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard_dlc_dwarf_fest",
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
				[1] = "pbw_dal_start_vista_b_01",
				[2] = "pbw_dal_start_vista_b_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pbw_dal_start_vista_b_01",
				[2] = "pbw_dal_start_vista_b_02"
			},
			sound_events_duration = {
				[1] = 4.8249168395996,
				[2] = 4.1457915306091
			}
		}
	})
end
