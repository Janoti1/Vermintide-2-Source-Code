local AXE_HIT_EFFECT = "throwing_axe"
local ALERT_SOUND_RANGE_FIRE = 4
local ALERT_SOUND_RANGE_HIT = 2
local weapon_template = {}

weapon_template.actions = {
	action_one = {
		default = {
			anim_end_event = "attack_finished",
			kind = "thrown_projectile",
			anim_event_no_ammo_left = "to_noammo",
			charge_value = "arrow_hit",
			weapon_action_hand = "right",
			apply_recoil = true,
			aim_assist_max_ramp_multiplier = 0.8,
			anim_event_last_ammo = "to_noammo",
			aim_assist_ramp_decay_delay = 0.3,
			ammo_usage = 1,
			fire_time = 0.4,
			speed = 3500,
			aim_assist_ramp_multiplier = 0.4,
			anim_event = "attack_throw",
			no_out_of_ammo_vo = true,
			total_time = 0.85,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action"
			end,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.5,
					end_time = 0.3,
					buff_name = "planted_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.35,
					action = "weapon_reload",
					input = "weapon_reload"
				},
				{
					sub_action = "default",
					start_time = 0.6,
					action = "action_wield",
					input = "action_wield"
				},
				{
					sub_action = "default",
					start_time = 0.65,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one",
					end_time = math.huge
				},
				{
					sub_action = "default",
					start_time = 0.6,
					action = "action_two",
					input = "action_two_hold",
					end_time = math.huge
				}
			},
			enter_function = function (attacker_unit, input_extension)
				input_extension:clear_input_buffer()

				return input_extension:reset_release_input()
			end,
			hit_effect = AXE_HIT_EFFECT,
			projectile_info = Projectiles.throwing_axe,
			impact_data = {
				depth = 0.2,
				depth_damage_modifier_min = 1,
				link_pickup = true,
				damage_profile = "throwing_axe",
				no_stop_on_friendly_fire = true,
				depth_damage_modifier_max = 1.2,
				depth_offset = -0.2,
				pickup_settings = {
					use_weapon_skin = true,
					link_hit_zones = {
						"head",
						"neck",
						"torso"
					}
				}
			},
			alert_sound_range_fire = ALERT_SOUND_RANGE_FIRE,
			alert_sound_range_hit = ALERT_SOUND_RANGE_HIT,
			recoil_settings = {
				horizontal_climb = -0.5,
				restore_duration = 0.2,
				vertical_climb = -1.5,
				climb_duration = 0.1,
				climb_function = math.easeInCubic,
				restore_function = math.ease_out_quad
			}
		},
		throw_charged = {
			reset_aim_on_attack = true,
			anim_end_event = "attack_finished",
			kind = "thrown_projectile",
			charge_value = "zoomed_arrow_hit",
			weapon_action_hand = "right",
			attack_template = "arrow_sniper_1",
			apply_recoil = true,
			anim_event_last_ammo = "to_noammo",
			minimum_hold_time = 0.4,
			ammo_usage = 1,
			fire_time = 0.2,
			speed = 5000,
			hold_input = "action_two_hold",
			anim_event = "attack_throw",
			no_out_of_ammo_vo = true,
			total_time = 0.9,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action"
			end,
			allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0,
					action = "weapon_reload",
					input = "weapon_reload"
				},
				{
					sub_action = "default",
					start_time = 0.5,
					action = "action_wield",
					input = "action_wield"
				},
				{
					sub_action = "default",
					start_time = 0.55,
					action = "action_one",
					release_required = "action_two_hold",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.55,
					action = "action_two",
					input = "action_two_hold",
					end_time = math.huge
				}
			},
			enter_function = function (attacker_unit, input_extension)
				input_extension:clear_input_buffer()

				return input_extension:reset_release_input()
			end,
			hit_effect = AXE_HIT_EFFECT,
			projectile_info = Projectiles.throwing_axe,
			impact_data = {
				depth = 0.2,
				depth_damage_modifier_min = 1,
				link_pickup = true,
				damage_profile = "throwing_axe_charged",
				no_stop_on_friendly_fire = true,
				depth_damage_modifier_max = 1.2,
				depth_offset = -0.2,
				pickup_settings = {
					use_weapon_skin = true,
					link_hit_zones = {
						"head",
						"neck",
						"torso"
					}
				}
			},
			alert_sound_range_fire = ALERT_SOUND_RANGE_FIRE,
			alert_sound_range_hit = ALERT_SOUND_RANGE_HIT,
			recoil_settings = {
				horizontal_climb = -0.5,
				restore_duration = 0.2,
				vertical_climb = -1.5,
				climb_duration = 0.1,
				climb_function = math.easeInCubic,
				restore_function = math.ease_out_quad
			}
		}
	},
	action_two = {
		default = {
			allow_hold_toggle = true,
			anim_end_event = "throw_charge_cancel",
			kind = "dummy",
			weapon_action_hand = "right",
			hold_input = "action_two_hold",
			anim_event = "throw_charge",
			minimum_hold_time = 0.2,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action"
			end,
			total_time = math.huge,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.25,
					buff_name = "planted_charging_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0,
					action = "weapon_reload",
					input = "weapon_reload"
				},
				{
					sub_action = "default",
					start_time = 0.2,
					action = "action_wield",
					input = "action_wield",
					end_time = math.huge
				},
				{
					sub_action = "throw_charged",
					start_time = 0.65,
					action = "action_one",
					input = "action_one",
					end_time = math.huge
				},
				{
					softbutton_threshold = 0.75,
					start_time = 0.65,
					action = "action_one",
					sub_action = "throw_charged",
					input = "action_one_softbutton_gamepad",
					end_time = math.huge
				}
			},
			condition_func = function (unit, input_extension, ammo_extension)
				if ammo_extension and (ammo_extension:total_remaining_ammo() <= 0 or ammo_extension:is_reloading()) then
					return false
				end

				return true
			end
		}
	},
	weapon_reload = {
		default = {
			total_time = 2.5,
			anim_time_scale = 1.25,
			hold_input = "weapon_reload_hold",
			anim_end_event = "interrupt",
			kind = "dummy",
			uninterruptible = false,
			do_not_validate_with_hold = true,
			one_ammo_catch_time = 1.1,
			anim_event = "reload",
			minimum_hold_time = 0.5,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action"
			end,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.85,
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
				},
				{
					sub_action = "catch",
					start_time = 1.5,
					action = "weapon_reload",
					auto_chain = true
				}
			},
			condition_func = function (action_user, input_extension, ammo_extension)
				if ammo_extension and ammo_extension:total_remaining_ammo() < ammo_extension:max_ammo() then
					return true
				end

				return false
			end
		},
		catch = {
			total_time = 0.7,
			uninterruptible = false,
			catch_time = 0.1,
			kind = "catch",
			do_not_validate_with_hold = true,
			hold_input = "weapon_reload_hold",
			anim_event = "reload_last",
			minimum_hold_time = 0.2,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action"
			end,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.1,
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
				},
				{
					sub_action = "catch",
					start_time = 0.55,
					action = "weapon_reload",
					input = "weapon_reload_hold"
				}
			},
			chain_condition_func = function (action_user, input_extension, ammo_extension)
				if ammo_extension and ammo_extension:total_remaining_ammo() < ammo_extension:max_ammo() then
					return true
				end

				return false
			end
		}
	},
	action_inspect = ActionTemplates.action_inspect,
	action_wield = ActionTemplates.wield
}
weapon_template.ammo_data = {
	unique_ammo_type = true,
	ammo_per_reload = 1,
	ammo_type = "throwing_axe",
	ammo_per_clip = 1,
	ammo_hand = "right",
	play_reload_anim_on_wield_reload = true,
	has_wield_reload_anim = true,
	max_ammo = 3,
	reload_on_ammo_pickup = true,
	reload_time = 0,
	ammo_kind = "thrown",
	ammo_unit_attachment_node_linking = AttachmentNodeLinking.one_handed_melee_weapon.right
}
weapon_template.attack_meta_data = {
	max_range = 30,
	charged_attack_action_name = "throw_charged",
	aim_at_node = "j_spine1",
	can_charge_shot = true,
	ignore_enemies_for_obstruction_charged = true,
	aim_at_node_charged = "j_head",
	minimum_charge_time = 0.55,
	charge_above_range = 15,
	charge_when_obstructed = false,
	ignore_enemies_for_obstruction = false,
	effective_against = bit.bor(BreedCategory.Berserker, BreedCategory.Special),
	effective_against_charged = bit.bor(BreedCategory.Berserker, BreedCategory.Special, BreedCategory.Armored)
}

