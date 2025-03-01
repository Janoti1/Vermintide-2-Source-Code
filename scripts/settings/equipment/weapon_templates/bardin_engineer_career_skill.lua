local ammo_ability_cost = 0.75
local min_shots_activate = 1
local spinup_time = 0.5
local base_chain_time = 0.15
local initial_rounds_per_second = 4
local max_rps = 12
local rps_loss_per_second = 1.5
local rps_gain_per_shot = 0.2
local armor_pierce_ammo_ability_cost = 2
local armor_pierce_damage_profile = "engineer_ability_shot_armor_pierce"
local armor_pierce_initial_rounds_per_second = 2
local armor_pierce_max_rps = 3.6
local armor_pierce_rps_loss_per_second = 1.5
local armor_pierce_rps_gain_per_shot = 0.2
local base_initial_charge_delay = 0.34
local base_ability_charge_interval = 0.67
local visual_heat_generation = 0.0015
local visual_heat_generation_armor_pierce = 0.002
local visual_heat_cooldown_speed = 0.006
local base_anim_speed = 0.16666666666666666
local base_anim_speed_big_barrel = 0.3333333333333333

local function shoot_condition_func(action_user, input_extension)
	local career_extension = ScriptUnit.extension(action_user, "career_system")
	local ability_cooldown, max_cooldown = career_extension:current_ability_cooldown(1)

	return max_cooldown - ability_cooldown >= min_shots_activate * ammo_ability_cost
end

local function shoot_armor_pierce_condition_func(action_user, input_extension)
	local career_extension = ScriptUnit.extension(action_user, "career_system")
	local ability_cooldown, max_cooldown = career_extension:current_ability_cooldown(1)

	return max_cooldown - ability_cooldown >= min_shots_activate * armor_pierce_ammo_ability_cost
end

local weapon_template = {}

