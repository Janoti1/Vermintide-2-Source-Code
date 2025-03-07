local push_radius = 2
local weapon_template = {}

weapon_template.actions = {
	action_one = {
		default = {
			melee_start = true,
			anim_end_event = "attack_finished",
			kind = "dummy",
			attack_hold_input = "action_one_hold",
			aim_assist_ramp_decay_delay = 0.1,
			aim_assist_max_ramp_multiplier = 0.3,
			aim_assist_ramp_multiplier = 0.1,
			anim_event = "attack_swing_charge",
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			total_time = math.huge,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.65,
					buff_name = "planted_charging_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "light_attack_left",
					start_time = 0,
					action = "action_one",
					end_time = 0.3,
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.55,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.5,
					end_time = 1,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.85,
					action = "action_one",
					auto_chain = true
				}
			}
		},
		default_right = {
			melee_start = true,
			aim_assist_ramp_decay_delay = 0.1,
			anim_end_event = "attack_finished",
			kind = "dummy",
			aim_assist_max_ramp_multiplier = 0.3,
			aim_assist_ramp_multiplier = 0.1,
			anim_event = "attack_swing_charge",
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			total_time = math.huge,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.65,
					buff_name = "planted_charging_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "light_attack_right",
					start_time = 0,
					action = "action_one",
					end_time = 0.3,
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.55,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.5,
					end_time = 1,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.85,
					action = "action_one",
					auto_chain = true
				}
			}
		},
		default_right_heavy = {
			melee_start = true,
			aim_assist_ramp_decay_delay = 0.1,
			anim_end_event = "attack_finished",
			kind = "dummy",
			aim_assist_max_ramp_multiplier = 0.3,
			aim_assist_ramp_multiplier = 0.1,
			anim_event = "attack_swing_charge_left",
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			total_time = math.huge,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.65,
					buff_name = "planted_charging_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "light_attack_right",
					start_time = 0,
					action = "action_one",
					end_time = 0.3,
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_right",
					start_time = 0.55,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.5,
					end_time = 1,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_right",
					start_time = 0.85,
					action = "action_one",
					auto_chain = true
				}
			}
		},
		default_left = {
			melee_start = true,
			aim_assist_ramp_decay_delay = 0.1,
			anim_end_event = "attack_finished",
			kind = "dummy",
			aim_assist_max_ramp_multiplier = 0.3,
			aim_assist_ramp_multiplier = 0.1,
			anim_event = "attack_swing_charge",
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			total_time = math.huge,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.65,
					buff_name = "planted_charging_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "light_attack_stab",
					start_time = 0,
					action = "action_one",
					end_time = 0.35,
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.65,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.5,
					end_time = 1,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.85,
					action = "action_one",
					auto_chain = true
				}
			}
		},
		default_last = {
			melee_start = true,
			aim_assist_ramp_decay_delay = 0.1,
			anim_end_event = "attack_finished",
			kind = "dummy",
			aim_assist_max_ramp_multiplier = 0.3,
			aim_assist_ramp_multiplier = 0.1,
			anim_event = "attack_swing_charge",
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			total_time = math.huge,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.65,
					buff_name = "planted_charging_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "light_attack_last",
					start_time = 0,
					action = "action_one",
					end_time = 0.35,
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.65,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.5,
					end_time = 1,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.85,
					action = "action_one",
					auto_chain = true
				}
			}
		},
		heavy_attack_left = {
			damage_window_start = 0.2,
			forward_offset = 0.75,
			increment_stat_on_hit = "ceremonial_dagger_burn",
			push_radius = 2.5,
			kind = "shield_slam",
			damage_profile_target = "dagger_burning_slam_target_fencer",
			anim_time_scale = 1.2,
			damage_profile = "dagger_burning_slam_fencer",
			armor_impact_sound_event = "fire_hit",
			no_damage_impact_sound_event = "fire_hit_armour",
			hit_time = 0.2,
			hit_effect = "staff_spark",
			aim_assist_ramp_multiplier = 0.2,
			aim_assist_max_ramp_multiplier = 0.4,
			damage_window_end = 0.25,
			impact_sound_event = "fire_hit",
			aim_assist_ramp_decay_delay = 0.1,
			anim_end_event = "attack_finished",
			damage_profile_aoe = "dagger_burning_slam_fencer_aoe",
			impact_particle_effect = "fx/wpnfx_staff_spark_impact",
			dedicated_target_range = 3.5,
			uninterruptible = true,
			anim_event = "attack_swing_heavy",
			total_time = 2.25,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.25,
					end_time = 0.2,
					buff_name = "planted_fast_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default_right_heavy",
					start_time = 0.4,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_right_heavy",
					start_time = 0.4,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.05,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.49,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.45,
					action = "action_wield",
					input = "action_wield"
				}
			},
			enter_function = function (attacker_unit, input_extension)
				return input_extension:reset_release_input()
			end
		},
		heavy_attack_right = {
			damage_window_start = 0.05,
			anim_end_event = "attack_finished",
			increment_stat_on_hit = "ceremonial_dagger_burn",
			anim_time_scale = 1.2,
			kind = "sweep",
			first_person_hit_anim = "shake_hit",
			range_mod = 1.35,
			no_damage_impact_sound_event = "fire_hit_armour",
			width_mod = 30,
			armor_impact_sound_event = "fire_hit",
			damage_profile = "medium_burning_smiter_stab_H",
			use_precision_sweep = true,
			hit_effect = "staff_spark",
			max_targets = 1,
			damage_window_end = 0.2,
			impact_sound_event = "fire_hit",
			dedicated_target_range = 2.5,
			uninterruptible = true,
			anim_event = "attack_swing_heavy_right",
			hit_stop_anim = "attack_hit",
			total_time = 2.25,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.25,
					end_time = 0.25,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.25,
					external_multiplier = 0.65,
					end_time = 0.5,
					buff_name = "planted_fast_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.5,
					action = "action_one",
					release_required = "action_one_hold",
					end_time = 1.05,
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.5,
					action = "action_one",
					release_required = "action_one_hold",
					end_time = 1.05,
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.05,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.5,
					action = "action_wield",
					input = "action_wield"
				}
			},
			chain_condition_func = function (attacker_unit, input_extension)
				input_extension:reset_release_input()

				return true
			end,
			baked_sweep = {
				{
					0.01666666666666667,
					-0.2785050868988037,
					0.14074230194091797,
					0.12345105409622192,
					-0.30902478098869324,
					0.5929648280143738,
					0.7406364679336548,
					0.0659850537776947
				},
				{
					0.052777777777777785,
					-0.2759028673171997,
					0.19479084014892578,
					0.12904757261276245,
					-0.29475483298301697,
					0.6137357950210571,
					0.7195271253585815,
					0.13685280084609985
				},
				{
					0.0888888888888889,
					-0.24187982082366943,
					0.2834148406982422,
					0.12611716985702515,
					-0.2715050280094147,
					0.6632059812545776,
					0.6644763946533203,
					0.21192917227745056
				},
				{
					0.125,
					-0.1845862865447998,
					0.3804283142089844,
					0.10846179723739624,
					-0.21957363188266754,
					0.7225892543792725,
					0.5898613929748535,
					0.2858595848083496
				},
				{
					0.16111111111111112,
					-0.1034398078918457,
					0.5120296478271484,
					0.056512534618377686,
					-0.11262260377407074,
					0.8095478415489197,
					0.44919553399086,
					0.36079341173171997
				},
				{
					0.19722222222222224,
					0.040532469749450684,
					0.602513313293457,
					-0.048221588134765625,
					0.019765831530094147,
					0.8626129031181335,
					0.3247770071029663,
					0.3873347043991089
				},
				{
					0.23333333333333334,
					0.2294217348098755,
					0.6241426467895508,
					-0.19251948595046997,
					0.15464042127132416,
					0.8787937164306641,
					0.11309482902288437,
					0.43705546855926514
				}
			}
		},
		light_attack_left = {
			damage_window_start = 0.24,
			hit_armor_anim = "attack_hit",
			range_mod = 1.15,
			kind = "sweep",
			first_person_hit_anim = "shake_hit",
			anim_time_scale = 1.2,
			no_damage_impact_sound_event = "slashing_dagger_hit_armour",
			damage_profile = "light_slashing_linesman_fencer",
			hit_effect = "melee_hit_sword_1h",
			damage_window_end = 0.34,
			impact_sound_event = "slashing_dagger_hit",
			charge_value = "light_attack",
			anim_end_event = "attack_finished",
			dedicated_target_range = 2.5,
			anim_event = "attack_swing_left_diagonal",
			total_time = 2.1,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.25,
					end_time = 0.25,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.25,
					external_multiplier = 0.7,
					end_time = 0.5,
					buff_name = "planted_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default_right",
					start_time = 0.4,
					action = "action_one",
					end_time = 1.2,
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.85,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.5,
					action = "action_wield",
					input = "action_wield"
				}
			},
			baked_sweep = {
				{
					0.20666666666666667,
					0.4812784194946289,
					0.5351018905639648,
					0.09033083915710449,
					-0.21563102304935455,
					-0.33360207080841064,
					0.13825243711471558,
					-0.9072481393814087
				},
				{
					0.23444444444444446,
					0.44240379333496094,
					0.5729396343231201,
					0.04819357395172119,
					-0.19469097256660461,
					-0.3438381254673004,
					0.11484174430370331,
					-0.9114176630973816
				},
				{
					0.26222222222222225,
					0.34759521484375,
					0.6213860511779785,
					-0.00554502010345459,
					-0.09520142525434494,
					-0.36515164375305176,
					0.04145819693803787,
					-0.9251390099525452
				},
				{
					0.29000000000000004,
					0.16041088104248047,
					0.732595682144165,
					-0.1495119333267212,
					0.2790379822254181,
					-0.42032501101493835,
					-0.09119347482919693,
					-0.8585734963417053
				},
				{
					0.31777777777777777,
					-0.14366626739501953,
					0.6795356273651123,
					-0.27307331562042236,
					0.654331386089325,
					-0.31673651933670044,
					-0.35319116711616516,
					-0.5888841152191162
				},
				{
					0.34555555555555556,
					-0.31664228439331055,
					0.4735884666442871,
					-0.30747342109680176,
					0.8146799206733704,
					-0.1388276368379593,
					-0.46432384848594666,
					-0.3184758722782135
				},
				{
					0.37333333333333335,
					-0.4056878089904785,
					0.23159551620483398,
					-0.30693769454956055,
					0.8555077314376831,
					0.02669566683471203,
					-0.5080240964889526,
					-0.09646454453468323
				}
			}
		},
		light_attack_right = {
			damage_window_start = 0.3,
			hit_armor_anim = "attack_hit",
			anim_end_event = "attack_finished",
			kind = "sweep",
			range_mod = 1.15,
			anim_time_scale = 1.2,
			damage_profile = "light_slashing_linesman_fencer",
			hit_effect = "melee_hit_sword_1h",
			damage_window_end = 0.45,
			impact_sound_event = "slashing_dagger_hit",
			charge_value = "light_attack",
			no_damage_impact_sound_event = "slashing_dagger_hit_armour",
			dedicated_target_range = 2.5,
			anim_event = "attack_swing_right_diagonal",
			total_time = 2.1,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.25,
					end_time = 0.25,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.25,
					external_multiplier = 0.7,
					end_time = 0.5,
					buff_name = "planted_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.45,
					action = "action_one",
					end_time = 1.2,
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.85,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.5,
					action = "action_wield",
					input = "action_wield"
				}
			},
			baked_sweep = {
				{
					0.26666666666666666,
					-0.2531290054321289,
					0.29268836975097656,
					0.02538585662841797,
					-0.6751670241355896,
					0.21966060996055603,
					-0.3846011757850647,
					-0.5898988842964172
				},
				{
					0.30277777777777776,
					-0.1353774070739746,
					0.5584173202514648,
					-0.020223140716552734,
					-0.3198379576206207,
					0.3744916319847107,
					-0.1682545691728592,
					-0.8539028763771057
				},
				{
					0.3388888888888889,
					0.237046480178833,
					0.6855831146240234,
					-0.18461847305297852,
					0.3954963684082031,
					0.47452473640441895,
					0.2873053550720215,
					-0.7320277094841003
				},
				{
					0.375,
					0.5467822551727295,
					0.5617399215698242,
					-0.28014135360717773,
					0.6079844236373901,
					0.37859055399894714,
					0.43843990564346313,
					-0.5429500341415405
				},
				{
					0.4111111111111111,
					0.6762780547142029,
					0.43230247497558594,
					-0.3123490810394287,
					0.6704700589179993,
					0.2954942286014557,
					0.4985191226005554,
					-0.4632837474346161
				},
				{
					0.44722222222222224,
					0.7327642440795898,
					0.30139732360839844,
					-0.3298530578613281,
					0.7075929641723633,
					0.21782293915748596,
					0.5360634922981262,
					-0.4055876135826111
				},
				{
					0.48333333333333334,
					0.7402276396751404,
					0.1753368377685547,
					-0.3313870429992676,
					0.7252988219261169,
					0.1497713327407837,
					0.560064435005188,
					-0.3712654709815979
				}
			}
		},
		light_attack_stab = {
			damage_window_start = 0.2,
			range_mod = 1.15,
			anim_time_scale = 1.1,
			kind = "sweep",
			first_person_hit_anim = "shake_hit",
			no_damage_impact_sound_event = "slashing_dagger_hit_armour",
			use_precision_sweep = true,
			damage_profile = "light_slashing_linesman_fencer",
			aim_assist_max_ramp_multiplier = 0.7,
			aim_assist_ramp_decay_delay = 0,
			hit_effect = "melee_hit_sword_1h",
			damage_window_end = 0.3,
			impact_sound_event = "slashing_dagger_hit",
			charge_value = "light_attack",
			anim_end_event = "attack_finished",
			dedicated_target_range = 2.5,
			aim_assist_ramp_multiplier = 0.5,
			anim_event = "attack_swing_stab",
			hit_stop_anim = "attack_hit",
			total_time = 2.1,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.25,
					end_time = 0.25,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.25,
					external_multiplier = 0.7,
					end_time = 0.5,
					buff_name = "planted_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default_last",
					start_time = 0.4,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.5,
					action = "action_wield",
					input = "action_wield"
				}
			},
			baked_sweep = {
				{
					0.16666666666666669,
					0.318739652633667,
					-0.38828277587890625,
					-0.06050825119018555,
					0.009898184798657894,
					0.736663818359375,
					0.22878000140190125,
					-0.6363081932067871
				},
				{
					0.19444444444444445,
					0.3266037106513977,
					-0.26661109924316406,
					-0.024577617645263672,
					0.19201666116714478,
					0.6945714950561523,
					0.5633573532104492,
					-0.4041392207145691
				},
				{
					0.22222222222222224,
					0.3118314743041992,
					0.014682769775390625,
					-0.008564472198486328,
					0.2373235672712326,
					0.6456514000892639,
					0.6047499775886536,
					-0.4013592600822449
				},
				{
					0.25,
					0.15285277366638184,
					0.3225517272949219,
					-0.005857944488525391,
					0.22862139344215393,
					0.6320931911468506,
					0.6276899576187134,
					-0.3926776647567749
				},
				{
					0.2777777777777778,
					0.09873628616333008,
					0.5281391143798828,
					-0.0317835807800293,
					0.22868569195270538,
					0.6556596159934998,
					0.6163890361785889,
					-0.37131911516189575
				},
				{
					0.3055555555555556,
					0.09409666061401367,
					0.5593042373657227,
					-0.03149986267089844,
					0.23695571720600128,
					0.6468406915664673,
					0.6127637028694153,
					-0.3872593343257904
				},
				{
					0.3333333333333333,
					0.09840250015258789,
					0.5409469604492188,
					-0.031223297119140625,
					0.24310733377933502,
					0.63782799243927,
					0.6124299168586731,
					-0.3987528383731842
				}
			}
		},
		light_attack_last = {
			damage_window_start = 0.33,
			hit_armor_anim = "attack_hit",
			range_mod = 1.15,
			kind = "sweep",
			first_person_hit_anim = "shake_hit",
			anim_time_scale = 1.1,
			no_damage_impact_sound_event = "slashing_dagger_hit_armour",
			additional_critical_strike_chance = 0.1,
			damage_profile = "light_slashing_linesman_fencer",
			aim_assist_max_ramp_multiplier = 0.7,
			aim_assist_ramp_decay_delay = 0,
			hit_effect = "melee_hit_sword_1h",
			damage_window_end = 0.43,
			impact_sound_event = "slashing_dagger_hit",
			charge_value = "light_attack",
			anim_end_event = "attack_finished",
			dedicated_target_range = 2.5,
			aim_assist_ramp_multiplier = 0.5,
			anim_event = "attack_swing_left",
			total_time = 2.1,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.25,
					end_time = 0.25,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.25,
					external_multiplier = 0.7,
					end_time = 0.5,
					buff_name = "planted_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.55,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.5,
					action = "action_wield",
					input = "action_wield"
				}
			},
			baked_sweep = {
				{
					0.2966666666666667,
					0.4855632781982422,
					0.5657145977020264,
					-0.18232369422912598,
					-0.17314305901527405,
					-0.8201410174369812,
					0.06759185343980789,
					-0.5411298274993896
				},
				{
					0.3244444444444445,
					0.4223499298095703,
					0.6509823799133301,
					-0.16334617137908936,
					-0.13455606997013092,
					-0.8454492688179016,
					-0.022383179515600204,
					-0.516342282295227
				},
				{
					0.3522222222222222,
					0.2036581039428711,
					0.7284746170043945,
					-0.10499966144561768,
					0.06396009773015976,
					-0.7951287031173706,
					-0.2792089581489563,
					-0.5345295667648315
				},
				{
					0.38,
					-0.09196043014526367,
					0.663008451461792,
					-0.008031010627746582,
					-0.2666555643081665,
					0.6153125762939453,
					0.5949504971504211,
					0.4430792033672333
				},
				{
					0.4077777777777778,
					-0.3209514617919922,
					0.4010941982269287,
					0.07770240306854248,
					-0.38021066784858704,
					0.36333078145980835,
					0.8335630893707275,
					0.1691247969865799
				},
				{
					0.4355555555555556,
					-0.37109851837158203,
					0.17722511291503906,
					0.0273817777633667,
					-0.4568078815937042,
					0.09090906381607056,
					0.8845623731613159,
					-0.024730175733566284
				},
				{
					0.4633333333333333,
					-0.32773494720458984,
					-0.057885169982910156,
					-0.0723804235458374,
					-0.45040062069892883,
					-0.17327630519866943,
					0.8656432628631592,
					-0.1333281397819519
				}
			}
		},
		push_stab = {
			damage_window_start = 0.2,
			anim_time_scale = 1.1,
			total_time = 2.1,
			kind = "sweep",
			first_person_hit_anim = "shake_hit",
			no_damage_impact_sound_event = "slashing_dagger_hit_armour",
			use_precision_sweep = true,
			damage_profile = "light_fencer_stab",
			aim_assist_max_ramp_multiplier = 0.7,
			aim_assist_ramp_decay_delay = 0,
			hit_effect = "melee_hit_sword_1h",
			damage_window_end = 0.3,
			impact_sound_event = "slashing_dagger_hit",
			charge_value = "light_attack",
			anim_end_event = "attack_finished",
			dedicated_target_range = 2.5,
			aim_assist_ramp_multiplier = 0.5,
			anim_event = "attack_swing_stab",
			hit_stop_anim = "attack_hit",
			range_mod = 1.2,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			enter_function = function (attacker_unit, input_extension)
				return input_extension:reset_release_input()
			end,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.45,
					end_time = 0.25,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.25,
					external_multiplier = 0.7,
					end_time = 0.5,
					buff_name = "planted_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.35,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					release_required = "action_two_hold",
					doubleclick_window = 0,
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.35,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.5,
					action = "action_wield",
					input = "action_wield"
				}
			},
			baked_sweep = {
				{
					0.16666666666666669,
					0.3155653476715088,
					-0.3888101577758789,
					-0.06206846237182617,
					0.00028591917362064123,
					0.7351959943771362,
					0.21033203601837158,
					-0.6443968415260315
				},
				{
					0.19444444444444445,
					0.32672780752182007,
					-0.26833152770996094,
					-0.024586200714111328,
					0.1914132535457611,
					0.6954252123832703,
					0.5617977976799011,
					-0.40512704849243164
				},
				{
					0.22222222222222224,
					0.3130139112472534,
					0.012195587158203125,
					-0.008221149444580078,
					0.2374153584241867,
					0.6450808644294739,
					0.6052421927452087,
					-0.4014803469181061
				},
				{
					0.25,
					0.15329241752624512,
					0.3207263946533203,
					-0.005905628204345703,
					0.22839894890785217,
					0.6321704983711243,
					0.6277469396591187,
					-0.39259156584739685
				},
				{
					0.2777777777777778,
					0.09767413139343262,
					0.5325984954833984,
					-0.03190469741821289,
					0.22858339548110962,
					0.6555269956588745,
					0.6165513396263123,
					-0.371346652507782
				},
				{
					0.3055555555555556,
					0.09410929679870605,
					0.5592832565307617,
					-0.031655311584472656,
					0.23725385963916779,
					0.6465893387794495,
					0.6126459240913391,
					-0.38768261671066284
				},
				{
					0.3333333333333333,
					0.09837508201599121,
					0.5407896041870117,
					-0.031163692474365234,
					0.24326103925704956,
					0.6375535726547241,
					0.6125051975250244,
					-0.39898231625556946
				}
			}
		},
		push = {
			damage_window_start = 0.05,
			anim_end_event = "attack_finished",
			outer_push_angle = 180,
			kind = "push_stagger",
			damage_profile_outer = "light_push",
			fatigue_cost = "action_stun_push",
			weapon_action_hand = "right",
			push_angle = 100,
			hit_effect = "melee_hit_sword_1h",
			damage_window_end = 0.2,
			impact_sound_event = "slashing_dagger_hit",
			charge_value = "action_push",
			no_damage_impact_sound_event = "slashing_dagger_hit_armour",
			dedicated_target_range = 2,
			anim_event = "attack_push",
			damage_profile_inner = "light_push",
			total_time = 0.8,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.25,
					end_time = 0.2,
					buff_name = "planted_fast_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.2,
					action = "action_one",
					release_required = "action_two_hold",
					doubleclick_window = 0,
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.2,
					action = "action_one",
					release_required = "action_two_hold",
					doubleclick_window = 0,
					input = "action_one_hold"
				},
				{
					sub_action = "push_stab",
					start_time = 0.2,
					action = "action_one",
					doubleclick_window = 0,
					end_time = 0.8,
					input = "action_one_hold",
					hold_required = {
						"action_two_hold",
						"action_one_hold"
					}
				},
				{
					sub_action = "default",
					start_time = 0.4,
					action = "action_two",
					send_buffer = true,
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.4,
					action = "action_wield",
					input = "action_wield"
				}
			},
			push_radius = push_radius,
			chain_condition_func = function (attacker_unit, input_extension)
				local status_extension = ScriptUnit.extension(attacker_unit, "status_system")

				return not status_extension:fatigued()
			end
		}
	},
	action_two = {
		default = {
			cooldown = 0.15,
			minimum_hold_time = 0.2,
			anim_end_event = "parry_finished",
			kind = "block",
			hold_input = "action_two_hold",
			anim_event = "parry_pose",
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action"
			end,
			total_time = math.huge,
			enter_function = function (attacker_unit, input_extension, remaining_time)
				return input_extension:reset_release_input_with_delay(remaining_time)
			end,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.85,
					buff_name = "planted_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.2,
					action = "action_wield",
					input = "action_wield"
				},
				{
					sub_action = "push",
					start_time = 0.2,
					action = "action_one",
					doubleclick_window = 0,
					input = "action_one",
					hold_required = {
						"action_two_hold"
					}
				},
				{
					sub_action = "default",
					start_time = 0.2,
					action = "action_one",
					release_required = "action_two_hold",
					doubleclick_window = 0,
					input = "action_one"
				}
			}
		}
	},
	action_inspect = ActionTemplates.action_inspect,
	action_wield = ActionTemplates.wield
}
weapon_template.right_hand_unit = "units/weapons/player/wpn_empire_short_sword/wpn_empire_short_sword"
weapon_template.right_hand_attachment_node_linking = AttachmentNodeLinking.one_handed_melee_weapon.right
weapon_template.display_unit = "units/weapons/weapon_display/display_1h_dagger_wizard"
weapon_template.wield_anim = "to_1h_dagger"
weapon_template.state_machine = "units/beings/player/first_person_base/state_machines/melee/1h_dagger"
weapon_template.buff_type = "MELEE_1H"
weapon_template.weapon_type = "DAGGER_1H"
weapon_template.max_fatigue_points = 6
weapon_template.dodge_count = 6
weapon_template.block_angle = 40
weapon_template.outer_block_angle = 360
weapon_template.block_fatigue_point_multiplier = 0.5
weapon_template.outer_block_fatigue_point_multiplier = 2
weapon_template.increment_stat_on_equip = "equipped_ceremonial_daggers"
weapon_template.buffs = {
	change_dodge_distance = {
		external_optional_multiplier = 1.2
	},
	change_dodge_speed = {
		external_optional_multiplier = 1.2
	}
}
weapon_template.attack_meta_data = {
	tap_attack = {
		arc = 1
	},
	hold_attack = {
		arc = 1
	}
}
weapon_template.aim_assist_settings = {
	max_range = 5,
	no_aim_input_multiplier = 0,
	base_multiplier = 0.025,
	effective_max_range = 3,
	breed_scalars = {
		skaven_storm_vermin = 0.25,
		skaven_clan_rat = 1,
		skaven_slave = 1
	}
}
weapon_template.weapon_diagram = {
	light_attack = {
		[DamageTypes.ARMOR_PIERCING] = 0,
		[DamageTypes.CLEAVE] = 2,
		[DamageTypes.SPEED] = 5,
		[DamageTypes.STAGGER] = 0,
		[DamageTypes.DAMAGE] = 2
	},
	heavy_attack = {
		[DamageTypes.ARMOR_PIERCING] = 3,
		[DamageTypes.CLEAVE] = 3,
		[DamageTypes.SPEED] = 2,
		[DamageTypes.STAGGER] = 3,
		[DamageTypes.DAMAGE] = 5
	}
}
weapon_template.tooltip_keywords = {
	"weapon_keyword_damage_over_time",
	"weapon_keyword_crowd_control",
	"weapon_keyword_fast_attacks"
}
weapon_template.tooltip_compare = {
	light = {
		action_name = "action_one",
		sub_action_name = "light_attack_left"
	},
	heavy = {
		action_name = "action_one",
		sub_action_name = "heavy_attack_left"
	}
}
weapon_template.tooltip_detail = {
	light = {
		action_name = "action_one",
		sub_action_name = "default"
	},
	heavy = {
		action_name = "action_one",
		sub_action_name = "default"
	},
	push = {
		action_name = "action_one",
		sub_action_name = "push"
	}
}
weapon_template.wwise_dep_right_hand = {
	"wwise/one_handed_swords",
	"wwise/one_handed_daggers"
}

return {
	one_handed_daggers_template_1 = weapon_template
}
