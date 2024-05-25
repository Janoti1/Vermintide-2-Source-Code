local time_mod = 0.9
local extra_range_add = 1.1
local weapon_template = {}
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
			kind = "melee_start",
			first_person_hit_anim = "shake_hit",
			no_damage_impact_sound_event = "blunt_hit_armour",
			use_precision_sweep = false,
			width_mod = 15,
			hit_effect = "melee_hit_hammers_2h",
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
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.4,
					end_time = 0.4,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.4,
					external_multiplier = 0.6,
					end_time = 0.6,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.6,
					external_multiplier = 0.4,
					end_time = 0.8,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.8,
					external_multiplier = 0.2,
					buff_name = "planted_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "attack_sweep",
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
			weapon_action_hand = "left",
			attack_hold_input = "action_one_hold",
			anim_end_event = "attack_finished",
			kind = "melee_start",
			first_person_hit_anim = "shake_hit",
			use_precision_sweep = false,
			width_mod = 15,
			hit_effect = "melee_hit_hammers_2h",
			additional_critical_strike_chance = 0.1,
			impact_sound_event = "axe_1h_hit",
			no_damage_impact_sound_event = "blunt_hit_armour",
			dedicated_target_range = 2,
			uninterruptible = true,
			anim_event = "attack_cleave_charge",
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			total_time = math.huge,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.4,
					end_time = 0.4,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.4,
					external_multiplier = 0.6,
					end_time = 0.6,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.6,
					external_multiplier = 0.4,
					end_time = 0.8,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.8,
					external_multiplier = 0.2,
					buff_name = "planted_decrease_movement"
				}
			},
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
		attack_sweep = {
			damage_window_start = 0.7,
			push_radius = 2,
			anim_end_event = "attack_finished",
			outer_push_angle = 180,
			kind = "sweep",
			first_person_hit_anim = "shake_hit",
			additional_critical_strike_chance = 0.1,
			use_precision_sweep = false,
			width_mod = 15,
			damage_profile = "bile_troll_sweep",
			range_mod = 1.65,
			push_angle = 100,
			hit_effect = "melee_hit_hammers_2h",
			weapon_action_hand = "left",
			damage_window_end = 1,
			impact_sound_event = "axe_boss_1h_hit",
			charge_value = "action_push",
			no_damage_impact_sound_event = "blunt_hit_armour",
			dedicated_target_range = 2,
			uninterruptible = true,
			anim_event = "attack_sweep",
			total_time = 2,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			knockback_data = knockback_tables.frenzy,
			buff_data = {
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
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.7,
					external_multiplier = 1,
					end_time = 1,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 1,
					external_multiplier = 0.4,
					end_time = 1.2,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 1.2,
					external_multiplier = 0.6,
					buff_name = "planted_decrease_movement"
				}
			},
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
			}
		},
		attack_shove = {
			damage_window_start = 0.8,
			push_radius = 2,
			outer_push_angle = 180,
			kind = "sweep",
			first_person_hit_anim = "shake_hit",
			weapon_action_hand = "right",
			width_mod = 15,
			damage_profile = "bile_troll_shove",
			range_mod = 1.65,
			push_angle = 100,
			hit_effect = "melee_hit_hammers_2h",
			no_damage_impact_sound_event = "blunt_hit_armour",
			damage_window_end = 1,
			impact_sound_event = "axe_boss_1h_hit",
			use_precision_sweep = false,
			anim_end_event = "attack_finished",
			damage_profile_outer = "light_push",
			aim_assist_max_ramp_multiplier = 0.8,
			aim_assist_ramp_decay_delay = 0,
			dedicated_target_range = 2,
			aim_assist_ramp_multiplier = 0.4,
			anim_event = "attack_shove",
			damage_profile_inner = "medium_push",
			total_time = 2,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			knockback_data = knockback_tables.frenzy,
			anim_time_scale = time_mod * 1.15,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.4,
					end_time = 0.4,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.4,
					external_multiplier = 0.6,
					end_time = 0.8,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.8,
					external_multiplier = 1,
					end_time = 1,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 1,
					external_multiplier = 0.4,
					end_time = 1.2,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 1.1,
					external_multiplier = 1,
					buff_name = "planted_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 1.1,
					action = "action_one",
					end_time = 1.5,
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.5,
					action = "action_one",
					input = "action_one"
				}
			}
		},
		attack_cleave = {
			damage_window_start = 0.55,
			anim_end_event = "attack_finished",
			weapon_action_hand = "left",
			kind = "sweep",
			first_person_hit_anim = "shake_hit",
			width_mod = 80,
			hit_effect = "melee_hit_hammers_2h",
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
			anim_time_scale = time_mod * 1.15,
			range_mod = extra_range_add * 1.65,
			knockback_data = knockback_tables.scrambler,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.6,
					end_time = 0.1,
					buff_name = "planted_decrease_movement"
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
					external_multiplier = 1,
					buff_name = "planted_decrease_movement"
				}
			},
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
					-0.1536102294921875,
					1.643341064453125,
					0.7494316101074219,
					-0.23717419803142548,
					-0.04622035101056099,
					0.14962515234947205,
					-0.9587618708610535
				},
				{
					0.5700000000000001,
					-0.0778961181640625,
					2.0237579345703125,
					-0.045810699462890625,
					0.10818789899349213,
					0.023066170513629913,
					0.16852709650993347,
					-0.9794702529907227
				},
				{
					0.6233333333333334,
					-0.0716400146484375,
					1.98638916015625,
					-1.1687583923339844,
					0.7331029772758484,
					0.046333443373441696,
					0.11352293193340302,
					-0.6689736843109131
				},
				{
					0.6766666666666667,
					-0.115325927734375,
					1.4398651123046875,
					-1.9270439147949219,
					0.8773243427276611,
					-0.009146680124104023,
					0.0326307937502861,
					-0.4786999225616455
				},
				{
					0.73,
					-0.1158599853515625,
					1.43597412109375,
					-1.9342727661132812,
					0.8785064220428467,
					-0.008208956569433212,
					0.03216206282377243,
					-0.4765760600566864
				},
				{
					0.7833333333333333,
					-0.1156768798828125,
					1.4333953857421875,
					-1.937469482421875,
					0.8808884620666504,
					-0.006122275721281767,
					0.03211608901619911,
					-0.4721933901309967
				}
			}
		}
	},
	action_inspect = ActionTemplates.action_inspect,
	action_wield = ActionTemplates.wield
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
