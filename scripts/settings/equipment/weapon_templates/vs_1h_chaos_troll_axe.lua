local time_mod = 0.9
local extra_range_add = 1.1
local weapon_template = {}
local planted_decrease_movement_settings = {
	charge = {
		{
			start_time = 0,
			external_multiplier = 0.2,
			buff_name = "planted_charging_decrease_movement"
		}
	},
	light_attack_1 = {
		{
			start_time = 0,
			external_multiplier = 1.4,
			end_time = 0.35,
			buff_name = "planted_decrease_movement"
		},
		{
			start_time = 0.35,
			external_multiplier = 0.6,
			end_time = 0.7,
			buff_name = "planted_fast_decrease_movement"
		},
		{
			start_time = 0.7,
			external_multiplier = 1,
			end_time = 1,
			buff_name = "planted_fast_decrease_movement"
		},
		{
			start_time = 1,
			buff_name = "planted_return_to_normal_walk_movement"
		}
	},
	light_attack_2 = {
		{
			start_time = 0,
			external_multiplier = 1.4,
			end_time = 0.35,
			buff_name = "planted_decrease_movement"
		},
		{
			start_time = 0.35,
			external_multiplier = 0.6,
			end_time = 0.7,
			buff_name = "planted_fast_decrease_movement"
		},
		{
			start_time = 0.7,
			external_multiplier = 1,
			end_time = 1,
			buff_name = "planted_fast_decrease_movement"
		},
		{
			start_time = 1,
			buff_name = "planted_return_to_normal_walk_movement"
		}
	},
	heavy_attack = {
		{
			start_time = 0,
			external_multiplier = 0.6,
			end_time = 0.1,
			buff_name = "planted_fast_decrease_movement"
		},
		{
			start_time = 0.1,
			external_multiplier = 1.2,
			end_time = 0.7,
			buff_name = "planted_decrease_movement"
		},
		{
			start_time = 0.7,
			external_multiplier = 0.1,
			end_time = 1,
			buff_name = "planted_decrease_movement"
		},
		{
			start_time = 1.1,
			buff_name = "planted_return_to_normal_walk_movement"
		},
		{
			start_time = 0,
			external_value = 0.1,
			end_time = 0.7,
			buff_name = "set_rotation_limit"
		},
		{
			start_time = 0,
			external_multiplier = 0.5,
			end_time = 0.1,
			buff_name = "planted_decrease_rotation_speed"
		},
		{
			start_time = 0.1,
			external_multiplier = 0.5,
			end_time = 0.7,
			buff_name = "planted_decrease_rotation_speed"
		},
		{
			start_time = 0.7,
			external_multiplier = 0.75,
			end_time = 1,
			buff_name = "planted_decrease_rotation_speed"
		}
	}
}
local knockback_tables = {
	frenzy = {
		player_catapult_speed_blocked = 12,
		player_knockback_speed_blocked = 12,
		player_knockback_speed = 10,
		player_catapult_speed_blocked_z = 6,
		player_catapult_speed_z = 6,
		catapult = false,
		player_catapult_speed = 12,
		catapult_players = false
	},
	scrambler = {
		player_catapult_speed_blocked = 12,
		player_knockback_speed_blocked = 12,
		player_knockback_speed = 10,
		player_catapult_speed_blocked_z = 6,
		player_catapult_speed_z = 6,
		catapult = true,
		player_catapult_speed = 12,
		catapult_players = true
	}
}

