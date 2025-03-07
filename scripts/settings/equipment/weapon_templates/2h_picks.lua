local push_radius = 2.5
local extra_range_add = 1.1
local time_mod = 0.9
local weapon_template = {}

weapon_template.actions = {
	action_one = {
		default = {
			kind = "melee_start",
			anim_end_event = "attack_finished",
			anim_event = "attack_swing_charge_left_down",
			attack_hold_input = "action_one_hold",
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			total_time = math.huge,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.35,
					end_time = 0.5,
					buff_name = "planted_charging_decrease_movement"
				},
				{
					start_time = 0.6,
					external_multiplier = 0.6,
					end_time = 0.7,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 1,
					external_multiplier = 1.5,
					buff_name = "planted_fast_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "light_attack_left",
					start_time = 0,
					action = "action_one",
					end_time = 0.4,
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.4,
					action = "action_one",
					end_time = 0.9,
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_left_charged",
					start_time = 0.9,
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
					start_time = 0.75,
					blocker = true,
					end_time = 2.25,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_left_charged",
					start_time = 1.8,
					action = "action_one",
					auto_chain = true
				}
			}
		},
		default_left = {
			kind = "melee_start",
			anim_end_event = "attack_finished",
			anim_event = "attack_swing_charge_right_down",
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			total_time = math.huge,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.35,
					end_time = 0.5,
					buff_name = "planted_charging_decrease_movement"
				},
				{
					start_time = 0.5,
					external_multiplier = 0.6,
					end_time = 0.7,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 1,
					external_multiplier = 1.5,
					buff_name = "planted_fast_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "light_attack_right",
					start_time = 0,
					action = "action_one",
					end_time = 0.4,
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_right",
					start_time = 0.4,
					action = "action_one",
					end_time = 0.9,
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_right_charged",
					start_time = 0.9,
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
					start_time = 0.75,
					blocker = true,
					end_time = 2.25,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_right_charged",
					start_time = 1.8,
					action = "action_one",
					auto_chain = true
				}
			}
		},
		default_right = {
			kind = "melee_start",
			anim_end_event = "attack_finished",
			anim_event = "attack_swing_charge_left_down_pose",
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			total_time = math.huge,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.35,
					end_time = 0.5,
					buff_name = "planted_charging_decrease_movement"
				},
				{
					start_time = 0.5,
					external_multiplier = 0.6,
					end_time = 0.7,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 1,
					external_multiplier = 1.5,
					buff_name = "planted_fast_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "light_attack_left",
					start_time = 0,
					action = "action_one",
					end_time = 0.4,
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.4,
					action = "action_one",
					end_time = 0.9,
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_left_charged",
					start_time = 0.9,
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
					start_time = 0.75,
					blocker = true,
					end_time = 2.25,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_left_charged",
					start_time = 1.8,
					action = "action_one",
					auto_chain = true
				}
			}
		},
		light_attack_right = {
			damage_window_start = 0.3,
			kind = "sweep",
			first_person_hit_anim = "shake_hit",
			no_damage_impact_sound_event = "slashing_hit_armour",
			additional_critical_strike_chance = 0,
			use_precision_sweep = false,
			damage_profile = "medium_blunt_tank",
			hit_shield_stop_anim = "attack_hit_shield",
			hit_effect = "melee_hit_hammers_2h",
			damage_window_end = 0.5,
			impact_sound_event = "slashing_hit",
			anim_end_event = "attack_finished",
			dedicated_target_range = 3,
			uninterruptible = true,
			anim_event = "attack_swing_right_diagonal",
			hit_stop_anim = "attack_hit",
			total_time = 2.25,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			anim_time_scale = time_mod * 0.95,
			range_mod = extra_range_add * 1.4,
			buff_data = {
				{
					start_time = 0.2,
					external_multiplier = 0.5,
					end_time = 1,
					buff_name = "planted_charging_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default_right",
					start_time = 0.75,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 0.75,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.6,
					action = "action_two",
					input = "action_two_hold"
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
					start_time = 0.5,
					action = "action_wield",
					input = "action_wield"
				}
			},
			hit_mass_count = LINESMAN_HIT_MASS_COUNT,
			baked_sweep = {
				{
					0.26666666666666666,
					-0.21923255920410156,
					0.3743264675140381,
					-0.19371604919433594,
					-0.441787451505661,
					0.33795738220214844,
					-0.35762766003608704,
					-0.7501407861709595
				},
				{
					0.3111111111111111,
					-0.16449642181396484,
					0.4546074867248535,
					-0.14265692234039307,
					-0.44723206758499146,
					0.34435421228408813,
					-0.2894940674304962,
					-0.7730439305305481
				},
				{
					0.35555555555555557,
					0.04192066192626953,
					0.5181114673614502,
					-0.16515755653381348,
					-0.2702506184577942,
					0.462758332490921,
					-0.14605851471424103,
					-0.8315565586090088
				},
				{
					0.4,
					0.22762775421142578,
					0.4753580093383789,
					-0.21295785903930664,
					0.014786711893975735,
					0.5144546627998352,
					0.025166140869259834,
					-0.8570206761360168
				},
				{
					0.4444444444444444,
					0.28041744232177734,
					0.29813480377197266,
					-0.24711406230926514,
					0.3595596253871918,
					0.4604651629924774,
					0.21436968445777893,
					-0.782773494720459
				},
				{
					0.48888888888888893,
					0.32744312286376953,
					0.014079093933105469,
					-0.3299509286880493,
					0.7241011261940002,
					0.2028566598892212,
					0.45833417773246765,
					-0.47376853227615356
				},
				{
					0.5333333333333333,
					0.3390998840332031,
					-0.13434338569641113,
					-0.3737478256225586,
					0.803679883480072,
					0.12081733345985413,
					0.529309093952179,
					-0.24358531832695007
				}
			}
		},
		light_attack_left = {
			damage_window_start = 0.3,
			kind = "sweep",
			first_person_hit_anim = "shake_hit",
			no_damage_impact_sound_event = "blunt_hit_armour",
			additional_critical_strike_chance = 0,
			use_precision_sweep = false,
			hit_shield_stop_anim = "attack_hit_shield",
			damage_profile = "medium_blunt_tank",
			hit_effect = "melee_hit_hammers_2h",
			damage_window_end = 0.5,
			impact_sound_event = "blunt_hit",
			charge_value = "light_attack",
			anim_end_event = "attack_finished",
			dedicated_target_range = 3,
			uninterruptible = true,
			anim_event = "attack_swing_left_diagonal",
			hit_stop_anim = "attack_hit",
			total_time = 2.25,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			anim_time_scale = time_mod * 0.95,
			range_mod = extra_range_add * 1.4,
			buff_data = {
				{
					start_time = 0.2,
					external_multiplier = 0.5,
					end_time = 1,
					buff_name = "planted_charging_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.75,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.75,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.6,
					action = "action_two",
					input = "action_two_hold"
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
					start_time = 0.5,
					action = "action_wield",
					input = "action_wield"
				}
			},
			enter_function = function (attacker_unit, input_extension)
				return input_extension:reset_release_input()
			end,
			critical_strike = {},
			hit_mass_count = LINESMAN_HIT_MASS_COUNT,
			baked_sweep = {
				{
					0.26666666666666666,
					0.35898685455322266,
					0.611457347869873,
					-0.00859212875366211,
					-0.579727828502655,
					-0.33736714720726013,
					0.3081742227077484,
					-0.6746314764022827
				},
				{
					0.3111111111111111,
					0.18803691864013672,
					0.70107102394104,
					-0.1019740104675293,
					-0.4523490071296692,
					-0.39028310775756836,
					0.23490452766418457,
					-0.766732931137085
				},
				{
					0.35555555555555557,
					-0.07299041748046875,
					0.6303749084472656,
					-0.30383920669555664,
					-0.05305607244372368,
					-0.4168369770050049,
					0.06932196766138077,
					-0.9047797918319702
				},
				{
					0.4,
					-0.030704498291015625,
					0.20516467094421387,
					-0.2292393445968628,
					0.7363711595535278,
					-0.13598422706127167,
					-0.497658371925354,
					-0.4377235472202301
				},
				{
					0.4444444444444444,
					-0.08711719512939453,
					0.16465520858764648,
					-0.24212849140167236,
					0.7890098690986633,
					-0.06509021669626236,
					-0.5473461151123047,
					-0.2713649868965149
				},
				{
					0.48888888888888893,
					-0.1338663101196289,
					0.03857779502868652,
					-0.2679939270019531,
					0.7935174107551575,
					-0.07238870859146118,
					-0.5397904515266418,
					-0.2715074419975281
				},
				{
					0.5333333333333333,
					-0.09970664978027344,
					0.06884241104125977,
					-0.2585296630859375,
					0.8179519772529602,
					-0.03273751214146614,
					-0.5644719004631042,
					-0.10608638823032379
				}
			}
		},
		heavy_attack_left_charged = {
			damage_window_start = 0.3,
			range_mod = 1.35,
			kind = "sweep",
			first_person_hit_anim = "attack_hit_alt_effect",
			no_damage_impact_sound_event = "slashing_hit_armour",
			additional_critical_strike_chance = 0,
			use_precision_sweep = true,
			damage_profile = "heavy_blunt_smiter_charged",
			hit_shield_stop_anim = "attack_hit_shield",
			hit_effect = "melee_hit_axes_2h",
			damage_window_end = 0.45,
			impact_sound_event = "pick_axe_heavy_hit",
			charge_value = "heavy_attack",
			anim_end_event = "attack_finished",
			dedicated_target_range = 3,
			uninterruptible = true,
			anim_event = "attack_swing_down_left_axe",
			total_time = 2.5,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			anim_time_scale = time_mod * 1,
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
					start_time = 0.75,
					action = "action_one",
					end_time = 1.8,
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 1,
					action = "action_one",
					end_time = 1.8,
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.5,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.75,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.75,
					action = "action_wield",
					input = "action_wield"
				}
			},
			baked_sweep = {
				{
					0.26666666666666666,
					0.20303821563720703,
					0.5599367618560791,
					0.11351382732391357,
					-0.6827618479728699,
					-0.1497354507446289,
					0.17384018003940582,
					-0.6936823129653931
				},
				{
					0.30277777777777776,
					0.1801471710205078,
					0.6037132740020752,
					0.05536353588104248,
					-0.6358305215835571,
					-0.1180415078997612,
					0.15899978578090668,
					-0.7459925413131714
				},
				{
					0.3388888888888889,
					0.12834739685058594,
					0.7088582515716553,
					-0.06986892223358154,
					-0.5281789302825928,
					-0.09638859331607819,
					0.14311297237873077,
					-0.831417441368103
				},
				{
					0.375,
					0.018903732299804688,
					0.6676886081695557,
					-0.3432513475418091,
					-0.17833150923252106,
					-0.09766031801700592,
					0.08096209168434143,
					-0.975758969783783
				},
				{
					0.4111111111111111,
					-0.047519683837890625,
					0.33346128463745117,
					-0.4159632921218872,
					0.46187031269073486,
					-0.09534931927919388,
					-0.05782223120331764,
					-0.8799096345901489
				},
				{
					0.44722222222222224,
					-0.05879783630371094,
					0.2349095344543457,
					-0.3002434968948364,
					0.7855005860328674,
					-0.08882663398981094,
					-0.13163235783576965,
					-0.5981402397155762
				},
				{
					0.48333333333333334,
					-0.15559673309326172,
					0.07162165641784668,
					-0.2823367118835449,
					0.9414020776748657,
					-0.06691045314073563,
					-0.18283326923847198,
					-0.27542179822921753
				}
			}
		},
		heavy_attack_left = {
			damage_window_start = 0.3,
			range_mod = 1.35,
			anim_end_event = "attack_finished",
			kind = "sweep",
			first_person_hit_anim = "attack_hit_alt_effect",
			additional_critical_strike_chance = 0,
			use_precision_sweep = true,
			damage_profile = "heavy_blunt_smiter_pick",
			hit_shield_stop_anim = "attack_hit_shield",
			hit_effect = "melee_hit_axes_2h",
			damage_window_end = 0.45,
			impact_sound_event = "slashing_hit",
			charge_value = "heavy_attack",
			no_damage_impact_sound_event = "slashing_hit_armour",
			dedicated_target_range = 3,
			anim_event = "attack_swing_down_left",
			total_time = 2.5,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			anim_time_scale = time_mod * 1,
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
					start_time = 0.75,
					action = "action_one",
					end_time = 1.8,
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.75,
					action = "action_one",
					end_time = 1.8,
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.5,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.75,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.75,
					action = "action_wield",
					input = "action_wield"
				}
			},
			baked_sweep = {
				{
					0.26666666666666666,
					0.2020559310913086,
					0.5604774951934814,
					0.11166036128997803,
					-0.6812372207641602,
					-0.14822328090667725,
					0.17295196652412415,
					-0.6957250237464905
				},
				{
					0.30277777777777776,
					0.18012237548828125,
					0.603792667388916,
					0.055290937423706055,
					-0.6357703804969788,
					-0.11801514029502869,
					0.15899193286895752,
					-0.7460496425628662
				},
				{
					0.3388888888888889,
					0.12152290344238281,
					0.7167563438415527,
					-0.0859379768371582,
					-0.5126539468765259,
					-0.094761922955513,
					0.1401452124118805,
					-0.8417633175849915
				},
				{
					0.375,
					0.006991386413574219,
					0.6424031257629395,
					-0.369514524936676,
					-0.12535668909549713,
					-0.09938592463731766,
					0.07028459757566452,
					-0.9846158027648926
				},
				{
					0.4111111111111111,
					-0.04746818542480469,
					0.33206677436828613,
					-0.4149315357208252,
					0.4657224416732788,
					-0.09520097821950912,
					-0.05852579325437546,
					-0.8778463006019592
				},
				{
					0.44722222222222224,
					-0.058017730712890625,
					0.23655486106872559,
					-0.30116569995880127,
					0.7827837467193604,
					-0.0890032947063446,
					-0.1309042125940323,
					-0.6018240451812744
				},
				{
					0.48333333333333334,
					-0.15684032440185547,
					0.06982254981994629,
					-0.28268158435821533,
					0.9424325227737427,
					-0.0664435625076294,
					-0.1831362247467041,
					-0.27178558707237244
				}
			}
		},
		heavy_attack_right_charged = {
			damage_window_start = 0.35,
			range_mod = 1.35,
			kind = "sweep",
			first_person_hit_anim = "attack_hit_alt_effect",
			no_damage_impact_sound_event = "slashing_hit_armour",
			additional_critical_strike_chance = 0,
			use_precision_sweep = true,
			damage_profile = "heavy_blunt_smiter_charged",
			hit_shield_stop_anim = "attack_hit_shield",
			hit_effect = "melee_hit_axes_2h",
			damage_window_end = 0.53,
			impact_sound_event = "pick_axe_heavy_hit",
			charge_value = "heavy_attack",
			anim_end_event = "attack_finished",
			dedicated_target_range = 3,
			uninterruptible = true,
			anim_event = "attack_swing_down_right_axe",
			total_time = 2.5,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			anim_time_scale = time_mod * 1,
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
					start_time = 0.75,
					action = "action_one",
					end_time = 1.8,
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 0.75,
					action = "action_one",
					end_time = 1.8,
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.5,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.75,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.75,
					action = "action_wield",
					input = "action_wield"
				}
			},
			baked_sweep = {
				{
					0.31666666666666665,
					-0.1702117919921875,
					0.42560696601867676,
					0.11266803741455078,
					-0.6472744345664978,
					-0.03428236395120621,
					0.07593362778425217,
					-0.7576903700828552
				},
				{
					0.35777777777777775,
					-0.08310222625732422,
					0.5264339447021484,
					0.04398190975189209,
					-0.5639870166778564,
					0.17332607507705688,
					-0.03584158793091774,
					-0.8065929412841797
				},
				{
					0.3988888888888889,
					0.02324676513671875,
					0.5950503349304199,
					-0.063140869140625,
					-0.40584611892700195,
					0.31625112891197205,
					-0.0933932289481163,
					-0.8523801565170288
				},
				{
					0.44,
					0.12738800048828125,
					0.5204043388366699,
					-0.2591125965118408,
					-0.09105824679136276,
					0.29160380363464355,
					0.03291052207350731,
					-0.9516263008117676
				},
				{
					0.48111111111111116,
					0.0791311264038086,
					0.10782837867736816,
					-0.2588616609573364,
					0.8001004457473755,
					0.10355043411254883,
					0.2226007580757141,
					-0.5473257899284363
				},
				{
					0.5222222222222223,
					0.15398120880126953,
					-0.07114052772521973,
					-0.3809894323348999,
					0.9048394560813904,
					0.04092726856470108,
					0.22243015468120575,
					-0.36071518063545227
				},
				{
					0.5633333333333334,
					0.22562599182128906,
					-0.22006869316101074,
					-0.511699914932251,
					0.8889155387878418,
					0.01794762909412384,
					0.17759065330028534,
					-0.4218633472919464
				}
			}
		},
		heavy_attack_right = {
			damage_window_start = 0.35,
			range_mod = 1.35,
			anim_end_event = "attack_finished",
			kind = "sweep",
			first_person_hit_anim = "attack_hit_alt_effect",
			additional_critical_strike_chance = 0,
			use_precision_sweep = true,
			damage_profile = "heavy_blunt_smiter_pick",
			hit_shield_stop_anim = "attack_hit_shield",
			hit_effect = "melee_hit_axes_2h",
			damage_window_end = 0.53,
			impact_sound_event = "slashing_hit",
			charge_value = "heavy_attack",
			no_damage_impact_sound_event = "slashing_hit_armour",
			dedicated_target_range = 3,
			anim_event = "attack_swing_down_right",
			total_time = 2.5,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			anim_time_scale = time_mod * 1,
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
					start_time = 0.75,
					action = "action_one",
					end_time = 1.8,
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 0.75,
					action = "action_one",
					end_time = 1.8,
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.5,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.75,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.75,
					action = "action_wield",
					input = "action_wield"
				}
			},
			baked_sweep = {
				{
					0.31666666666666665,
					-0.16615867614746094,
					0.4312934875488281,
					0.109275221824646,
					-0.6434117555618286,
					-0.02254188433289528,
					0.06862226128578186,
					-0.7621051073074341
				},
				{
					0.35777777777777775,
					-0.08902931213378906,
					0.5208592414855957,
					0.04859721660614014,
					-0.5702101588249207,
					0.16220270097255707,
					-0.030254552140831947,
					-0.8047579526901245
				},
				{
					0.3988888888888889,
					0.015761375427246094,
					0.5929574966430664,
					-0.0535585880279541,
					-0.419090211391449,
					0.3113248646259308,
					-0.09358665347099304,
					-0.8477510213851929
				},
				{
					0.44,
					0.1269359588623047,
					0.52290940284729,
					-0.2570028305053711,
					-0.09681044518947601,
					0.29247069358825684,
					0.03152487426996231,
					-0.9508390426635742
				},
				{
					0.48111111111111116,
					0.0802907943725586,
					0.12511634826660156,
					-0.26328492164611816,
					0.7699639201164246,
					0.11260958760976791,
					0.20686089992523193,
					-0.5930289626121521
				},
				{
					0.5222222222222223,
					0.14482975006103516,
					-0.05430293083190918,
					-0.36540812253952026,
					0.9054481387138367,
					0.04359935224056244,
					0.22801563143730164,
					-0.3553471863269806
				},
				{
					0.5633333333333334,
					0.22480201721191406,
					-0.21793770790100098,
					-0.5098893642425537,
					0.8888676166534424,
					0.018464749678969383,
					0.1783030480146408,
					-0.42164140939712524
				}
			}
		},
		light_attack_bopp = {
			damage_window_start = 0.33,
			anim_end_event = "attack_finished",
			kind = "sweep",
			first_person_hit_anim = "attack_hit_alt_effect",
			damage_profile = "medium_blunt_smiter_flat_2h",
			hit_effect = "melee_hit_axes_2h",
			damage_window_end = 0.5,
			impact_sound_event = "axe_2h_hit",
			no_damage_impact_sound_event = "blunt_hit_armour",
			dedicated_target_range = 3,
			anim_event = "attack_swing_left",
			total_time = 2.5,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			anim_time_scale = time_mod * 1.4,
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
					sub_action = "default_left",
					start_time = 0.75,
					action = "action_one",
					release_required = "action_two_hold",
					end_time = 1.8,
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.75,
					action = "action_one",
					release_required = "action_two_hold",
					end_time = 1.8,
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.5,
					action = "action_one",
					input = "action_one"
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
			baked_sweep = {
				{
					0.2966666666666667,
					0.20238113403320312,
					0.6223812103271484,
					-0.18375670909881592,
					-0.33266404271125793,
					-0.6364601850509644,
					0.2637099623680115,
					-0.6439799070358276
				},
				{
					0.33611111111111114,
					-0.010900497436523438,
					0.5735485553741455,
					-0.17968058586120605,
					-0.1529889702796936,
					-0.683175802230835,
					0.08430468291044235,
					-0.7090542912483215
				},
				{
					0.3755555555555556,
					-0.1272439956665039,
					0.29529762268066406,
					-0.16421043872833252,
					0.22720196843147278,
					-0.6347576975822449,
					-0.34948575496673584,
					-0.6506317853927612
				},
				{
					0.41500000000000004,
					-0.034844398498535156,
					0.13646721839904785,
					-0.15845990180969238,
					-0.5832912921905518,
					0.2809082865715027,
					0.7080529928207397,
					0.2819979190826416
				},
				{
					0.45444444444444443,
					-0.07555770874023438,
					0.10351800918579102,
					-0.16368401050567627,
					-0.6083688139915466,
					0.19595175981521606,
					0.7272838950157166,
					0.25009703636169434
				},
				{
					0.49388888888888893,
					-0.11349105834960938,
					0.059519290924072266,
					-0.1795433759689331,
					-0.6203449964523315,
					0.16500848531723022,
					0.7261092066764832,
					0.24639354646205902
				},
				{
					0.5333333333333333,
					-0.09894466400146484,
					0.08031582832336426,
					-0.2095111608505249,
					-0.6352505683898926,
					0.13616043329238892,
					0.745425820350647,
					0.14918938279151917
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
	action_inspect = ActionTemplates.action_inspect,
	action_wield = ActionTemplates.wield
}
weapon_template.right_hand_unit = "units/weapons/player/wpn_empire_short_sword/wpn_empire_short_sword"
weapon_template.right_hand_attachment_node_linking = AttachmentNodeLinking.two_handed_melee_weapon
weapon_template.display_unit = "units/weapons/weapon_display/display_2h_picks"
weapon_template.wield_anim = "to_2h_picks"
weapon_template.state_machine = "units/beings/player/first_person_base/state_machines/melee/2h_picks"
weapon_template.buff_type = "MELEE_2H"
weapon_template.weapon_type = "PICK_2H"
weapon_template.max_fatigue_points = 6
weapon_template.dodge_count = 2
weapon_template.block_angle = 90
weapon_template.outer_block_angle = 360
weapon_template.block_fatigue_point_multiplier = 0.5
weapon_template.outer_block_fatigue_point_multiplier = 2
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
		arc = 2
	},
	hold_attack = {
		arc = 0
	}
}
weapon_template.weapon_diagram = {
	light_attack = {
		[DamageTypes.ARMOR_PIERCING] = 2,
		[DamageTypes.CLEAVE] = 6,
		[DamageTypes.SPEED] = 2,
		[DamageTypes.STAGGER] = 3,
		[DamageTypes.DAMAGE] = 2
	},
	heavy_attack = {
		[DamageTypes.ARMOR_PIERCING] = 7,
		[DamageTypes.CLEAVE] = 0,
		[DamageTypes.SPEED] = 0,
		[DamageTypes.STAGGER] = 6,
		[DamageTypes.DAMAGE] = 7
	}
}
weapon_template.tooltip_keywords = {
	"weapon_keyword_wide_sweeps",
	"weapon_keyword_crowd_control",
	"weapon_keyword_heavy_charge"
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
	two_handed_picks_template_1 = table.clone(weapon_template)
}