local action = weapon_template.actions.action_one.default

weapon_template.default_loaded_projectile_settings = {
	drop_multiplier = 0.03,
	speed = action.speed,
	gravity = ProjectileGravitySettings[action.projectile_info.gravity_settings]
}
weapon_template.default_spread_template = "throwing_axe"
weapon_template.right_hand_unit = "units/weapons/player/wpn_dw_thrown_axe_01_t1/wpn_dw_thrown_axe_01_t1"
weapon_template.right_hand_attachment_node_linking = AttachmentNodeLinking.one_handed_melee_weapon.right
weapon_template.display_unit = "units/weapons/weapon_display/display_1h_throwing_axes"
weapon_template.wield_anim_not_loaded = "to_throwing_axe"
weapon_template.wield_anim = "to_throwing_axe"
weapon_template.wield_anim_no_ammo = "to_throwing_axe_noammo"
weapon_template.state_machine = "units/beings/player/first_person_base/state_machines/ranged/throwing_axes"
weapon_template.crosshair_style = "projectile"
weapon_template.no_ammo_reload_event = "to_ammo"
weapon_template.reload_event = "to_ammo"
weapon_template.buff_type = "RANGED"
weapon_template.weapon_type = "THROWING_AXE"
weapon_template.default_projectile_action = weapon_template.actions.action_one.default
weapon_template.dodge_count = 6
weapon_template.destroy_indexed_projectiles = true
weapon_template.buffs = {
	change_dodge_distance = {
		external_optional_multiplier = 1.2
	},
	change_dodge_speed = {
		external_optional_multiplier = 1.2
	}
}
weapon_template.wwise_dep_ammo = {
	"wwise/throwing_axe"
}
weapon_template.aim_assist_settings = {
	max_range = 50,
	no_aim_input_multiplier = 0,
	always_auto_aim = true,
	base_multiplier = 0,
	target_node = "j_neck",
	effective_max_range = 30,
	breed_scalars = {
		skaven_storm_vermin = 1,
		skaven_clan_rat = 1,
		skaven_slave = 1
	}
}
weapon_template.weapon_diagram = {
	light_attack = {
		[DamageTypes.ARMOR_PIERCING] = 5,
		[DamageTypes.CLEAVE] = 0,
		[DamageTypes.SPEED] = 4,
		[DamageTypes.STAGGER] = 5,
		[DamageTypes.DAMAGE] = 5
	},
	heavy_attack = {
		[DamageTypes.ARMOR_PIERCING] = 6,
		[DamageTypes.CLEAVE] = 3,
		[DamageTypes.SPEED] = 1,
		[DamageTypes.STAGGER] = 6,
		[DamageTypes.DAMAGE] = 6
	}
}
weapon_template.tooltip_keywords = {
	"weapon_keyword_armour_piercing",
	"weapon_keyword_sniper",
	"weapon_keyword_versatile"
}
weapon_template.tooltip_compare = {
	light = {
		action_name = "action_one",
		sub_action_name = "default"
	},
	heavy = {
		action_name = "action_one",
		sub_action_name = "throw_charged"
	}
}
weapon_template.tooltip_detail = {
	light = {
		action_name = "action_one",
		sub_action_name = "default"
	},
	heavy = {
		{
			action_name = "action_one",
			chain_start_time = 0.65,
			sub_action_name = "throw_charged"
		},
		{
			action_name = "action_one",
			chain_start_time = 0.8,
			sub_action_name = "throw_special_charged"
		},
		custom_chain = true
	}
}

local weapon_template_vs = table.clone(weapon_template)

weapon_template_vs.actions.weapon_reload.default.allowed_chain_actions = {
	{
		sub_action = "default",
		start_time = 0.2,
		action = "action_wield",
		input = "action_wield"
	},
	{
		sub_action = "catch",
		start_time = 0.8,
		action = "weapon_reload",
		auto_chain = true
	}
}

return {
	one_handed_throwing_axes_template = weapon_template,
	one_handed_throwing_axes_template_vs = weapon_template_vs
}
