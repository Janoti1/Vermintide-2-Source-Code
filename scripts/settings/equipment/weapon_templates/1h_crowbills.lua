local push_radius = 2
local time_mod = 0.95
local weapon_template = {}

weapon_template.actions = {
	action_one = {
		default = {
			kind = "melee_start",
			anim_end_event = "attack_finished",
			anim_event = "attack_swing_charge_left",
			attack_hold_input = "action_one_hold",
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			total_time = math.huge,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.5,
					buff_name = "planted_charging_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "light_attack_last",
					start_time = 0,
					action = "action_one",
					end_time = 0.3,
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack",
					start_time = 0.5,
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
					blocker = true,
					end_time = 1.2,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
		},
		default_right = {
			kind = "melee_start",
			anim_end_event = "attack_finished",
			anim_event = "attack_swing_charge_left_pose",
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			total_time = math.huge,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.5,
					buff_name = "planted_charging_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "light_attack_upper",
					start_time = 0,
					action = "action_one",
					end_time = 0.3,
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_right_up",
					start_time = 0.5,
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
					blocker = true,
					end_time = 1.2,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_right_up",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
		},
		default_left = {
			kind = "melee_start",
			anim_end_event = "attack_finished",
			anim_event = "attack_swing_charge_right_pose",
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			total_time = math.huge,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.5,
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
					start_time = 0.5,
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
					blocker = true,
					end_time = 1.2,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
		},
		default_last = {
			kind = "melee_start",
			anim_end_event = "attack_finished",
			anim_event = "attack_swing_charge_left_pose",
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			total_time = math.huge,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.5,
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
					sub_action = "heavy_attack_right_up",
					start_time = 0.5,
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
					blocker = true,
					end_time = 1.2,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_right_up",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
		},
		heavy_attack = {
			damage_window_start = 0.35,
			range_mod = 1.25,
			kind = "sweep",
			first_person_hit_anim = "shake_hit",
			no_damage_impact_sound_event = "blunt_hit_armour",
			width_mod = 25,
			use_precision_sweep = true,
			damage_profile = "medium_pointy_smiter_upper_1h",
			aim_assist_ramp_multiplier = 0.4,
			hit_effect = "melee_hit_hammers_1h",
			aim_assist_max_ramp_multiplier = 0.6,
			aim_assist_ramp_decay_delay = 0.1,
			damage_window_end = 0.48,
			impact_sound_event = "crowbill_stab_hit",
			reset_aim_on_attack = true,
			anim_end_event = "attack_finished",
			dedicated_target_range = 3,
			uninterruptible = true,
			anim_event = "attack_swing_heavy_left_up",
			hit_stop_anim = "attack_hit",
			total_time = 1.5,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			anim_time_scale = time_mod * 1.2,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.8,
					end_time = 0.3,
					buff_name = "planted_charging_decrease_movement"
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
					end_time = 0.75,
					buff_name = "planted_fast_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.55,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.55,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_hold"
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
			enter_function = function (attacker_unit, input_extension)
				return input_extension:reset_release_input()
			end,
			baked_sweep = {
				{
					0.31666666666666665,
					0.6047754287719727,
					0.433871328830719,
					-0.28192412853240967,
					0.17932593822479248,
					0.811159610748291,
					-0.26979559659957886,
					0.48690110445022583
				},
				{
					0.34944444444444445,
					0.5279741287231445,
					0.5794664621353149,
					-0.2377392053604126,
					0.07585956901311874,
					0.8636600375175476,
					-0.1240837499499321,
					0.48263853788375854
				},
				{
					0.3822222222222222,
					0.3345174789428711,
					0.6691868305206299,
					-0.15857326984405518,
					0.004035704769194126,
					0.8595535755157471,
					0.1969643235206604,
					0.47154685854911804
				},
				{
					0.415,
					0.08432483673095703,
					0.7003600597381592,
					-0.07914185523986816,
					-0.11350636184215546,
					0.7484361529350281,
					0.5417486429214478,
					0.3653329312801361
				},
				{
					0.4477777777777777,
					-0.15227794647216797,
					0.5497995018959045,
					0.05750751495361328,
					-0.22814658284187317,
					0.5711641907691956,
					0.7618498206138611,
					0.2032375931739807
				},
				{
					0.4805555555555555,
					-0.3091602325439453,
					0.29385408759117126,
					0.13400542736053467,
					-0.34734848141670227,
					0.3363773226737976,
					0.8641272187232971,
					0.1395835131406784
				},
				{
					0.5133333333333333,
					-0.3255624771118164,
					0.07076539099216461,
					0.07834732532501221,
					-0.4311010241508484,
					0.12043090909719467,
					0.8776332139968872,
					0.17148828506469727
				}
			}
		},
		heavy_attack_left = {
			damage_window_start = 0.15,
			range_mod = 1.25,
			kind = "sweep",
			first_person_hit_anim = "shake_hit",
			no_damage_impact_sound_event = "blunt_hit_armour",
			width_mod = 25,
			use_precision_sweep = false,
			damage_profile = "medium_pointy_smiter_flat_1h",
			aim_assist_ramp_multiplier = 0.4,
			hit_effect = "melee_hit_hammers_1h",
			aim_assist_max_ramp_multiplier = 0.6,
			aim_assist_ramp_decay_delay = 0.1,
			damage_window_end = 0.3,
			impact_sound_event = "crowbill_stab_hit",
			reset_aim_on_attack = true,
			anim_end_event = "attack_finished",
			dedicated_target_range = 3,
			uninterruptible = true,
			anim_event = "attack_swing_heavy_right",
			hit_stop_anim = "attack_hit",
			total_time = 1.5,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			anim_time_scale = time_mod * 1.15,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.8,
					end_time = 0.1,
					buff_name = "planted_charging_decrease_movement"
				},
				{
					start_time = 0.1,
					external_multiplier = 1.2,
					end_time = 0.3,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.3,
					external_multiplier = 0.75,
					end_time = 0.5,
					buff_name = "planted_fast_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default_last",
					start_time = 0.55,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_last",
					start_time = 0.55,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_hold"
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
			enter_function = function (attacker_unit, input_extension)
				return input_extension:reset_release_input()
			end,
			baked_sweep = {
				{
					0.11666666666666667,
					-0.28195953369140625,
					0.3021501302719116,
					-0.1435685157775879,
					-0.2730390727519989,
					0.4455562233924866,
					-0.4232020676136017,
					-0.7401549220085144
				},
				{
					0.1527777777777778,
					-0.21535301208496094,
					0.4633171558380127,
					-0.14217638969421387,
					-0.1613822728395462,
					0.5863468647003174,
					-0.19229593873023987,
					-0.7701787948608398
				},
				{
					0.18888888888888888,
					-0.04059600830078125,
					0.6514562964439392,
					-0.1267094612121582,
					0.10744262486696243,
					0.6650041341781616,
					0.23192980885505676,
					-0.701736569404602
				},
				{
					0.22499999999999998,
					0.2284717559814453,
					0.6729840040206909,
					-0.12115013599395752,
					0.41556066274642944,
					0.5167434811592102,
					0.5666669607162476,
					-0.4890543818473816
				},
				{
					0.26111111111111107,
					0.43527984619140625,
					0.5924670696258545,
					-0.15010738372802734,
					0.563533365726471,
					0.33773744106292725,
					0.6566517949104309,
					-0.3703673481941223
				},
				{
					0.29722222222222217,
					0.64410400390625,
					0.3766744136810303,
					-0.19012176990509033,
					0.6247667074203491,
					0.26130399107933044,
					0.6325490474700928,
					-0.37585702538490295
				},
				{
					0.3333333333333333,
					0.7392406463623047,
					0.1343645453453064,
					-0.2035771608352661,
					0.6540806889533997,
					0.20555374026298523,
					0.6140289902687073,
					-0.39101725816726685
				}
			}
		},
		heavy_attack_right_up = {
			damage_window_start = 0.15,
			range_mod = 1.25,
			kind = "sweep",
			first_person_hit_anim = "shake_hit",
			no_damage_impact_sound_event = "blunt_hit_armour",
			width_mod = 25,
			use_precision_sweep = false,
			damage_profile = "medium_pointy_smiter_diag_1h",
			aim_assist_ramp_multiplier = 0.4,
			hit_effect = "melee_hit_hammers_1h",
			aim_assist_max_ramp_multiplier = 0.6,
			aim_assist_ramp_decay_delay = 0.1,
			damage_window_end = 0.28,
			impact_sound_event = "crowbill_stab_hit",
			reset_aim_on_attack = true,
			anim_end_event = "attack_finished",
			dedicated_target_range = 3,
			uninterruptible = true,
			anim_event = "attack_swing_heavy_left_diagonal",
			hit_stop_anim = "attack_hit",
			total_time = 1.5,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			anim_time_scale = time_mod * 1,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.8,
					end_time = 0.1,
					buff_name = "planted_charging_decrease_movement"
				},
				{
					start_time = 0.1,
					external_multiplier = 1.2,
					end_time = 0.3,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.3,
					external_multiplier = 0.75,
					end_time = 0.5,
					buff_name = "planted_fast_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.55,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.55,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_hold"
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
			enter_function = function (attacker_unit, input_extension)
				return input_extension:reset_release_input()
			end,
			baked_sweep = {
				{
					0.11666666666666667,
					0.3269634246826172,
					0.3871786594390869,
					0.15226542949676514,
					-0.22085578739643097,
					-0.39078617095947266,
					0.17122706770896912,
					-0.8770349025726318
				},
				{
					0.14944444444444444,
					0.2151508331298828,
					0.4400012493133545,
					0.061739563941955566,
					0.1630861908197403,
					-0.4246923625469208,
					-0.038091402500867844,
					-0.8897125124931335
				},
				{
					0.18222222222222223,
					0.002117156982421875,
					0.5006873607635498,
					-0.056124091148376465,
					0.5109684467315674,
					-0.35425126552581787,
					-0.2194955199956894,
					-0.7518238425254822
				},
				{
					0.21500000000000002,
					-0.21495819091796875,
					0.5353929996490479,
					-0.1705876588821411,
					0.6663205027580261,
					-0.2634490430355072,
					-0.30184370279312134,
					-0.6288895010948181
				},
				{
					0.2477777777777778,
					-0.46518802642822266,
					0.3894383907318115,
					-0.2951711416244507,
					0.7658497095108032,
					-0.19963917136192322,
					-0.41587284207344055,
					-0.4479600787162781
				},
				{
					0.28055555555555556,
					-0.5737857818603516,
					0.20391225814819336,
					-0.3452795743942261,
					0.7987478971481323,
					-0.18177901208400726,
					-0.4933200776576996,
					-0.29256361722946167
				},
				{
					0.31333333333333335,
					-0.5812320709228516,
					0.09217524528503418,
					-0.3739369511604309,
					0.8062974810600281,
					-0.17405438423156738,
					-0.5301109552383423,
					-0.19639702141284943
				}
			}
		},
		light_attack_left = {
			damage_window_start = 0.2,
			range_mod = 1.25,
			kind = "sweep",
			first_person_hit_anim = "shake_hit",
			no_damage_impact_sound_event = "fire_hit_armour",
			use_precision_sweep = true,
			width_mod = 25,
			armor_impact_sound_event = "fire_hit",
			damage_profile = "light_blunt_smiter_stab_burn",
			hit_effect = "melee_hit_hammers_1h",
			damage_window_end = 0.32,
			impact_sound_event = "fire_hit",
			anim_end_event = "attack_finished",
			dedicated_target_range = 2,
			anim_event = "attack_swing_stab",
			hit_stop_anim = "attack_hit",
			total_time = 1.5,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			anim_time_scale = time_mod * 0.95,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.85,
					end_time = 0.5,
					buff_name = "planted_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.5,
					action = "action_one",
					end_time = 1.25,
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.25,
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
					0.4340524673461914,
					-0.8019168376922607,
					-0.09420478343963623,
					0.4325891435146332,
					0.6059449911117554,
					0.6134867668151855,
					-0.2633083462715149
				},
				{
					0.1977777777777778,
					0.48987865447998047,
					-0.7350833415985107,
					-0.026601433753967285,
					0.32434695959091187,
					0.671686589717865,
					0.5494979619979858,
					-0.376414954662323
				},
				{
					0.2288888888888889,
					0.4358072280883789,
					-0.2573866844177246,
					-0.0004718303680419922,
					0.294607549905777,
					0.622744619846344,
					0.5456459522247314,
					-0.4771435856819153
				},
				{
					0.26,
					0.1932668685913086,
					0.4686253070831299,
					-0.00031113624572753906,
					0.32087552547454834,
					0.582068681716919,
					0.5748415589332581,
					-0.47727590799331665
				},
				{
					0.2911111111111111,
					0.10194110870361328,
					0.6348716020584106,
					-0.03998899459838867,
					0.3024784028530121,
					0.6182180047035217,
					0.5826342105865479,
					-0.43226245045661926
				},
				{
					0.3222222222222222,
					0.12216377258300781,
					0.5765166282653809,
					-0.045000672340393066,
					0.3063320815563202,
					0.6179255843162537,
					0.5796829462051392,
					-0.43393129110336304
				},
				{
					0.35333333333333333,
					0.12209892272949219,
					0.5799599885940552,
					-0.04274392127990723,
					0.3073965609073639,
					0.6174651384353638,
					0.5787984728813171,
					-0.4350132644176483
				}
			}
		},
		light_attack_right = {
			damage_window_start = 0.34,
			range_mod = 1.25,
			kind = "sweep",
			first_person_hit_anim = "shake_hit",
			no_damage_impact_sound_event = "blunt_hit_armour",
			use_precision_sweep = false,
			width_mod = 25,
			damage_profile = "light_pointy_smiter_diag",
			hit_effect = "melee_hit_hammers_1h",
			damage_window_end = 0.47,
			impact_sound_event = "crowbill_stab_hit",
			anim_end_event = "attack_finished",
			dedicated_target_range = 2,
			anim_event = "attack_swing_right_diagonal",
			hit_stop_anim = "attack_hit",
			total_time = 1.5,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			anim_time_scale = time_mod * 1.1,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.85,
					end_time = 0.5,
					buff_name = "planted_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default_last",
					start_time = 0.5,
					action = "action_one",
					end_time = 1.25,
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.25,
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
					0.3066666666666667,
					-0.336273193359375,
					0.1542186737060547,
					0.05213439464569092,
					0.8049599528312683,
					-0.10340581834316254,
					0.43201330304145813,
					0.39333343505859375
				},
				{
					0.33944444444444444,
					-0.2928791046142578,
					0.23176026344299316,
					0.06756317615509033,
					0.8167338967323303,
					-0.12749771773815155,
					0.3186769187450409,
					0.46382659673690796
				},
				{
					0.37222222222222223,
					-0.21208477020263672,
					0.4279332160949707,
					0.06091105937957764,
					-0.690456211566925,
					0.27448445558547974,
					-0.15659795701503754,
					-0.650696337223053
				},
				{
					0.405,
					-0.06646347045898438,
					0.6361489295959473,
					-0.021313071250915527,
					-0.2728191614151001,
					0.41571709513664246,
					-0.017378978431224823,
					-0.8674370050430298
				},
				{
					0.43777777777777777,
					0.3861274719238281,
					0.6868361234664917,
					-0.3128567934036255,
					0.5333278179168701,
					0.3340059816837311,
					0.33746254444122314,
					-0.7000861167907715
				},
				{
					0.4705555555555555,
					0.7482118606567383,
					0.4186537265777588,
					-0.5063203573226929,
					0.6866757869720459,
					0.2856896221637726,
					0.49389564990997314,
					-0.45047178864479065
				},
				{
					0.5033333333333333,
					0.8565158843994141,
					0.16257452964782715,
					-0.611731767654419,
					0.632929801940918,
					0.44668400287628174,
					0.5292752981185913,
					-0.3460361659526825
				}
			}
		},
		light_attack_last = {
			damage_window_start = 0.35,
			range_mod = 1.25,
			kind = "sweep",
			first_person_hit_anim = "shake_hit",
			no_damage_impact_sound_event = "blunt_hit_armour",
			sweep_z_offset = 0.05,
			width_mod = 25,
			use_precision_sweep = true,
			damage_profile = "light_pointy_smiter",
			aim_assist_max_ramp_multiplier = 0.8,
			hit_effect = "melee_hit_hammers_1h",
			aim_assist_ramp_decay_delay = 0.1,
			damage_window_end = 0.5,
			impact_sound_event = "crowbill_stab_hit",
			anim_end_event = "attack_finished",
			dedicated_target_range = 2,
			aim_assist_ramp_multiplier = 0.6,
			anim_event = "attack_swing_down",
			hit_stop_anim = "attack_hit",
			total_time = 1.5,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			anim_time_scale = time_mod * 1.15,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.85,
					end_time = 0.25,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.25,
					external_multiplier = 1.1,
					end_time = 0.5,
					buff_name = "planted_fast_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default_right",
					start_time = 0.55,
					action = "action_one",
					end_time = 1.25,
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.25,
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
					0.31666666666666665,
					0.2296905517578125,
					0.13440179824829102,
					0.3413652181625366,
					-0.7146869897842407,
					-0.0766104906797409,
					0.05250484123826027,
					-0.6932507753372192
				},
				{
					0.35277777777777775,
					0.2104787826538086,
					0.29169464111328125,
					0.30971765518188477,
					-0.618920624256134,
					-0.1020062044262886,
					0.019093038514256477,
					-0.7785676121711731
				},
				{
					0.3888888888888889,
					0.15975093841552734,
					0.48514866828918457,
					0.23782658576965332,
					-0.40919163823127747,
					-0.11035661399364471,
					-0.032252196222543716,
					-0.9051759243011475
				},
				{
					0.425,
					0.07030868530273438,
					0.7101249694824219,
					-0.03506135940551758,
					0.1969684660434723,
					-0.07107337564229965,
					-0.03455863893032074,
					-0.9772194027900696
				},
				{
					0.46111111111111114,
					-0.06546306610107422,
					0.660853385925293,
					-0.5140915513038635,
					0.8195626735687256,
					-0.011313991621136665,
					-0.10264736413955688,
					-0.5636067986488342
				},
				{
					0.49722222222222223,
					-0.10063457489013672,
					0.21611547470092773,
					-0.7459758520126343,
					0.9783445596694946,
					-0.029417667537927628,
					-0.20482130348682404,
					0.004974919371306896
				},
				{
					0.5333333333333333,
					-0.07651042938232422,
					0.00556182861328125,
					-0.7057856321334839,
					0.9453535079956055,
					-0.04604991525411606,
					-0.22091424465179443,
					0.2353360801935196
				}
			}
		},
		light_attack_upper = {
			damage_window_start = 0.38,
			range_mod = 1.25,
			kind = "sweep",
			first_person_hit_anim = "shake_hit",
			no_damage_impact_sound_event = "blunt_hit_armour",
			sweep_z_offset = 0.05,
			width_mod = 30,
			use_precision_sweep = false,
			damage_profile = "light_pointy_smiter_flat",
			aim_assist_max_ramp_multiplier = 0.8,
			hit_effect = "melee_hit_hammers_1h",
			aim_assist_ramp_decay_delay = 0.1,
			reset_aim_on_attack = true,
			damage_window_end = 0.52,
			impact_sound_event = "crowbill_stab_hit",
			anim_end_event = "attack_finished",
			dedicated_target_range = 2,
			aim_assist_ramp_multiplier = 0.4,
			anim_event = "attack_swing_left",
			hit_stop_anim = "attack_hit",
			total_time = 1.5,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			anim_time_scale = time_mod * 1.15,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.85,
					end_time = 0.5,
					buff_name = "planted_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.55,
					action = "action_one",
					end_time = 1.25,
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.25,
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
					0.3466666666666667,
					0.4654426574707031,
					0.5275716781616211,
					0.02077805995941162,
					-0.3595196008682251,
					-0.5470400452613831,
					0.32689037919044495,
					-0.6816417574882507
				},
				{
					0.3811111111111111,
					0.3429698944091797,
					0.6085467338562012,
					0.004737138748168945,
					-0.2408079206943512,
					-0.6002248525619507,
					0.2255220264196396,
					-0.7286161184310913
				},
				{
					0.41555555555555557,
					0.13385581970214844,
					0.6962708234786987,
					-0.025140047073364258,
					0.02623666264116764,
					-0.6273446083068848,
					-0.012756641022861004,
					-0.7781951427459717
				},
				{
					0.45,
					-0.2500591278076172,
					0.6187797784805298,
					-0.12957489490509033,
					0.48508140444755554,
					-0.4122677445411682,
					-0.4957351088523865,
					-0.5907436609268188
				},
				{
					0.48444444444444446,
					-0.4029512405395508,
					0.4229557514190674,
					-0.23765766620635986,
					-0.6610027551651001,
					0.1667015701532364,
					0.6654164791107178,
					0.3041493594646454
				},
				{
					0.518888888888889,
					-0.4358053207397461,
					0.29650402069091797,
					-0.34126150608062744,
					-0.6136944890022278,
					0.040566906332969666,
					0.7439972758293152,
					0.2611541152000427
				},
				{
					0.5533333333333333,
					-0.41727638244628906,
					0.2205057144165039,
					-0.4118061661720276,
					-0.6164432764053345,
					-0.06615559011697769,
					0.7422851920127869,
					0.25423184037208557
				}
			}
		},
		light_attack_bopp = {
			damage_window_start = 0.17,
			range_mod = 1.25,
			kind = "sweep",
			first_person_hit_anim = "shake_hit",
			no_damage_impact_sound_event = "blunt_hit_armour",
			use_precision_sweep = false,
			width_mod = 25,
			damage_profile = "light_pointy_smiter_upper",
			hit_effect = "melee_hit_hammers_1h",
			damage_window_end = 0.32,
			impact_sound_event = "crowbill_stab_hit",
			anim_end_event = "attack_finished",
			dedicated_target_range = 2,
			anim_event_3p = "attack_swing_left",
			anim_event = "attack_swing_up_left",
			hit_stop_anim = "attack_hit",
			total_time = 1.5,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			anim_time_scale = time_mod * 1,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.85,
					end_time = 0.5,
					buff_name = "planted_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.4,
					action = "action_one",
					end_time = 1.8,
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.8,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.3,
					action = "action_two",
					release_required = "action_two_hold",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.5,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.4,
					action = "action_wield",
					input = "action_wield"
				}
			},
			baked_sweep = {
				{
					0.1366666666666667,
					0.5379981994628906,
					0.36898112297058105,
					-0.3583437204360962,
					-0.05587893724441528,
					-0.7577126026153564,
					0.3477631211280823,
					-0.5493724942207336
				},
				{
					0.1727777777777778,
					0.5870246887207031,
					0.48831701278686523,
					-0.3033651113510132,
					0.09347543865442276,
					0.8312261700630188,
					-0.27384039759635925,
					0.4746966063976288
				},
				{
					0.2088888888888889,
					0.5053873062133789,
					0.5958911180496216,
					-0.2120572328567505,
					0.07577041536569595,
					0.8625833988189697,
					-0.07242288440465927,
					0.49493807554244995
				},
				{
					0.245,
					0.22563648223876953,
					0.6950696706771851,
					-0.12507712841033936,
					-0.1146358847618103,
					0.8045702576637268,
					0.3254006505012512,
					0.48336297273635864
				},
				{
					0.2811111111111111,
					-0.05233478546142578,
					0.6589154005050659,
					-0.022829890251159668,
					-0.28385376930236816,
					0.6221317052841187,
					0.625581681728363,
					0.3755353093147278
				},
				{
					0.3172222222222222,
					-0.2647590637207031,
					0.4002411365509033,
					0.12477076053619385,
					-0.38668590784072876,
					0.3664286136627197,
					0.8174579739570618,
					0.2190127670764923
				},
				{
					0.35333333333333333,
					-0.3257617950439453,
					0.16600239276885986,
					0.11011993885040283,
					-0.44326961040496826,
					0.15434442460536957,
					0.8641688227653503,
					0.18138931691646576
				}
			}
		},
		push = {
			damage_window_start = 0.05,
			outer_push_angle = 180,
			fatigue_cost = "action_stun_push",
			kind = "push_stagger",
			anim_end_event = "attack_finished",
			no_damage_impact_sound_event = "slashing_hit_armour",
			hit_time = 0.1,
			damage_profile_outer = "light_push",
			weapon_action_hand = "right",
			push_angle = 100,
			hit_effect = "melee_hit_sword_1h",
			damage_window_end = 0.2,
			impact_sound_event = "slashing_hit",
			charge_value = "action_push",
			dedicated_target_range = 2,
			anim_event = "attack_push",
			damage_profile_inner = "medium_push",
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
					start_time = 0.3,
					action = "action_one",
					release_required = "action_two_hold",
					doubleclick_window = 0,
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.3,
					action = "action_one",
					release_required = "action_two_hold",
					doubleclick_window = 0,
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
					external_multiplier = 0.8,
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
weapon_template.weapon_diagram = {
	light_attack = {
		[DamageTypes.ARMOR_PIERCING] = 4,
		[DamageTypes.CLEAVE] = 0,
		[DamageTypes.SPEED] = 3,
		[DamageTypes.STAGGER] = 1,
		[DamageTypes.DAMAGE] = 3
	},
	heavy_attack = {
		[DamageTypes.ARMOR_PIERCING] = 6,
		[DamageTypes.CLEAVE] = 0,
		[DamageTypes.SPEED] = 3,
		[DamageTypes.STAGGER] = 4,
		[DamageTypes.DAMAGE] = 5
	}
}
weapon_template.tooltip_keywords = {
	"weapon_keyword_high_damage",
	"weapon_keyword_damage_over_time",
	"weapon_keyword_wide_sweeps"
}
weapon_template.tooltip_compare = {
	light = {
		action_name = "action_one",
		sub_action_name = "light_attack_last"
	},
	heavy = {
		action_name = "action_one",
		sub_action_name = "heavy_attack"
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
weapon_template.attack_meta_data = {
	tap_attack = {
		arc = 1
	},
	hold_attack = {
		arc = 0
	}
}
weapon_template.aim_assist_settings = {
	max_range = 5,
	no_aim_input_multiplier = 0,
	vertical_only = true,
	base_multiplier = 0,
	effective_max_range = 4,
	breed_scalars = {
		skaven_storm_vermin = 1,
		skaven_clan_rat = 1,
		skaven_slave = 1
	}
}
weapon_template.right_hand_unit = "units/weapons/player/wpn_empire_short_sword/wpn_empire_short_sword"
weapon_template.right_hand_attachment_node_linking = AttachmentNodeLinking.one_handed_melee_weapon.right
weapon_template.display_unit = "units/weapons/weapon_display/display_1h_crowbills"
weapon_template.wield_anim = "to_1h_crowbill"
weapon_template.state_machine = "units/beings/player/first_person_base/state_machines/melee/1h_crowbill"
weapon_template.buff_type = "MELEE_1H"
weapon_template.weapon_type = "MACE_1H"
weapon_template.max_fatigue_points = 6
weapon_template.dodge_count = 3
weapon_template.block_angle = 90
weapon_template.outer_block_angle = 360
weapon_template.block_fatigue_point_multiplier = 0.5
weapon_template.outer_block_fatigue_point_multiplier = 2
weapon_template.buffs = {
	change_dodge_distance = {
		external_optional_multiplier = 1.25
	},
	change_dodge_speed = {
		external_optional_multiplier = 1.25
	}
}
weapon_template.wwise_dep_right_hand = {
	"wwise/one_handed_crowbills"
}

return {
	one_handed_crowbill = weapon_template
}