weapon_template.actions = {
	action_one = {
		default = {
			total_time_secondary = 1.75,
			anim_event_secondary = "reload",
			kind = "career_dummy",
			anim_event = "attack_charge",
			total_time = 1.4,
			allowed_chain_actions = {
				{
					sub_action = "spin",
					start_time = 0,
					action = "action_one",
					hold_allowed = true,
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "weapon_reload",
					input = "weapon_reload"
				}
			},
			condition_func = shoot_condition_func,
			enter_function = function (attacker_unit, input_extension)
				input_extension:clear_input_buffer()

				return input_extension:reset_release_input()
			end
		},
		spin = {
			charge_sound_stop_event = "Stop_player_engineer_engine_loop",
			anim_end_event = "attack_finished",
			fp_speed_anim_variable = "barrel_spin_speed",
			visual_spinup_min = 0,
			kind = "career_dr_four_spin",
			override_visual_spinup = true,
			charge_sound_name = "Play_player_engineer_engine_charge",
			windup_max = 0,
			initial_windup = 0,
			visual_spinup_max = 0.3,
			charge_sound_husk_name = "Play_player_engineer_engine_charge_husk",
			windup_speed = 0,
			audio_loop_id = "engineer_weapon_spin",
			hold_input = "action_one_hold",
			anim_event = "attack_charge",
			charge_sound_husk_stop_event = "Stop_player_engineer_engine_loop_husk",
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action"
			end,
			on_chain_keep_audio_loops = {
				"engineer_weapon_spin"
			},
			total_time = spinup_time + 0.25,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.2,
					buff_name = "planted_fast_decrease_movement",
					end_time = math.huge
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "fire",
					action = "action_one",
					hold_allowed = true,
					input = "action_one",
					start_time = spinup_time
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "weapon_reload",
					hold_allowed = true,
					input = "weapon_reload"
				}
			},
			condition_func = shoot_condition_func,
			enter_function = function (attacker_unit, input_extension)
				input_extension:clear_input_buffer()

				return input_extension:reset_release_input()
			end,
			visual_spinup_time = spinup_time / 3
		},
		fire = {
			kind = "action_selector",
			on_chain_keep_audio_loops = {
				"engineer_weapon_spin"
			},
			conditional_actions = {
				{
					sub_action = "armor_pierce_fire",
					condition = function (talent_extension, buff_extension)
						return talent_extension and talent_extension:has_talent("bardin_engineer_armor_piercing_ability")
					end
				}
			},
			default_action = {
				sub_action = "base_fire"
			},
			condition_func = shoot_condition_func,
			chain_condition_func = shoot_condition_func
		},
		base_fire = {
			anim_event = "attack_shoot_charged",
			use_ability_as_ammo = true,
			fire_sound_event = "Play_player_engineer_shooting_burst",
			kind = "career_dr_four",
			shot_count = 1,
			action_priority = 0,
			damage_profile = "engineer_ability_shot",
			anim_end_event = "attack_finished",
			anim_event_secondary = "reload",
			charge_value = "bullet_hit",
			total_time_secondary = 1.75,
			apply_recoil = true,
			headshot_multiplier = 2,
			additional_critical_strike_chance = 0,
			aim_assist_ramp_multiplier = 0.1,
			aim_assist_max_ramp_multiplier = 0.3,
			fire_time = 0,
			aim_assist_auto_hit_chance = 0.5,
			aim_assist_ramp_decay_delay = 0.2,
			critical_hit_effect = "bullet_critical_impact",
			alert_sound_range_hit = 1.5,
			reload_when_out_of_ammo = true,
			continuous_buff_check = true,
			num_layers_spread = 1,
			hit_effect = "bullet_impact",
			ranged_attack = true,
			alert_sound_range_fire = 10,
			hold_input = "action_one_hold",
			on_chain_keep_audio_loops = {
				"engineer_weapon_spin"
			},
			total_time = math.huge,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.2,
					buff_name = "planted_fast_decrease_movement",
					end_time = math.huge
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "charged",
					start_time = 0,
					action = "action_two",
					hold_allowed = true,
					release_required = "action_one_hold",
					input = "action_two"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "weapon_reload",
					hold_allowed = true,
					input = "weapon_reload"
				},
				{
					sub_action = "default",
					action = "action_wield",
					input = "action_wield",
					start_time = base_chain_time
				}
			},
			enter_function = function (attacker_unit, input_extension)
				input_extension:clear_input_buffer()

				return input_extension:reset_release_input()
			end,
			visual_heat_generation = visual_heat_generation,
			base_anim_speed = base_anim_speed,
			initial_rounds_per_second = initial_rounds_per_second,
			max_rps = max_rps,
			rps_loss_per_second = rps_loss_per_second,
			rps_gain_per_shot = rps_gain_per_shot,
			ammo_usage = ammo_ability_cost,
			recoil_settings = {
				horizontal_climb = 0,
				restore_duration = 0.25,
				vertical_climb = 0.8,
				climb_duration = 0.1,
				climb_function = math.ease_out_quad,
				restore_function = math.ease_out_quad
			},
			critical_strike = {}
		}
	},
	action_two = {
		default = {
			charge_sound_stop_event = "Stop_player_engineer_engine_loop",
			anim_end_event = "attack_finished",
			visual_spinup_min = 0.4,
			kind = "career_dr_four_spin",
			charge_sound_husk_stop_event = "Stop_player_engineer_engine_loop_husk",
			override_visual_spinup = true,
			windup_max = 0,
			initial_windup = 0,
			visual_spinup_time = 0.3,
			visual_spinup_max = 0.5,
			charge_sound_husk_name = "Play_player_engineer_engine_loop_husk",
			windup_speed = 0,
			audio_loop_id = "engineer_weapon_spin",
			hold_input = "action_two_hold",
			anim_event = "attack_charge_loop",
			charge_sound_name = "Play_player_engineer_engine_charge",
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action"
			end,
			on_chain_keep_audio_loops = {
				"engineer_weapon_spin"
			},
			total_time = math.huge,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.2,
					buff_name = "planted_fast_decrease_movement",
					end_time = math.huge
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "charged",
					action = "action_two",
					hold_allowed = true,
					input = "action_two",
					start_time = spinup_time
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "weapon_reload",
					hold_allowed = true,
					input = "weapon_reload"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				}
			},
			condition_func = shoot_condition_func,
			chain_condition_func = shoot_condition_func,
			enter_function = function (attacker_unit, input_extension)
				input_extension:clear_input_buffer()

				return input_extension:reset_release_input()
			end
		},
		charged = {
			kind = "career_dr_four_spin",
			anim_end_event = "attack_finished",
			action_priority = 0,
			windup_max = 1,
			initial_windup = 0,
			hold_input = "action_two_hold",
			anim_event = "attack_charge_end",
			windup_speed = 0.2,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action"
			end,
			on_chain_keep_audio_loops = {
				"engineer_weapon_spin"
			},
			total_time = math.huge,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.2,
					buff_name = "planted_fast_decrease_movement",
					end_time = math.huge
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "fire",
					action = "action_one",
					hold_allowed = true,
					input = "action_one",
					start_time = base_chain_time
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "weapon_reload",
					hold_allowed = true,
					input = "weapon_reload"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				}
			},
			condition_func = shoot_condition_func,
			chain_condition_func = shoot_condition_func,
			enter_function = function (attacker_unit, input_extension)
				input_extension:clear_input_buffer()

				return input_extension:reset_release_input()
			end
		}
	},
	weapon_reload = {
		default = {
			charge_sound_stop_event = "Stop_player_engineer_steam_loop",
			stop_at_max = true,
			anim_end_event = "cooldown_end",
			kind = "career_dr_four_charge",
			hold_input = "weapon_reload_hold",
			do_not_validate_with_hold = false,
			charge_sound_husk_stop_event = "Stop_player_engineer_steam_loop_husk",
			charge_sound_husk_name = "Play_player_engineer_steam_loop_husk",
			minimum_hold_time = 0.5,
			charge_time = 3,
			uninterruptible = true,
			anim_event = "cooldown_start",
			charge_sound_name = "Play_player_engineer_steam_loop",
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action"
			end,
			total_time = math.huge,
			buff_data = {},
			allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.2,
					action = "action_wield",
					input = "action_wield"
				}
			},
			condition_func = function (action_user, input_extension)
				local career_extension = ScriptUnit.has_extension(action_user, "career_system")
				local buff_extension = ScriptUnit.has_extension(action_user, "buff_system")
				local can_reload = not buff_extension:has_buff_type("bardin_engineer_pump_max_exhaustion_buff")

				return can_reload
			end,
			chain_condition_func = function (action_user, input_extension)
				local career_extension = ScriptUnit.has_extension(action_user, "career_system")
				local buff_extension = ScriptUnit.has_extension(action_user, "buff_system")
				local can_reload = not buff_extension:has_buff_type("bardin_engineer_pump_max_exhaustion_buff")

				return can_reload
			end,
			initial_charge_delay = base_initial_charge_delay,
			ability_charge_interval = base_ability_charge_interval
		}
	},
	action_inspect = ActionTemplates.action_inspect,
	action_wield = ActionTemplates.wield
}