weapon_template.actions = {
	action_one = {
		default = {
			attack_hold_input = "action_one_hold",
			anim_end_event = "attack_finished",
			disallow_ghost_mode = true,
			kind = "melee_start",
			first_person_hit_anim = "shake_hit",
			no_damage_impact_sound_event = "blunt_hit_armour",
			width_mod = 15,
			use_precision_sweep = false,
			hit_effect = "vs_chaos_troll_axe_light",
			additional_critical_strike_chance = 0.1,
			impact_sound_event = "axe_boss_1h_hit",
			weapon_action_hand = "left",
			dedicated_target_range = 2,
			uninterruptible = true,
			anim_event = "attack_cleave_charge",
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			condition_func = function (action_user, input_extension, ammo_extension, current_action_extension)
				local ghost_mode_extenstion = ScriptUnit.has_extension(action_user, "ghost_mode_system")
				local is_in_ghost_mode = ghost_mode_extenstion:is_in_ghost_mode()

				return not is_in_ghost_mode
			end,
			total_time = math.huge,
			buff_data = planted_decrease_movement_settings.charge,
			allowed_chain_actions = {
				{
					sub_action = "attack_sweep_1",
					start_time = 0,
					action = "action_one",
					end_time = 0.4,
					input = "action_one_release"
				},
				{
					sub_action = "attack_cleave",
					start_time = 1.2,
					action = "action_one",
					input = "action_one_release"
				},
				{
					start_time = 0.6,
					blocker = true,
					end_time = 1.5,
					input = "action_one_hold"
				},
				{
					sub_action = "attack_cleave",
					start_time = 1,
					action = "action_one",
					auto_chain = true
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				}
			}
		},
		default_2 = {
			attack_hold_input = "action_one_hold",
			anim_end_event = "attack_finished",
			disallow_ghost_mode = true,
			kind = "melee_start",
			first_person_hit_anim = "shake_hit",
			no_damage_impact_sound_event = "blunt_hit_armour",
			use_precision_sweep = false,
			width_mod = 15,
			hit_effect = "vs_chaos_troll_axe_light",
			additional_critical_strike_chance = 0.1,
			impact_sound_event = "axe_1h_hit",
			weapon_action_hand = "left",
			dedicated_target_range = 2,
			uninterruptible = true,
			anim_event = "attack_cleave_charge",
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			total_time = math.huge,
			buff_data = planted_decrease_movement_settings.charge,
			allowed_chain_actions = {
				{
					sub_action = "attack_shove",
					start_time = 0,
					action = "action_one",
					end_time = 0.4,
					input = "action_one_release"
				},
				{
					sub_action = "attack_cleave",
					start_time = 1.2,
					action = "action_one",
					input = "action_one_release"
				},
				{
					start_time = 0.6,
					blocker = true,
					end_time = 1.5,
					input = "action_one_hold"
				},
				{
					sub_action = "attack_cleave",
					start_time = 1,
					action = "action_one",
					auto_chain = true
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				}
			}
		},
		attack_sweep_1 = {
			damage_window_start = 0.7,
			push_radius = 2,
			anim_end_event = "attack_finished",
			outer_push_angle = 180,
			kind = "sweep",
			first_person_hit_anim = "shake_hit",
			range_mod = 1.65,
			additional_critical_strike_chance = 0.1,
			width_mod = 15,
			use_precision_sweep = false,
			damage_profile = "bile_troll_sweep",
			push_angle = 100,
			dedicated_target_range = 2,
			disallow_ghost_mode = true,
			damage_window_end = 1,
			impact_sound_event = "axe_boss_1h_hit",
			charge_value = "action_push",
			weapon_action_hand = "left",
			hit_effect = "vs_chaos_troll_axe_light",
			no_damage_impact_sound_event = "blunt_hit_armour",
			uninterruptible = true,
			anim_event = "attack_sweep",
			total_time = 2,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			knockback_data = knockback_tables.frenzy,
			buff_data = planted_decrease_movement_settings.light_attack_1,
			allowed_chain_actions = {
				{
					sub_action = "default_2",
					start_time = 1,
					action = "action_one",
					end_time = 1.4,
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.4,
					action = "action_one",
					input = "action_one"
				}
			},
			baked_sweep = {
				{
					0.6666666666666666,
					-1.8822613954544067,
					0.796661376953125,
					0.0894002914428711,
					-0.30667805671691895,
					0.5700103640556335,
					-0.14274714887142181,
					-0.7487723231315613
				},
				{
					0.7277777777777777,
					-1.5762981176376343,
					1.541478157043457,
					-0.177154541015625,
					-0.12248215079307556,
					0.6056259274482727,
					-0.09237565100193024,
					-0.7808215022087097
				},
				{
					0.7888888888888889,
					-0.6303645372390747,
					2.1546974182128906,
					-0.5011329650878906,
					0.18684490025043488,
					0.5346319079399109,
					0.181984543800354,
					-0.8038279414176941
				},
				{
					0.8500000000000001,
					0.8945959806442261,
					1.3095283508300781,
					-0.9961676597595215,
					0.7146442532539368,
					0.03703315928578377,
					0.6431474089622498,
					-0.2725316882133484
				},
				{
					0.9111111111111112,
					1.0260478258132935,
					0.8650217056274414,
					-0.984100341796875,
					0.6511678695678711,
					-0.20236849784851074,
					0.7225161790847778,
					0.11400776356458664
				},
				{
					0.9722222222222223,
					0.951396107673645,
					0.8575248718261719,
					-1.0453472137451172,
					0.6274577975273132,
					-0.2830889821052551,
					0.7048234343528748,
					0.1714099645614624
				},
				{
					1.0333333333333334,
					0.8000684976577759,
					0.8716201782226562,
					-1.1535282135009766,
					0.622302234172821,
					-0.37465962767601013,
					0.6637380123138428,
					0.17838723957538605
				}
			}
		},
		attack_shove = {
			damage_window_start = 0.8,
			push_radius = 2,
			weapon_action_hand = "right",
			outer_push_angle = 180,
			kind = "sweep",
			first_person_hit_anim = "shake_hit",
			disallow_ghost_mode = true,
			range_mod = 1.65,
			width_mod = 15,
			damage_profile = "bile_troll_shove",
			dedicated_target_range = 2,
			push_angle = 100,
			anim_end_event = "attack_finished",
			hit_effect = "vs_chaos_troll_axe_light",
			damage_window_end = 1,
			impact_sound_event = "axe_boss_1h_hit",
			no_damage_impact_sound_event = "blunt_hit_armour",
			use_precision_sweep = false,
			damage_profile_outer = "light_push",
			aim_assist_ramp_multiplier = 0.4,
			aim_assist_max_ramp_multiplier = 0.8,
			aim_assist_ramp_decay_delay = 0,
			uninterruptible = true,
			anim_event = "attack_shove",
			damage_profile_inner = "medium_push",
			total_time = 2.4,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			knockback_data = knockback_tables.frenzy,
			buff_data = planted_decrease_movement_settings.light_attack_2,
			allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 1.5,
					action = "action_one",
					input = "action_one_hold"
				}
			},
			baked_sweep = {
				{
					0.7666666666666667,
					1.6097170114517212,
					1.0190935134887695,
					0.0203857421875,
					0.5730674862861633,
					-0.4969837963581085,
					0.6331182718276978,
					0.15414947271347046
				},
				{
					0.8111111111111111,
					0.7924798727035522,
					1.718663215637207,
					-0.2005748748779297,
					0.6398744583129883,
					-0.2894008755683899,
					0.7036861181259155,
					0.10785940289497375
				},
				{
					0.8555555555555556,
					-0.4243704080581665,
					1.5426273345947266,
					-0.5211310386657715,
					0.6988599896430969,
					0.20150567591190338,
					0.6636978387832642,
					-0.17462940514087677
				},
				{
					0.9000000000000001,
					-0.7324806451797485,
					0.7073020935058594,
					-0.8642969131469727,
					0.4898502826690674,
					0.5412645936012268,
					0.432486355304718,
					-0.5291832685470581
				},
				{
					0.9444444444444445,
					-0.7071446180343628,
					0.2593860626220703,
					-1.0028276443481445,
					0.29752016067504883,
					0.5585655570030212,
					0.26563671231269836,
					-0.7272711992263794
				},
				{
					0.9888888888888889,
					-0.6294697523117065,
					0.2662057876586914,
					-1.0348305702209473,
					0.2048543095588684,
					0.56864333152771,
					0.23652423918247223,
					-0.7607468366622925
				},
				{
					1.0333333333333334,
					-0.49745380878448486,
					0.2584104537963867,
					-1.06121826171875,
					0.15217585861682892,
					0.569015622138977,
					0.2608894109725952,
					-0.7648532390594482
				}
			}
		},
		attack_cleave = {
			damage_window_start = 0.55,
			disallow_ghost_mode = true,
			anim_end_event = "attack_finished",
			weapon_action_hand = "left",
			kind = "sweep",
			first_person_hit_anim = "shake_hit",
			width_mod = 80,
			hit_effect = "vs_chaos_troll_axe_heavy",
			no_damage_impact_sound_event = "blunt_hit_armour",
			additional_critical_strike_chance = 0.1,
			use_precision_sweep = false,
			damage_window_end = 0.7,
			impact_sound_event = "axe_boss_1h_hit",
			charge_value = "heavy_attack",
			damage_profile = "bile_troll_smiter",
			dedicated_target_range = 2,
			uninterruptible = true,
			anim_event = "attack_cleave",
			hit_stop_anim = "attack_hit",
			total_time = 2.57,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			range_mod = extra_range_add * 1.65,
			knockback_data = knockback_tables.scrambler,
			buff_data = planted_decrease_movement_settings.heavy_attack,
			allowed_chain_actions = {
				{
					sub_action = "default_2",
					start_time = 1.1,
					action = "action_one",
					release_required = "action_one_hold",
					end_time = 1.6,
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.6,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one_hold"
				}
			},
			enter_function = function (attacker_unit, input_extension)
				return input_extension:reset_release_input()
			end,
			baked_sweep = {
				{
					0.5166666666666667,
					-0.15640020370483398,
					1.6442947387695312,
					0.750561535358429,
					-0.23560209572315216,
					-0.04507074132561684,
					0.14998164772987366,
					-0.9591485261917114
				},
				{
					0.5527777777777778,
					-0.1056976318359375,
					1.9147758483886719,
					0.2601352334022522,
					-0.0607617162168026,
					0.0019730490166693926,
					0.16734115779399872,
					-0.9840229153633118
				},
				{
					0.5888888888888889,
					-0.06095409393310547,
					2.088555335998535,
					-0.43685537576675415,
					0.3576428294181824,
					0.046921469271183014,
					0.16050530970096588,
					-0.9187644124031067
				},
				{
					0.625,
					-0.07465171813964844,
					1.9756250381469727,
					-1.1949501037597656,
					0.7413992881774902,
					0.048103440552949905,
					0.11233433336019516,
					-0.6598440408706665
				},
				{
					0.6611111111111111,
					-0.11463689804077148,
					1.4918384552001953,
					-1.87559175491333,
					0.8720512986183167,
					-0.0008176990086212754,
					0.03960825130343437,
					-0.4878084361553192
				},
				{
					0.6972222222222222,
					-0.11756229400634766,
					1.4331035614013672,
					-1.9364807605743408,
					0.8792293667793274,
					-0.006272650323808193,
					0.03244076669216156,
					-0.4752514958381653
				},
				{
					0.7333333333333333,
					-0.11729145050048828,
					1.4334354400634766,
					-1.9373290538787842,
					0.8799604177474976,
					-0.005266580265015364,
					0.032662246376276016,
					-0.47389358282089233
				}
			}
		}
	},
	action_inspect = ActionTemplates.action_inspect,
	action_wield = ActionTemplates.wield
}
weapon_template.weapon_sway_settings = {
	camera_look_sensitivity = 1,
	sway_range = 1,
	recetner_dampening = 1,
	look_sensitivity = 0.5,
	recenter_max_vel = 5,
	recenter_acc = 5,
	lerp_speed = math.huge
}
weapon_template.left_hand_unit = "units/weapons/player/dark_pact/wpn_chaos_troll/wpn_chaos_troll_01"
weapon_template.left_hand_attachment_node_linking = AttachmentNodeLinking.vs_chaos_troll_axe.left
weapon_template.right_hand_unit = "units/weapons/player/wpn_invisible_weapon"
weapon_template.right_hand_attachment_node_linking = AttachmentNodeLinking.vs_chaos_troll_axe.right
weapon_template.display_unit = "units/weapons/weapon_display/display_1h_axes"
weapon_template.wield_anim = "to_1h_axe"
weapon_template.buff_type = "MELEE_1H"
weapon_template.weapon_type = "AXE_1H"
weapon_template.max_fatigue_points = 6
weapon_template.buffs = {}
weapon_template.attack_meta_data = {
	tap_attack = {
		penetrating = true,
		arc = 0
	},
	hold_attack = {
		penetrating = true,
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
	}
}
weapon_template.wwise_dep_right_hand = {
	"wwise/one_handed_axes"
}

return {
	vs_chaos_troll_axe = weapon_template
}
