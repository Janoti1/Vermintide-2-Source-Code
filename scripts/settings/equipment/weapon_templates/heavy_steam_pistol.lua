local weapon_template = {}

weapon_template.actions = {
	action_one = {
		default = {
			total_time_secondary = 2,
			anim_end_event = "attack_finished",
			anim_event = "attack_charge",
			reload_when_out_of_ammo = true,
			kind = "charge",
			speed = 16000,
			headshot_multiplier = 2,
			aim_assist_ramp_multiplier = 0.1,
			aim_assist_max_ramp_multiplier = 0.3,
			aim_assist_auto_hit_chance = 0.5,
			aim_assist_ramp_decay_delay = 0.2,
			minimum_hold_time = 0.2,
			range = 100,
			ammo_usage = 1,
			fire_time = 0,
			charge_time = 0.7,
			anim_event_secondary = "reload",
			hold_input = "action_one_hold",
			can_abort_reload = false,
			reload_time = 0.1,
			total_time = 1,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action"
			end,
			allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.4,
					action = "action_wield",
					input = "action_wield"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_one",
					input = "action_one"
				},
				{
					softbutton_threshold = 0.1,
					start_time = 0.7,
					action = "action_one",
					sub_action = "shoot",
					input = "action_one_softbutton_gamepad",
					softbutton_required = {
						{
							softbutton_threshold = 0.1,
							input = "action_one_softbutton_gamepad"
						}
					}
				},
				{
					sub_action = "shoot",
					start_time = 0.7,
					action = "action_one",
					input = "action_one_hold",
					hold_required = {
						"action_one_hold"
					}
				},
				{
					sub_action = "default",
					start_time = 0.4,
					action = "action_two",
					input = "action_two_hold"
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
			end,
			projectile_info = Projectiles.pistol_shot,
			impact_data = {
				damage_profile = "shot_sniper_pistol"
			}
		},
		shoot = {
			total_time_secondary = 2,
			anim_event_secondary = "reload",
			reload_when_out_of_ammo = true,
			kind = "handgun",
			charge_value = "bullet_hit",
			alert_sound_range_fire = 12,
			alert_sound_range_hit = 2,
			apply_recoil = true,
			headshot_multiplier = 2,
			hit_effect = "bullet_impact",
			anim_event_last_ammo = "attack_shoot_last",
			aim_assist_max_ramp_multiplier = 0.3,
			ranged_attack = true,
			range = 100,
			ammo_usage = 1,
			fire_time = 0,
			aim_assist_auto_hit_chance = 0.5,
			aim_assist_ramp_decay_delay = 0.2,
			speed = 16000,
			aim_assist_ramp_multiplier = 0.1,
			anim_event = "attack_shoot",
			reload_time = 0.1,
			total_time = 0.5,
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
					action = "action_one",
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
					start_time = 0.75,
					action = "weapon_reload",
					input = "weapon_reload"
				}
			},
			enter_function = function (attacker_unit, input_extension)
				input_extension:clear_input_buffer()

				return input_extension:reset_release_input()
			end,
			projectile_info = Projectiles.pistol_shot,
			impact_data = {
				damage_profile = "shot_sniper_pistol"
			},
			recoil_settings = {
				horizontal_climb = 0,
				restore_duration = 0.25,
				vertical_climb = 2,
				climb_duration = 0.1,
				climb_function = math.easeInCubic,
				restore_function = math.ease_out_quad
			}
		},
		fast_shot = {
			reload_when_out_of_ammo = true,
			crosshair_style = "shotgun",
			kind = "handgun",
			charge_value = "bullet_hit",
			spread_template_override = "heavy_steam_pistol_special",
			alert_sound_range_hit = 2,
			alert_sound_range_fire = 12,
			apply_recoil = true,
			hit_effect = "bullet_impact",
			anim_event_last_ammo = "attack_shoot_fast_last",
			ranged_attack = true,
			minimum_hold_time = 0.2,
			range = 100,
			ammo_usage = 1,
			fire_time = 0,
			headshot_multiplier = 2,
			aim_assist_ramp_multiplier = 0.05,
			speed = 16000,
			aim_assist_max_ramp_multiplier = 0.3,
			aim_assist_auto_hit_chance = 0.75,
			hold_input = "action_two_hold",
			anim_event = "attack_shoot_fast",
			reload_time = 0.1,
			aim_assist_ramp_decay_delay = 0.1,
			total_time = 1,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.85,
					buff_name = "planted_fast_decrease_movement"
				}
			},
			on_chain_keep_audio_loops = {
				"aim"
			},
			allowed_chain_actions = {
				{
					sub_action = "fast_shot",
					start_time = 0.3,
					action = "action_one",
					input = "action_one_hold",
					hold_required = {
						"action_two_hold"
					}
				},
				{
					sub_action = "fast_shot",
					start_time = 0.3,
					action = "action_one",
					input = "action_one",
					hold_required = {
						"action_two_hold"
					}
				},
				{
					sub_action = "default",
					start_time = 0.3,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.2,
					action = "action_wield",
					input = "action_wield"
				},
				{
					sub_action = "default",
					start_time = 0.2,
					action = "weapon_reload",
					input = "weapon_reload"
				},
				{
					sub_action = "default",
					start_time = 0.4,
					action = "action_two",
					input = "action_two_hold"
				}
			},
			enter_function = function (attacker_unit, input_extension)
				input_extension:clear_input_buffer()
				Managers.state.achievement:trigger_event("steam_alt_fire", attacker_unit)

				return input_extension:reset_release_input()
			end,
			projectile_info = Projectiles.pistol_shot,
			impact_data = {
				damage_profile = "shot_sniper_pistol"
			},
			recoil_settings = {
				horizontal_climb = 0,
				restore_duration = 0.25,
				vertical_climb = 2,
				climb_duration = 0.1,
				climb_function = math.easeInCubic,
				restore_function = math.ease_out_quad
			}
		}
	},
	action_two = {
		default = {
			anim_end_event = "attack_finished",
			crosshair_style = "shotgun",
			kind = "aim",
			anim_event = "lock_target",
			spread_template_override = "heavy_steam_pistol_special",
			aim_sound_delay = 0.4,
			ammo_requirement = 1,
			aim_sound_event = "Play_wpn_engineer_pistol_spinning_loop",
			minimum_hold_time = 0.1,
			looping_aim_sound = true,
			unaim_sound_event = "Stop_wpn_engineer_pistol_spinning_loop",
			hold_input = "action_two_hold",
			can_abort_reload = false,
			allow_hold_toggle = true,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action"
			end,
			total_time = math.huge,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.85,
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
					sub_action = "fast_shot",
					start_time = 0.5,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "fast_shot",
					start_time = 0.5,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "weapon_reload",
					input = "weapon_reload"
				}
			},
			condition_func = function (unit, input_extension, ammo_extension)
				if ammo_extension and ammo_extension:total_remaining_ammo() <= 0 then
					return false
				end

				return true
			end,
			zoom_condition_function = function ()
				return false
			end
		}
	},
	weapon_reload = ActionTemplates.reload,
	action_inspect = ActionTemplates.action_inspect,
	action_wield = ActionTemplates.wield
}
weapon_template.ammo_data = {
	ammo_hand = "right",
	ammo_per_reload = 6,
	max_ammo = 24,
	ammo_per_clip = 6,
	play_reload_anim_on_wield_reload = true,
	reload_time = 1.55,
	reload_on_ammo_pickup = false,
	should_update_anim_ammo = true
}
weapon_template.attack_meta_data = {
	aim_at_node = "j_head",
	can_charge_shot = false
}
weapon_template.jump_anim_enabled_1p = true
weapon_template.spread_lerp_speed = 5
weapon_template.default_spread_template = "pistol_special"
weapon_template.right_hand_unit = ""
weapon_template.right_hand_attachment_node_linking = AttachmentNodeLinking.steam_pistol
weapon_template.display_unit = "units/weapons/weapon_display/display_1h_grudge_raker"
weapon_template.wield_anim = "to_steam_pistol"
weapon_template.wield_anim_career = {
	dr_ironbreaker = "to_steam_pistol_ib",
	dr_engineer = "to_steam_pistol_engi"
}
weapon_template.wield_anim_no_ammo = "to_steam_pistol_noammo"
weapon_template.wield_anim_no_ammo_career = {
	dr_ironbreaker = "to_steam_pistol_noammo_ib",
	dr_engineer = "to_steam_pistol_noammo_engi"
}
weapon_template.state_machine = "units/beings/player/first_person_base/state_machines/ranged/steam_pistol"
weapon_template.no_ammo_reload_event = "reload"
weapon_template.reload_event = "reload"
weapon_template.crosshair_style = "default"
weapon_template.gui_texture = "hud_weapon_icon_repeating_handgun"
weapon_template.buff_type = "RANGED"
weapon_template.weapon_type = "BRACE_OF_PISTOLS"
weapon_template.dodge_count = 100
weapon_template.buffs = {
	change_dodge_distance = {
		external_optional_multiplier = 1.25
	},
	change_dodge_speed = {
		external_optional_multiplier = 1.25
	}
}
weapon_template.aim_assist_settings = {
	max_range = 22,
	no_aim_input_multiplier = 0,
	aim_at_node = "j_spine",
	always_auto_aim = true,
	base_multiplier = 0.15,
	effective_max_range = 10,
	breed_scalars = {
		skaven_storm_vermin = 0.25,
		skaven_clan_rat = 1,
		skaven_slave = 1
	}
}
weapon_template.attack_meta_data = {
	aim_at_node = "j_spine1",
	fire_input = "fire_hold",
	ignore_enemies_for_obstruction = true,
	aim_data = {
		min_radius_pseudo_random_c = 0.3021,
		max_radius_pseudo_random_c = 0.0557,
		min_radius = math.pi / 72,
		max_radius = math.pi / 16
	},
	aim_data_charged = {
		min_radius_pseudo_random_c = 0.0557,
		max_radius_pseudo_random_c = 0.01475,
		min_radius = math.pi / 72,
		max_radius = math.pi / 16
	},
	hold_fire_condition = function (t, blackboard)
		if blackboard then
			local inventory_extension = blackboard.inventory_extension
			local _, right_hand_weapon_extension, left_hand_weapon_extension = CharacterStateHelper.get_item_data_and_weapon_extensions(inventory_extension)
			local current_action_settings = CharacterStateHelper.get_current_action_data(left_hand_weapon_extension, right_hand_weapon_extension)

			if current_action_settings then
				local action_lookup = current_action_settings.lookup_data

				return action_lookup and action_lookup.action_name == "action_one" and action_lookup.sub_action_name == "default"
			end
		end

		return false
	end,
	effective_against = bit.bor(BreedCategory.Berserker, BreedCategory.Special, BreedCategory.Armored)
}
weapon_template.wwise_dep_right_hand = {
	"wwise/steampistol"
}
weapon_template.wwise_dep_left_hand = {
	"wwise/steampistol"
}
weapon_template.weapon_diagram = {
	light_attack = {
		[DamageTypes.ARMOR_PIERCING] = 6,
		[DamageTypes.CLEAVE] = 2,
		[DamageTypes.SPEED] = 0,
		[DamageTypes.STAGGER] = 4,
		[DamageTypes.DAMAGE] = 7
	},
	heavy_attack = {
		[DamageTypes.ARMOR_PIERCING] = 6,
		[DamageTypes.CLEAVE] = 3,
		[DamageTypes.SPEED] = 6,
		[DamageTypes.STAGGER] = 4,
		[DamageTypes.DAMAGE] = 7
	}
}
weapon_template.tooltip_keywords = {
	"weapon_keyword_high_damage",
	"weapon_keyword_rapid_fire",
	"weapon_keyword_versatile"
}
weapon_template.tooltip_compare = {
	light = {
		action_name = "action_one",
		sub_action_name = "default"
	},
	heavy = {
		action_name = "action_one",
		sub_action_name = "fast_shot"
	}
}
weapon_template.tooltip_detail = {
	light = {
		action_name = "action_one",
		sub_action_name = "default"
	},
	heavy = {
		action_name = "action_one",
		sub_action_name = "fast_shot"
	}
}

local heavy_steam_pistol_template_vs = table.clone(weapon_template)

heavy_steam_pistol_template_vs.actions.action_one.default.impact_data.damage_profile = "shot_sniper_pistol_vs"
heavy_steam_pistol_template_vs.actions.action_one.shoot.impact_data.damage_profile = "shot_sniper_pistol_vs"
heavy_steam_pistol_template_vs.actions.action_one.fast_shot.impact_data.damage_profile = "shot_sniper_pistol_vs"

return {
	heavy_steam_pistol_template_1 = table.clone(weapon_template),
	heavy_steam_pistol_template_1_vs = table.clone(heavy_steam_pistol_template_vs)
}