local fast_fire = table.shallow_copy(weapon_template.actions.action_one.base_fire)

weapon_template.actions.action_one.fast_fire = fast_fire

local armor_pierce_fire = table.shallow_copy(weapon_template.actions.action_one.base_fire)

armor_pierce_fire.damage_profile = armor_pierce_damage_profile
armor_pierce_fire.visual_heat_generation = visual_heat_generation_armor_pierce
armor_pierce_fire.base_anim_speed = base_anim_speed_big_barrel
armor_pierce_fire.ammo_usage = armor_pierce_ammo_ability_cost
armor_pierce_fire.initial_rounds_per_second = armor_pierce_initial_rounds_per_second
armor_pierce_fire.max_rps = armor_pierce_max_rps
armor_pierce_fire.rps_loss_per_second = armor_pierce_rps_loss_per_second
armor_pierce_fire.rps_gain_per_shot = armor_pierce_rps_gain_per_shot
armor_pierce_fire.fire_sound_event = "Play_player_engineer_shooting_armor_piercing"
weapon_template.actions.action_one.armor_pierce_fire = armor_pierce_fire
weapon_template.attack_meta_data = {
	max_range = 25,
	aim_at_node = "j_spine1",
	keep_distance = 6.5,
	fire_input = "fire_hold",
	ignore_enemies_for_obstruction = false,
	stop_fire_delay = 0.3,
	aim_data = {
		min_radius_pseudo_random_c = 1,
		max_radius_pseudo_random_c = 0.3021,
		min_radius = math.pi / 72,
		max_radius = math.pi / 16
	},
	hold_fire_condition = function (t, blackboard)
		return true
	end,
	effective_against = bit.bor(BreedCategory.Infantry, BreedCategory.Shielded, BreedCategory.Boss, BreedCategory.Berserker, BreedCategory.Special)
}
weapon_template.default_spread_template = "sparks"
weapon_template.right_hand_unit = ""
weapon_template.right_hand_attachment_node_linking = AttachmentNodeLinking.rotary_gun
weapon_template.display_unit = "units/weapons/weapon_display/display_drakegun"
weapon_template.wield_anim = "to_engineer_career_skill"
weapon_template.state_machine = "units/beings/player/first_person_base/state_machines/career/skill_engineer"
weapon_template.load_state_machine = false
weapon_template.crosshair_style = "default"
weapon_template.buff_type = "RANGED"
weapon_template.weapon_type = "BRACE_OF_PISTOLS"
weapon_template.dodge_count = 1
weapon_template.buffs = {
	change_dodge_distance = {
		external_optional_multiplier = 1.1
	},
	change_dodge_speed = {
		external_optional_multiplier = 1.1
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
weapon_template.particle_fx = {
	heat_shimmer = {
		{
			orphaned_policy = "destroy",
			effect = "fx/wpnfx_engineer_heat_shimmer",
			third_person = false,
			link_target = "right_weapon",
			first_person = true,
			link_node = "fx_muzzle",
			destroy_policy = "stop_spawning"
		}
	}
}
weapon_template.particle_fx_lookup = table.mirror_array_inplace(table.keys(weapon_template.particle_fx))
weapon_template.visual_heat_cooldown_speed = visual_heat_cooldown_speed
weapon_template.custom_data = {
	windup = 0,
	windup_loss_per_second = (max_rps - initial_rounds_per_second) / rps_loss_per_second
}

weapon_template.update = function (weapon_extension, dt, t)
	local windup = weapon_extension:get_custom_data("windup")
	local windup_loss_per_second = weapon_extension:get_custom_data("windup_loss_per_second")

	windup = windup - windup_loss_per_second * dt

	weapon_extension:set_custom_data("windup", windup)
end

local armor_piercing_template = table.clone(weapon_template)

armor_piercing_template.wield_anim = "to_engineer_career_skill_special"
armor_piercing_template.actions.action_one.default.condition_func = shoot_armor_pierce_condition_func
armor_piercing_template.actions.action_one.default.chain_condition_func = shoot_armor_pierce_condition_func
armor_piercing_template.actions.action_one.spin.condition_func = shoot_armor_pierce_condition_func
armor_piercing_template.actions.action_one.spin.chain_condition_func = shoot_armor_pierce_condition_func
armor_piercing_template.actions.action_one.fire.condition_func = shoot_armor_pierce_condition_func
armor_piercing_template.actions.action_one.fire.chain_condition_func = shoot_armor_pierce_condition_func
armor_piercing_template.actions.action_two.default.condition_func = shoot_armor_pierce_condition_func
armor_piercing_template.actions.action_two.default.chain_condition_func = shoot_armor_pierce_condition_func
armor_piercing_template.actions.action_two.charged.condition_func = shoot_armor_pierce_condition_func
armor_piercing_template.actions.action_two.charged.chain_condition_func = shoot_armor_pierce_condition_func
armor_piercing_template.attack_meta_data = {
	effective_against = bit.bor(BreedCategory.Infantry, BreedCategory.Shielded, BreedCategory.Boss, BreedCategory.Berserker, BreedCategory.Special, BreedCategory.Armored)
}
weapon_template.custom_data = {
	windup = 0,
	windup_loss_per_second = (armor_pierce_max_rps - armor_pierce_initial_rounds_per_second) / armor_pierce_rps_loss_per_second
}

local career_skill_vs = table.clone(weapon_template)

career_skill_vs.actions.action_one.base_fire.damage_profile = "engineer_ability_shot_vs"
armor_piercing_template_vs = table.clone(armor_piercing_template)

return {
	bardin_engineer_career_skill_weapon = table.clone(weapon_template),
	bardin_engineer_career_skill_weapon_special = armor_piercing_template,
	bardin_engineer_career_skill_weapon_vs = table.clone(career_skill_vs),
	bardin_engineer_career_skill_weapon_special_vs = armor_piercing_template_vs
}
