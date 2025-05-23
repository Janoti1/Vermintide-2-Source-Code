local weapon_template = {}

weapon_template.actions = {
	action_one = {
		default = {
			damage_window_start = 0.1,
			ammo_usage = 1,
			fire_at_gaze_setting = "tobii_fire_at_gaze_repeating_pistol",
			damage_profile = "shot_machinegun",
			kind = "handgun",
			total_time_secondary = 2,
			alert_sound_range_fire = 10,
			alert_sound_range_hit = 1.5,
			reload_when_out_of_ammo = true,
			apply_recoil = true,
			hit_effect = "bullet_impact",
			headshot_multiplier = 2,
			aim_assist_max_ramp_multiplier = 0.6,
			aim_assist_auto_hit_chance = 0.5,
			damage_window_end = 0,
			aim_assist_ramp_decay_delay = 0.1,
			charge_value = "bullet_hit",
			fire_time = 0,
			anim_event_secondary = "reload",
			aim_assist_ramp_multiplier = 0.2,
			anim_event = "attack_shoot",
			reload_time = 1.25,
			total_time = 0.5,
			allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.2,
					action = "action_wield",
					input = "action_wield"
				},
				{
					sub_action = "default",
					start_time = 0.1,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.3,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.3,
					action = "action_two",
					input = "action_two"
				},
				{
					sub_action = "default",
					start_time = 0.1,
					action = "weapon_reload",
					input = "weapon_reload"
				}
			},
			enter_function = function (attacker_unit, input_extension)
				input_extension:clear_input_buffer()

				return input_extension:reset_release_input()
			end,
			recoil_settings = {
				horizontal_climb = 0,
				restore_duration = 0.15,
				vertical_climb = 0.75,
				climb_duration = 0.1,
				climb_function = math.easeInCubic,
				restore_function = math.ease_out_quad
			}
		},
		bullet_spray = {
			damage_window_start = 0,
			play_reload_animation = true,
			fire_at_gaze_setting = "tobii_fire_at_gaze_repeating_pistol",
			damage_profile = "shot_machinegun_shotgun",
			kind = "shotgun",
			headshot_multiplier = 2,
			num_layers_spread = 1,
			hit_effect = "bullet_impact",
			special_ammo_thing = true,
			charge_value = "light_attack",
			spread_pitch = 0.5,
			alert_sound_range_fire = 12,
			ammo_requirement = 1,
			bullseye = false,
			alert_sound_range_hit = 2,
			reload_when_out_of_ammo = true,
			damage_window_end = 0,
			range = 50,
			ammo_usage = 1,
			fire_time = 0,
			spread_template_override = "repeating_handgun_special",
			shot_count = 8,
			use_ammo_at_time = 0.3,
			apply_recoil = true,
			anim_event = "attack_shoot",
			reload_time = 2.5,
			total_time = 1,
			allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.3,
					action = "action_wield",
					input = "action_wield"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "weapon_reload",
					input = "weapon_reload"
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "weapon_reload",
					auto_chain = true
				}
			},
			recoil_settings = {
				horizontal_climb = -4,
				restore_duration = 0.5,
				vertical_climb = 2,
				climb_duration = 0.2,
				climb_function = math.easeInCubic,
				restore_function = math.ease_out_quad
			},
			hit_mass_count = LINESMAN_HIT_MASS_COUNT
		}
	},
	action_two = {
		default = {
			anim_end_event = "attack_finished",
			fire_at_gaze_setting = "tobii_fire_at_gaze_repeating_pistol",
			crosshair_style = "shotgun",
			kind = "aim",
			anim_event = "lock_target",
			spread_template_override = "repeating_handgun_special",
			aim_sound_delay = 0.6,
			ammo_requirement = 1,
			aim_sound_event = "weapon_repeater_special_cylinder",
			minimum_hold_time = 0.5,
			unaim_sound_event = "stop_weapon_repeater_special_cylinder",
			hold_input = "action_two_hold",
			can_abort_reload = true,
			allow_hold_toggle = true,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action"
			end,
			total_time = math.huge,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.4,
					buff_name = "planted_charging_decrease_movement"
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
					sub_action = "bullet_spray",
					start_time = 0.6,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.6,
					action = "weapon_reload",
					input = "weapon_reload"
				}
			},
			zoom_condition_function = function ()
				return false
			end,
			condition_func = function (unit, input_extension, ammo_extension)
				if ammo_extension and (ammo_extension:total_remaining_ammo() <= 0 or ammo_extension:is_reloading()) then
					return false
				end

				return true
			end
		}
	},
	weapon_reload = ActionTemplates.reload,
	action_inspect = ActionTemplates.action_inspect,
	action_wield = ActionTemplates.wield
}
weapon_template.ammo_data = {
	ammo_hand = "right",
	ammo_per_reload = 8,
	max_ammo = 40,
	ammo_per_clip = 8,
	play_reload_anim_on_wield_reload = true,
	reload_time = 1.5,
	reload_on_ammo_pickup = true,
	should_update_anim_ammo = true
}
weapon_template.default_spread_template = "repeating_pistol"
weapon_template.right_hand_unit = "units/weapons/player/wpn_emp_pistol_01_t1/wpn_emp_pistol_01_t1"
weapon_template.right_hand_attachment_node_linking = AttachmentNodeLinking.repeater_pistol
weapon_template.display_unit = "units/weapons/weapon_display/display_repeating_pistols"
weapon_template.wield_anim = "to_repeater_pistol"
weapon_template.state_machine = "units/beings/player/first_person_base/state_machines/ranged/repeater_pistol"
weapon_template.crosshair_style = "default"
weapon_template.fire_at_gaze_setting = "tobii_fire_at_gaze_repeating_pistol"
weapon_template.reload_event = "reload"
weapon_template.buff_type = "RANGED"
weapon_template.weapon_type = "REPEATING_PISTOL"
weapon_template.dodge_count = 3
weapon_template.buffs = {
	change_dodge_distance = {
		external_optional_multiplier = 1
	},
	change_dodge_speed = {
		external_optional_multiplier = 1
	}
}
weapon_template.attack_meta_data = {
	aim_at_node = "j_neck",
	can_charge_shot = false,
	effective_against = bit.bor(BreedCategory.Berserker, BreedCategory.Special, BreedCategory.Armored)
}
weapon_template.aim_assist_settings = {
	max_range = 22,
	no_aim_input_multiplier = 0,
	aim_at_node = "j_neck",
	can_charge_shot = true,
	base_multiplier = 0.15,
	aim_at_node_charged = "j_spine",
	effective_max_range = 10,
	breed_scalars = {
		skaven_storm_vermin = 1,
		skaven_clan_rat = 1,
		skaven_slave = 1
	}
}
weapon_template.wwise_dep_right_hand = {
	"wwise/repeating_handgun_pistol"
}
weapon_template.weapon_diagram = {
	light_attack = {
		[DamageTypes.ARMOR_PIERCING] = 3,
		[DamageTypes.CLEAVE] = 2,
		[DamageTypes.SPEED] = 7,
		[DamageTypes.STAGGER] = 1,
		[DamageTypes.DAMAGE] = 3
	},
	heavy_attack = {
		[DamageTypes.ARMOR_PIERCING] = 5,
		[DamageTypes.CLEAVE] = 7,
		[DamageTypes.SPEED] = 1,
		[DamageTypes.STAGGER] = 0,
		[DamageTypes.DAMAGE] = 7
	}
}
weapon_template.tooltip_keywords = {
	"weapon_keyword_rapid_fire",
	"weapon_keyword_close_range",
	"weapon_keyword_high_damage"
}
weapon_template.tooltip_compare = {
	light = {
		action_name = "action_one",
		sub_action_name = "default"
	},
	heavy = {
		action_name = "action_one",
		sub_action_name = "bullet_spray"
	}
}
weapon_template.tooltip_detail = {
	light = {
		action_name = "action_one",
		sub_action_name = "default"
	},
	heavy = {
		action_name = "action_two",
		sub_action_name = "default"
	}
}

local repeating_pistol_template_1_vs = table.clone(weapon_template)

repeating_pistol_template_1_vs.actions.action_one.default.damage_profile = "shot_machinegun_vs"
repeating_pistol_template_1_vs.actions.action_one.bullet_spray.damage_profile = "shot_machinegun_shotgun_vs"

return {
	repeating_pistol_template_1 = table.clone(weapon_template),
	repeating_pistol_template_1_vs = table.clone(repeating_pistol_template_1_vs)
}
