local push_radius = 2
local time_mod = 0.95
local weapon_template = {}

weapon_template.actions = {
	action_one = {
		default = {
			kind = "melee_start",
			anim_end_event = "attack_finished",
			anim_event = "attack_swing_charge_left_diagonal",
			attack_hold_input = "action_one_hold",
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
					sub_action = "heavy_attack",
					start_time = 0.6,
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
					start_time = 0.5,
					blocker = true,
					end_time = 1.2,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack",
					start_time = 0.7,
					action = "action_one",
					auto_chain = true
				}
			}
		},
		default_right = {
			kind = "melee_start",
			anim_end_event = "attack_finished",
			anim_event = "attack_swing_charge_right_diagonal_pose",
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
					sub_action = "heavy_attack_2",
					start_time = 0.6,
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
					start_time = 0.5,
					blocker = true,
					end_time = 1.2,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_2",
					start_time = 0.7,
					action = "action_one",
					auto_chain = true
				}
			}
		},
		default_down = {
			kind = "melee_start",
			anim_end_event = "attack_finished",
			anim_event = "attack_swing_charge_left_diagonal_pose",
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
					sub_action = "light_attack_down",
					start_time = 0,
					action = "action_one",
					end_time = 0.3,
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack",
					start_time = 0.6,
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
					start_time = 0.5,
					blocker = true,
					end_time = 1.2,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack",
					start_time = 0.7,
					action = "action_one",
					auto_chain = true
				}
			}
		},
		heavy_attack = {
			damage_window_start = 0.15,
			kind = "sweep",
			first_person_hit_anim = "shake_hit",
			range_mod = 1.2,
			sweep_z_offset = 0,
			width_mod = 20,
			no_damage_impact_sound_event = "slashing_hit_armour",
			use_precision_sweep = false,
			hit_effect = "melee_hit_axes_1h",
			damage_profile = "medium_slashing_smiter_1h",
			damage_window_end = 0.3,
			impact_sound_event = "slashing_hit",
			anim_end_event = "attack_finished",
			dedicated_target_range = 2,
			uninterruptible = true,
			anim_event = "attack_swing_heavy_left_diagonal",
			hit_stop_anim = "attack_hit",
			total_time = 1.25,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			anim_time_scale = time_mod * 1.1,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.25,
					end_time = 0.25,
					buff_name = "planted_charging_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default_right",
					start_time = 0.4,
					action = "action_one",
					doubleclick_window = 0,
					release_required = "action_one_hold",
					end_time = 1.05,
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 0.4,
					action = "action_one",
					doubleclick_window = 0,
					release_required = "action_one_hold",
					end_time = 1.05,
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.05,
					action = "action_one",
					doubleclick_window = 0,
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.3,
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
					0.11666666666666667,
					0.3286566734313965,
					0.38442182540893555,
					0.15373265743255615,
					-0.22785641252994537,
					-0.38962307572364807,
					0.17433500289916992,
					-0.8751472234725952
				},
				{
					0.1527777777777778,
					0.21822237968444824,
					0.4396076202392578,
					0.06386721134185791,
					0.1544835865497589,
					-0.42459359765052795,
					-0.03281427174806595,
					-0.8915034532546997
				},
				{
					0.18888888888888888,
					-0.012676715850830078,
					0.5074033737182617,
					-0.06316161155700684,
					0.5247191190719604,
					-0.3467475473880768,
					-0.22564420104026794,
					-0.7439897656440735
				},
				{
					0.22499999999999998,
					-0.2814059257507324,
					0.5217838287353516,
					-0.1962108612060547,
					0.6932355165481567,
					-0.24881912767887115,
					-0.329641729593277,
					-0.5906351804733276
				},
				{
					0.26111111111111107,
					-0.5007836818695068,
					0.3227109909057617,
					-0.3174067735671997,
					0.7806180119514465,
					-0.19367828965187073,
					-0.4433147609233856,
					-0.39572247862815857
				},
				{
					0.29722222222222217,
					-0.5927212238311768,
					0.14726734161376953,
					-0.35321223735809326,
					0.8010765314102173,
					-0.1780545860528946,
					-0.5170548558235168,
					-0.24336664378643036
				},
				{
					0.3333333333333333,
					-0.5434455871582031,
					0.06700468063354492,
					-0.3996988534927368,
					0.8120498061180115,
					-0.1683911681175232,
					-0.5328555107116699,
					-0.16818012297153473
				}
			}
		},
		heavy_attack_2 = {
			damage_window_start = 0.15,
			kind = "sweep",
			first_person_hit_anim = "shake_hit",
			range_mod = 1.2,
			sweep_z_offset = 0,
			width_mod = 20,
			no_damage_impact_sound_event = "slashing_hit_armour",
			use_precision_sweep = false,
			hit_effect = "melee_hit_axes_1h",
			damage_profile = "medium_slashing_smiter_1h",
			damage_window_end = 0.3,
			impact_sound_event = "slashing_hit",
			anim_end_event = "attack_finished",
			dedicated_target_range = 2,
			uninterruptible = true,
			anim_event = "attack_swing_heavy_right_diagonal",
			hit_stop_anim = "attack_hit",
			total_time = 1.25,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			anim_time_scale = time_mod * 1.1,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.25,
					end_time = 0.25,
					buff_name = "planted_charging_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.45,
					action = "action_one",
					doubleclick_window = 0,
					release_required = "action_one_hold",
					end_time = 1.05,
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.45,
					action = "action_one",
					doubleclick_window = 0,
					release_required = "action_one_hold",
					end_time = 1.05,
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.05,
					action = "action_one",
					doubleclick_window = 0,
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.3,
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
					0.11666666666666667,
					-0.25451040267944336,
					0.2782936096191406,
					0.11283540725708008,
					-0.5216851234436035,
					0.25411659479141235,
					-0.14820538461208344,
					-0.8008149862289429
				},
				{
					0.1527777777777778,
					-0.18799638748168945,
					0.454831600189209,
					0.06292521953582764,
					-0.22307394444942474,
					0.41466546058654785,
					-0.09909883141517639,
					-0.8766242265701294
				},
				{
					0.18888888888888888,
					-0.04425811767578125,
					0.6289305686950684,
					-0.031099557876586914,
					0.21385866403579712,
					0.4696301817893982,
					0.0845828577876091,
					-0.852383553981781
				},
				{
					0.22499999999999998,
					0.21789097785949707,
					0.6650643348693848,
					-0.14887845516204834,
					0.6224513649940491,
					0.31054913997650146,
					0.3532450795173645,
					-0.6255648732185364
				},
				{
					0.26111111111111107,
					0.43033552169799805,
					0.6052908897399902,
					-0.25656676292419434,
					0.7493036389350891,
					0.22511769831180573,
					0.40261590480804443,
					-0.47514891624450684
				},
				{
					0.29722222222222217,
					0.6451857089996338,
					0.3166627883911133,
					-0.33372020721435547,
					0.7629949450492859,
					0.2770317494869232,
					0.4881516993045807,
					-0.32062461972236633
				},
				{
					0.3333333333333333,
					0.7522621154785156,
					0.050200462341308594,
					-0.3688727617263794,
					0.7538682222366333,
					0.31586551666259766,
					0.5289060473442078,
					-0.2284078747034073
				}
			}
		},
		light_attack_left = {
			damage_window_start = 0.38,
			hit_armor_anim = "attack_hit_shield",
			range_mod = 1.15,
			kind = "sweep",
			first_person_hit_anim = "shake_hit",
			sweep_z_offset = 0.2,
			width_mod = 30,
			no_damage_impact_sound_event = "slashing_hit_armour",
			use_precision_sweep = false,
			hit_effect = "melee_hit_sword_1h",
			damage_profile = "light_slashing_axe_linesman",
			damage_window_end = 0.47,
			impact_sound_event = "slashing_hit",
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
					external_multiplier = 1.2,
					end_time = 0.25,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.25,
					external_multiplier = 0.8,
					end_time = 0.55,
					buff_name = "planted_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default_right",
					start_time = 0.6,
					action = "action_one",
					release_required = "action_one_hold",
					end_time = 1.25,
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 0.6,
					action = "action_one",
					release_required = "action_one_hold",
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
					start_time = 0.55,
					action = "action_wield",
					input = "action_wield"
				}
			},
			hit_mass_count = LINESMAN_HIT_MASS_COUNT,
			baked_sweep = {
				{
					0.3466666666666667,
					0.4939992427825928,
					0.4598555564880371,
					0.06472182273864746,
					-0.6842027902603149,
					-0.2585342228412628,
					0.13666175305843353,
					-0.6680944561958313
				},
				{
					0.37277777777777776,
					0.43119311332702637,
					0.5434274673461914,
					0.06423377990722656,
					-0.566439688205719,
					-0.3196052610874176,
					0.14324046671390533,
					-0.7459763884544373
				},
				{
					0.3988888888888889,
					0.3193690776824951,
					0.6401734352111816,
					0.03384745121002197,
					-0.3773755729198456,
					-0.3773430585861206,
					0.1147889718413353,
					-0.837868332862854
				},
				{
					0.425,
					0.12935590744018555,
					0.7363872528076172,
					-0.06282603740692139,
					-0.05308510735630989,
					-0.4027012586593628,
					-0.012449553236365318,
					-0.9137060642242432
				},
				{
					0.4511111111111111,
					-0.17588281631469727,
					0.7079830169677734,
					-0.219124436378479,
					0.48338189721107483,
					-0.30536115169525146,
					-0.2511684000492096,
					-0.7810320258140564
				},
				{
					0.4772222222222222,
					-0.35765600204467773,
					0.5059723854064941,
					-0.34137964248657227,
					0.8302231431007385,
					-0.1290508657693863,
					-0.36554211378097534,
					-0.4005676507949829
				},
				{
					0.5033333333333333,
					-0.3966636657714844,
					0.21341800689697266,
					-0.5004678964614868,
					0.9354730248451233,
					-0.06742876768112183,
					-0.3468860983848572,
					0.0036959322169423103
				}
			}
		},
		light_attack_right = {
			damage_window_start = 0.4,
			hit_armor_anim = "attack_hit_shield",
			range_mod = 1.15,
			kind = "sweep",
			first_person_hit_anim = "shake_hit",
			sweep_z_offset = 0.15,
			width_mod = 30,
			no_damage_impact_sound_event = "slashing_hit_armour",
			use_precision_sweep = false,
			hit_effect = "melee_hit_sword_1h",
			damage_profile = "light_slashing_axe_linesman",
			damage_window_end = 0.47,
			impact_sound_event = "slashing_hit",
			anim_end_event = "attack_finished",
			dedicated_target_range = 3,
			uninterruptible = true,
			anim_event = "attack_swing_right_diagonal",
			hit_stop_anim = "attack_hit",
			total_time = 2.1,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			anim_time_scale = time_mod * 1.25,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.2,
					end_time = 0.25,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.25,
					external_multiplier = 0.8,
					end_time = 0.55,
					buff_name = "planted_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default_down",
					start_time = 0.6,
					action = "action_one",
					release_required = "action_one_hold",
					end_time = 1.25,
					input = "action_one"
				},
				{
					sub_action = "default_down",
					start_time = 0.6,
					action = "action_one",
					release_required = "action_one_hold",
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
					start_time = 0.55,
					action = "action_wield",
					input = "action_wield"
				}
			},
			hit_mass_count = LINESMAN_HIT_MASS_COUNT,
			baked_sweep = {
				{
					0.3666666666666667,
					-0.23061680793762207,
					0.38203907012939453,
					0.06376850605010986,
					-0.7343723773956299,
					0.2405681610107422,
					-0.18290375173091888,
					-0.6077585816383362
				},
				{
					0.3894444444444445,
					-0.14942240715026855,
					0.5445704460144043,
					0.03229475021362305,
					-0.5191318988800049,
					0.361085444688797,
					-0.09627567231655121,
					-0.768667995929718
				},
				{
					0.4122222222222222,
					-0.04363560676574707,
					0.6534061431884766,
					-0.036274075508117676,
					-0.21883073449134827,
					0.42477378249168396,
					0.006604961585253477,
					-0.87842857837677
				},
				{
					0.435,
					0.2490684986114502,
					0.7248177528381348,
					-0.23397958278656006,
					0.3424864113330841,
					0.3733581602573395,
					0.25992855429649353,
					-0.8220364451408386
				},
				{
					0.4577777777777778,
					0.6050543785095215,
					0.5543885231018066,
					-0.4286525249481201,
					0.7123553156852722,
					0.21618635952472687,
					0.4235277771949768,
					-0.5161759853363037
				},
				{
					0.4805555555555555,
					0.8123147487640381,
					0.3333110809326172,
					-0.5413068532943726,
					0.6377313137054443,
					0.3634047210216522,
					0.53066486120224,
					-0.4238286018371582
				},
				{
					0.5033333333333333,
					0.8569226264953613,
					0.17516088485717773,
					-0.607397198677063,
					0.6263313293457031,
					0.44641754031181335,
					0.5322622656822205,
					-0.35371941328048706
				}
			}
		},
		light_attack_down = {
			damage_window_start = 0.38,
			range_mod = 1.2,
			kind = "sweep",
			first_person_hit_anim = "shake_hit",
			no_damage_impact_sound_event = "slashing_hit_armour",
			sweep_z_offset = 0.2,
			width_mod = 15,
			use_precision_sweep = false,
			damage_profile = "medium_slashing_smiter_1h",
			hit_effect = "melee_hit_sword_1h",
			damage_window_end = 0.5,
			impact_sound_event = "slashing_hit",
			anim_end_event = "attack_finished",
			dedicated_target_range = 3,
			anim_event = "attack_swing_down",
			hit_stop_anim = "attack_hit",
			total_time = 2.1,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			anim_time_scale = time_mod * 1.3,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.2,
					end_time = 0.25,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.25,
					external_multiplier = 0.8,
					end_time = 0.55,
					buff_name = "planted_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.6,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.6,
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
					start_time = 0.55,
					action = "action_wield",
					input = "action_wield"
				}
			},
			hit_mass_count = LINESMAN_HIT_MASS_COUNT,
			baked_sweep = {
				{
					0.3466666666666667,
					0.21557140350341797,
					0.2605247497558594,
					0.3151884078979492,
					-0.6432750225067139,
					-0.09760115295648575,
					0.026322241872549057,
					-0.7589324712753296
				},
				{
					0.37777777777777777,
					0.18022561073303223,
					0.418182373046875,
					0.274908185005188,
					-0.49719056487083435,
					-0.10988546162843704,
					-0.015279554761946201,
					-0.8605192303657532
				},
				{
					0.4088888888888889,
					0.12532854080200195,
					0.5871024131774902,
					0.1521773338317871,
					-0.2178935706615448,
					-0.10642500221729279,
					-0.04476016387343407,
					-0.9691195487976074
				},
				{
					0.44,
					0.022722721099853516,
					0.7474188804626465,
					-0.20616459846496582,
					0.5046781301498413,
					-0.040759846568107605,
					-0.03638869896531105,
					-0.8615767359733582
				},
				{
					0.4711111111111111,
					-0.08340907096862793,
					0.5843019485473633,
					-0.6157277822494507,
					0.8930391073226929,
					-0.014335322193801403,
					-0.12749531865119934,
					-0.431301087141037
				},
				{
					0.5022222222222222,
					-0.09804725646972656,
					0.17070770263671875,
					-0.7457141876220703,
					0.975835919380188,
					-0.030366793274879456,
					-0.2099905014038086,
					0.052212152630090714
				},
				{
					0.5333333333333333,
					-0.07681035995483398,
					0.009710311889648438,
					-0.7074311971664429,
					0.9465683102607727,
					-0.04525452107191086,
					-0.22046200931072235,
					0.23099148273468018
				}
			}
		},
		light_attack_bopp = {
			damage_window_start = 0.32,
			hit_armor_anim = "attack_hit_shield",
			kind = "sweep",
			first_person_hit_anim = "shake_hit",
			range_mod = 1.15,
			sweep_z_offset = 0.15,
			width_mod = 30,
			no_damage_impact_sound_event = "slashing_hit_armour",
			hit_effect = "melee_hit_sword_1h",
			use_precision_sweep = false,
			damage_profile = "light_slashing_axe_linesman_upper",
			damage_window_end = 0.47,
			impact_sound_event = "slashing_hit",
			anim_end_event = "attack_finished",
			dedicated_target_range = 3,
			uninterruptible = true,
			anim_event = "attack_swing_up",
			hit_stop_anim = "attack_hit",
			total_time = 2.1,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			anim_time_scale = time_mod * 1.35,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.2,
					end_time = 0.25,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.25,
					external_multiplier = 0.8,
					end_time = 0.55,
					buff_name = "planted_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.75,
					action = "action_one",
					release_required = "action_two_hold",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.75,
					action = "action_one",
					release_required = "action_two_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.55,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.55,
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
					0.2866666666666667,
					-0.41350293159484863,
					0.4844527244567871,
					-0.2562311887741089,
					-0.35652849078178406,
					0.7300900220870972,
					-0.07681212574243546,
					-0.5778892040252686
				},
				{
					0.3227777777777778,
					-0.24625730514526367,
					0.6289796829223633,
					-0.15109312534332275,
					-0.08411410450935364,
					0.823539674282074,
					0.08839388191699982,
					-0.5539799928665161
				},
				{
					0.35888888888888887,
					-0.01707768440246582,
					0.7289881706237793,
					-0.06512629985809326,
					0.14864933490753174,
					0.7197073101997375,
					0.4392889440059662,
					-0.5166720747947693
				},
				{
					0.395,
					0.21272587776184082,
					0.7487025260925293,
					0.017190933227539062,
					0.35783877968788147,
					0.5050615072250366,
					0.6767236590385437,
					-0.39863458275794983
				},
				{
					0.4311111111111111,
					0.45523858070373535,
					0.6404848098754883,
					0.11985599994659424,
					0.3606576919555664,
					0.4471580684185028,
					0.7828224301338196,
					-0.23909156024456024
				},
				{
					0.4672222222222222,
					0.7496340274810791,
					0.46806859970092773,
					0.065185546875,
					0.5301265120506287,
					0.26427510380744934,
					0.8056764602661133,
					-0.0031827588099986315
				},
				{
					0.5033333333333333,
					0.8966436386108398,
					0.19035005569458008,
					-0.04712677001953125,
					0.5857776403427124,
					0.07754908502101898,
					0.8066393136978149,
					0.013556430116295815
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
					external_multiplier = 0.75,
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
weapon_template.display_unit = "units/weapons/weapon_display/display_1h_falchions"
weapon_template.wield_anim = "to_1h_sword"
weapon_template.state_machine = "units/beings/player/first_person_base/state_machines/melee/1h_sword"
weapon_template.buff_type = "MELEE_1H"
weapon_template.weapon_type = "SWORD_1H"
weapon_template.max_fatigue_points = 6
weapon_template.dodge_count = 4
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
weapon_template.attack_meta_data = {
	tap_attack = {
		max_range = 2.25,
		arc = 1
	},
	hold_attack = {
		max_range = 2.25,
		arc = 1
	}
}
weapon_template.weapon_diagram = {
	light_attack = {
		[DamageTypes.ARMOR_PIERCING] = 3,
		[DamageTypes.CLEAVE] = 4,
		[DamageTypes.SPEED] = 3,
		[DamageTypes.STAGGER] = 1,
		[DamageTypes.DAMAGE] = 4
	},
	heavy_attack = {
		[DamageTypes.ARMOR_PIERCING] = 5,
		[DamageTypes.CLEAVE] = 0,
		[DamageTypes.SPEED] = 3,
		[DamageTypes.STAGGER] = 3,
		[DamageTypes.DAMAGE] = 5
	}
}
weapon_template.tooltip_keywords = {
	"weapon_keyword_headshotting",
	"weapon_keyword_high_damage",
	"weapon_keyword_versatile"
}
weapon_template.tooltip_compare = {
	light = {
		action_name = "action_one",
		sub_action_name = "light_attack_left"
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
weapon_template.compare_statistics = {
	attacks = {
		light_attack = {
			speed = 0.6,
			stagger = 0.4,
			damage = 0.42857142857142855,
			targets = 0.4
		},
		heavy_attack = {
			speed = 0.4,
			stagger = 0.4,
			damage = 0.625,
			targets = 0.2
		}
	},
	perks = {
		light_attack = {
			"head_shot",
			"armor_penetration"
		},
		heavy_attack = {
			"head_shot",
			"armor_penetration"
		}
	}
}
weapon_template.wwise_dep_right_hand = {
	"wwise/one_handed_swords"
}

return {
	one_hand_falchion_template_1 = weapon_template
}
