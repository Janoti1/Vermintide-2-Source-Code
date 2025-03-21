local push_radius = 2
local time_mod = 0.85
local weapon_template = {}

weapon_template.actions = {
	action_one = {
		default = {
			aim_assist_ramp_decay_delay = 0.1,
			anim_end_event = "attack_finished",
			kind = "melee_start",
			attack_hold_input = "action_one_hold",
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
					external_multiplier = 0.75,
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
					blocker = true,
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
			aim_assist_ramp_decay_delay = 0.1,
			anim_end_event = "attack_finished",
			kind = "melee_start",
			aim_assist_max_ramp_multiplier = 0.3,
			aim_assist_ramp_multiplier = 0.1,
			anim_event = "attack_swing_charge_right_pose",
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			total_time = math.huge,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
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
					blocker = true,
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
			aim_assist_ramp_decay_delay = 0.1,
			anim_end_event = "attack_finished",
			kind = "melee_start",
			aim_assist_max_ramp_multiplier = 0.3,
			aim_assist_ramp_multiplier = 0.1,
			anim_event = "attack_swing_charge_left_pose",
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			total_time = math.huge,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
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
					blocker = true,
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
			damage_window_start = 0.15,
			range_mod = 1.25,
			kind = "sweep",
			first_person_hit_anim = "shake_hit",
			no_damage_impact_sound_event = "slashing_hit_armour",
			additional_critical_strike_chance = 0,
			use_precision_sweep = false,
			damage_profile = "medium_slashing_tank_1h_finesse",
			hit_effect = "melee_hit_sword_1h",
			damage_window_end = 0.3,
			impact_sound_event = "slashing_hit",
			anim_end_event = "attack_finished",
			dedicated_target_range = 2,
			uninterruptible = true,
			anim_event = "attack_swing_heavy",
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
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default_right",
					start_time = 0.5,
					action = "action_one",
					release_required = "action_one_hold",
					end_time = 1.05,
					input = "action_one"
				},
				{
					sub_action = "default_right",
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
					start_time = 0.4,
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
			hit_mass_count = TANK_HIT_MASS_COUNT,
			baked_sweep = {
				{
					0.11666666666666667,
					0.3648395538330078,
					0.3408393859863281,
					-0.08428192138671875,
					-0.2939467132091522,
					-0.5669031739234924,
					0.09543472528457642,
					-0.7636153697967529
				},
				{
					0.1527777777777778,
					0.3161191940307617,
					0.48991966247558594,
					-0.11098527908325195,
					-0.12825623154640198,
					-0.6123620271682739,
					-0.023620005697011948,
					-0.7797468900680542
				},
				{
					0.18888888888888888,
					0.11617136001586914,
					0.7000885009765625,
					-0.15999460220336914,
					0.16052234172821045,
					-0.6228265762329102,
					-0.2715951204299927,
					-0.7159300446510315
				},
				{
					0.22499999999999998,
					-0.15909624099731445,
					0.6685962677001953,
					-0.14235925674438477,
					-0.5006442666053772,
					0.44516289234161377,
					0.588365912437439,
					0.4527813494205475
				},
				{
					0.26111111111111107,
					-0.3959183692932129,
					0.475067138671875,
					-0.15259647369384766,
					-0.6386439800262451,
					0.2562183141708374,
					0.662607729434967,
					0.2956976890563965
				},
				{
					0.29722222222222217,
					-0.4992341995239258,
					0.31254005432128906,
					-0.20154094696044922,
					0.7131814360618591,
					-0.10256817936897278,
					-0.6710095405578613,
					-0.17492347955703735
				},
				{
					0.3333333333333333,
					-0.515383243560791,
					0.18102455139160156,
					-0.26951122283935547,
					0.7617275714874268,
					0.03979433700442314,
					-0.6423617005348206,
					-0.0745590552687645
				}
			}
		},
		heavy_attack_right = {
			damage_window_start = 0.15,
			range_mod = 1.25,
			kind = "sweep",
			first_person_hit_anim = "shake_hit",
			no_damage_impact_sound_event = "slashing_hit_armour",
			additional_critical_strike_chance = 0,
			use_precision_sweep = false,
			damage_profile = "medium_slashing_tank_1h_finesse",
			hit_effect = "melee_hit_sword_1h",
			damage_window_end = 0.3,
			impact_sound_event = "slashing_hit",
			anim_end_event = "attack_finished",
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
					start_time = 0.4,
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
			hit_mass_count = TANK_HIT_MASS_COUNT,
			baked_sweep = {
				{
					0.11666666666666667,
					-0.2982320785522461,
					0.2641448974609375,
					-0.14463043212890625,
					-0.28428587317466736,
					0.41760286688804626,
					-0.45669013261795044,
					-0.7322728633880615
				},
				{
					0.1527777777777778,
					-0.25069189071655273,
					0.3862876892089844,
					-0.14232921600341797,
					-0.22304001450538635,
					0.521753191947937,
					-0.3133014440536499,
					-0.7614912986755371
				},
				{
					0.18888888888888888,
					-0.12119245529174805,
					0.5925312042236328,
					-0.1358962059020996,
					-0.013206725008785725,
					0.6612834334373474,
					0.05806434527039528,
					-0.7477689385414124
				},
				{
					0.22499999999999998,
					0.1428055763244629,
					0.6864643096923828,
					-0.11867046356201172,
					0.3340188264846802,
					0.5835537314414978,
					0.4937434494495392,
					-0.5514652132987976
				},
				{
					0.26111111111111107,
					0.32216978073120117,
					0.6430931091308594,
					-0.13041067123413086,
					0.4959724247455597,
					0.42955663800239563,
					0.623775064945221,
					-0.4247318506240845
				},
				{
					0.29722222222222217,
					0.545687198638916,
					0.5014667510986328,
					-0.17837095260620117,
					0.5998499393463135,
					0.29825443029403687,
					0.6481256484985352,
					-0.3621569275856018
				},
				{
					0.3333333333333333,
					0.7076036930084229,
					0.24330902099609375,
					-0.2030954360961914,
					0.6418632864952087,
					0.2275100201368332,
					0.6195513010025024,
					-0.39039337635040283
				}
			}
		},
		light_attack_left = {
			damage_window_start = 0.38,
			range_mod = 1.2,
			kind = "sweep",
			first_person_hit_anim = "shake_hit",
			no_damage_impact_sound_event = "slashing_hit_armour",
			additional_critical_strike_chance = 0,
			use_precision_sweep = false,
			damage_profile = "light_slashing_linesman_finesse",
			hit_effect = "melee_hit_sword_1h",
			damage_window_end = 0.5,
			impact_sound_event = "slashing_hit",
			anim_end_event = "attack_finished",
			dedicated_target_range = 2.5,
			anim_event = "attack_swing_left_diagonal",
			hit_stop_anim = "attack_hit",
			total_time = 2.1,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			anim_time_scale = time_mod * 1.25,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.9,
					end_time = 0.5,
					buff_name = "planted_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default_right",
					start_time = 0.48,
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
			hit_mass_count = LINESMAN_HIT_MASS_COUNT,
			baked_sweep = {
				{
					0.3466666666666667,
					0.511441707611084,
					0.43450927734375,
					0.06485176086425781,
					-0.7162535786628723,
					-0.2375052273273468,
					0.13601985573768616,
					-0.6419273018836975
				},
				{
					0.37777777777777777,
					0.4513096809387207,
					0.5194187164306641,
					0.0655217170715332,
					-0.6027059555053711,
					-0.3035558760166168,
					0.1429864913225174,
					-0.723984956741333
				},
				{
					0.4088888888888889,
					0.35825061798095703,
					0.6119613647460938,
					0.0486292839050293,
					-0.4427628517150879,
					-0.3621610701084137,
					0.12853772938251495,
					-0.8101101517677307
				},
				{
					0.44,
					0.07813215255737305,
					0.75006103515625,
					-0.09274721145629883,
					0.034701984375715256,
					-0.39857611060142517,
					-0.050287723541259766,
					-0.9150978326797485
				},
				{
					0.4711111111111111,
					-0.21965742111206055,
					0.6793346405029297,
					-0.24068021774291992,
					0.5654119253158569,
					-0.2721986472606659,
					-0.2856730818748474,
					-0.724298357963562
				},
				{
					0.5022222222222222,
					-0.38144540786743164,
					0.41263389587402344,
					-0.3985881805419922,
					0.8824884295463562,
					-0.1025930643081665,
					-0.3688430190086365,
					-0.27320995926856995
				},
				{
					0.5333333333333333,
					-0.3797783851623535,
					0.09152603149414062,
					-0.5076489448547363,
					0.9374881982803345,
					-0.05285981297492981,
					-0.3117044270038605,
					0.14547225832939148
				}
			}
		},
		light_attack_right = {
			damage_window_start = 0.38,
			range_mod = 1.2,
			kind = "sweep",
			first_person_hit_anim = "shake_hit",
			no_damage_impact_sound_event = "slashing_hit_armour",
			additional_critical_strike_chance = 0,
			use_precision_sweep = false,
			damage_profile = "light_slashing_linesman_finesse",
			hit_effect = "melee_hit_sword_1h",
			damage_window_end = 0.5,
			impact_sound_event = "slashing_hit",
			anim_end_event = "attack_finished",
			dedicated_target_range = 2.5,
			anim_event = "attack_swing_right",
			hit_stop_anim = "attack_hit",
			total_time = 2.1,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			anim_time_scale = time_mod * 1.3,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.9,
					end_time = 0.5,
					buff_name = "planted_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.5,
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
			hit_mass_count = LINESMAN_HIT_MASS_COUNT,
			baked_sweep = {
				{
					0.3466666666666667,
					-0.2943267822265625,
					0.6125030517578125,
					-0.09795379638671875,
					-0.37085556983947754,
					0.6318093538284302,
					-0.1342034935951233,
					-0.6672874093055725
				},
				{
					0.37777777777777777,
					-0.14261770248413086,
					0.68890380859375,
					-0.10671520233154297,
					-0.19007164239883423,
					0.6863868236541748,
					0.011293779127299786,
					-0.7018677592277527
				},
				{
					0.4088888888888889,
					0.07872343063354492,
					0.6932487487792969,
					-0.12723970413208008,
					0.11975399404764175,
					0.663720428943634,
					0.3122141659259796,
					-0.6690713763237
				},
				{
					0.44,
					0.40059852600097656,
					0.5883598327636719,
					-0.1368088722229004,
					0.4506254494190216,
					0.4421606957912445,
					0.6173749566078186,
					-0.4693388044834137
				},
				{
					0.4711111111111111,
					0.5653223991394043,
					0.450836181640625,
					-0.14811325073242188,
					0.5648464560508728,
					0.3231636583805084,
					0.6988108158111572,
					-0.29694655537605286
				},
				{
					0.5022222222222222,
					0.6720681190490723,
					0.3026695251464844,
					-0.1696014404296875,
					0.6130120158195496,
					0.29641494154930115,
					0.7230486869812012,
					-0.11642627418041229
				},
				{
					0.5333333333333333,
					0.733741044998169,
					0.12903976440429688,
					-0.19726800918579102,
					0.6488717198371887,
					0.24066811800003052,
					0.7217421531677246,
					-0.011515703052282333
				}
			}
		},
		light_attack_last = {
			damage_window_start = 0.38,
			range_mod = 1.2,
			kind = "sweep",
			first_person_hit_anim = "shake_hit",
			no_damage_impact_sound_event = "slashing_hit_armour",
			additional_critical_strike_chance = 0,
			use_precision_sweep = false,
			damage_profile = "light_slashing_smiter_finesse",
			aim_assist_max_ramp_multiplier = 0.7,
			aim_assist_ramp_decay_delay = 0,
			hit_effect = "melee_hit_sword_1h",
			damage_window_end = 0.47,
			impact_sound_event = "slashing_hit",
			anim_end_event = "attack_finished",
			dedicated_target_range = 2.5,
			aim_assist_ramp_multiplier = 0.5,
			anim_event = "attack_swing_down",
			hit_stop_anim = "attack_hit",
			total_time = 2.1,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			anim_time_scale = time_mod * 1.15,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.7,
					end_time = 0.2,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.2,
					external_multiplier = 1.7,
					end_time = 0.4,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.4,
					external_multiplier = 0.7,
					end_time = 0.5,
					buff_name = "planted_fast_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.6,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.6,
					action = "action_one",
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
			baked_sweep = {
				{
					0.3466666666666667,
					0.22458600997924805,
					0.19822120666503906,
					0.32592344284057617,
					-0.6857628226280212,
					-0.08758018910884857,
					0.0413111113011837,
					-0.7213546633720398
				},
				{
					0.37277777777777776,
					0.20093774795532227,
					0.33371734619140625,
					0.30137157440185547,
					-0.5833305716514587,
					-0.10599827021360397,
					0.006187887396663427,
					-0.8052648901939392
				},
				{
					0.3988888888888889,
					0.17713594436645508,
					0.42899131774902344,
					0.270113468170166,
					-0.48434484004974365,
					-0.10985085368156433,
					-0.018101675435900688,
					-0.8677644729614258
				},
				{
					0.425,
					0.12107229232788086,
					0.5991630554199219,
					0.13934659957885742,
					-0.1875552088022232,
					-0.10446847975254059,
					-0.04407147318124771,
					-0.9756880402565002
				},
				{
					0.4511111111111111,
					0.03217744827270508,
					0.7447166442871094,
					-0.1747441291809082,
					0.45921188592910767,
					-0.04430054873228073,
					-0.0331922322511673,
					-0.8866003751754761
				},
				{
					0.4772222222222222,
					-0.07396316528320312,
					0.6359577178955078,
					-0.5543045997619629,
					0.8496612310409546,
					-0.010238771326839924,
					-0.1143631711602211,
					-0.5146768093109131
				},
				{
					0.5033333333333333,
					-0.09254312515258789,
					0.4187297821044922,
					-0.713139533996582,
					0.9608858823776245,
					-0.021566079929471016,
					-0.15341436862945557,
					-0.22955891489982605
				}
			}
		},
		light_attack_bopp = {
			damage_window_start = 0.38,
			range_mod = 1.2,
			kind = "sweep",
			first_person_hit_anim = "shake_hit",
			no_damage_impact_sound_event = "slashing_hit_armour",
			additional_critical_strike_chance = 0,
			use_precision_sweep = false,
			damage_profile = "medium_slashing_linesman_finesse",
			hit_effect = "melee_hit_sword_1h",
			damage_window_end = 0.5,
			impact_sound_event = "slashing_hit",
			anim_end_event = "attack_finished",
			dedicated_target_range = 2.5,
			anim_event = "attack_swing_right_diagonal",
			hit_stop_anim = "attack_hit",
			total_time = 2.1,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			anim_time_scale = time_mod * 1.3,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.1,
					end_time = 0.5,
					buff_name = "planted_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.55,
					action = "action_one",
					release_required = "action_two_hold",
					end_time = 1.2,
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.55,
					action = "action_one",
					release_required = "action_two_hold",
					end_time = 1.2,
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.85,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.55,
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
			hit_mass_count = LINESMAN_HIT_MASS_COUNT,
			baked_sweep = {
				{
					0.3466666666666667,
					-0.30330705642700195,
					0.2014179229736328,
					0.06300592422485352,
					0.8180704116821289,
					-0.11125790327787399,
					0.3613835275173187,
					0.43334099650382996
				},
				{
					0.37777777777777777,
					-0.25049543380737305,
					0.3382530212402344,
					0.06670475006103516,
					-0.7691051363945007,
					0.2066810131072998,
					-0.21304690837860107,
					-0.5660133957862854
				},
				{
					0.4088888888888889,
					-0.11654996871948242,
					0.5875835418701172,
					0.010648727416992188,
					-0.40846070647239685,
					0.3934605121612549,
					-0.06798086315393448,
					-0.8208088874816895
				},
				{
					0.44,
					0.11539506912231445,
					0.7202548980712891,
					-0.1493372917175293,
					0.10612425953149796,
					0.4070727825164795,
					0.1518220454454422,
					-0.8944157361984253
				},
				{
					0.4711111111111111,
					0.585517406463623,
					0.5693359375,
					-0.4199514389038086,
					0.7064698338508606,
					0.2207682728767395,
					0.4143533706665039,
					-0.5295969247817993
				},
				{
					0.5022222222222222,
					0.8461313247680664,
					0.25168609619140625,
					-0.574913501739502,
					0.6049761176109314,
					0.43018674850463867,
					0.5411566495895386,
					-0.39508578181266785
				},
				{
					0.5333333333333333,
					0.8295891284942627,
					0.06433868408203125,
					-0.6384449005126953,
					0.7102510929107666,
					0.4253573417663574,
					0.48865634202957153,
					-0.2753717601299286
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
					start_time = 0.225,
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
					action = "action_wield",
					input = "action_wield"
				},
				{
					sub_action = "default",
					start_time = 0.3,
					action = "action_two",
					send_buffer = true,
					input = "action_two_hold"
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
weapon_template.display_unit = "units/weapons/weapon_display/display_1h_swords"
weapon_template.wield_anim = "to_1h_sword"
weapon_template.state_machine = "units/beings/player/first_person_base/state_machines/melee/1h_sword"
weapon_template.buff_type = "MELEE_1H"
weapon_template.weapon_type = "SWORD_1H"
weapon_template.max_fatigue_points = 8
weapon_template.dodge_count = 3
weapon_template.block_angle = 90
weapon_template.outer_block_angle = 360
weapon_template.block_fatigue_point_multiplier = 0.5
weapon_template.outer_block_fatigue_point_multiplier = 2
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
		arc = 2
	},
	hold_attack = {
		arc = 2
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
		[DamageTypes.ARMOR_PIERCING] = 2,
		[DamageTypes.CLEAVE] = 4,
		[DamageTypes.SPEED] = 4,
		[DamageTypes.STAGGER] = 1,
		[DamageTypes.DAMAGE] = 2
	},
	heavy_attack = {
		[DamageTypes.ARMOR_PIERCING] = 2,
		[DamageTypes.CLEAVE] = 5,
		[DamageTypes.SPEED] = 2,
		[DamageTypes.STAGGER] = 2,
		[DamageTypes.DAMAGE] = 3
	}
}
weapon_template.tooltip_keywords = {
	"weapon_keyword_fast_attacks",
	"weapon_keyword_wide_sweeps",
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
weapon_template.wwise_dep_right_hand = {
	"wwise/one_handed_swords"
}

return {
	one_handed_swords_template_1 = weapon_template
}
