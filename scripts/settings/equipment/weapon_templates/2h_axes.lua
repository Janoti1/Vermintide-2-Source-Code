local push_radius = 2.5
local extra_range_add = 1.1
local time_mod = 0.9
local weapon_template = {}

weapon_template.actions = {
	action_one = {
		default = {
			aim_assist_ramp_decay_delay = 0.1,
			anim_end_event = "attack_finished",
			kind = "melee_start",
			attack_hold_input = "action_one_hold",
			aim_assist_max_ramp_multiplier = 0.4,
			aim_assist_ramp_multiplier = 0.2,
			anim_event = "attack_swing_charge",
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			total_time = math.huge,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.7,
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
					start_time = 0.6,
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
					start_time = 0.6,
					blocker = true,
					end_time = 1.5,
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
		default_left = {
			aim_assist_ramp_decay_delay = 0.1,
			anim_end_event = "attack_finished",
			kind = "melee_start",
			aim_assist_max_ramp_multiplier = 0.4,
			aim_assist_ramp_multiplier = 0.2,
			anim_event = "attack_swing_charge_right",
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			total_time = math.huge,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.6,
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
					start_time = 0.6,
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
					start_time = 0.6,
					blocker = true,
					end_time = 1.5,
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
		default_right = {
			aim_assist_ramp_decay_delay = 0.1,
			anim_end_event = "attack_finished",
			kind = "melee_start",
			aim_assist_max_ramp_multiplier = 0.4,
			aim_assist_ramp_multiplier = 0.2,
			anim_event = "attack_swing_charge",
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			total_time = math.huge,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.6,
					buff_name = "planted_charging_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "light_attack_up",
					start_time = 0,
					action = "action_one",
					end_time = 0.3,
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.6,
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
					start_time = 0.6,
					blocker = true,
					end_time = 1.5,
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
		heavy_attack_right = {
			damage_window_start = 0.3,
			kind = "sweep",
			first_person_hit_anim = "shake_hit",
			no_damage_impact_sound_event = "blunt_hit_armour",
			use_precision_sweep = false,
			width_mod = 30,
			damage_profile = "heavy_slashing_axe_linesman",
			hit_effect = "melee_hit_axes_2h",
			damage_window_end = 0.5,
			impact_sound_event = "axe_2h_hit",
			charge_value = "heavy_attack",
			anim_end_event = "attack_finished",
			dedicated_target_range = 3,
			uninterruptible = true,
			anim_event = "attack_swing_heavy_right_diagonal",
			hit_stop_anim = "attack_hit",
			total_time = 2.25,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			anim_time_scale = time_mod * 1.1,
			range_mod = extra_range_add * 1.4,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 1,
					buff_name = "planted_fast_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default_right",
					start_time = 0.6,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 0.6,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					end_time = 0.3,
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.75,
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
					0.26666666666666666,
					-0.05762232840061188,
					0.5798301696777344,
					-0.15185457468032837,
					-0.3180876076221466,
					0.426608681678772,
					-0.36981943249702454,
					-0.7616159319877625
				},
				{
					0.3111111111111111,
					0.0702134519815445,
					0.5713205337524414,
					-0.15393716096878052,
					-0.1660228967666626,
					0.49580875039100647,
					-0.26196950674057007,
					-0.8111609816551208
				},
				{
					0.35555555555555557,
					0.2157563716173172,
					0.4497947692871094,
					-0.1681026816368103,
					0.08671371638774872,
					0.5438033938407898,
					-0.03742944449186325,
					-0.8338810801506042
				},
				{
					0.4,
					0.1989717036485672,
					0.3744535446166992,
					-0.13258647918701172,
					0.45107725262641907,
					0.4509027302265167,
					0.2978563606739044,
					-0.7102800011634827
				},
				{
					0.4444444444444444,
					0.3759976029396057,
					0.3199577331542969,
					-0.24055391550064087,
					0.6970970630645752,
					0.20345087349414825,
					0.5260136127471924,
					-0.44268858432769775
				},
				{
					0.48888888888888893,
					0.3139455318450928,
					-0.0360870361328125,
					-0.29147958755493164,
					0.7897422909736633,
					0.026705937460064888,
					0.562152624130249,
					-0.2440866082906723
				},
				{
					0.5333333333333333,
					0.27986907958984375,
					-0.21616840362548828,
					-0.3079869747161865,
					0.8283462524414062,
					-0.0770234763622284,
					0.5396101474761963,
					-0.12934766709804535
				}
			}
		},
		heavy_attack_left = {
			damage_window_start = 0.3,
			kind = "sweep",
			first_person_hit_anim = "shake_hit",
			no_damage_impact_sound_event = "blunt_hit_armour",
			width_mod = 30,
			use_precision_sweep = false,
			damage_profile = "heavy_slashing_axe_linesman",
			hit_effect = "melee_hit_axes_2h",
			damage_window_end = 0.5,
			impact_sound_event = "axe_2h_hit",
			charge_value = "heavy_attack",
			anim_end_event = "attack_finished",
			dedicated_target_range = 3,
			uninterruptible = true,
			anim_event = "attack_swing_heavy_left_diagonal",
			hit_stop_anim = "attack_hit",
			total_time = 2.25,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			anim_time_scale = time_mod * 1.1,
			range_mod = extra_range_add * 1.4,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 1,
					buff_name = "planted_fast_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.6,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.6,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					end_time = 0.3,
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.75,
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
					0.26666666666666666,
					0.18670998513698578,
					0.5835418701171875,
					-0.149763286113739,
					-0.24445274472236633,
					-0.46554121375083923,
					0.2561389207839966,
					-0.8111147284507751
				},
				{
					0.3111111111111111,
					0.12075044214725494,
					0.6049022674560547,
					-0.19719892740249634,
					-0.15645739436149597,
					-0.3941437602043152,
					0.21906764805316925,
					-0.8787384033203125
				},
				{
					0.35555555555555557,
					0.00908266007900238,
					0.5382184982299805,
					-0.35321691632270813,
					0.13000276684761047,
					-0.35657358169555664,
					0.06791327893733978,
					-0.9226821660995483
				},
				{
					0.4,
					-0.16498573124408722,
					0.3451089859008789,
					-0.27720898389816284,
					0.5231372117996216,
					-0.39593082666397095,
					-0.24004261195659637,
					-0.7155038714408875
				},
				{
					0.4444444444444444,
					-0.21715383231639862,
					0.19631385803222656,
					-0.3203147053718567,
					0.7472605109214783,
					-0.2512579560279846,
					-0.39671939611434937,
					-0.4701967239379883
				},
				{
					0.48888888888888893,
					-0.17070598900318146,
					-0.19514942169189453,
					-0.47926706075668335,
					0.7500581741333008,
					-0.1623392254114151,
					-0.5495875477790833,
					-0.33017003536224365
				},
				{
					0.5333333333333333,
					-0.049155667424201965,
					-0.4153594970703125,
					-0.5514635443687439,
					0.7414145469665527,
					-0.09370329231023788,
					-0.601772665977478,
					-0.2817690968513489
				}
			}
		},
		light_attack_left = {
			damage_window_start = 0.3,
			anim_end_event = "attack_finished",
			kind = "sweep",
			first_person_hit_anim = "attack_hit_alt_effect",
			hit_effect = "melee_hit_axes_2h",
			damage_profile = "medium_slashing_smiter_2h",
			use_precision_sweep = false,
			damage_window_end = 0.45,
			impact_sound_event = "axe_2h_hit",
			no_damage_impact_sound_event = "blunt_hit_armour",
			dedicated_target_range = 3,
			anim_event = "attack_swing_down_left",
			total_time = 2.5,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			range_mod = extra_range_add * 1.3,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.4,
					end_time = 0.2,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.2,
					external_multiplier = 1.4,
					end_time = 0.35,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.35,
					external_multiplier = 0.4,
					end_time = 0.8,
					buff_name = "planted_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.65,
					action = "action_one",
					end_time = 1.8,
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.5,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					end_time = 0.3,
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.6,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.6,
					action = "action_wield",
					input = "action_wield"
				}
			},
			baked_sweep = {
				{
					0.26666666666666666,
					0.20331715047359467,
					0.5597772598266602,
					0.11409705877304077,
					-0.6832427382469177,
					-0.15025894343852997,
					0.1741141527891159,
					-0.6930266618728638
				},
				{
					0.30277777777777776,
					0.17770589888095856,
					0.6107988357543945,
					0.048751890659332275,
					-0.6305288672447205,
					-0.11620468646287918,
					0.15816064178943634,
					-0.7509428262710571
				},
				{
					0.3388888888888889,
					0.1243259459733963,
					0.7136449813842773,
					-0.07938414812088013,
					-0.5190403461456299,
					-0.0953860655426979,
					0.14139622449874878,
					-0.8375594019889832
				},
				{
					0.375,
					0.005216673016548157,
					0.6382246017456055,
					-0.37328946590423584,
					-0.11704179644584656,
					-0.09962891787290573,
					0.06854646652936935,
					-0.985736608505249
				},
				{
					0.4111111111111111,
					-0.04779939353466034,
					0.34166622161865234,
					-0.4216580390930176,
					0.439505010843277,
					-0.09633811563253403,
					-0.053808070719242096,
					-0.8914365172386169
				},
				{
					0.44722222222222224,
					-0.05677230656147003,
					0.2390918731689453,
					-0.3026687502861023,
					0.7783343195915222,
					-0.08927464485168457,
					-0.12972219288349152,
					-0.607781171798706
				},
				{
					0.48333333333333334,
					-0.1498333364725113,
					0.07949256896972656,
					-0.2807190418243408,
					0.936629593372345,
					-0.06881356239318848,
					-0.18122653663158417,
					-0.29179906845092773
				}
			}
		},
		light_attack_right = {
			damage_window_start = 0.35,
			anim_end_event = "attack_finished",
			kind = "sweep",
			first_person_hit_anim = "attack_hit_alt_effect",
			hit_effect = "melee_hit_axes_2h",
			damage_profile = "medium_slashing_smiter_2h",
			use_precision_sweep = false,
			damage_window_end = 0.53,
			impact_sound_event = "axe_2h_hit",
			no_damage_impact_sound_event = "blunt_hit_armour",
			dedicated_target_range = 3,
			anim_event = "attack_swing_down_right",
			total_time = 2.5,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			range_mod = extra_range_add * 1.3,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.4,
					end_time = 0.2,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.2,
					external_multiplier = 1.4,
					end_time = 0.35,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.5,
					external_multiplier = 0.4,
					end_time = 0.8,
					buff_name = "planted_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default_right",
					start_time = 0.6,
					action = "action_one",
					end_time = 1.8,
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.5,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					end_time = 0.3,
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.6,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.6,
					action = "action_wield",
					input = "action_wield"
				}
			},
			baked_sweep = {
				{
					0.31666666666666665,
					-0.16621433198451996,
					0.4312143325805664,
					0.10932296514511108,
					-0.6434639692306519,
					-0.022707128897309303,
					0.06872396916151047,
					-0.7620469927787781
				},
				{
					0.35777777777777775,
					-0.09316770732402802,
					0.5168886184692383,
					0.05175703763961792,
					-0.5744024515151978,
					0.15425559878349304,
					-0.026245959103107452,
					-0.8034788370132446
				},
				{
					0.3988888888888889,
					0.02017374336719513,
					0.5942354202270508,
					-0.05918651819229126,
					-0.4112488031387329,
					0.31437182426452637,
					-0.09362602978944778,
					-0.8504580855369568
				},
				{
					0.44,
					0.1277024894952774,
					0.5184612274169922,
					-0.2606804370880127,
					-0.08664796501398087,
					0.29093968868255615,
					0.03396465256810188,
					-0.9522041082382202
				},
				{
					0.48111111111111116,
					0.07908894121646881,
					0.10233402252197266,
					-0.257817804813385,
					0.8093245625495911,
					0.10058873146772385,
					0.22728990018367767,
					-0.5321794748306274
				},
				{
					0.5222222222222223,
					0.15162800252437592,
					-0.06686973571777344,
					-0.37699490785598755,
					0.9051121473312378,
					0.0415530726313591,
					0.22379927337169647,
					-0.35910895466804504
				},
				{
					0.5633333333333334,
					0.2252761572599411,
					-0.2191610336303711,
					-0.510928750038147,
					0.8888933062553406,
					0.01816946640610695,
					0.17789582908153534,
					-0.4217720627784729
				}
			}
		},
		light_attack_up = {
			damage_window_start = 0.35,
			anim_end_event = "attack_finished",
			kind = "sweep",
			first_person_hit_anim = "attack_hit_alt_effect",
			additional_critical_strike_chance = 0.1,
			use_precision_sweep = false,
			damage_profile = "medium_slashing_smiter_2h",
			hit_effect = "melee_hit_axes_2h",
			damage_window_end = 0.53,
			impact_sound_event = "axe_2h_hit",
			no_damage_impact_sound_event = "blunt_hit_armour",
			dedicated_target_range = 3,
			anim_event = "attack_swing_up",
			total_time = 2.5,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			anim_time_scale = time_mod * 0.9,
			range_mod = extra_range_add * 1.3,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.4,
					end_time = 0.2,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.2,
					external_multiplier = 1.4,
					end_time = 0.35,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.5,
					external_multiplier = 0.4,
					end_time = 0.8,
					buff_name = "planted_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.6,
					action = "action_one",
					end_time = 1.8,
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.5,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					end_time = 0.3,
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.6,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.6,
					action = "action_wield",
					input = "action_wield"
				}
			},
			baked_sweep = {
				{
					0.31666666666666665,
					0.34104853868484497,
					0.5840301513671875,
					-0.2227996587753296,
					0.30368274450302124,
					0.7700857520103455,
					-0.2891467809677124,
					0.4807690382003784
				},
				{
					0.35777777777777775,
					0.19208559393882751,
					0.6310415267944336,
					-0.13822615146636963,
					-0.12568192183971405,
					-0.839030921459198,
					0.12545709311962128,
					-0.5142876505851746
				},
				{
					0.3988888888888889,
					0.029516562819480896,
					0.5699071884155273,
					-0.029718756675720215,
					-0.061611708253622055,
					0.8166940212249756,
					0.3467303514480591,
					0.45715755224227905
				},
				{
					0.44,
					-0.20194730162620544,
					0.35007286071777344,
					-0.009007573127746582,
					-0.31926998496055603,
					0.5321155786514282,
					0.7012023329734802,
					0.3510484993457794
				},
				{
					0.48111111111111116,
					-0.20821604132652283,
					0.18941211700439453,
					-0.13049930334091187,
					-0.4499109387397766,
					0.20664292573928833,
					0.8645861148834229,
					0.08584702759981155
				},
				{
					0.5222222222222223,
					-0.14423149824142456,
					0.17698097229003906,
					-0.2437167763710022,
					-0.4931115508079529,
					0.0706130787730217,
					0.839684784412384,
					-0.21629691123962402
				},
				{
					0.5633333333333334,
					-0.14446181058883667,
					0.16588687896728516,
					-0.27930498123168945,
					-0.5236760973930359,
					0.023325001820921898,
					0.7898308038711548,
					-0.3184126019477844
				}
			}
		},
		light_attack_bopp = {
			damage_window_start = 0.33,
			kind = "sweep",
			first_person_hit_anim = "shake_hit",
			no_damage_impact_sound_event = "blunt_hit_armour",
			use_precision_sweep = false,
			damage_profile = "medium_slashing_axe_linesman",
			hit_effect = "melee_hit_axes_2h",
			damage_window_end = 0.5,
			impact_sound_event = "axe_2h_hit",
			anim_end_event = "attack_finished",
			dedicated_target_range = 3,
			anim_event = "attack_swing_left",
			hit_stop_anim = "attack_hit_alt_effect",
			total_time = 1.5,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			anim_time_scale = time_mod * 1.1,
			range_mod = extra_range_add * 1.4,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.4,
					end_time = 0.2,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.2,
					external_multiplier = 1.4,
					end_time = 0.35,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.5,
					external_multiplier = 0.4,
					end_time = 0.8,
					buff_name = "planted_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.75,
					action = "action_one",
					release_required = "action_two_hold",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.75,
					action = "action_one",
					release_required = "action_two_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.65,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.65,
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
					0.2966666666666667,
					0.21077193319797516,
					0.6221046447753906,
					-0.1839979887008667,
					-0.3384746015071869,
					-0.6340773105621338,
					0.269125759601593,
					-0.6410555839538574
				},
				{
					0.33611111111111114,
					-0.007198050618171692,
					0.5757160186767578,
					-0.1794758439064026,
					-0.15742217004299164,
					-0.6828205585479736,
					0.08879106491804123,
					-0.7078774571418762
				},
				{
					0.3755555555555556,
					-0.12727214395999908,
					0.2956056594848633,
					-0.16419607400894165,
					0.22681403160095215,
					-0.6349596381187439,
					-0.34904390573501587,
					-0.65080726146698
				},
				{
					0.41500000000000004,
					-0.035101816058158875,
					0.1360187530517578,
					-0.15848535299301147,
					-0.5875982642173767,
					0.2689453959465027,
					0.7130617499351501,
					0.271918386220932
				},
				{
					0.45444444444444443,
					-0.07925726473331451,
					0.09978866577148438,
					-0.1642041802406311,
					-0.6085383892059326,
					0.19425241649150848,
					0.7267554402351379,
					0.2525344491004944
				},
				{
					0.49388888888888893,
					-0.11346744000911713,
					0.05952167510986328,
					-0.17968767881393433,
					-0.6205357313156128,
					0.16474968194961548,
					0.7261893153190613,
					0.24584966897964478
				},
				{
					0.5333333333333333,
					-0.09872712194919586,
					0.08066654205322266,
					-0.20998507738113403,
					-0.6353895664215088,
					0.13595740497112274,
					0.7455921769142151,
					0.1479455679655075
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
					external_multiplier = 1.25,
					end_time = 0.2,
					buff_name = "planted_fast_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.4,
					action = "action_one",
					release_required = "action_two_hold",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.4,
					action = "action_one",
					release_required = "action_two_hold",
					doubleclick_window = 0,
					input = "action_one_hold"
				},
				{
					sub_action = "light_attack_bopp",
					start_time = 0.4,
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
					external_multiplier = 0.5,
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
weapon_template.right_hand_attachment_node_linking = AttachmentNodeLinking.two_handed_melee_weapon
weapon_template.display_unit = "units/weapons/weapon_display/display_2h_axes"
weapon_template.wield_anim = "to_2h_hammer"
weapon_template.state_machine = "units/beings/player/first_person_base/state_machines/melee/2h_hammer"
weapon_template.buff_type = "MELEE_2H"
weapon_template.weapon_type = "AXE_2H"
weapon_template.max_fatigue_points = 6
weapon_template.dodge_count = 2
weapon_template.block_angle = 90
weapon_template.outer_block_angle = 360
weapon_template.block_fatigue_point_multiplier = 0.5
weapon_template.outer_block_fatigue_point_multiplier = 2
weapon_template.sound_event_block_within_arc = "weapon_foley_blunt_2h_block_wood"
weapon_template.buffs = {
	change_dodge_distance = {
		external_optional_multiplier = 1
	},
	change_dodge_speed = {
		external_optional_multiplier = 1
	}
}
weapon_template.attack_meta_data = {
	tap_attack = {
		arc = 0
	},
	hold_attack = {
		arc = 1
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
		[DamageTypes.ARMOR_PIERCING] = 5,
		[DamageTypes.CLEAVE] = 2,
		[DamageTypes.SPEED] = 2,
		[DamageTypes.STAGGER] = 4,
		[DamageTypes.DAMAGE] = 6
	},
	heavy_attack = {
		[DamageTypes.ARMOR_PIERCING] = 6,
		[DamageTypes.CLEAVE] = 5,
		[DamageTypes.SPEED] = 2,
		[DamageTypes.STAGGER] = 6,
		[DamageTypes.DAMAGE] = 5
	}
}
weapon_template.tooltip_keywords = {
	"weapon_keyword_high_damage",
	"weapon_keyword_shield_breaking",
	"weapon_keyword_armour_piercing"
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
	"wwise/two_handed_axes"
}

return {
	two_handed_axes_template_1 = weapon_template
}
