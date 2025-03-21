local push_radius = 2.5
local time_mod = 0.8
local weapon_template = {}

weapon_template.actions = {
	action_one = {
		default = {
			kind = "melee_start",
			anim_end_event = "attack_finished",
			anim_event = "attack_swing_charge_right",
			attack_hold_input = "action_one_hold",
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			total_time = math.huge,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.2,
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
		default_right = {
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
					external_multiplier = 0.2,
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
					sub_action = "heavy_attack_left",
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
					start_time = 0.3,
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
		default_last = {
			kind = "melee_start",
			anim_end_event = "attack_finished",
			anim_event = "attack_swing_charge_right",
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			total_time = math.huge,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.2,
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
		heavy_attack_stab = {
			damage_window_start = 0.12,
			push_radius = 3,
			kind = "sweep",
			range_mod = 1.4,
			range_mod_add = 0.45,
			sweep_z_offset = 0.15,
			width_mod = 20,
			no_damage_impact_sound_event = "blunt_hit_armour",
			additional_critical_strike_chance = 0,
			hit_effect = "melee_hit_axes_2h",
			use_precision_sweep = true,
			damage_profile = "heavy_slashing_smiter_stab_polearm",
			damage_window_end = 0.27,
			impact_sound_event = "axe_1h_hit",
			anim_end_event = "attack_finished",
			dedicated_target_range = 3,
			uninterruptible = true,
			anim_event = "attack_swing_heavy_right",
			height_mod = 5,
			total_time = 2.25,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			anim_time_scale = time_mod * 1.3,
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
					sub_action = "default_right",
					start_time = 0.5,
					action = "action_one",
					release_required = "action_one_hold",
					doubleclick_window = 0,
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 0.5,
					action = "action_one",
					release_required = "action_one_hold",
					doubleclick_window = 0,
					input = "action_one_hold"
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
					start_time = 0.45,
					action = "action_wield",
					input = "action_wield"
				}
			},
			enter_function = function (attacker_unit, input_extension)
				return input_extension:reset_release_input()
			end,
			critical_strike = {},
			baked_sweep = {
				{
					0.08666666666666667,
					-0.16248130798339844,
					-0.5547466278076172,
					-0.42128002643585205,
					0.5912480354309082,
					-0.14686381816864014,
					-0.030139734968543053,
					-0.7924319505691528
				},
				{
					0.12277777777777779,
					-0.07331085205078125,
					-0.6581668853759766,
					-0.37710607051849365,
					0.6448572278022766,
					-0.06067055091261864,
					-0.02842157706618309,
					-0.7613609433174133
				},
				{
					0.1588888888888889,
					-0.017017364501953125,
					0.12424850463867188,
					-0.28965115547180176,
					0.6336323022842407,
					-0.030197039246559143,
					-0.02297966741025448,
					-0.7727031707763672
				},
				{
					0.195,
					-0.0019807815551757812,
					0.6494560241699219,
					-0.22795599699020386,
					0.6305875778198242,
					-0.008614501915872097,
					-0.012665213085711002,
					-0.7759669423103333
				},
				{
					0.23111111111111113,
					-0.009236335754394531,
					1.1268281936645508,
					-0.15154623985290527,
					0.6366260051727295,
					-0.007422684691846371,
					-0.00881501566618681,
					-0.7710866332054138
				},
				{
					0.26722222222222225,
					-0.003924369812011719,
					1.3740525245666504,
					-0.13990414142608643,
					0.6530668139457703,
					-0.006650453899055719,
					-0.00622028112411499,
					-0.7572455406188965
				},
				{
					0.30333333333333334,
					-8.869171142578125e-05,
					1.3459067344665527,
					-0.19730734825134277,
					0.6802932024002075,
					-0.0064688632264733315,
					-0.004949575290083885,
					-0.7328948378562927
				}
			}
		},
		heavy_attack_left = {
			damage_window_start = 0.18,
			push_radius = 3,
			kind = "sweep",
			first_person_hit_anim = "hit_left_shake",
			sweep_z_offset = 0.5,
			width_mod = 35,
			range_mod = 1.4,
			hit_stop_anim = "attack_hit",
			no_damage_impact_sound_event = "blunt_hit_armour",
			hit_effect = "melee_hit_axes_2h",
			additional_critical_strike_chance = 0,
			use_precision_sweep = false,
			damage_window_end = 0.35,
			impact_sound_event = "axe_1h_hit",
			slide_armour_hit = true,
			anim_end_event = "attack_finished",
			damage_profile = "heavy_slashing_linesman_polearm",
			dedicated_target_range = 3,
			weapon_up_offset_mod = 0.45,
			uninterruptible = true,
			anim_event = "attack_swing_heavy",
			height_mod = 5,
			total_time = 2.25,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			anim_time_scale = time_mod * 1.1,
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
					sub_action = "default",
					start_time = 0.6,
					action = "action_one",
					release_required = "action_one_hold",
					doubleclick_window = 0,
					input = "action_one"
				},
				{
					sub_action = "default",
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
					start_time = 0.5,
					action = "action_wield",
					input = "action_wield"
				}
			},
			enter_function = function (attacker_unit, input_extension)
				return input_extension:reset_release_input()
			end,
			hit_mass_count = HEAVY_LINESMAN_HIT_MASS_COUNT,
			baked_sweep = {
				{
					0.14666666666666667,
					0.48798274993896484,
					0.3525524139404297,
					0.042327165603637695,
					-0.1426415741443634,
					-0.3575848639011383,
					0.001203650957904756,
					-0.9229220151901245
				},
				{
					0.18611111111111112,
					0.3366079330444336,
					0.6562848091125488,
					-0.04301011562347412,
					0.15207144618034363,
					-0.432981014251709,
					-0.13774792850017548,
					-0.8777398467063904
				},
				{
					0.22555555555555556,
					-0.12134456634521484,
					0.7726740837097168,
					-0.23418211936950684,
					0.5535309314727783,
					-0.2870331108570099,
					-0.4041760563850403,
					-0.6692213416099548
				},
				{
					0.265,
					-0.3407878875732422,
					0.23702430725097656,
					-0.4334098696708679,
					0.7353349328041077,
					0.08447015285491943,
					-0.45501112937927246,
					-0.4950881004333496
				},
				{
					0.3044444444444444,
					-0.3479747772216797,
					0.026262760162353516,
					-0.5643377304077148,
					0.7678595185279846,
					0.3332586884498596,
					-0.3502013683319092,
					-0.42034444212913513
				},
				{
					0.3438888888888889,
					-0.3204326629638672,
					0.003429889678955078,
					-0.6061773896217346,
					0.7783757448196411,
					0.3626171052455902,
					-0.286325067281723,
					-0.42503878474235535
				},
				{
					0.3833333333333333,
					-0.2911539077758789,
					0.021488666534423828,
					-0.6271014213562012,
					0.7930185198783875,
					0.3177940249443054,
					-0.22387579083442688,
					-0.4690503776073456
				}
			}
		},
		light_attack_left = {
			damage_window_start = 0.3,
			range_mod = 1.2,
			kind = "sweep",
			first_person_hit_anim = "attack_hit",
			no_damage_impact_sound_event = "blunt_hit_armour",
			sweep_z_offset = 0.4,
			width_mod = 25,
			additional_critical_strike_chance = 0,
			use_precision_sweep = false,
			hit_effect = "melee_hit_axes_2h",
			damage_profile = "medium_slashing_axe_linesman",
			aim_assist_ramp_multiplier = 0.5,
			damage_window_end = 0.45,
			impact_sound_event = "axe_1h_hit",
			aim_assist_max_ramp_multiplier = 0.8,
			anim_end_event = "attack_finished",
			aim_assist_ramp_decay_delay = 0.1,
			dedicated_target_range = 2,
			weapon_up_offset_mod = 0.45,
			uninterruptible = true,
			anim_event = "attack_swing_down_left",
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
					external_multiplier = 0.5,
					end_time = 0.7,
					buff_name = "planted_fast_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default_right",
					start_time = 0.65,
					action = "action_one",
					release_required = "action_one_hold",
					end_time = 1.4,
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 0.65,
					action = "action_one",
					release_required = "action_one_hold",
					end_time = 1.4,
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.4,
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
					start_time = 0,
					action = "action_two",
					end_time = 0.2,
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
					0.5117902755737305,
					0.21556615829467773,
					0.20503437519073486,
					-0.1855260580778122,
					-0.3073336184024811,
					0.0748995989561081,
					-0.9303312301635742
				},
				{
					0.30277777777777776,
					0.5691328048706055,
					0.2164325714111328,
					0.19821512699127197,
					-0.16076113283634186,
					-0.35259395837783813,
					0.08294250071048737,
					-0.9181252121925354
				},
				{
					0.3388888888888889,
					0.5978765487670898,
					0.2818105220794678,
					0.1992354393005371,
					-0.16316238045692444,
					-0.38318002223968506,
					0.08934666961431503,
					-0.9047476649284363
				},
				{
					0.375,
					0.07367897033691406,
					0.8403992652893066,
					-0.16334593296051025,
					0.4744294583797455,
					-0.3245948851108551,
					-0.31626299023628235,
					-0.7546738386154175
				},
				{
					0.4111111111111111,
					-0.40804576873779297,
					0.4051307439804077,
					-0.40495139360427856,
					0.7458152174949646,
					-0.1932816356420517,
					-0.5648791790008545,
					-0.29548853635787964
				},
				{
					0.44722222222222224,
					-0.5223150253295898,
					0.26934337615966797,
					-0.4793010950088501,
					0.7462828755378723,
					-0.03665129840373993,
					-0.5843856334686279,
					-0.31656283140182495
				},
				{
					0.48333333333333334,
					-0.6035833358764648,
					0.23621463775634766,
					-0.5212215185165405,
					0.721291720867157,
					0.04449014738202095,
					-0.590069591999054,
					-0.35996782779693604
				}
			}
		},
		light_attack_down = {
			damage_window_start = 0.33,
			kind = "sweep",
			first_person_hit_anim = "attack_hit",
			range_mod = 1.15,
			sweep_z_offset = 0.2,
			width_mod = 25,
			no_damage_impact_sound_event = "blunt_hit_armour",
			additional_critical_strike_chance = 0,
			use_precision_sweep = true,
			hit_effect = "melee_hit_axes_2h",
			damage_profile = "medium_slashing_smiter_2h",
			aim_assist_ramp_multiplier = 0.5,
			damage_window_end = 0.4,
			impact_sound_event = "axe_1h_hit",
			aim_assist_max_ramp_multiplier = 0.8,
			anim_end_event = "attack_finished",
			aim_assist_ramp_decay_delay = 0.1,
			dedicated_target_range = 2,
			weapon_up_offset_mod = 0.45,
			uninterruptible = true,
			anim_event = "attack_swing_down_right",
			total_time = 2.5,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			anim_time_scale = time_mod * 1,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.2,
					end_time = 0.3,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.3,
					external_multiplier = 0.5,
					end_time = 0.7,
					buff_name = "planted_fast_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default_last",
					start_time = 0.5,
					action = "action_one",
					release_required = "action_two_hold",
					end_time = 0.6,
					input = "action_one"
				},
				{
					sub_action = "default_last",
					start_time = 0.5,
					action = "action_one",
					release_required = "action_two_hold",
					end_time = 0.6,
					input = "action_one_hold"
				},
				{
					sub_action = "default_right",
					start_time = 0.6,
					action = "action_one",
					release_required = "action_two_hold",
					end_time = 1.8,
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 0.6,
					action = "action_one",
					release_required = "action_two_hold",
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
				}
			},
			enter_function = function (attacker_unit, input_extension)
				return input_extension:reset_release_input()
			end,
			baked_sweep = {
				{
					0.2966666666666667,
					0.1741771697998047,
					0.09720826148986816,
					0.1909540891647339,
					-0.46420493721961975,
					-0.03997349366545677,
					-0.10726000368595123,
					-0.8783001899719238
				},
				{
					0.3194444444444445,
					0.1612548828125,
					0.23146438598632812,
					0.2549184560775757,
					-0.24961911141872406,
					-0.07168136537075043,
					-0.10742717981338501,
					-0.959693431854248
				},
				{
					0.34222222222222226,
					0.13608646392822266,
					0.5274394750595093,
					0.21119892597198486,
					0.11195724457502365,
					-0.11613636463880539,
					-0.0968911424279213,
					-0.9821354746818542
				},
				{
					0.365,
					0.03143310546875,
					0.858664870262146,
					-0.1374976634979248,
					0.5534913539886475,
					-0.11489960551261902,
					-0.09040247648954391,
					-0.8199224472045898
				},
				{
					0.3877777777777778,
					-0.03824329376220703,
					0.8807605504989624,
					-0.5097078084945679,
					0.8007069826126099,
					-0.09992720186710358,
					-0.06622716039419174,
					-0.5869385600090027
				},
				{
					0.41055555555555556,
					-0.04768085479736328,
					0.8363674879074097,
					-0.6173691749572754,
					0.8712840676307678,
					-0.09366055577993393,
					-0.060778990387916565,
					-0.47790971398353577
				},
				{
					0.43333333333333335,
					-0.03940582275390625,
					0.8492562770843506,
					-0.5936340689659119,
					0.8532779216766357,
					-0.08616255223751068,
					-0.07026199251413345,
					-0.5094663500785828
				}
			}
		},
		light_attack_stab = {
			damage_window_start = 0.2,
			range_mod = 1.2,
			kind = "sweep",
			no_damage_impact_sound_event = "blunt_hit_armour",
			additional_critical_strike_chance = 0,
			sweep_z_offset = 0.15,
			width_mod = 25,
			use_precision_sweep = true,
			damage_profile = "medium_slashing_smiter_stab",
			aim_assist_ramp_multiplier = 0.5,
			hit_effect = "melee_hit_axes_2h",
			aim_assist_max_ramp_multiplier = 0.8,
			aim_assist_ramp_decay_delay = 0.1,
			damage_window_end = 0.3,
			impact_sound_event = "axe_1h_hit",
			anim_end_event = "attack_finished",
			dedicated_target_range = 2,
			range_mod_add = 0.45,
			uninterruptible = true,
			anim_event = "attack_swing_right",
			height_mod = 5,
			total_time = 2.5,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			anim_time_scale = time_mod * 1.15,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.5,
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
					sub_action = "default_last",
					start_time = 0.5,
					action = "action_one",
					release_required = "action_one_hold",
					end_time = 1,
					input = "action_one"
				},
				{
					sub_action = "default_last",
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
					start_time = 0.45,
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
			baked_sweep = {
				{
					0.16666666666666669,
					0.017722129821777344,
					-0.42114758491516113,
					-0.43412917852401733,
					0.6869368553161621,
					0.021293317899107933,
					0.015340419486165047,
					-0.7262431383132935
				},
				{
					0.19444444444444445,
					0.009822845458984375,
					0.11080360412597656,
					-0.33424150943756104,
					0.6798617839813232,
					-0.031221523880958557,
					-0.024228112772107124,
					-0.7322747111320496
				},
				{
					0.22222222222222224,
					0.02475738525390625,
					0.6381387710571289,
					-0.23926210403442383,
					0.6725583672523499,
					-0.10867324471473694,
					-0.08088319003582001,
					-0.7275392413139343
				},
				{
					0.25,
					0.040157318115234375,
					0.9676841497421265,
					-0.14778947830200195,
					0.6395993828773499,
					-0.18191412091255188,
					-0.15272144973278046,
					-0.7310923933982849
				},
				{
					0.2777777777777778,
					0.025653839111328125,
					1.0416704416275024,
					-0.12779641151428223,
					0.6312280893325806,
					-0.19906297326087952,
					-0.19278810918331146,
					-0.7244017124176025
				},
				{
					0.3055555555555556,
					0.027342796325683594,
					1.038071870803833,
					-0.12190306186676025,
					0.6286130547523499,
					-0.1945071965456009,
					-0.19020041823387146,
					-0.7285851836204529
				},
				{
					0.3333333333333333,
					0.031952857971191406,
					0.9966871738433838,
					-0.11631476879119873,
					0.6110472083091736,
					-0.2059563547372818,
					-0.2039644867181778,
					-0.7366151809692383
				}
			}
		},
		light_attack_last = {
			damage_window_start = 0.33,
			range_mod = 1.2,
			kind = "sweep",
			no_damage_impact_sound_event = "blunt_hit_armour",
			additional_critical_strike_chance = 0,
			sweep_z_offset = 0.15,
			width_mod = 25,
			use_precision_sweep = true,
			damage_profile = "medium_slashing_smiter_2h",
			aim_assist_ramp_multiplier = 0.5,
			hit_effect = "melee_hit_axes_2h",
			aim_assist_max_ramp_multiplier = 0.8,
			aim_assist_ramp_decay_delay = 0.1,
			damage_window_end = 0.4,
			impact_sound_event = "axe_1h_hit",
			anim_end_event = "attack_finished",
			dedicated_target_range = 2,
			weapon_up_offset_mod = 0.45,
			uninterruptible = true,
			anim_event = "attack_swing_down_right",
			height_mod = 5,
			total_time = 2.5,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			anim_time_scale = time_mod * 1,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.5,
					end_time = 0.3,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.3,
					external_multiplier = 1.25,
					end_time = 0.5,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.5,
					external_multiplier = 0.75,
					end_time = 0.7,
					buff_name = "planted_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.5,
					action = "action_one",
					end_time = 1,
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.5,
					action = "action_one",
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
				}
			},
			baked_sweep = {
				{
					0.2966666666666667,
					0.17511844635009766,
					0.08681964874267578,
					0.18199431896209717,
					-0.4844273626804352,
					-0.03621358051896095,
					-0.10727875679731369,
					-0.8674733638763428
				},
				{
					0.3194444444444445,
					0.16299819946289062,
					0.2079906463623047,
					0.2488079071044922,
					-0.2820248305797577,
					-0.0670715793967247,
					-0.10794957727193832,
					-0.9509523510932922
				},
				{
					0.34222222222222226,
					0.13655853271484375,
					0.5244169235229492,
					0.2126312255859375,
					0.10838768631219864,
					-0.11589880287647247,
					-0.09696763753890991,
					-0.9825562834739685
				},
				{
					0.365,
					0.03283405303955078,
					0.856358528137207,
					-0.1316584348678589,
					0.5487604141235352,
					-0.11506916582584381,
					-0.09061621129512787,
					-0.8230491280555725
				},
				{
					0.3877777777777778,
					-0.037326812744140625,
					0.8823199272155762,
					-0.5033676028251648,
					0.7968660593032837,
					-0.10039235651493073,
					-0.06674598157405853,
					-0.5920059084892273
				},
				{
					0.41055555555555556,
					-0.047733306884765625,
					0.8375816345214844,
					-0.6155116558074951,
					0.8701741695404053,
					-0.09369933605194092,
					-0.06074843928217888,
					-0.47992396354675293
				},
				{
					0.43333333333333335,
					-0.038898468017578125,
					0.850189208984375,
					-0.5915632843971252,
					0.8518420457839966,
					-0.08584310859441757,
					-0.07071943581104279,
					-0.511854350566864
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
			impact_sound_event = "axe_1h_hit",
			charge_value = "action_push",
			no_damage_impact_sound_event = "blunt_hit_armour",
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
					sub_action = "light_attack_down",
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
weapon_template.right_hand_attachment_node_linking = AttachmentNodeLinking.polearm
weapon_template.display_unit = "units/weapons/weapon_display/display_2h_halberds"
weapon_template.wield_anim = "to_polearm"
weapon_template.state_machine = "units/beings/player/first_person_base/state_machines/melee/polearm"
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
		[DamageTypes.ARMOR_PIERCING] = 4,
		[DamageTypes.CLEAVE] = 2,
		[DamageTypes.SPEED] = 2,
		[DamageTypes.STAGGER] = 2,
		[DamageTypes.DAMAGE] = 5
	},
	heavy_attack = {
		[DamageTypes.ARMOR_PIERCING] = 4,
		[DamageTypes.CLEAVE] = 4,
		[DamageTypes.SPEED] = 3,
		[DamageTypes.STAGGER] = 2,
		[DamageTypes.DAMAGE] = 4
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
weapon_template.wwise_dep_right_hand = {
	"wwise/two_handed_axes"
}

return {
	two_handed_halberds_template_1 = table.clone(weapon_template)
}
