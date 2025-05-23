local push_radius = 2
local time_mod = 0.9
local weapon_template = {}

weapon_template.actions = {
	action_one = {
		default = {
			kind = "melee_start",
			anim_end_event = "attack_finished",
			anim_event = "attack_swing_charge_down",
			attack_hold_input = "action_one_hold",
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			total_time = math.huge,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.35,
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
					start_time = 0.3,
					blocker = true,
					end_time = 1,
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
		default_down = {
			kind = "melee_start",
			anim_end_event = "attack_finished",
			anim_event = "attack_swing_charge_down",
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			total_time = math.huge,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.35,
					buff_name = "planted_charging_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "light_attack_right_diagonal",
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
					start_time = 0.3,
					blocker = true,
					end_time = 1,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack",
					start_time = 1,
					action = "action_one",
					auto_chain = true
				}
			}
		},
		default_left = {
			kind = "melee_start",
			anim_end_event = "attack_finished",
			anim_event = "attack_swing_charge_left",
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			total_time = math.huge,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.35,
					buff_name = "planted_charging_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "light_attack_left_diagonal",
					start_time = 0,
					action = "action_one",
					end_time = 0.3,
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_2",
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
					start_time = 0.3,
					blocker = true,
					end_time = 1,
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
		default_down_heavy = {
			kind = "melee_start",
			anim_end_event = "attack_finished",
			anim_event = "attack_swing_charge_down",
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			total_time = math.huge,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.35,
					buff_name = "planted_charging_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "light_attack_down_left",
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
					start_time = 0.3,
					blocker = true,
					end_time = 1,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack",
					start_time = 1,
					action = "action_one",
					auto_chain = true
				}
			}
		},
		heavy_attack = {
			damage_window_start = 0.23,
			kind = "sweep",
			first_person_hit_anim = "shake_hit",
			range_mod = 1.15,
			no_damage_impact_sound_event = "slashing_hit_armour",
			weapon_action_hand = "both",
			use_precision_sweep = false,
			additional_critical_strike_chance = 0,
			hit_effect = "melee_hit_dagger",
			damage_profile_left = "light_slashing_smiter_dual",
			damage_window_end = 0.3,
			impact_sound_event = "axe_1h_hit",
			anim_end_event = "attack_finished",
			damage_profile_right = "light_slashing_smiter_dual",
			dedicated_target_range = 2.5,
			uninterruptible = true,
			anim_event = "attack_swing_heavy_down",
			hit_stop_anim = "attack_hit",
			total_time = 2.25,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			anim_time_scale = time_mod * 1.15,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.05,
					end_time = 0.15,
					buff_name = "planted_fast_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.4,
					action = "action_one",
					release_required = "action_one_hold",
					end_time = 1.1,
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.4,
					action = "action_one",
					release_required = "action_one_hold",
					end_time = 1.1,
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.1,
					action = "action_one",
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
					start_time = 0.4,
					action = "action_wield",
					input = "action_wield"
				}
			},
			enter_function = function (attacker_unit, input_extension)
				return input_extension:reset_release_input()
			end,
			dual_hit_stop_anims = {
				left = "attack_hit",
				right = "shake_hit"
			},
			baked_sweep_right = {
				{
					0.19666666666666668,
					0.26557254791259766,
					0.05932283401489258,
					0.29338860511779785,
					-0.5779228210449219,
					0.0250371266156435,
					0.0863126888871193,
					-0.8111279010772705
				},
				{
					0.21944444444444444,
					0.2528562545776367,
					0.221360445022583,
					0.24657106399536133,
					-0.49013957381248474,
					-0.009735846891999245,
					0.12910974025726318,
					-0.8619740009307861
				},
				{
					0.24222222222222223,
					0.2296581268310547,
					0.4388241767883301,
					0.1032567024230957,
					-0.2839294672012329,
					-0.04412917420268059,
					0.1570790559053421,
					-0.9448612928390503
				},
				{
					0.265,
					0.12766647338867188,
					0.6270594596862793,
					-0.017919540405273438,
					0.008980385027825832,
					0.003154891077429056,
					0.12489563971757889,
					-0.9921242594718933
				},
				{
					0.2877777777777778,
					0.08295536041259766,
					0.7007260322570801,
					-0.19167733192443848,
					0.5455703735351562,
					-0.002411325927823782,
					0.0026722534094005823,
					-0.8380573391914368
				},
				{
					0.31055555555555553,
					0.0724649429321289,
					0.6692171096801758,
					-0.36230993270874023,
					0.7910385131835938,
					-0.05489908531308174,
					-0.052991341799497604,
					-0.6069894433021545
				},
				{
					0.3333333333333333,
					0.058037757873535156,
					0.603510856628418,
					-0.5185825824737549,
					0.827264666557312,
					-0.02121671847999096,
					-0.05960560962557793,
					-0.5582384467124939
				}
			},
			baked_sweep_left = {
				{
					0.19666666666666668,
					-0.24672698974609375,
					0.135023832321167,
					0.26956868171691895,
					-0.5333489179611206,
					0.1733519434928894,
					-0.11567510664463043,
					-0.8198215365409851
				},
				{
					0.21944444444444444,
					-0.24451255798339844,
					0.23991966247558594,
					0.19414734840393066,
					-0.48055174946784973,
					0.21136897802352905,
					-0.11536373198032379,
					-0.8432582020759583
				},
				{
					0.24222222222222223,
					-0.2116708755493164,
					0.39634132385253906,
					0.12131810188293457,
					-0.35469281673431396,
					0.17559926211833954,
					-0.06206095963716507,
					-0.9162458181381226
				},
				{
					0.265,
					-0.1467876434326172,
					0.6117005348205566,
					-0.04707479476928711,
					-0.007204542402178049,
					0.10048730671405792,
					0.05706685036420822,
					-0.9932742714881897
				},
				{
					0.2877777777777778,
					-0.15306949615478516,
					0.6771659851074219,
					-0.3465278148651123,
					0.6477363109588623,
					0.053182270377874374,
					0.060448057949543,
					-0.7575984597206116
				},
				{
					0.31055555555555553,
					-0.17348861694335938,
					0.572608470916748,
					-0.5481754541397095,
					0.8641554117202759,
					-0.03223366662859917,
					0.024011842906475067,
					-0.5016173124313354
				},
				{
					0.3333333333333333,
					-0.19335079193115234,
					0.379636287689209,
					-0.6576367616653442,
					0.8617759346961975,
					-0.10114569216966629,
					0.03548870235681534,
					-0.49583497643470764
				}
			}
		},
		heavy_attack_2 = {
			damage_window_start = 0.28,
			kind = "sweep",
			first_person_hit_anim = "shake_hit",
			range_mod = 1.15,
			no_damage_impact_sound_event = "slashing_hit_armour",
			weapon_action_hand = "both",
			use_precision_sweep = false,
			additional_critical_strike_chance = 0,
			hit_effect = "melee_hit_sword_1h",
			damage_profile_left = "light_slashing_smiter_dual",
			damage_window_end = 0.38,
			impact_sound_event = "axe_1h_hit",
			anim_end_event = "attack_finished",
			damage_profile_right = "light_slashing_smiter_dual",
			dedicated_target_range = 2.5,
			uninterruptible = true,
			anim_event = "attack_swing_heavy_left",
			hit_stop_anim = "attack_hit",
			total_time = 2.25,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			anim_time_scale = time_mod * 1.15,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.85,
					end_time = 0.15,
					buff_name = "planted_fast_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default_down_heavy",
					start_time = 0.5,
					action = "action_one",
					release_required = "action_one_hold",
					end_time = 1.1,
					input = "action_one"
				},
				{
					sub_action = "default_down_heavy",
					start_time = 0.5,
					action = "action_one",
					release_required = "action_one_hold",
					end_time = 1.1,
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.1,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.35,
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
			dual_hit_stop_anims = {
				left = "shake_hit",
				right = "attack_hit"
			},
			baked_sweep_right = {
				{
					0.2466666666666667,
					0.4831409454345703,
					0.48698723316192627,
					0.07365715503692627,
					-0.21013687551021576,
					-0.3482268452644348,
					0.15649719536304474,
					-0.9000495672225952
				},
				{
					0.2744444444444445,
					0.4502573013305664,
					0.538142204284668,
					0.039531826972961426,
					-0.1930287629365921,
					-0.3628109395503998,
					0.13808147609233856,
					-0.9011335372924805
				},
				{
					0.3022222222222222,
					0.3921937942504883,
					0.5993307828903198,
					-0.005006074905395508,
					-0.12373680621385574,
					-0.3821762800216675,
					0.09400981664657593,
					-0.9109295606613159
				},
				{
					0.33,
					0.19265270233154297,
					0.6771864891052246,
					-0.08213496208190918,
					0.1362636238336563,
					-0.38444599509239197,
					-0.09692196547985077,
					-0.9078764319419861
				},
				{
					0.3577777777777778,
					-0.09639835357666016,
					0.6088640689849854,
					-0.21333599090576172,
					0.557586133480072,
					-0.2713889181613922,
					-0.37125587463378906,
					-0.6910969614982605
				},
				{
					0.38555555555555554,
					-0.26140594482421875,
					0.45535075664520264,
					-0.27567732334136963,
					0.7723384499549866,
					-0.11809723824262619,
					-0.49190616607666016,
					-0.3841545879840851
				},
				{
					0.41333333333333333,
					-0.35877037048339844,
					0.2813742160797119,
					-0.2915459871292114,
					0.8473331332206726,
					0.042392831295728683,
					-0.5235275030136108,
					-0.07841183990240097
				}
			},
			baked_sweep_left = {
				{
					0.2466666666666667,
					-0.3429546356201172,
					0.49334442615509033,
					0.09717845916748047,
					-0.4679473638534546,
					0.46329325437545776,
					-0.13110584020614624,
					-0.7410775423049927
				},
				{
					0.2744444444444445,
					-0.2556886672973633,
					0.6012797355651855,
					0.04737412929534912,
					-0.18335023522377014,
					0.5010954141616821,
					-0.03076697513461113,
					-0.8451860547065735
				},
				{
					0.3022222222222222,
					0.015298843383789062,
					0.6668350696563721,
					-0.0965045690536499,
					0.3519492745399475,
					0.4375739097595215,
					0.19289909303188324,
					-0.8046432733535767
				},
				{
					0.33,
					0.374725341796875,
					0.47258687019348145,
					-0.2790175676345825,
					0.7522538304328918,
					0.2572481334209442,
					0.3870849907398224,
					-0.46701478958129883
				},
				{
					0.3577777777777778,
					0.5246038436889648,
					0.265183687210083,
					-0.35896146297454834,
					0.8404071927070618,
					0.1975586712360382,
					0.44412335753440857,
					-0.2396681010723114
				},
				{
					0.38555555555555554,
					0.5398674011230469,
					0.24686002731323242,
					-0.37237095832824707,
					0.8518901467323303,
					0.18182983994483948,
					0.47309231758117676,
					-0.13192720711231232
				},
				{
					0.41333333333333333,
					0.5119791030883789,
					0.23988008499145508,
					-0.38613665103912354,
					0.8563364148139954,
					0.15323446691036224,
					0.4914897382259369,
					-0.0405593141913414
				}
			}
		},
		light_attack_right = {
			damage_window_start = 0.35,
			range_mod = 1.15,
			anim_end_event = "attack_finished",
			kind = "sweep",
			first_person_hit_anim = "shake_hit",
			weapon_action_hand = "right",
			use_precision_sweep = false,
			additional_critical_strike_chance = 0,
			damage_profile = "light_slashing_smiter_flat",
			hit_effect = "melee_hit_sword_1h",
			damage_window_end = 0.47,
			impact_sound_event = "axe_1h_hit",
			no_damage_impact_sound_event = "slashing_hit_armour",
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
					external_multiplier = 1.15,
					end_time = 0.3,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.3,
					external_multiplier = 0.85,
					end_time = 0.5,
					buff_name = "planted_fast_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default_down",
					start_time = 0.5,
					action = "action_one",
					end_time = 1.2,
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.2,
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
					start_time = 0.3,
					action = "action_wield",
					input = "action_wield"
				}
			},
			impact_axis = Vector3Box(0, 0, 1),
			baked_sweep = {
				{
					0.31666666666666665,
					-0.33536720275878906,
					0.5714282989501953,
					-0.10617935657501221,
					-0.37929874658584595,
					0.612053394317627,
					-0.2036232054233551,
					-0.6633707284927368
				},
				{
					0.34777777777777774,
					-0.21204566955566406,
					0.6664333343505859,
					-0.10270965099334717,
					-0.256022572517395,
					0.6697077751159668,
					-0.0793815478682518,
					-0.6925623416900635
				},
				{
					0.3788888888888889,
					0.008647918701171875,
					0.697138786315918,
					-0.12360084056854248,
					0.050762344151735306,
					0.6900084614753723,
					0.19173069298267365,
					-0.6960968971252441
				},
				{
					0.41,
					0.2786884307861328,
					0.6394031047821045,
					-0.13223624229431152,
					0.35729697346687317,
					0.5375447273254395,
					0.5318068861961365,
					-0.5482389330863953
				},
				{
					0.44111111111111106,
					0.5033893585205078,
					0.5107212066650391,
					-0.1456972360610962,
					0.5249556303024292,
					0.36303314566612244,
					0.6705158352851868,
					-0.378202348947525
				},
				{
					0.4722222222222222,
					0.6374368667602539,
					0.34931790828704834,
					-0.16871488094329834,
					0.6006836891174316,
					0.2995815575122833,
					0.7151196599006653,
					-0.1950228363275528
				},
				{
					0.5033333333333333,
					0.7102947235107422,
					0.18900692462921143,
					-0.18686997890472412,
					0.6345139145851135,
					0.270926296710968,
					0.7234494090080261,
					-0.02473771944642067
				}
			}
		},
		light_attack_right_diagonal = {
			damage_window_start = 0.3,
			range_mod = 1.15,
			kind = "sweep",
			first_person_hit_anim = "shake_hit",
			no_damage_impact_sound_event = "slashing_hit_armour",
			weapon_action_hand = "left",
			width_mod = 30,
			additional_critical_strike_chance = 0,
			damage_profile = "light_slashing_axe_linesman",
			hit_effect = "melee_hit_sword_1h",
			damage_window_end = 0.37,
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
					external_multiplier = 1.15,
					end_time = 0.3,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.3,
					external_multiplier = 0.85,
					end_time = 0.5,
					buff_name = "planted_fast_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.6,
					action = "action_one",
					end_time = 1,
					input = "action_one"
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
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.3,
					action = "action_wield",
					input = "action_wield"
				}
			},
			impact_axis = Vector3Box(0, 0, 1),
			baked_sweep = {
				{
					0.26666666666666666,
					-0.3576068878173828,
					0.45550262928009033,
					0.0920252799987793,
					-0.5040003061294556,
					0.3670196235179901,
					-0.11676408350467682,
					-0.7730759978294373
				},
				{
					0.28944444444444445,
					-0.33327579498291016,
					0.5020171403884888,
					0.07582747936248779,
					-0.440347820520401,
					0.3904482424259186,
					-0.0809737965464592,
					-0.8044173717498779
				},
				{
					0.31222222222222223,
					-0.24107646942138672,
					0.5916138887405396,
					0.03540658950805664,
					-0.17863890528678894,
					0.42810720205307007,
					0.07025088369846344,
					-0.883106529712677
				},
				{
					0.33499999999999996,
					0.018951416015625,
					0.6646535396575928,
					-0.0994952917098999,
					0.35271430015563965,
					0.39913302659988403,
					0.3350602388381958,
					-0.7771872878074646
				},
				{
					0.35777777777777775,
					0.2974681854248047,
					0.549583911895752,
					-0.2387927770614624,
					0.6287362575531006,
					0.3650542199611664,
					0.4508949816226959,
					-0.5178028345108032
				},
				{
					0.38055555555555554,
					0.5193080902099609,
					0.32736706733703613,
					-0.3370615243911743,
					0.7500653266906738,
					0.3313823938369751,
					0.5126766562461853,
					-0.25446102023124695
				},
				{
					0.4033333333333333,
					0.5450925827026367,
					0.2434464693069458,
					-0.3927340507507324,
					0.8002749681472778,
					0.3081529438495636,
					0.4956803321838379,
					-0.1374872624874115
				}
			}
		},
		light_attack_left_diagonal = {
			damage_window_start = 0.3,
			range_mod = 1.15,
			anim_end_event = "attack_finished",
			kind = "sweep",
			first_person_hit_anim = "shake_hit",
			weapon_action_hand = "left",
			additional_critical_strike_chance = 0,
			damage_profile = "light_slashing_axe_linesman",
			hit_effect = "melee_hit_sword_1h",
			damage_window_end = 0.38,
			impact_sound_event = "slashing_hit",
			no_damage_impact_sound_event = "slashing_hit_armour",
			dedicated_target_range = 2.5,
			anim_event = "attack_swing_left_diagonal",
			hit_stop_anim = "attack_hit",
			total_time = 2.1,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			anim_time_scale = time_mod * 1.05,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.15,
					end_time = 0.2,
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
					sub_action = "default_down_heavy",
					start_time = 0.4,
					action = "action_one",
					end_time = 1,
					input = "action_one"
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
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.3,
					action = "action_wield",
					input = "action_wield"
				}
			},
			impact_axis = Vector3Box(0, 0, 1),
			baked_sweep = {
				{
					0.26666666666666666,
					0.25084686279296875,
					0.41237306594848633,
					0.026973485946655273,
					-0.7244108319282532,
					-0.27276939153671265,
					0.30582743883132935,
					-0.5543423295021057
				},
				{
					0.2911111111111111,
					0.19698047637939453,
					0.5067272186279297,
					0.013120651245117188,
					-0.604399561882019,
					-0.3558192849159241,
					0.2448578029870987,
					-0.6694314479827881
				},
				{
					0.31555555555555553,
					0.0111083984375,
					0.691314697265625,
					-0.08885407447814941,
					-0.09530048072338104,
					-0.4574977159500122,
					0.03781222924590111,
					-0.8832802176475525
				},
				{
					0.33999999999999997,
					-0.22087860107421875,
					0.7095932960510254,
					-0.21419954299926758,
					0.4009239673614502,
					-0.42791494727134705,
					-0.1870700716972351,
					-0.7881329655647278
				},
				{
					0.36444444444444446,
					-0.4702901840209961,
					0.49729061126708984,
					-0.28662872314453125,
					0.6296520233154297,
					-0.33749330043792725,
					-0.3842815160751343,
					-0.5847771167755127
				},
				{
					0.3888888888888889,
					-0.5868234634399414,
					0.18195295333862305,
					-0.3362138271331787,
					0.7256703972816467,
					-0.29696640372276306,
					-0.4627428948879242,
					-0.4136212170124054
				},
				{
					0.41333333333333333,
					-0.5931329727172852,
					0.037035226821899414,
					-0.45930802822113037,
					0.7485319375991821,
					-0.2306900918483734,
					-0.40222883224487305,
					-0.47401899099349976
				}
			}
		},
		light_attack_down_left = {
			damage_window_start = 0.39,
			range_mod = 1.15,
			anim_end_event = "attack_finished",
			kind = "sweep",
			first_person_hit_anim = "shake_hit",
			weapon_action_hand = "right",
			use_precision_sweep = false,
			additional_critical_strike_chance = 0,
			damage_profile = "light_slashing_smiter",
			hit_effect = "melee_hit_sword_1h",
			damage_window_end = 0.49,
			impact_sound_event = "axe_1h_hit",
			no_damage_impact_sound_event = "slashing_hit_armour",
			dedicated_target_range = 2.5,
			anim_event = "attack_swing_down_left",
			hit_stop_anim = "attack_hit",
			total_time = 2.1,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			anim_time_scale = time_mod * 1.3,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.15,
					end_time = 0.2,
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
					start_time = 0.6,
					action = "action_one",
					end_time = 1.1,
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.1,
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
					start_time = 0.3,
					action = "action_wield",
					input = "action_wield"
				}
			},
			impact_axis = Vector3Box(0, 0, 1),
			baked_sweep = {
				{
					0.3566666666666667,
					0.20609283447265625,
					0.3132634162902832,
					0.30582284927368164,
					-0.6009545922279358,
					-0.103630430996418,
					0.012732947245240211,
					-0.7924343347549438
				},
				{
					0.3844444444444445,
					0.1671886444091797,
					0.4624900817871094,
					0.25232458114624023,
					-0.4419122040271759,
					-0.11127779632806778,
					-0.026424463838338852,
					-0.8897374272346497
				},
				{
					0.4122222222222222,
					0.10378170013427734,
					0.6437273025512695,
					0.08867454528808594,
					-0.06599602103233337,
					-0.09626439213752747,
					-0.04090670123696327,
					-0.9923227429389954
				},
				{
					0.44,
					0.009733200073242188,
					0.7441568374633789,
					-0.26381850242614746,
					0.5779915452003479,
					-0.038723427802324295,
					-0.04013897106051445,
					-0.8141345977783203
				},
				{
					0.4677777777777778,
					-0.07718372344970703,
					0.5920233726501465,
					-0.5976829528808594,
					0.8836162090301514,
					-0.015903878957033157,
					-0.12095557898283005,
					-0.45203897356987
				},
				{
					0.4955555555555555,
					-0.09255027770996094,
					0.22076940536499023,
					-0.737809419631958,
					0.978790283203125,
					-0.02565780282020569,
					-0.20324519276618958,
					-0.0016082015354186296
				},
				{
					0.5233333333333333,
					-0.0734090805053711,
					0.033935546875,
					-0.7061669826507568,
					0.9524107575416565,
					-0.04590562731027603,
					-0.2197699099779129,
					0.20617373287677765
				}
			}
		},
		light_attack_bopp = {
			damage_window_start = 0.27,
			range_mod = 1.15,
			kind = "sweep",
			first_person_hit_anim = "shake_hit",
			no_damage_impact_sound_event = "slashing_hit_armour",
			weapon_action_hand = "left",
			width_mod = 30,
			slide_armour_hit = true,
			additional_critical_strike_chance = 0,
			hit_effect = "melee_hit_sword_1h",
			damage_profile = "light_slashing_axe_linesman",
			damage_window_end = 0.4,
			impact_sound_event = "slashing_hit",
			anim_end_event = "attack_finished",
			dedicated_target_range = 2.5,
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
					end_time = 0.3,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.3,
					external_multiplier = 0.85,
					end_time = 0.5,
					buff_name = "planted_fast_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default_down",
					start_time = 0.45,
					action = "action_one",
					end_time = 1.35,
					input = "action_one"
				},
				{
					sub_action = "default_down",
					start_time = 0.45,
					action = "action_one",
					end_time = 1.35,
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
					start_time = 0.5,
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
			impact_axis = Vector3Box(0, 0, 1),
			hit_mass_count = LINESMAN_HIT_MASS_COUNT,
			baked_sweep = {
				{
					0.2366666666666667,
					0.2851846218109131,
					0.3630704879760742,
					0.021503686904907227,
					-0.7217813730239868,
					-0.23399050533771515,
					0.3438182473182678,
					-0.5532351136207581
				},
				{
					0.2694444444444445,
					0.24208199977874756,
					0.421722412109375,
					0.02651381492614746,
					-0.7187914252281189,
					-0.28221988677978516,
					0.2990148365497589,
					-0.5606077909469604
				},
				{
					0.3022222222222222,
					0.12086224555969238,
					0.6128005981445312,
					-0.025953054428100586,
					-0.37690621614456177,
					-0.4215052127838135,
					0.1550733596086502,
					-0.8100786209106445
				},
				{
					0.335,
					-0.16468477249145508,
					0.7273359298706055,
					-0.1896207332611084,
					0.30449604988098145,
					-0.4518303871154785,
					-0.13602286577224731,
					-0.8274232745170593
				},
				{
					0.36777777777777776,
					-0.5225400924682617,
					0.40029335021972656,
					-0.2992384433746338,
					0.6631291508674622,
					-0.3303910791873932,
					-0.4280324876308441,
					-0.5175806283950806
				},
				{
					0.40055555555555555,
					-0.6027295589447021,
					0.09408092498779297,
					-0.393688440322876,
					0.742141604423523,
					-0.2618756890296936,
					-0.4397425949573517,
					-0.432750940322876
				},
				{
					0.43333333333333335,
					-0.5655496120452881,
					0.0060901641845703125,
					-0.5168554782867432,
					0.7381492257118225,
					-0.1961035132408142,
					-0.33423587679862976,
					-0.552236795425415
				}
			}
		},
		push = {
			damage_window_start = 0.05,
			anim_end_event = "attack_finished",
			outer_push_angle = 180,
			kind = "push_stagger",
			damage_profile_outer = "light_push",
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
					external_multiplier = 1.15,
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
					start_time = 0.3,
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
					start_time = 0.3,
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
weapon_template.left_hand_unit = "units/weapons/player/wpn_empire_short_sword/wpn_empire_short_sword"
weapon_template.left_hand_attachment_node_linking = AttachmentNodeLinking.one_handed_melee_weapon.left
weapon_template.display_unit = "units/weapons/weapon_display/dual_wield_axe_falchion"
weapon_template.buff_type = "MELEE_1H"
weapon_template.weapon_type = "AXE_1H"
weapon_template.max_fatigue_points = 6
weapon_template.dodge_count = 4
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
weapon_template.wield_anim = "to_dual_axe_sword_wh"
weapon_template.state_machine = "units/beings/player/first_person_base/state_machines/melee/dual_axe_sword_wh"
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
	base_multiplier = 0,
	target_node = "j_neck",
	effective_max_range = 4,
	breed_scalars = {
		skaven_storm_vermin = 1,
		skaven_clan_rat = 0.5,
		skaven_slave = 0.5
	}
}
weapon_template.weapon_diagram = {
	light_attack = {
		[DamageTypes.ARMOR_PIERCING] = 3,
		[DamageTypes.CLEAVE] = 3,
		[DamageTypes.SPEED] = 5,
		[DamageTypes.STAGGER] = 1,
		[DamageTypes.DAMAGE] = 5
	},
	heavy_attack = {
		[DamageTypes.ARMOR_PIERCING] = 4,
		[DamageTypes.CLEAVE] = 2,
		[DamageTypes.SPEED] = 3,
		[DamageTypes.STAGGER] = 1,
		[DamageTypes.DAMAGE] = 6
	}
}
weapon_template.tooltip_keywords = {
	"weapon_keyword_high_damage",
	"weapon_keyword_fast_attacks",
	"weapon_keyword_armour_piercing"
}
weapon_template.tooltip_compare = {
	light = {
		action_name = "action_one",
		sub_action_name = "light_attack_left"
	},
	heavy = {
		action_name = "action_one",
		sub_action_name = "heavy_attack_2"
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
weapon_template.wwise_dep_left_hand = {
	"wwise/one_handed_swords"
}
weapon_template.wwise_dep_right_hand = {
	"wwise/one_handed_axes"
}

return {
	dual_wield_axe_falchion_template = weapon_template
}
