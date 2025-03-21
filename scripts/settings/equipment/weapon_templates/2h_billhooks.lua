local push_radius = 2.5
local time_mod = 0.85
local weapon_template = {}

weapon_template.actions = {
	action_one = {
		default = {
			anim_end_event = "attack_finished",
			kind = "melee_start",
			attack_hold_input = "action_one_hold",
			anim_event_3p = "attack_swing_stab_charge",
			anim_event = "attack_swing_charge_stab",
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			total_time = math.huge,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.8,
					buff_name = "planted_charging_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "light_attack_stab",
					start_time = 0,
					action = "action_one",
					end_time = 0.3,
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_stab",
					start_time = 0.5,
					action = "action_one",
					force_release_input = "action_one_hold",
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
					sub_action = "default",
					start_time = 0.4,
					action = "action_three",
					input = "action_three"
				},
				{
					start_time = 0.3,
					blocker = true,
					end_time = 1.5,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_stab",
					start_time = 0.7,
					action = "action_one",
					auto_chain = true
				}
			}
		},
		default_left = {
			anim_end_event = "attack_finished",
			kind = "melee_start",
			anim_event_3p = "attack_swing_charge_left_diagonal",
			anim_event = "attack_swing_charge_down",
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			total_time = math.huge,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.8,
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
					sub_action = "heavy_attack_down",
					start_time = 0.5,
					action = "action_one",
					force_release_input = "action_one_hold",
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
					sub_action = "default",
					start_time = 0.4,
					action = "action_three",
					input = "action_three"
				},
				{
					start_time = 0.3,
					blocker = true,
					end_time = 1.5,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_down",
					start_time = 0.7,
					action = "action_one",
					auto_chain = true
				}
			}
		},
		default_stab = {
			anim_end_event = "attack_finished",
			kind = "melee_start",
			anim_event_3p = "attack_swing_stab_charge",
			anim_event = "attack_swing_charge_stab",
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			total_time = math.huge,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.8,
					buff_name = "planted_charging_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "light_attack_stab_2",
					start_time = 0,
					action = "action_one",
					end_time = 0.3,
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_stab",
					start_time = 0.5,
					action = "action_one",
					force_release_input = "action_one_hold",
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
					sub_action = "default",
					start_time = 0.4,
					action = "action_three",
					input = "action_three"
				},
				{
					start_time = 0.3,
					blocker = true,
					end_time = 1.5,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_stab",
					start_time = 0.7,
					action = "action_one",
					auto_chain = true
				}
			}
		},
		heavy_attack_down = {
			damage_window_start = 0.18,
			push_radius = 3,
			range_mod = 1.4,
			anim_event_3p = "attack_swing_heavy_left_diagonal",
			kind = "sweep",
			first_person_hit_anim = "attack_hit",
			sweep_z_offset = 0.15,
			width_mod = 20,
			anim_end_event = "attack_finished",
			hit_shield_stop_anim = "attack_hit_shield",
			hit_effect = "melee_hit_axes_2h",
			no_damage_impact_sound_event = "blunt_hit_armour",
			additional_critical_strike_chance = 0,
			damage_window_end = 0.28,
			impact_sound_event = "axe_1h_hit",
			use_precision_sweep = true,
			damage_profile = "heavy_slashing_smiter_polearm",
			dedicated_target_range = 3,
			weapon_up_offset_mod = 0.45,
			uninterruptible = true,
			anim_event = "attack_swing_heavy_down",
			height_mod = 5,
			total_time = 2.25,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			anim_time_scale = time_mod * 1.2,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.8,
					end_time = 0.5,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.2,
					external_multiplier = 1.4,
					end_time = 0.45,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.45,
					external_multiplier = 0.7,
					end_time = 0.7,
					buff_name = "planted_fast_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default_stab",
					start_time = 0.5,
					action = "action_one",
					doubleclick_window = 0,
					release_required = "action_one_hold",
					end_time = 1.15,
					input = "action_one"
				},
				{
					sub_action = "default_stab",
					start_time = 0.5,
					action = "action_one",
					doubleclick_window = 0,
					release_required = "action_one_hold",
					end_time = 1.15,
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.15,
					action = "action_one",
					doubleclick_window = 0,
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.45,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					end_time = 0.15,
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.4,
					action = "action_three",
					input = "action_three"
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
			end,
			baked_sweep = {
				{
					0.14666666666666667,
					0.1771848201751709,
					0.24810409545898438,
					0.22307729721069336,
					-0.27876171469688416,
					-0.1155630350112915,
					-0.14245769381523132,
					-0.9426785707473755
				},
				{
					0.17444444444444446,
					0.13579344749450684,
					0.29143524169921875,
					0.39464759826660156,
					-0.22756542265415192,
					-0.08005336672067642,
					-0.11432849615812302,
					-0.9637086987495422
				},
				{
					0.20222222222222222,
					0.09571218490600586,
					0.552668571472168,
					0.4236745834350586,
					0.05655359849333763,
					-0.04086994007229805,
					-0.05051968991756439,
					-0.9962826371192932
				},
				{
					0.23,
					0.041138648986816406,
					0.908656120300293,
					-0.02979755401611328,
					0.4824996292591095,
					-0.016688067466020584,
					-0.03624098375439644,
					-0.874987006187439
				},
				{
					0.2577777777777778,
					0.014157295227050781,
					0.9199066162109375,
					-0.4355900287628174,
					0.7066983580589294,
					-0.021084006875753403,
					-0.020985612645745277,
					-0.7068893313407898
				},
				{
					0.28555555555555556,
					0.005907297134399414,
					0.9143486022949219,
					-0.6107091903686523,
					0.7670280337333679,
					-0.022678034380078316,
					-0.013540406711399555,
					-0.6410696506500244
				},
				{
					0.31333333333333335,
					0.008760690689086914,
					0.9090757369995117,
					-0.6558847427368164,
					0.7750095129013062,
					-0.0237429141998291,
					-0.013615727424621582,
					-0.6313565969467163
				}
			}
		},
		heavy_attack_stab = {
			damage_window_start = 0.2,
			push_radius = 3,
			kind = "sweep",
			first_person_hit_anim = "attack_hit",
			sweep_z_offset = 0.5,
			width_mod = 35,
			range_mod = 1.4,
			hit_shield_stop_anim = "attack_hit_shield",
			no_damage_impact_sound_event = "blunt_hit_armour",
			hit_effect = "melee_hit_axes_2h",
			additional_critical_strike_chance = 0,
			use_precision_sweep = false,
			damage_window_end = 0.3,
			impact_sound_event = "axe_1h_hit",
			damage_profile = "heavy_slashing_smiter_stab_polearm",
			anim_end_event = "attack_finished",
			dedicated_target_range = 3,
			range_mod_add = 0.45,
			uninterruptible = true,
			anim_event = "attack_swing_heavy_stab",
			height_mod = 5,
			total_time = 2.25,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			anim_time_scale = time_mod * 1.4,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.4,
					end_time = 0.3,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.3,
					external_multiplier = 0.7,
					end_time = 0.7,
					buff_name = "planted_fast_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.6,
					action = "action_one",
					release_required = "action_one_hold",
					doubleclick_window = 0,
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.6,
					action = "action_one",
					release_required = "action_one_hold",
					doubleclick_window = 0,
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.5,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					end_time = 0.15,
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.6,
					action = "action_three",
					input = "action_three"
				},
				{
					sub_action = "default",
					start_time = 0.5,
					action = "action_wield",
					input = "action_wield"
				}
			},
			enter_function = function (attacker_unit, input_extension)
				return input_extension:reset_release_input()
			end,
			baked_sweep = {
				{
					0.16666666666666669,
					-0.20826005935668945,
					-0.05729341506958008,
					-0.28750914335250854,
					0.5889026522636414,
					-0.3096633851528168,
					-0.31328773498535156,
					-0.6776083111763
				},
				{
					0.19444444444444445,
					-0.11007189750671387,
					0.7078323364257812,
					-0.18695050477981567,
					0.5738057494163513,
					-0.32877734303474426,
					-0.370383620262146,
					-0.6522793769836426
				},
				{
					0.22222222222222224,
					-0.045606136322021484,
					1.012378215789795,
					-0.12269061803817749,
					0.5456551313400269,
					-0.3704293370246887,
					-0.39354071021080017,
					-0.6404438018798828
				},
				{
					0.25,
					-0.040210723876953125,
					0.9881529808044434,
					-0.12361657619476318,
					0.5509302020072937,
					-0.3654893934726715,
					-0.39014893770217896,
					-0.640841007232666
				},
				{
					0.2777777777777778,
					-0.03581714630126953,
					0.9874258041381836,
					-0.1215088963508606,
					0.5513378381729126,
					-0.3642960786819458,
					-0.3892071545124054,
					-0.641741931438446
				},
				{
					0.3055555555555556,
					-0.036809444427490234,
					0.9877424240112305,
					-0.1223178505897522,
					0.5520123243331909,
					-0.36225196719169617,
					-0.3879854083061218,
					-0.6430577039718628
				},
				{
					0.3333333333333333,
					-0.03958010673522949,
					0.987576961517334,
					-0.12470430135726929,
					0.5527482628822327,
					-0.3602087199687958,
					-0.38671624660491943,
					-0.6443365812301636
				}
			}
		},
		light_attack_stab = {
			damage_window_start = 0.15,
			range_mod = 1.2,
			kind = "sweep",
			first_person_hit_anim = "attack_hit",
			no_damage_impact_sound_event = "blunt_hit_armour",
			sweep_z_offset = 0.4,
			width_mod = 25,
			additional_critical_strike_chance = 0,
			hit_shield_stop_anim = "attack_hit_shield",
			use_precision_sweep = false,
			hit_effect = "melee_hit_axes_2h",
			damage_profile = "medium_slashing_smiter_stab",
			aim_assist_ramp_multiplier = 0.5,
			damage_window_end = 0.35,
			impact_sound_event = "axe_1h_hit",
			aim_assist_max_ramp_multiplier = 0.8,
			anim_end_event = "attack_finished",
			aim_assist_ramp_decay_delay = 0.1,
			dedicated_target_range = 2,
			range_mod_add = 0.45,
			uninterruptible = true,
			anim_event = "attack_swing_stab",
			total_time = 2.5,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			anim_time_scale = time_mod * 1,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.1,
					end_time = 0.3,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.3,
					external_multiplier = 0.75,
					end_time = 0.7,
					buff_name = "planted_fast_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.5,
					action = "action_one",
					end_time = 1,
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.5,
					action = "action_one",
					release_required = "action_one_hold",
					end_time = 1,
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					end_time = 0.15,
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
					start_time = 0.45,
					action = "action_wield",
					input = "action_wield"
				},
				{
					sub_action = "default",
					start_time = 0.5,
					action = "action_three",
					input = "action_three"
				}
			},
			baked_sweep = {
				{
					0.11666666666666667,
					-0.23340988159179688,
					-1.019686222076416,
					-0.3826104402542114,
					0.658061683177948,
					-0.1401004195213318,
					-0.13169695436954498,
					-0.7279990911483765
				},
				{
					0.1611111111111111,
					-0.20256662368774414,
					-0.5575952529907227,
					-0.30137503147125244,
					0.6337361931800842,
					-0.20582693815231323,
					-0.20511415600776672,
					-0.7168974280357361
				},
				{
					0.20555555555555555,
					-0.05073404312133789,
					0.8671669960021973,
					-0.13626396656036377,
					0.5628085732460022,
					-0.3248295485973358,
					-0.3392344117164612,
					-0.6801854372024536
				},
				{
					0.24999999999999997,
					-0.05637001991271973,
					0.774200439453125,
					-0.14421987533569336,
					0.5659471154212952,
					-0.3226599097251892,
					-0.34075745940208435,
					-0.6778486371040344
				},
				{
					0.2944444444444444,
					-0.05332303047180176,
					0.7189583778381348,
					-0.151095449924469,
					0.5668734312057495,
					-0.32255756855010986,
					-0.3451929986476898,
					-0.6748725175857544
				},
				{
					0.3388888888888888,
					-0.05402493476867676,
					0.6652660369873047,
					-0.17336750030517578,
					0.5614996552467346,
					-0.32443681359291077,
					-0.3479444086551666,
					-0.6770477294921875
				},
				{
					0.3833333333333333,
					-0.06616568565368652,
					0.6080622673034668,
					-0.22345799207687378,
					0.5383245348930359,
					-0.3355068862438202,
					-0.34849947690963745,
					-0.6900651454925537
				}
			}
		},
		light_attack_left = {
			damage_window_start = 0.22,
			range_mod = 1.2,
			kind = "sweep",
			first_person_hit_anim = "attack_hit",
			sweep_z_offset = 0.15,
			width_mod = 25,
			no_damage_impact_sound_event = "blunt_hit_armour",
			hit_shield_stop_anim = "attack_hit_shield",
			additional_critical_strike_chance = 0,
			hit_effect = "melee_hit_axes_2h",
			use_precision_sweep = false,
			damage_profile = "medium_slashing_linesman_spear",
			damage_window_end = 0.3,
			impact_sound_event = "axe_1h_hit",
			aim_assist_ramp_multiplier = 0.5,
			anim_end_event = "attack_finished",
			aim_assist_max_ramp_multiplier = 0.8,
			aim_assist_ramp_decay_delay = 0.1,
			dedicated_target_range = 2,
			weapon_up_offset_mod = 0.45,
			uninterruptible = true,
			anim_event = "attack_swing_left_diagonal",
			height_mod = 5,
			total_time = 2.5,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			anim_time_scale = time_mod * 1,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					end_time = 0.3,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.3,
					external_multiplier = 1.2,
					end_time = 0.5,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.5,
					external_multiplier = 0.75,
					end_time = 0.6,
					buff_name = "planted_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default_stab",
					start_time = 0.6,
					action = "action_one",
					end_time = 1,
					input = "action_one"
				},
				{
					sub_action = "default_stab",
					start_time = 0.6,
					action = "action_one",
					release_required = "action_one_hold",
					end_time = 1,
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.45,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.45,
					action = "action_wield",
					input = "action_wield"
				},
				{
					sub_action = "default",
					start_time = 0.6,
					action = "action_three",
					input = "action_three"
				}
			},
			hit_mass_count = LINESMAN_HIT_MASS_COUNT,
			baked_sweep = {
				{
					0.18666666666666668,
					0.48894214630126953,
					0.22974443435668945,
					0.23005729913711548,
					-0.1951480656862259,
					-0.26107141375541687,
					0.10891412198543549,
					-0.9390935897827148
				},
				{
					0.2111111111111111,
					0.5510768890380859,
					0.2680954933166504,
					0.21851187944412231,
					-0.1618853658437729,
					-0.32012689113616943,
					0.09856516867876053,
					-0.9282224178314209
				},
				{
					0.23555555555555555,
					0.5914871692657471,
					0.3727741241455078,
					0.16976302862167358,
					-0.12081477791070938,
					-0.412374883890152,
					0.07663385570049286,
					-0.899709939956665
				},
				{
					0.26,
					0.03056168556213379,
					0.8191971778869629,
					-0.15786367654800415,
					0.4767756760120392,
					-0.31740137934684753,
					-0.34722697734832764,
					-0.7425461411476135
				},
				{
					0.28444444444444444,
					-0.3558833599090576,
					0.5630574226379395,
					-0.37356698513031006,
					0.71763676404953,
					-0.2018149048089981,
					-0.5447976589202881,
					-0.3840102255344391
				},
				{
					0.3088888888888889,
					-0.4611067771911621,
					0.33093881607055664,
					-0.4302145838737488,
					0.7553659081459045,
					-0.13133779168128967,
					-0.5741844773292542,
					-0.2872018814086914
				},
				{
					0.3333333333333333,
					-0.5331034660339355,
					0.25893497467041016,
					-0.4894433617591858,
					0.7438910007476807,
					-0.022364933043718338,
					-0.5846049189567566,
					-0.3230528235435486
				}
			}
		},
		light_attack_stab_2 = {
			damage_window_start = 0.15,
			push_radius = 3,
			headshot_multiplier = 1.5,
			first_person_hit_anim = "attack_hit",
			sweep_z_offset = 0.15,
			width_mod = 25,
			kind = "sweep",
			hit_shield_stop_anim = "attack_hit_shield",
			range_mod = 1.2,
			hit_effect = "melee_hit_axes_2h",
			additional_critical_strike_chance = 0,
			use_precision_sweep = true,
			damage_window_end = 0.35,
			impact_sound_event = "stab_hit",
			damage_profile = "medium_slashing_smiter_stab",
			anim_end_event = "attack_finished",
			no_damage_impact_sound_event = "stab_hit_armour",
			dedicated_target_range = 2.8,
			range_mod_add = 0.45,
			anim_event_3p = "attack_swing_stab",
			anim_event = "attack_swing_stab_02",
			height_mod = 5,
			total_time = 2.5,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			anim_time_scale = time_mod * 1,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.75,
					end_time = 0.3,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.3,
					external_multiplier = 0.75,
					end_time = 0.75,
					buff_name = "planted_fast_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.5,
					action = "action_one",
					end_time = 1.8,
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.5,
					action = "action_one",
					release_required = "action_one_hold",
					end_time = 1.8,
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.8,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.45,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.45,
					action = "action_wield",
					input = "action_wield"
				},
				{
					sub_action = "default",
					start_time = 0.45,
					action = "action_three",
					input = "action_three"
				}
			},
			enter_function = function (attacker_unit, input_extension)
				return input_extension:reset_release_input()
			end,
			baked_sweep = {
				{
					0.11666666666666667,
					-0.3437819480895996,
					-0.4668397903442383,
					-0.311015784740448,
					0.4621850848197937,
					-0.3894873261451721,
					-0.3534524440765381,
					-0.7139719724655151
				},
				{
					0.1611111111111111,
					-0.2812373638153076,
					0.07502937316894531,
					-0.09757053852081299,
					0.44255924224853516,
					-0.5159825086593628,
					-0.4778362512588501,
					-0.5563955307006836
				},
				{
					0.20555555555555555,
					-0.1593024730682373,
					0.8482627868652344,
					-0.054481446743011475,
					-0.36569175124168396,
					0.5791548490524292,
					0.5378620624542236,
					0.49148106575012207
				},
				{
					0.24999999999999997,
					-0.16116118431091309,
					0.7707629203796387,
					-0.05580437183380127,
					-0.3715668022632599,
					0.5766437649726868,
					0.5411497950553894,
					0.4863917827606201
				},
				{
					0.2944444444444444,
					-0.1571826934814453,
					0.7204442024230957,
					-0.06295925378799438,
					-0.37340351939201355,
					0.5736192464828491,
					0.5427455306053162,
					0.4867834448814392
				},
				{
					0.3388888888888888,
					-0.15926599502563477,
					0.6662507057189941,
					-0.08349180221557617,
					-0.3707481920719147,
					0.572253406047821,
					0.5518953800201416,
					0.48008668422698975
				},
				{
					0.3833333333333333,
					-0.17290306091308594,
					0.6097698211669922,
					-0.13294517993927002,
					-0.35421720147132874,
					0.5645009279251099,
					0.5643370747566223,
					0.4872294068336487
				}
			}
		},
		light_attack_bopp = {
			damage_window_start = 0.3,
			hit_armor_anim = "attack_hit",
			anim_end_event = "attack_finished",
			range_mod = 1.35,
			anim_event_3p = "attack_swing_left_diagonal",
			width_mod = 25,
			sweep_z_offset = 0.05,
			hit_shield_stop_anim = "attack_hit",
			kind = "sweep",
			hit_effect = "melee_hit_sword_1h",
			additional_critical_strike_chance = 0,
			use_precision_sweep = false,
			damage_window_end = 0.41,
			impact_sound_event = "slashing_hit",
			charge_value = "heavy_attack",
			no_damage_impact_sound_event = "slashing_hit_armour",
			damage_profile = "medium_slashing_linesman_spear",
			dedicated_target_range = 2.8,
			weapon_up_offset_mod = 0.25,
			uninterruptible = true,
			anim_event = "attack_swing_heavy_left",
			hit_stop_anim = "attack_hit",
			total_time = 1.25,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			anim_time_scale = time_mod * 1.15,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.4,
					end_time = 0.25,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.25,
					external_multiplier = 0.7,
					end_time = 0.5,
					buff_name = "planted_fast_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.5,
					action = "action_one",
					release_required = "action_two_hold",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.5,
					action = "action_one",
					release_required = "action_two_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.8,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.5,
					action = "action_wield",
					input = "action_wield"
				},
				{
					sub_action = "default",
					start_time = 0.5,
					action = "action_three",
					input = "action_three"
				}
			},
			enter_function = function (attacker_unit, input_extension)
				return input_extension:reset_release_input()
			end,
			hit_mass_count = LINESMAN_HIT_MASS_COUNT,
			baked_sweep = {
				{
					0.26666666666666666,
					-0.37908482551574707,
					0.266690731048584,
					0.018985271453857422,
					-0.27753597497940063,
					0.5512593984603882,
					-0.06587255001068115,
					-0.7840585112571716
				},
				{
					0.2961111111111111,
					-0.34456467628479004,
					0.33277177810668945,
					0.00938504934310913,
					-0.18649183213710785,
					0.5619733929634094,
					-0.02387966960668564,
					-0.8055039048194885
				},
				{
					0.32555555555555554,
					-0.2626621723175049,
					0.48588037490844727,
					0.013748586177825928,
					-0.0018038649577647448,
					0.5522634387016296,
					0.06923957169055939,
					-0.8307874202728271
				},
				{
					0.355,
					0.14976716041564941,
					0.7789225578308105,
					-0.07999110221862793,
					0.45843833684921265,
					0.4021221101284027,
					0.29991868138313293,
					-0.7336081862449646
				},
				{
					0.3844444444444444,
					0.5873007774353027,
					0.6561903953552246,
					-0.28511273860931396,
					0.7521182298660278,
					0.16233544051647186,
					0.42594653367996216,
					-0.47595685720443726
				},
				{
					0.41388888888888886,
					0.618582010269165,
					0.6223902702331543,
					-0.3118077516555786,
					0.7574635744094849,
					0.15866993367671967,
					0.42762768268585205,
					-0.4671266973018646
				},
				{
					0.4433333333333333,
					0.6150455474853516,
					0.6040716171264648,
					-0.3256644010543823,
					0.75360506772995,
					0.16510675847530365,
					0.4246695637702942,
					-0.4737878739833832
				}
			}
		},
		push = {
			damage_window_start = 0.05,
			anim_end_event = "attack_finished",
			outer_push_angle = 180,
			kind = "push_stagger",
			damage_profile_outer = "billhook_light_push",
			push_angle = 100,
			hit_effect = "melee_hit_sword_1h",
			damage_window_end = 0.2,
			impact_sound_event = "axe_1h_hit",
			charge_value = "action_push",
			no_damage_impact_sound_event = "blunt_hit_armour",
			dedicated_target_range = 2,
			anim_event = "attack_push",
			damage_profile_inner = "billhook_medium_push",
			total_time = 0.8,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_one",
					release_required = "action_two_hold",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_one",
					release_required = "action_two_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "light_attack_bopp",
					start_time = 0.25,
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
					start_time = 0.45,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.4,
					action = "action_wield",
					input = "action_wield"
				},
				{
					sub_action = "default",
					start_time = 0.25,
					action = "action_three",
					input = "action_three"
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
					external_multiplier = 0.6,
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
	action_three = {
		default = {
			damage_window_start = 0.23,
			push_radius = 3,
			anim_end_event = "attack_finished",
			fatigue_cost = "action_stun_push",
			kind = "sweep",
			first_person_hit_anim = "attack_hit_pull",
			range_mod = 1.35,
			width_mod = 20,
			headshot_multiplier = 1.5,
			sweep_z_offset = 0.1,
			damage_window_end = 0.33,
			hit_effect = "melee_hit_axes_2h",
			hit_time = 0.2,
			add_fatigue_on_hit = true,
			additional_critical_strike_chance = 0,
			use_precision_sweep = true,
			damage_profile = "light_slashing_smiter_pull",
			impact_sound_event = "Play_weapon_billhook_grab",
			dedicated_target_range = 4.8,
			no_damage_impact_sound_event = "stab_hit_armour",
			weapon_up_offset_mod = 0.25,
			anim_event = "attack_swing_down",
			height_mod = 4,
			total_time = 1.5,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			anim_time_scale = time_mod * 1.4,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.8,
					end_time = 0.2,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.2,
					external_multiplier = 1.4,
					end_time = 0.7,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.45,
					external_multiplier = 0.7,
					end_time = 0.7,
					buff_name = "planted_fast_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.5,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.8,
					action = "action_three",
					input = "action_three"
				},
				{
					sub_action = "default",
					start_time = 0.8,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.8,
					action = "action_wield",
					input = "action_wield"
				}
			},
			enter_function = function (attacker_unit, input_extension)
				return input_extension:reset_release_input()
			end,
			chain_condition_func = function (attacker_unit, input_extension)
				local status_extension = ScriptUnit.extension(attacker_unit, "status_system")

				return not status_extension:fatigued()
			end,
			baked_sweep = {
				{
					0.19666666666666668,
					0.04037642478942871,
					0.7307171821594238,
					-0.05783909559249878,
					0.4121589958667755,
					-0.21872210502624512,
					-0.18176718056201935,
					-0.8655901551246643
				},
				{
					0.22444444444444445,
					0.007148265838623047,
					0.817711353302002,
					-0.12067407369613647,
					0.4059996008872986,
					-0.21409426629543304,
					-0.17874522507190704,
					-0.8702747225761414
				},
				{
					0.25222222222222224,
					-0.041771650314331055,
					0.9085397720336914,
					-0.2218155860900879,
					0.5085463523864746,
					-0.189089834690094,
					-0.17493049800395966,
					-0.8215990662574768
				},
				{
					0.28,
					-0.060883283615112305,
					0.9785127639770508,
					-0.27232158184051514,
					0.6085683703422546,
					-0.1831049621105194,
					-0.1598314493894577,
					-0.7553615570068359
				},
				{
					0.3077777777777778,
					-0.1312551498413086,
					1.0190706253051758,
					-0.3499929904937744,
					0.6830390691757202,
					-0.13202022016048431,
					-0.1488521844148636,
					-0.7027597427368164
				},
				{
					0.3355555555555556,
					-0.18783974647521973,
					1.0281105041503906,
					-0.39269477128982544,
					0.7099837064743042,
					-0.10108481347560883,
					-0.1387869417667389,
					-0.6829665303230286
				},
				{
					0.36333333333333334,
					-0.23166179656982422,
					1.0253267288208008,
					-0.42014390230178833,
					0.722241222858429,
					-0.09295160323381424,
					-0.13708274066448212,
					-0.6715176701545715
				}
			}
		}
	},
	action_inspect = ActionTemplates.action_inspect,
	action_wield = ActionTemplates.wield
}
weapon_template.right_hand_unit = "units/weapons/player/wpn_empire_short_sword/wpn_empire_short_sword"
weapon_template.right_hand_attachment_node_linking = AttachmentNodeLinking.polearm
weapon_template.display_unit = "units/weapons/weapon_display/display_2h_billhooks"
weapon_template.wield_anim = "to_2h_billhook"
weapon_template.state_machine = "units/beings/player/first_person_base/state_machines/melee/2h_billhook"
weapon_template.buff_type = "MELEE_2H"
weapon_template.weapon_type = "POLEARM"
weapon_template.max_fatigue_points = 6
weapon_template.dodge_count = 3
weapon_template.block_angle = 90
weapon_template.outer_block_angle = 360
weapon_template.block_fatigue_point_multiplier = 0.5
weapon_template.outer_block_fatigue_point_multiplier = 2
weapon_template.buffs = {
	change_dodge_distance = {
		external_optional_multiplier = 1.15
	},
	change_dodge_speed = {
		external_optional_multiplier = 1.15
	}
}
weapon_template.attack_meta_data = {
	tap_attack = {
		arc = 0
	},
	hold_attack = {
		arc = 2
	}
}
weapon_template.aim_assist_settings = {
	max_range = 5,
	no_aim_input_multiplier = 0,
	base_multiplier = 0,
	effective_max_range = 4,
	breed_scalars = {
		skaven_storm_vermin = 1,
		skaven_clan_rat = 0.5,
		skaven_slave = 0.5
	}
}
weapon_template.weapon_diagram = {
	light_attack = {
		[DamageTypes.ARMOR_PIERCING] = 2,
		[DamageTypes.CLEAVE] = 4,
		[DamageTypes.SPEED] = 3,
		[DamageTypes.STAGGER] = 1,
		[DamageTypes.DAMAGE] = 2
	},
	heavy_attack = {
		[DamageTypes.ARMOR_PIERCING] = 3,
		[DamageTypes.CLEAVE] = 0,
		[DamageTypes.SPEED] = 2,
		[DamageTypes.STAGGER] = 3,
		[DamageTypes.DAMAGE] = 5
	}
}
weapon_template.tooltip_keywords = {
	"weapon_keyword_wide_sweeps",
	"weapon_keyword_armour_piercing",
	"weapon_keyword_versatile"
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
weapon_template.tooltip_special_action_description = "special_action_billhook"
weapon_template.wwise_dep_right_hand = {
	"wwise/two_handed_axes"
}

return {
	two_handed_billhooks_template = weapon_template
}
