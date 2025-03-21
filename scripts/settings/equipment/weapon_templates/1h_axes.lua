local push_radius = 2
local time_mod = 0.9
local weapon_template = {}

weapon_template.actions = {
	action_one = {
		default = {
			aim_assist_ramp_decay_delay = 0,
			anim_end_event = "attack_finished",
			kind = "melee_start",
			attack_hold_input = "action_one_hold",
			aim_assist_max_ramp_multiplier = 0.8,
			aim_assist_ramp_multiplier = 0.4,
			anim_event = "attack_swing_charge_left_diagonal",
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			total_time = math.huge,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.25,
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
					start_time = 0.7,
					action = "action_one",
					auto_chain = true
				}
			}
		},
		default_right = {
			aim_assist_ramp_decay_delay = 0,
			anim_end_event = "attack_finished",
			kind = "melee_start",
			aim_assist_max_ramp_multiplier = 0.8,
			aim_assist_ramp_multiplier = 0.4,
			anim_event = "attack_swing_charge_right_diagonal_pose",
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			total_time = math.huge,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.25,
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
					sub_action = "heavy_attack_right",
					start_time = 0.7,
					action = "action_one",
					auto_chain = true
				}
			}
		},
		default_left = {
			aim_assist_ramp_decay_delay = 0,
			anim_end_event = "attack_finished",
			kind = "melee_start",
			aim_assist_max_ramp_multiplier = 0.8,
			aim_assist_ramp_multiplier = 0.4,
			anim_event = "attack_swing_charge_left_diagonal_pose",
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			total_time = math.huge,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.25,
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
					start_time = 0.7,
					action = "action_one",
					auto_chain = true
				}
			}
		},
		heavy_attack_left = {
			damage_window_start = 0.22,
			anim_end_event = "attack_finished",
			no_damage_impact_sound_event = "blunt_hit_armour",
			kind = "sweep",
			first_person_hit_anim = "attack_hit",
			use_precision_sweep = true,
			width_mod = 17.5,
			damage_profile = "medium_slashing_smiter_1h_axe",
			aim_assist_ramp_multiplier = 0.4,
			aim_assist_max_ramp_multiplier = 0.6,
			hit_effect = "melee_hit_axes_1h",
			aim_assist_ramp_decay_delay = 0.1,
			reset_aim_on_attack = true,
			damage_window_end = 0.32,
			impact_sound_event = "axe_1h_hit",
			charge_value = "heavy_attack",
			dedicated_target_range = 2.75,
			uninterruptible = true,
			anim_event = "attack_swing_heavy_down",
			total_time = 1.25,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			anim_time_scale = time_mod * 1.15,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 1,
					end_time = 0.2,
					buff_name = "planted_charging_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default_right",
					start_time = 0.55,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 0.55,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.4,
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
			enter_function = function (attacker_unit, input_extension)
				return input_extension:reset_release_input()
			end,
			baked_sweep = {
				{
					0.18666666666666668,
					0.19519710540771484,
					0.32386159896850586,
					0.19439482688903809,
					-0.6457839012145996,
					-0.12403582036495209,
					0.03741646558046341,
					-0.7524482011795044
				},
				{
					0.21444444444444444,
					0.15177154541015625,
					0.5001239776611328,
					0.19181489944458008,
					-0.38783565163612366,
					-0.11892493069171906,
					-0.024683630093932152,
					-0.9136909246444702
				},
				{
					0.24222222222222223,
					0.07831954956054688,
					0.694929838180542,
					0.006635546684265137,
					0.11383352428674698,
					-0.07917626947164536,
					-0.04363984242081642,
					-0.9893779158592224
				},
				{
					0.27,
					-0.03513813018798828,
					0.7209339141845703,
					-0.38570642471313477,
					0.7109565138816833,
					-0.017617790028452873,
					-0.06922681629657745,
					-0.699598491191864
				},
				{
					0.2977777777777778,
					-0.0914907455444336,
					0.5075256824493408,
					-0.6759254932403564,
					0.9336724281311035,
					-0.019165057688951492,
					-0.13821953535079956,
					-0.3298240602016449
				},
				{
					0.3255555555555556,
					-0.09056472778320312,
					0.1401684284210205,
					-0.7442107200622559,
					0.9739465713500977,
					-0.03085905872285366,
					-0.20881064236164093,
					0.08290891349315643
				},
				{
					0.35333333333333333,
					-0.07697582244873047,
					0.012116670608520508,
					-0.7079495191574097,
					0.9472152590751648,
					-0.044005539268255234,
					-0.2216540426015854,
					0.22741226851940155
				}
			}
		},
		heavy_attack_right = {
			damage_window_start = 0.2,
			anim_end_event = "attack_finished",
			no_damage_impact_sound_event = "blunt_hit_armour",
			kind = "sweep",
			first_person_hit_anim = "attack_hit",
			use_precision_sweep = true,
			width_mod = 17.5,
			damage_profile = "medium_slashing_smiter_1h_axe",
			aim_assist_ramp_multiplier = 0.4,
			aim_assist_max_ramp_multiplier = 0.6,
			hit_effect = "melee_hit_axes_1h",
			aim_assist_ramp_decay_delay = 0.1,
			reset_aim_on_attack = true,
			damage_window_end = 0.28,
			impact_sound_event = "axe_1h_hit",
			charge_value = "heavy_attack",
			dedicated_target_range = 2.75,
			uninterruptible = true,
			anim_event = "attack_swing_heavy_down_right",
			total_time = 1.25,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			anim_time_scale = time_mod * 1.15,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 1,
					end_time = 0.2,
					buff_name = "planted_charging_decrease_movement"
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
					start_time = 0.4,
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
			enter_function = function (attacker_unit, input_extension)
				return input_extension:reset_release_input()
			end,
			baked_sweep = {
				{
					0.16666666666666669,
					-0.21466827392578125,
					0.31459784507751465,
					0.1757364273071289,
					-0.7071804404258728,
					0.23868580162525177,
					-0.22556330263614655,
					-0.6261358261108398
				},
				{
					0.19111111111111112,
					-0.17747879028320312,
					0.40781283378601074,
					0.1750502586364746,
					-0.6354955434799194,
					0.24432846903800964,
					-0.13004831969738007,
					-0.7207887768745422
				},
				{
					0.21555555555555558,
					-0.101806640625,
					0.5875358581542969,
					0.10869216918945312,
					-0.2989934980869293,
					0.2544431984424591,
					-0.08339742571115494,
					-0.9159183502197266
				},
				{
					0.24000000000000002,
					-0.016587257385253906,
					0.6661636829376221,
					-0.0385439395904541,
					0.237921804189682,
					0.16047054529190063,
					0.01347525417804718,
					-0.9578417539596558
				},
				{
					0.2644444444444445,
					0.1873950958251953,
					0.6768484115600586,
					-0.5663260221481323,
					0.7290764451026917,
					0.14877261221408844,
					0.08663395792245865,
					-0.6624264121055603
				},
				{
					0.2888888888888889,
					0.5864686965942383,
					0.33339762687683105,
					-0.753138542175293,
					0.7680940628051758,
					0.27759039402008057,
					0.312749981880188,
					-0.4849355220794678
				},
				{
					0.31333333333333335,
					0.8342294692993164,
					0.20261812210083008,
					-0.6361148357391357,
					0.6471456289291382,
					0.42881307005882263,
					0.5101239085197449,
					-0.37026381492614746
				}
			}
		},
		light_attack_left = {
			damage_window_start = 0.38,
			range_mod = 1.2,
			kind = "sweep",
			first_person_hit_anim = "shake_hit",
			no_damage_impact_sound_event = "blunt_hit_armour",
			additional_critical_strike_chance = 0.1,
			use_precision_sweep = false,
			damage_profile = "light_slashing_smiter_diag",
			hit_effect = "melee_hit_axes_1h",
			damage_window_end = 0.47,
			impact_sound_event = "axe_1h_hit",
			anim_end_event = "attack_finished",
			dedicated_target_range = 2,
			uninterruptible = true,
			anim_event = "attack_swing_left_diagonal",
			hit_stop_anim = "attack_hit",
			total_time = 2.1,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			anim_time_scale = time_mod * 1.15,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.8,
					end_time = 0.5,
					buff_name = "planted_decrease_movement"
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
					sub_action = "default_right",
					start_time = 0.55,
					action = "action_one",
					end_time = 1.25,
					input = "action_one_hold"
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
					0.4912099838256836,
					0.464017391204834,
					0.0647122859954834,
					-0.6787838935852051,
					-0.2620725929737091,
					0.1370680332183838,
					-0.6721479892730713
				},
				{
					0.37277777777777776,
					0.42833709716796875,
					0.5465919971466064,
					0.06399869918823242,
					-0.5614945888519287,
					-0.3217203617095947,
					0.14301034808158875,
					-0.7488443851470947
				},
				{
					0.3988888888888889,
					0.32873058319091797,
					0.6335995197296143,
					0.03776514530181885,
					-0.39328616857528687,
					-0.3740089237689972,
					0.11875617504119873,
					-0.8314687609672546
				},
				{
					0.425,
					0.11908245086669922,
					0.7396252155303955,
					-0.0688321590423584,
					-0.03539905324578285,
					-0.4022248387336731,
					-0.019967157393693924,
					-0.9146384000778198
				},
				{
					0.4511111111111111,
					-0.1376638412475586,
					0.7270767688751221,
					-0.20009851455688477,
					0.411008358001709,
					-0.3294028639793396,
					-0.22193413972854614,
					-0.8205553889274597
				},
				{
					0.4772222222222222,
					-0.3630542755126953,
					0.49279093742370605,
					-0.35030221939086914,
					0.8393282890319824,
					-0.12425148487091064,
					-0.36643022298812866,
					-0.38186201453208923
				},
				{
					0.5033333333333333,
					-0.3978404998779297,
					0.2305436134338379,
					-0.49371564388275146,
					0.9338255524635315,
					-0.06904825568199158,
					-0.35062235593795776,
					-0.016313601285219193
				}
			}
		},
		light_attack_right = {
			damage_window_start = 0.38,
			range_mod = 1.2,
			kind = "sweep",
			first_person_hit_anim = "shake_hit",
			no_damage_impact_sound_event = "blunt_hit_armour",
			additional_critical_strike_chance = 0.1,
			use_precision_sweep = false,
			damage_profile = "light_slashing_smiter_diag",
			hit_effect = "melee_hit_axes_1h",
			damage_window_end = 0.47,
			impact_sound_event = "axe_1h_hit",
			anim_end_event = "attack_finished",
			dedicated_target_range = 3,
			uninterruptible = true,
			anim_event = "attack_swing_right_diagonal",
			hit_stop_anim = "attack_hit",
			total_time = 2.1,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			anim_time_scale = time_mod * 1.15,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.8,
					end_time = 0.5,
					buff_name = "planted_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.5,
					action = "action_one",
					end_time = 1.25,
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.5,
					action = "action_one",
					end_time = 1.25,
					input = "action_one_hold"
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
					-0.29305076599121094,
					0.2312781810760498,
					0.06751227378845215,
					0.8167614340782166,
					-0.1271969974040985,
					0.3194132149219513,
					0.46335408091545105
				},
				{
					0.37277777777777776,
					-0.22612857818603516,
					0.3929464817047119,
					0.06315648555755615,
					-0.724347710609436,
					0.24896834790706635,
					-0.17608284950256348,
					-0.6183282732963562
				},
				{
					0.3988888888888889,
					-0.1253795623779297,
					0.5772550106048584,
					0.016393065452575684,
					-0.43658822774887085,
					0.38689807057380676,
					-0.07606548070907593,
					-0.8086498975753784
				},
				{
					0.425,
					0.07342910766601562,
					0.7101559638977051,
					-0.12036490440368652,
					0.02502855658531189,
					0.4192671477794647,
					0.11455048620700836,
					-0.9002593159675598
				},
				{
					0.4511111111111111,
					0.4700899124145508,
					0.6456513404846191,
					-0.3615608215332031,
					0.6269329786300659,
					0.28655752539634705,
					0.3689093589782715,
					-0.6234949827194214
				},
				{
					0.4772222222222222,
					0.7592086791992188,
					0.40489649772644043,
					-0.5127947330474854,
					0.6822783350944519,
					0.29477056860923767,
					0.4996146559715271,
					-0.44496262073516846
				},
				{
					0.5033333333333333,
					0.8566246032714844,
					0.18720483779907227,
					-0.6029770374298096,
					0.6205852627754211,
					0.4458543360233307,
					0.5346100330352783,
					-0.3609430193901062
				}
			}
		},
		light_attack_last = {
			damage_window_start = 0.38,
			range_mod = 1.2,
			kind = "sweep",
			first_person_hit_anim = "shake_hit",
			no_damage_impact_sound_event = "blunt_hit_armour",
			additional_critical_strike_chance = 0.1,
			use_precision_sweep = false,
			damage_profile = "light_slashing_smiter_diag",
			hit_effect = "melee_hit_axes_1h",
			damage_window_end = 0.5,
			impact_sound_event = "axe_1h_hit",
			anim_end_event = "attack_finished",
			dedicated_target_range = 3,
			anim_event = "attack_swing_left",
			hit_stop_anim = "attack_hit",
			total_time = 2.1,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			anim_time_scale = time_mod * 1.15,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.8,
					end_time = 0.5,
					buff_name = "planted_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.75,
					action = "action_one",
					end_time = 1.25,
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.75,
					action = "action_one",
					end_time = 1.25,
					input = "action_one_hold"
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
					0.47432899475097656,
					0.5204765796661377,
					0.020365118980407715,
					-0.36649927496910095,
					-0.542941689491272,
					0.3339557349681854,
					-0.6777656078338623
				},
				{
					0.37777777777777777,
					0.3728933334350586,
					0.5919713973999023,
					0.0089493989944458,
					-0.27246329188346863,
					-0.5900282263755798,
					0.2532792389392853,
					-0.7165752649307251
				},
				{
					0.4088888888888889,
					0.19095802307128906,
					0.6782798767089844,
					-0.014937877655029297,
					-0.0520656444132328,
					-0.6285707354545593,
					0.05481689050793648,
					-0.7740691900253296
				},
				{
					0.44,
					-0.05983161926269531,
					0.705925703048706,
					-0.06939971446990967,
					0.26877719163894653,
					-0.5658416152000427,
					-0.25017818808555603,
					-0.7382363677024841
				},
				{
					0.4711111111111111,
					-0.36070919036865234,
					0.5046496391296387,
					-0.18911206722259521,
					-0.6117178201675415,
					0.25824806094169617,
					0.6237668991088867,
					0.4123396575450897
				},
				{
					0.5022222222222222,
					-0.42654991149902344,
					0.359713077545166,
					-0.2855898141860962,
					-0.6543853282928467,
					0.10004584491252899,
					0.702660322189331,
					0.26084309816360474
				},
				{
					0.5333333333333333,
					-0.4346017837524414,
					0.28005504608154297,
					-0.35654473304748535,
					-0.6082139611244202,
					0.022655019536614418,
					0.7495343685150146,
					0.26030901074409485
				}
			}
		},
		light_attack_bopp = {
			damage_window_start = 0.38,
			kind = "sweep",
			first_person_hit_anim = "shake_hit",
			range_mod = 1.25,
			sweep_z_offset = 0.2,
			no_damage_impact_sound_event = "blunt_hit_armour",
			additional_critical_strike_chance = 0.1,
			use_precision_sweep = true,
			damage_profile = "light_slashing_smiter",
			hit_effect = "melee_hit_axes_1h",
			aim_assist_max_ramp_multiplier = 0.8,
			aim_assist_ramp_decay_delay = 0,
			damage_window_end = 0.47,
			impact_sound_event = "axe_1h_hit",
			anim_end_event = "attack_finished",
			dedicated_target_range = 2.75,
			aim_assist_ramp_multiplier = 0.4,
			anim_event = "attack_swing_down_right",
			hit_stop_anim = "attack_hit",
			total_time = 2.1,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			anim_time_scale = time_mod * 1.15,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.8,
					end_time = 0.5,
					buff_name = "planted_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.65,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					release_required = "action_two_hold",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.48,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.48,
					action = "action_wield",
					input = "action_wield"
				}
			},
			enter_function = function (attacker_unit, input_extension)
				return input_extension:reset_release_input()
			end,
			baked_sweep = {
				{
					0.3466666666666667,
					-0.21553421020507812,
					0.29797983169555664,
					0.1769731044769287,
					-0.6996964812278748,
					0.22838298976421356,
					-0.2506023645401001,
					-0.6288596391677856
				},
				{
					0.37277777777777776,
					-0.18415069580078125,
					0.4311788082122803,
					0.18166542053222656,
					-0.5981241464614868,
					0.21634072065353394,
					-0.16675807535648346,
					-0.753416121006012
				},
				{
					0.3988888888888889,
					-0.11294078826904297,
					0.613684892654419,
					0.14792633056640625,
					-0.3335396945476532,
					0.21329230070114136,
					-0.11101269721984863,
					-0.9115557670593262
				},
				{
					0.425,
					-0.012603759765625,
					0.7565677165985107,
					-0.04803872108459473,
					0.2635291516780853,
					0.14898934960365295,
					0.01771511882543564,
					-0.9529117345809937
				},
				{
					0.4511111111111111,
					0.2553415298461914,
					0.5672619342803955,
					-0.691260814666748,
					0.7914090752601624,
					0.1549285501241684,
					0.09634095430374146,
					-0.5834272503852844
				},
				{
					0.4772222222222222,
					0.6521244049072266,
					0.2315540313720703,
					-0.7729456424713135,
					0.7591756582260132,
					0.34098702669143677,
					0.34479352831840515,
					-0.43416309356689453
				},
				{
					0.5033333333333333,
					0.882084846496582,
					0.20294594764709473,
					-0.5523982048034668,
					0.6020779013633728,
					0.44056573510169983,
					0.5651070475578308,
					-0.35221871733665466
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
			impact_sound_event = "slashing_hit",
			charge_value = "action_push",
			no_damage_impact_sound_event = "slashing_hit_armour",
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
					start_time = 0.3,
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
weapon_template.right_hand_unit = "units/weapons/player/wpn_empire_short_sword/wpn_empire_short_sword"
weapon_template.right_hand_attachment_node_linking = AttachmentNodeLinking.one_handed_melee_weapon.right
weapon_template.display_unit = "units/weapons/weapon_display/display_1h_axes"
weapon_template.wield_anim = "to_1h_axe"
weapon_template.state_machine = "units/beings/player/first_person_base/state_machines/melee/1h_axe"
weapon_template.buff_type = "MELEE_1H"
weapon_template.weapon_type = "AXE_1H"
weapon_template.max_fatigue_points = 6
weapon_template.dodge_count = 6
weapon_template.block_angle = 90
weapon_template.outer_block_angle = 360
weapon_template.block_fatigue_point_multiplier = 0.5
weapon_template.outer_block_fatigue_point_multiplier = 2
weapon_template.sound_event_block_within_arc = "weapon_foley_blunt_1h_block_wood"
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
		arc = 0
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
		skaven_clan_rat = 0.5,
		skaven_slave = 0.5
	}
}
weapon_template.weapon_diagram = {
	light_attack = {
		[DamageTypes.ARMOR_PIERCING] = 4,
		[DamageTypes.CLEAVE] = 1,
		[DamageTypes.SPEED] = 3,
		[DamageTypes.STAGGER] = 2,
		[DamageTypes.DAMAGE] = 5
	},
	heavy_attack = {
		[DamageTypes.ARMOR_PIERCING] = 5,
		[DamageTypes.CLEAVE] = 0,
		[DamageTypes.SPEED] = 3,
		[DamageTypes.STAGGER] = 2,
		[DamageTypes.DAMAGE] = 4
	}
}
weapon_template.tooltip_keywords = {
	"weapon_keyword_high_damage",
	"weapon_keyword_armour_piercing",
	"weapon_keyword_shield_breaking"
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
	"wwise/one_handed_axes"
}

return {
	one_hand_axe_template_1 = weapon_template,
	one_hand_axe_template_2 = weapon_template
}
