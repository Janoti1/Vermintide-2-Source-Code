local weapon_template = {}

weapon_template.actions = {
	action_one = {
		default = {
			particle_effect_flames = "fx/wpnfx_flamethrower_1p_01",
			fire_stop_time = 0.55,
			is_spell = true,
			kind = "flamethrower",
			damage_profile = "flamethrower_spray",
			no_headshot_sound = true,
			overcharge_interval = 0.5,
			hit_effect = "flamethrower",
			particle_effect_flames_3p = "fx/wpnfx_flamethrower_01",
			damage_interval = 0.5,
			alert_sound_range_hit = 2,
			anim_time_scale = 1,
			minimum_hold_time = 2,
			fire_sound_event = "Play_player_combat_weapon_staff_flamethrower_shoot",
			overcharge_type = "spear_3",
			charge_value = "light_attack",
			anim_end_event = "attack_finished",
			fire_time = 0.3,
			dot_check = 0.97,
			stop_fire_event = "Stop_player_combat_weapon_staff_flamethrower_shoot",
			fire_sound_on_husk = true,
			area_damage = true,
			spray_range = 7,
			hold_input = "action_one_hold",
			anim_event = "attack_shoot_flamethrower",
			alert_sound_range_fire = 12,
			total_time = 1.3,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.5,
					end_time = 0.25,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.25,
					external_multiplier = 1,
					buff_name = "planted_charging_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.75,
					action = "action_wield",
					input = "action_wield"
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.75,
					action = "action_two",
					input = "action_two"
				},
				{
					sub_action = "default",
					start_time = 0.75,
					action = "weapon_reload",
					input = "weapon_reload"
				}
			},
			enter_function = function (attacker_unit, input_extension)
				input_extension:clear_input_buffer()

				return input_extension:reset_release_input()
			end
		},
		shoot_charged = {
			damage_window_start = 0.1,
			anim_end_event = "attack_finished",
			is_spell = true,
			damage_profile = "flamethrower",
			kind = "flamethrower",
			initial_damage_profile = "flamethrower_initial",
			no_headshot_sound = true,
			charge_fuel_time_multiplier = 5,
			overcharge_interval = 0.25,
			hit_effect = "flamethrower",
			particle_effect_flames_3p = "fx/wpnfx_flamethrower_01",
			damage_interval = 0.25,
			alert_sound_range_hit = 2,
			fire_sound_event = "Play_player_combat_weapon_staff_flamethrower_shoot_charged",
			minimum_hold_time = 0.75,
			damage_window_end = 0,
			overcharge_type = "drakegun_charging",
			charge_value = "light_attack",
			fire_time = 0.3,
			stop_fire_event = "Stop_player_combat_weapon_staff_flamethrower_shoot",
			fire_sound_on_husk = true,
			area_damage = true,
			particle_effect_flames = "fx/wpnfx_flamethrower_1p_01",
			hold_input = "action_one_hold",
			anim_event = "attack_shoot_flamethrower_charged",
			alert_sound_range_fire = 12,
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
					sub_action = "default",
					start_time = 0.4,
					action = "action_wield",
					input = "action_wield"
				},
				{
					sub_action = "default",
					start_time = 0.3,
					action = "weapon_reload",
					input = "weapon_reload"
				}
			},
			enter_function = function (attacker_unit, input_extension)
				input_extension:clear_input_buffer()

				return input_extension:reset_release_input()
			end
		}
	},
	action_two = {
		default = {
			charge_sound_stop_event = "player_combat_weapon_staff_charge_down",
			scale_chain_window_by_charge_time_buff = true,
			charge_ready_sound_event = "weapon_staff_charge_ready",
			scale_anim_by_charge_time_buff = false,
			kind = "charge",
			charge_sound_name = "player_combat_weapon_staff_charge",
			is_spell = true,
			remove_overcharge_on_interrupt = true,
			overcharge_interval = 0.3,
			charge_sound_husk_name = "player_combat_weapon_staff_charge_husk",
			minimum_hold_time = 0.2,
			overcharge_type = "flamethrower",
			anim_end_event = "attack_finished",
			charge_sound_switch = "projectile_charge_sound",
			charge_time = 3,
			hold_input = "action_two_hold",
			anim_event = "flamethrower_charge_start",
			charge_sound_husk_stop_event = "stop_player_combat_weapon_staff_charge_husk",
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action"
			end,
			total_time = math.huge,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.9,
					end_time = 0.3,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.3,
					external_multiplier = 0.8,
					end_time = 0.7,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.7,
					external_multiplier = 1,
					buff_name = "planted_fast_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					sub_action = "shoot_charged",
					start_time = 0.65,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.2,
					action = "weapon_reload",
					input = "weapon_reload"
				}
			}
		}
	},
	weapon_reload = {
		default = {
			charge_sound_stop_event = "stop_player_combat_weapon_staff_cooldown",
			hold_input = "weapon_reload_hold",
			charge_effect_material_variable_name = "intensity",
			kind = "charge",
			charge_sound_parameter_name = "drakegun_charge_fire",
			do_not_validate_with_hold = true,
			charge_effect_material_name = "Fire",
			minimum_hold_time = 0.5,
			vent_overcharge = true,
			anim_end_event = "attack_finished",
			charge_sound_switch = "projectile_charge_sound",
			charge_time = 3,
			uninterruptible = true,
			anim_event = "cooldown_start",
			charge_sound_name = "player_combat_weapon_staff_cooldown",
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action"
			end,
			total_time = math.huge,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.2,
					buff_name = "planted_fast_decrease_movement",
					end_time = math.huge
				}
			},
			enter_function = function (attacker_unit, input_extension)
				input_extension:reset_release_input()
				input_extension:clear_input_buffer()
			end,
			allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.2,
					action = "action_wield",
					input = "action_wield"
				}
			},
			condition_func = function (action_user, input_extension)
				local overcharge_extension = ScriptUnit.extension(action_user, "overcharge_system")

				return overcharge_extension:get_overcharge_value() ~= 0
			end,
			chain_condition_func = function (action_user, input_extension)
				local overcharge_extension = ScriptUnit.extension(action_user, "overcharge_system")

				return overcharge_extension:get_overcharge_value() ~= 0
			end
		}
	},
	action_inspect = ActionTemplates.action_inspect,
	action_wield = ActionTemplates.wield
}
weapon_template.overcharge_data = {
	overcharge_threshold = 10,
	overcharge_warning_critical_sound_event = "drakegun_overcharge_warning_critical",
	time_until_overcharge_decreases = 0.5,
	overcharge_warning_low_sound_event = "drakegun_overcharge_warning_low",
	overcharge_value_decrease_rate = 1,
	overcharge_warning_high_sound_event = "drakegun_overcharge_warning_high",
	explosion_template = "overcharge_explosion_dwarf",
	overcharge_warning_med_sound_event = "drakegun_overcharge_warning_med",
	hit_overcharge_threshold_sound = "ui_special_attack_ready"
}
weapon_template.attack_meta_data = {
	max_range = 10,
	always_charge_before_firing = false,
	can_charge_shot = false,
	charged_attack_action_name = "shoot_charged",
	aim_at_node = "j_spine1",
	ignore_enemies_for_obstruction = true,
	minimum_charge_time = 0.65,
	charge_when_obstructed = false,
	charge_when_outside_max_range = false,
	aim_data = {
		min_radius_pseudo_random_c = 0.3021,
		max_radius_pseudo_random_c = 0.03222,
		min_radius = math.pi / 72,
		max_radius = math.pi / 16
	},
	effective_against = bit.bor(BreedCategory.Infantry, BreedCategory.Berserker, BreedCategory.Shielded, BreedCategory.Armored, BreedCategory.Special)
}
weapon_template.default_spread_template = "drakegun"
weapon_template.right_hand_unit = "units/weapons/player/wpn_brw_skullstaff/wpn_brw_skullstaff"
weapon_template.right_hand_attachment_node_linking = AttachmentNodeLinking.spear_staff
weapon_template.left_hand_unit = "units/weapons/player/wpn_fireball/wpn_fireball"
weapon_template.left_hand_attachment_node_linking = AttachmentNodeLinking.fireball
weapon_template.display_unit = "units/weapons/weapon_display/display_staff"
weapon_template.wield_anim = "to_staff"
weapon_template.state_machine = "units/beings/player/first_person_base/state_machines/ranged/staff"
weapon_template.crosshair_style = "circle"
weapon_template.buff_type = "RANGED"
weapon_template.weapon_type = "FIRE_STAFF"
weapon_template.buffs = {
	change_dodge_distance = {
		external_optional_multiplier = 1
	},
	change_dodge_speed = {
		external_optional_multiplier = 1
	}
}
weapon_template.wwise_dep_right_hand = {
	"wwise/staff",
	"wwise/flamethrower"
}
weapon_template.weapon_diagram = {
	light_attack = {
		[DamageTypes.ARMOR_PIERCING] = 3,
		[DamageTypes.CLEAVE] = 7,
		[DamageTypes.SPEED] = 2,
		[DamageTypes.STAGGER] = 4,
		[DamageTypes.DAMAGE] = 2
	},
	heavy_attack = {
		[DamageTypes.ARMOR_PIERCING] = 1,
		[DamageTypes.CLEAVE] = 7,
		[DamageTypes.SPEED] = 1,
		[DamageTypes.STAGGER] = 0,
		[DamageTypes.DAMAGE] = 2
	}
}
weapon_template.tooltip_keywords = {
	"weapon_keyword_damage_over_time",
	"weapon_keyword_charged_attack",
	"weapon_keyword_close_range"
}
weapon_template.tooltip_compare = {
	light = {
		action_name = "action_one",
		sub_action_name = "default"
	},
	heavy = {
		action_name = "action_one",
		sub_action_name = "shoot_charged"
	}
}
weapon_template.tooltip_detail = {
	light = {
		action_name = "action_one",
		sub_action_name = "default"
	},
	heavy = {
		action_name = "action_one",
		sub_action_name = "shoot_charged"
	}
}

local weapon_template_vs = table.clone(weapon_template)

weapon_template_vs.actions.action_one.default.damage_profile = "flamethrower_spray_vs"
weapon_template_vs.actions.action_one.shoot_charged.damage_profile = "flamethrower_vs"
weapon_template_vs.actions.action_one.shoot_charged.initial_damage_profile = "flamethrower_initial_vs"

return {
	staff_flamethrower_template = table.clone(weapon_template),
	staff_flamethrower_template_vs = table.clone(weapon_template_vs)
}
