local custom_stagger_types = {
	ranged_medium = 5,
	heavy = 3,
	weak = 1,
	shield_open_stagger = 11,
	explosion = 6,
	medium = 2,
	none = 0,
	pulling = 9,
	ranged_weak = 4,
	shield_block_stagger = 10,
	weakspot = 8
}
local pushed_data = {
	ahead_dist = 1.5,
	push_width = 1.25,
	push_forward_offset = 1.5,
	push_stagger_distance = 1,
	player_pushed_speed = 4,
	push_stagger_impact = {
		custom_stagger_types.medium,
		custom_stagger_types.medium,
		custom_stagger_types.none,
		custom_stagger_types.none
	},
	push_stagger_duration = {
		1.5,
		1,
		0,
		0
	}
}
local breed_data = {
	threat_value = 12,
	walk_speed = 2,
	big_boy_turning_dot = 0.4,
	push_sound_event = "Play_generic_pushed_impact_large_armour",
	bot_hitbox_radius_approximation = 0.8,
	patrol_active_target_selection = "storm_patrol_death_squad_target_selection",
	no_stagger_duration = false,
	use_regular_horde_spawning = true,
	has_running_attack = true,
	aoe_radius = 0.4,
	aoe_height = 1.7,
	debug_spawn_category = "Roaming",
	unbreakable_shield = true,
	race = "chaos",
	hit_mass_count = 30,
	has_inventory = true,
	height = 2.25,
	bone_lod_level = 0,
	use_big_boy_turning = true,
	attack_general_sound_event = "Play_breed_triggered_sound",
	default_inventory_template = "chaos_bulwark",
	patrol_detection_radius = 10,
	dialogue_source_name = "chaos_bulwark",
	stagger_recover_time = 1,
	primary_armor_category = 6,
	panic_close_detection_radius_sq = 9,
	shield_blunt_block_sound = "blunt_hit_shield_metal",
	use_slot_type = "large",
	death_reaction = "ai_default",
	exchange_order = 2,
	patrol_active_perception = "perception_regular_update_aggro",
	play_hit_reacts_when_blocking = true,
	perception_previous_attacker_stickyness_value = 0,
	play_ranged_hit_reacts = true,
	disable_crowd_dispersion = true,
	ai_strength = 6,
	poison_resistance = 100,
	use_avoidance = false,
	target_selection = "pick_rat_ogre_target_with_weights",
	controllable = true,
	ignore_targets_outside_detection_radius = true,
	shield_health = 3,
	shield_slashing_block_sound = "slashing_hit_shield_metal",
	shield_burning_block_sound = "Play_weapon_fire_torch_metal_shield_hit",
	target_stickyness_modifier = -10,
	detection_radius = 12,
	block_stamina = 1,
	attack_player_sound_event = "Play_breed_triggered_sound",
	block_stagger_mod = 0.5,
	awards_positive_reinforcement_message = true,
	aim_template = "chaos_warrior",
	stagger_threshold_light = 1,
	block_stagger_mod_2 = 0.75,
	smart_targeting_outer_width = 1,
	hit_effect_template = "HitEffectsChaosBulwark",
	unit_template = "ai_unit_chaos_bulwark",
	smart_object_template = "chaos_warrior",
	no_stagger_damage_reduction = true,
	perception = "perception_regular_update_aggro",
	use_backstab_vo = true,
	patrol_passive_perception = "perception_regular",
	vortexable = false,
	base_unit = "units/beings/enemies/chaos_warrior_bulwark/chr_chaos_warrior_bulwark",
	enter_walk_distance = 10,
	elite = true,
	is_bot_threat = true,
	lerp_alerted_into_follow_speed = 1.2,
	always_look_at_target = true,
	animation_sync_rpc = "rpc_sync_anim_state_7",
	stagger_count_reset_time = 5,
	is_always_spawnable = true,
	slot_template = "chaos_large_elite",
	stagger_resistance = 5,
	radius = 1,
	friends_alert_range = 10,
	proximity_system_check = true,
	armor_category = 2,
	backstab_player_sound_event = "Play_enemy_vce_ecws_attack_player_back",
	death_sound_event = "Play_enemy_vce_ecws_die",
	use_navigation_path_splines = true,
	smart_targeting_width = 0.2,
	is_bot_aid_threat = true,
	behavior = "chaos_bulwark",
	bots_should_flank = true,
	shield_user = true,
	bot_melee_aim_node = "j_spine1",
	sync_full_rotation = false,
	run_speed = 4.8,
	ai_toughness = 5,
	blocking_hit_effect = "fx/chr_chaos_warrior_bulwark_shield_impact",
	hit_reaction = "chaos_bulwark",
	passive_in_patrol = true,
	patrol_passive_target_selection = "patrol_passive_target_selection",
	smart_targeting_height_multiplier = 3,
	horde_behavior = "chaos_bulwark",
	use_predicted_damage_in_stagger_calculation = true,
	leave_walk_distance = 10.1,
	headshot_coop_stamina_fatigue_type = "headshot_special",
	player_locomotion_constrain_radius = 0.7,
	weapon_reach = 2,
	trigger_dialogue_on_target_switch = true,
	shield_stab_block_sound = "stab_hit_shield_metal",
	displace_players_data = pushed_data,
	infighting = InfightingSettings.large,
	shield_opening_event = {
		"idle_shield_down",
		"idle_shield_down_2"
	},
	stagger_regen_rate = {
		[1] = 1,
		[2] = 0.1
	},
	hit_reactions = {
		bwd = "hit_reaction_backward",
		strong_right = "hit_reaction_open_right",
		strong_left = "hit_reaction_open_left",
		strong_fwd = "hit_reaction_open_fwd",
		fwd = "hit_reaction_forward",
		strong_bwd = "hit_reaction_open_bwd",
		left = "hit_reaction_left",
		right = "hit_reaction_right"
	},
	stagger_modifiers = {
		default = 1,
		heavy_attack = 1,
		ranged_attack = 0.5,
		light_attack = 1
	},
	perception_exceptions = {
		poison_well = true,
		wizard_destructible = true
	},
	perception_weights = {
		target_catapulted_mul = 0.5,
		target_stickyness_bonus_b = 10,
		targeted_by_other_special = -10,
		target_stickyness_duration_a = 5,
		target_stickyness_duration_b = 20,
		aggro_decay_per_sec = 1,
		target_outside_navmesh_mul = 0.5,
		old_target_aggro_mul = 1,
		target_disabled_aggro_mul = 0,
		max_distance = 50,
		target_stickyness_bonus_a = 50,
		distance_weight = 100,
		target_disabled_mul = 0.15
	},
	size_variation_range = {
		1,
		1
	},
	max_health = BreedTweaks.max_health.chaos_bulwark,
	bloodlust_health = BreedTweaks.bloodlust_health.chaos_bulwark,
	stagger_reduction = BreedTweaks.stagger_reduction.warrior,
	diff_stagger_resist = BreedTweaks.diff_stagger_resist.warrior,
	stagger_duration = BreedTweaks.stagger_duration.warrior,
	debug_color = {
		255,
		200,
		0,
		170
	},
	run_on_spawn = AiBreedSnippets.on_chaos_warrior_spawn,
	run_on_update = AiBreedSnippets.on_chaos_warrior_update,
	hit_reaction_function = function (hit_unit, breed, hit_unit_fwd, attack_direction, angle_difference)
		local hit_reactions = breed.hit_reactions
		local hit_anim = hit_reactions.bwd

		return hit_anim
	end,
	handle_stagger_anim_cb = function (unit, blackboard, anim_cb)
		local stagger_level = blackboard.stagger_level
		local leave_stagger = false

		if anim_cb == "anim_cb_stagger_light_finished" and stagger_level == custom_stagger_types.shield_block_stagger then
			leave_stagger = true
		elseif anim_cb == "anim_cb_stagger_medium_finished" and stagger_level == custom_stagger_types.shield_open_stagger then
			leave_stagger = true
		elseif anim_cb == "anim_cb_stagger_heavy_finished" then
			leave_stagger = true
		end

		blackboard.stagger_anim_done = leave_stagger
	end,
	stagger_modifier_function = function (stagger_type, duration, length, hit_zone_name, blackboard, breed, optional_data)
		local damage_profile = optional_data and optional_data.damage_profile
		local is_ranged_attack = optional_data and optional_data.is_ranged

		blackboard.latest_hit_charge_value = is_ranged_attack and "ranged_attack" or damage_profile and damage_profile.charge_value

		local t = Managers.time:time("game")

		if hit_zone_name == "weakspot" then
			blackboard.weakspot_hit = true
			stagger_type = 8
		elseif blackboard.stagger_recover_time and t < blackboard.stagger_recover_time then
			return custom_stagger_types.none, 0, 0, true
		end

		blackboard.spawn_exit_time = nil

		return stagger_type, duration, length
	end,
	stagger_difficulty_tweak_index = {
		{
			shield_block_threshold = 2,
			shield_open_stagger_threshold = 6,
			stagger_regen_rate = {
				1,
				0.1
			}
		},
		{
			shield_block_threshold = 2,
			shield_open_stagger_threshold = 8,
			stagger_regen_rate = {
				1,
				0.1
			}
		},
		{
			shield_block_threshold = 2,
			shield_open_stagger_threshold = 10,
			stagger_regen_rate = {
				1.5,
				0.5
			}
		},
		{
			shield_block_threshold = 3,
			shield_open_stagger_threshold = 10,
			stagger_regen_rate = {
				1.5,
				0.5
			}
		},
		{
			shield_block_threshold = 3,
			shield_open_stagger_threshold = 12,
			stagger_regen_rate = {
				2,
				1
			}
		},
		{
			shield_block_threshold = 4,
			shield_open_stagger_threshold = 12,
			stagger_regen_rate = {
				2,
				1
			}
		},
		{
			shield_block_threshold = 4,
			shield_open_stagger_threshold = 12,
			stagger_regen_rate = {
				2,
				1
			}
		},
		{
			shield_block_threshold = 4,
			shield_open_stagger_threshold = 12,
			stagger_regen_rate = {
				2,
				1
			}
		},
		{
			shield_block_threshold = 2,
			shield_open_stagger_threshold = 8,
			stagger_regen_rate = {
				1,
				0.1
			}
		}
	},
	before_stagger_enter_function = function (unit, blackboard, attacker_unit, is_push, stagger_value_to_add, predicted_damage)
		local ai_shield_extension = ScriptUnit.extension(unit, "ai_shield_system")
		local t = Managers.time:time("game")
		local breed = blackboard.breed
		local stagger_modifier = breed.stagger_modifiers[blackboard.latest_hit_charge_value] or breed.stagger_modifiers.default

		blackboard.stagger_level = blackboard.stagger_level or custom_stagger_types.none

		local difficulty_manager = Managers.state.difficulty
		local difficulty_rank = difficulty_manager:get_difficulty_rank()
		local difficulty_tweaks = breed.stagger_difficulty_tweak_index[difficulty_rank]
		local shield_open_stagger_threshold = difficulty_tweaks.shield_open_stagger_threshold
		local shield_block_threshold = difficulty_tweaks.shield_block_threshold
		local stagger_regen_rate = difficulty_tweaks.stagger_regen_rate
		local weakspot_stagger

		if blackboard.weakspot_hit and not blackboard.weakspot_exploded and not ai_shield_extension.is_blocking then
			weakspot_stagger = true
			blackboard.weakspot_exploded = true
		end

		predicted_damage = predicted_damage or 0.1

		local normalizing_value = {
			0,
			10
		}
		local normalized_predicted_damage = (predicted_damage - normalizing_value[1]) / (normalizing_value[2] - normalizing_value[1])
		local final_stagger_to_add = (stagger_value_to_add + normalized_predicted_damage) * stagger_modifier
		local regen_rate = math.lerp(stagger_regen_rate[1], stagger_regen_rate[2], (blackboard.cached_stagger or 0.1) / shield_open_stagger_threshold)
		local regen = math.clamp(t - (blackboard.shield_regen_time_stamp or t), 0, math.huge) * regen_rate

		blackboard.stagger = math.clamp((blackboard.cached_stagger or 0) - regen, 0, math.huge) + final_stagger_to_add
		blackboard.shield_regen_time_stamp = t

		local shield_block_stagger_activated = shield_block_threshold <= final_stagger_to_add
		local shield_open_stagger_reached = shield_open_stagger_threshold <= blackboard.stagger

		blackboard.override_stagger = blackboard.max_stagger_reached and not weakspot_stagger

		if blackboard.stagger_level == custom_stagger_types.shield_open_stagger or weakspot_stagger then
			blackboard.stagger_level = custom_stagger_types.heavy
		elseif shield_open_stagger_reached then
			blackboard.stagger_level = custom_stagger_types.shield_open_stagger
		elseif shield_block_stagger_activated then
			blackboard.stagger_level = custom_stagger_types.shield_block_stagger
		else
			blackboard.override_stagger = true
		end

		if blackboard.override_stagger then
			blackboard.staggering_id = blackboard.stagger
		else
			blackboard.stagger_activated = true
		end

		blackboard.cached_stagger = blackboard.stagger

		if not blackboard.max_stagger_reached and blackboard.stagger_level ~= custom_stagger_types.heavy then
			ai_shield_extension:play_shield_hit_sfx(blackboard.stagger_level == custom_stagger_types.shield_open_stagger, blackboard.cached_stagger, shield_open_stagger_threshold)
		end
	end,
	hitzone_multiplier_types = {
		head = "headshot",
		neck = "headshot",
		weakspot = "weakspot"
	},
	hitzone_primary_armor_categories = {
		head = {
			attack = 6,
			impact = 2
		},
		neck = {
			attack = 6,
			impact = 2
		}
	},
	hit_zones = {
		head = {
			prio = 1,
			actors = {
				"c_head"
			},
			push_actors = {
				"j_head",
				"j_neck",
				"j_spine1"
			}
		},
		neck = {
			prio = 1,
			actors = {
				"c_neck"
			},
			push_actors = {
				"j_head",
				"j_neck",
				"j_spine1"
			}
		},
		torso = {
			prio = 2,
			actors = {
				"c_spine",
				"c_hips"
			},
			push_actors = {
				"j_neck",
				"j_spine1",
				"j_hips"
			}
		},
		left_arm = {
			prio = 3,
			actors = {
				"c_leftarm",
				"c_leftforearm",
				"c_lefthand",
				"c_leftshoulder"
			},
			push_actors = {
				"j_spine1",
				"j_leftshoulder",
				"j_leftarm"
			}
		},
		right_arm = {
			prio = 3,
			actors = {
				"c_rightarm",
				"c_rightforearm",
				"c_righthand",
				"c_rightshoulder"
			},
			push_actors = {
				"j_spine1",
				"j_rightshoulder",
				"j_rightarm"
			}
		},
		left_leg = {
			prio = 3,
			actors = {
				"c_leftupleg",
				"c_leftleg",
				"c_leftfoot"
			},
			push_actors = {
				"j_leftfoot",
				"j_rightfoot",
				"j_hips"
			}
		},
		right_leg = {
			prio = 3,
			actors = {
				"c_rightupleg",
				"c_rightleg",
				"c_rightfoot"
			},
			push_actors = {
				"j_leftfoot",
				"j_rightfoot",
				"j_hips"
			}
		},
		weakspot = {
			prio = 1,
			actors = {
				"c_weakpoint"
			},
			push_actors = {
				"j_spine1"
			}
		},
		full = {
			prio = 4,
			actors = {}
		},
		afro = {
			prio = 5,
			actors = {
				"c_afro"
			}
		}
	},
	hitbox_ragdoll_translation = {
		c_spine = "j_spine1",
		c_head = "j_head",
		c_leftforearm = "j_leftforearm",
		c_rightfoot = "j_rightfoot",
		c_lefthand = "j_lefthand",
		c_rightleg = "j_rightleg",
		c_leftfoot = "j_leftfoot",
		c_neck = "j_neck",
		c_leftleg = "j_leftleg",
		c_leftupleg = "j_leftupleg",
		c_rightarm = "j_rightarm",
		c_rightupleg = "j_rightupleg",
		c_leftarm = "j_leftarm",
		c_rightforearm = "j_rightforearm",
		c_hips = "j_hips",
		c_righthand = "j_righthand"
	},
	ragdoll_actor_thickness = {
		j_rightfoot = 0.2,
		j_spine1 = 0.3,
		j_leftarm = 0.2,
		j_leftforearm = 0.2,
		j_leftleg = 0.2,
		j_leftshoulder = 0.3,
		j_righthand = 0.2,
		j_leftupleg = 0.2,
		j_rightshoulder = 0.3,
		j_rightarm = 0.2,
		j_hips = 0.3,
		j_rightleg = 0.2,
		j_leftfoot = 0.2,
		j_rightupleg = 0.2,
		j_head = 0.3,
		j_neck = 0.3,
		j_lefthand = 0.2,
		j_rightforearm = 0.2
	},
	networked_animation_variables = {
		{
			anims = {
				"attack_run"
			},
			variables = {
				moving_attack_fwd_speed = {
					move_speed_variable_lerp_speed = 4,
					animation_move_speed_config = {
						{
							value = 4,
							distance = 3.5
						},
						{
							value = 3,
							distance = 3
						},
						{
							value = 2,
							distance = 2.5
						},
						{
							value = 1,
							distance = 2
						},
						{
							value = 0,
							distance = 0
						}
					}
				}
			}
		}
	}
}

Breeds.chaos_bulwark = table.create_copy(Breeds.chaos_bulwark, breed_data)

local AttackIntensityPerDifficulty = {
	normal = {
		easy = {
			normal = 3
		},
		normal = {
			normal = 3
		},
		hard = {
			normal = 3
		},
		harder = {
			normal = 3
		},
		hardest = {
			normal = 3
		},
		cataclysm = {
			normal = 3
		},
		cataclysm_2 = {
			normal = 3
		},
		cataclysm_3 = {
			normal = 3
		},
		versus_base = {
			normal = 3
		}
	},
	sweep = {
		easy = {
			normal = 2,
			sweep = 4
		},
		normal = {
			normal = 2,
			sweep = 4
		},
		hard = {
			normal = 2,
			sweep = 4
		},
		harder = {
			normal = 2,
			sweep = 4
		},
		hardest = {
			normal = 2,
			sweep = 4
		},
		cataclysm = {
			normal = 2,
			sweep = 4
		},
		cataclysm_2 = {
			normal = 2,
			sweep = 4
		},
		cataclysm_3 = {
			normal = 2,
			sweep = 4
		},
		versus_base = {
			normal = 2,
			sweep = 4
		}
	},
	push = {
		easy = {
			push = 1.5
		},
		normal = {
			push = 1.5
		},
		hard = {
			push = 1.5
		},
		harder = {
			push = 1.5
		},
		hardest = {
			push = 1.5
		},
		cataclysm = {
			push = 1.5
		},
		cataclysm_2 = {
			push = 1.5
		},
		cataclysm_3 = {
			push = 1.5
		},
		versus_base = {
			push = 1.5
		}
	},
	running = {
		easy = {
			running = 4.5
		},
		normal = {
			running = 4.5
		},
		hard = {
			running = 4.5
		},
		harder = {
			running = 4.5
		},
		hardest = {
			running = 4.5
		},
		cataclysm = {
			running = 4.5
		},
		cataclysm_2 = {
			running = 4.5
		},
		cataclysm_3 = {
			running = 4.5
		},
		versus_base = {
			running = 4.5
		}
	}
}
local action_data = {
	idle = {
		idle = {
			"idle",
			"idle_2"
		},
		idle_combat = {
			"idle_defence"
		}
	},
	alerted = {
		no_hesitation = true,
		override_time_alerted = 0.2,
		start_anims_name = {
			bwd = "alerted_bwd",
			fwd = "alerted_fwd",
			left = "alerted_left",
			right = "alerted_right"
		},
		start_anims_data = {
			alerted_fwd = {},
			alerted_bwd = {
				dir = -1,
				rad = math.pi
			},
			alerted_left = {
				dir = 1,
				rad = math.pi / 2
			},
			alerted_right = {
				dir = -1,
				rad = math.pi / 2
			}
		}
	},
	follow = {
		ignore_target_velocity = true,
		action_weight = 1,
		considerations = UtilityConsiderations.chaos_bulwark_follow,
		start_anims_name = {
			bwd = "move_start_bwd",
			fwd = "move_start_fwd",
			left = "move_start_left",
			right = "move_start_right"
		},
		start_anims_data = {
			move_start_fwd = {},
			move_start_bwd = {
				dir = -1,
				rad = math.pi
			},
			move_start_left = {
				dir = 1,
				rad = math.pi / 2
			},
			move_start_right = {
				dir = -1,
				rad = math.pi / 2
			}
		}
	},
	special_attack_sweep = {
		range = 2.5,
		offset_forward = 0.5,
		player_push_speed = 5,
		push = true,
		no_block_stagger = true,
		step_attack_target_speed_away_override = 0.6,
		damage = 15,
		knocked_down_attack_threshold = 0.6,
		attack_intensity_type = "sweep",
		action_weight = 1,
		player_push_speed_blocked = 7.5,
		width = 1,
		height = 1,
		rotation_time = 1,
		hit_react_type = "medium",
		blocked_anim = "blocked",
		bot_threat_start_time = 0.4,
		damage_type = "cutting",
		offset_up = 0,
		step_attack_target_speed_away = 0.2,
		bot_threat_duration = 0.7,
		reset_attack_animation_speed = 1.2,
		step_attack_distance = 0.2,
		bot_threat_start_time_step = 0.5,
		step_attack_distance_override = 0.7,
		difficulty_attack_intensity = AttackIntensityPerDifficulty,
		considerations = UtilityConsiderations.chaos_bulwark_sweep_attack,
		attack_anim = {
			"attack_sweep_01",
			"attack_sweep_02",
			"attack_sweep_03",
			"attack_sweep_04"
		},
		knocked_down_attack_anim = {
			"attack_downed"
		},
		reset_attack_animations = {
			"attack_right_reset"
		},
		difficulty_damage = BreedTweaks.difficulty_damage.elite_attack,
		fatigue_type = BreedTweaks.fatigue_types.elite_sweep.normal_attack,
		ignore_staggers = {
			false,
			false,
			false,
			true,
			true,
			false,
			false,
			false
		},
		attack_finished_duration = BreedTweaks.attack_finished_duration.chaos_elite
	},
	special_attack_quick = {
		step_attack_distance = 0.2,
		height = 1,
		reset_attack_animation_speed = 1.3,
		push = true,
		player_push_speed = 10,
		rotation_time = 0.75,
		hit_react_type = "heavy",
		range = 3,
		step_attack_target_speed_away = 0.2,
		no_block_stagger = true,
		offset_forward = 0,
		damage_type = "blunt",
		offset_up = 0,
		step_attack_target_speed_away_override = 0.6,
		damage = 0,
		fatigue_type = "bulwark_shield_bash",
		knocked_down_attack_threshold = 0.6,
		attack_intensity_type = "normal",
		action_weight = 1,
		player_push_speed_blocked = 8,
		step_attack_distance_override = 0.7,
		width = 0.4,
		difficulty_attack_intensity = AttackIntensityPerDifficulty,
		considerations = UtilityConsiderations.chaos_bulwark_push_attack,
		attack_anim = {
			"attack_quick_01"
		},
		knocked_down_attack_anim = {
			"attack_downed"
		},
		step_attack_anim = {
			"attack_push"
		},
		difficulty_damage = BreedTweaks.difficulty_damage.elite_shield_push,
		ignore_staggers = {
			true,
			false,
			false,
			true,
			true,
			false,
			false,
			false
		},
		attack_finished_duration = BreedTweaks.attack_finished_duration.chaos_elite
	},
	running_attack_right = {
		damage = 20,
		cooldown = 1,
		target_running_velocity_threshold = 0,
		attack_intensity_type = "running",
		action_weight = 1,
		difficulty_attack_intensity = AttackIntensityPerDifficulty,
		considerations = UtilityConsiderations.chaos_bulwark_running_attack,
		difficulty_damage = BreedTweaks.difficulty_damage.elite_attack,
		fatigue_type = BreedTweaks.fatigue_types.elite_sweep.running_attack,
		attacks = {
			{
				height = 1,
				offset_forward = 0.5,
				movement_speed = "run_speed",
				blend_time = 0.2,
				catapult_player = true,
				rotation_time = 1.5,
				anim_driven = true,
				player_push_speed = 6,
				hit_multiple_targets = true,
				bot_threat_start_time = 0.5,
				hit_only_players = false,
				player_push_speed_blocked_z = 2,
				ignore_targets_behind = true,
				offset_up = 0.5,
				player_push_speed_z = 2,
				range = 2.5,
				lock_attack_time = 2.1,
				bot_threat_duration = 0.7,
				reset_attack_animation_speed = 1.3,
				rotation_speed = 9,
				player_push_speed_blocked = 6,
				width = 1,
				attack_anim = {
					"attack_run"
				},
				attack_time = math.huge,
				ignore_staggers = {
					false,
					false,
					false,
					true,
					false,
					false,
					false,
					false
				},
				attack_finished_duration = BreedTweaks.attack_finished_duration.chaos_elite
			}
		}
	},
	running_attack_charging = {
		fatigue_type = "bulwark_shield_bash",
		damage_type = "blunt",
		damage = 0,
		cooldown = 1,
		target_running_velocity_threshold = 0,
		attack_intensity_type = "running",
		action_weight = 1,
		no_block_stagger = true,
		difficulty_attack_intensity = AttackIntensityPerDifficulty,
		considerations = UtilityConsiderations.chaos_bulwark_running_attack_charging,
		difficulty_damage = BreedTweaks.difficulty_damage.elite_shield_push,
		attacks = {
			{
				bot_threat_duration = 0.7,
				offset_forward = 0.5,
				height = 1,
				blend_time = 0.2,
				catapult_player = true,
				rotation_time = 1.5,
				anim_driven = true,
				hit_multiple_targets = true,
				hit_only_players = false,
				bot_threat_start_time = 0.5,
				ignore_targets_behind = true,
				player_push_speed_blocked_z = 1,
				offset_up = 0.5,
				player_push_speed_z = 1,
				range = 2,
				lock_attack_time = 2.1,
				player_push_speed = 16,
				reset_attack_animation_speed = 1.3,
				movement_speed = "run_speed",
				player_push_speed_blocked = 12,
				width = 1,
				attack_anim = {
					"attack_push_run_01"
				},
				attack_time = math.huge,
				ignore_staggers = {
					true,
					true,
					true,
					true,
					false,
					false,
					false,
					false
				},
				attack_finished_duration = BreedTweaks.attack_finished_duration.chaos_elite
			}
		}
	},
	push_attack = {
		damage = 0,
		hit_react_type = "heavy",
		fatigue_type = "bulwark_shield_bash",
		attack_intensity_type = "push",
		action_weight = 1,
		impact_push_speed = 11,
		damage_type = "blunt",
		unblockable = true,
		max_impact_push_speed = 9,
		difficulty_attack_intensity = AttackIntensityPerDifficulty,
		considerations = UtilityConsiderations.chaos_bulwark_push_attack,
		attack_anim = {
			"attack_push"
		},
		ignore_staggers = {
			true,
			true,
			true,
			true,
			true,
			false,
			false,
			false
		},
		attack_finished_duration = BreedTweaks.attack_finished_duration.chaos_elite
	},
	smash_door = {
		unblockable = true,
		damage = 3,
		damage_type = "cutting",
		move_anim = "move_fwd",
		attack_anim = {
			"attack_blocker",
			"attack_blocker_2"
		}
	},
	blocked = {
		blocked_anims = {
			"blocked"
		},
		difficulty_duration = BreedTweaks.blocked_duration.chaos_elite
	},
	stagger = {
		custom_enter_function = function (unit, blackboard, t, action)
			assert(ScriptUnit.has_extension(unit, "ai_shield_system"), "chaos bulwark dont have ai_shield_user_extension")

			local ai_shield_extension = ScriptUnit.extension(unit, "ai_shield_system")
			local breed = blackboard.breed
			local stagger = blackboard.stagger
			local idle_event = "idle_shield_down"
			local new_impact_dir = Quaternion.forward(Unit.local_rotation(unit, 0))
			local override_rotation = Quaternion.look(new_impact_dir)
			local stagger_anims, stagger_time

			if blackboard.stagger_level == custom_stagger_types.shield_block_stagger then
				stagger_time = blackboard.stagger_time + math.max(0.5, stagger * 0.3) * breed.block_stagger_mod
				stagger_anims = action.stagger_anims[custom_stagger_types.shield_block_stagger]

				blackboard.stagger_direction:store(new_impact_dir)
				ai_shield_extension:set_is_blocking(true)
			elseif blackboard.stagger_level == custom_stagger_types.shield_open_stagger then
				stagger_time = blackboard.stagger_time + stagger * 0.3 * breed.block_stagger_mod_2
				stagger_anims = action.stagger_anims[custom_stagger_types.shield_open_stagger]

				blackboard.stagger_direction:store(new_impact_dir)

				blackboard.reset_after_stagger = true

				ai_shield_extension:set_is_blocking(false)
			else
				stagger_anims = action.stagger_anims[blackboard.stagger_type]
				stagger_time = blackboard.stagger_time + stagger * 0.5 * breed.block_stagger_mod_2
				override_rotation = nil
				blackboard.max_stagger_reached = true
				blackboard.reset_after_stagger = true

				ai_shield_extension:set_is_blocking(false)
			end

			blackboard.stagger_time = stagger_time

			return stagger_anims, idle_event, idle_event, override_rotation
		end,
		stagger_anims = {
			{
				fwd = {
					"stagger_shield_damage_01",
					"stagger_shield_damage_02",
					"stagger_shield_damage_03",
					"stagger_shield_damage_04"
				},
				bwd = {
					"stagger_shield_damage_01",
					"stagger_shield_damage_02",
					"stagger_shield_damage_03",
					"stagger_shield_damage_04"
				},
				left = {
					"stagger_shield_damage_01",
					"stagger_shield_damage_02",
					"stagger_shield_damage_03",
					"stagger_shield_damage_04"
				},
				right = {
					"stagger_shield_damage_01",
					"stagger_shield_damage_02",
					"stagger_shield_damage_03",
					"stagger_shield_damage_04"
				},
				dwn = {
					"stagger_shield_damage_01",
					"stagger_shield_damage_02",
					"stagger_shield_damage_03",
					"stagger_shield_damage_04"
				}
			},
			{
				fwd = {
					"stagger_shield_damage_01",
					"stagger_shield_damage_02",
					"stagger_shield_damage_03",
					"stagger_shield_damage_04"
				},
				bwd = {
					"stagger_shield_damage_01",
					"stagger_shield_damage_02",
					"stagger_shield_damage_03",
					"stagger_shield_damage_04"
				},
				left = {
					"stagger_shield_damage_01",
					"stagger_shield_damage_02",
					"stagger_shield_damage_03",
					"stagger_shield_damage_04"
				},
				right = {
					"stagger_shield_damage_01",
					"stagger_shield_damage_02",
					"stagger_shield_damage_03",
					"stagger_shield_damage_04"
				}
			},
			{
				fwd = {
					"stagger_shield_damage_01",
					"stagger_shield_damage_02",
					"stagger_shield_damage_03",
					"stagger_shield_damage_04"
				},
				bwd = {
					"stagger_shield_damage_01",
					"stagger_shield_damage_02",
					"stagger_shield_damage_03",
					"stagger_shield_damage_04"
				},
				left = {
					"stagger_shield_damage_01",
					"stagger_shield_damage_02",
					"stagger_shield_damage_03",
					"stagger_shield_damage_04"
				},
				right = {
					"stagger_shield_damage_01",
					"stagger_shield_damage_02",
					"stagger_shield_damage_03",
					"stagger_shield_damage_04"
				}
			},
			{
				fwd = {
					"stagger_shield_damage_01",
					"stagger_shield_damage_02",
					"stagger_shield_damage_03",
					"stagger_shield_damage_04"
				},
				bwd = {
					"stagger_shield_damage_01",
					"stagger_shield_damage_02",
					"stagger_shield_damage_03",
					"stagger_shield_damage_04"
				},
				left = {
					"stagger_shield_damage_01",
					"stagger_shield_damage_02",
					"stagger_shield_damage_03",
					"stagger_shield_damage_04"
				},
				right = {
					"stagger_shield_damage_01",
					"stagger_shield_damage_02",
					"stagger_shield_damage_03",
					"stagger_shield_damage_04"
				}
			},
			{
				fwd = {
					"stagger_shield_damage_01",
					"stagger_shield_damage_02",
					"stagger_shield_damage_03",
					"stagger_shield_damage_04"
				},
				bwd = {
					"stagger_shield_damage_01",
					"stagger_shield_damage_02",
					"stagger_shield_damage_03",
					"stagger_shield_damage_04"
				},
				left = {
					"stagger_shield_damage_01",
					"stagger_shield_damage_02",
					"stagger_shield_damage_03",
					"stagger_shield_damage_04"
				},
				right = {
					"stagger_shield_damage_01",
					"stagger_shield_damage_02",
					"stagger_shield_damage_03",
					"stagger_shield_damage_04"
				}
			},
			{
				fwd = {
					"stagger_fwd_exp"
				},
				bwd = {
					"stagger_bwd_exp"
				},
				left = {
					"stagger_left_exp"
				},
				right = {
					"stagger_right_exp"
				}
			},
			{
				fwd = {
					"stagger_shield_damage_01",
					"stagger_shield_damage_02",
					"stagger_shield_damage_03",
					"stagger_shield_damage_04"
				},
				bwd = {
					"stagger_shield_damage_01",
					"stagger_shield_damage_02",
					"stagger_shield_damage_03",
					"stagger_shield_damage_04"
				},
				left = {
					"stagger_shield_damage_01",
					"stagger_shield_damage_02",
					"stagger_shield_damage_03",
					"stagger_shield_damage_04"
				},
				right = {
					"stagger_shield_damage_01",
					"stagger_shield_damage_02",
					"stagger_shield_damage_03",
					"stagger_shield_damage_04"
				}
			},
			{
				fwd = {
					"stagger_shield_damage_01",
					"stagger_shield_damage_02",
					"stagger_shield_damage_03",
					"stagger_shield_damage_04"
				},
				bwd = {
					"stagger_shield_damage_01",
					"stagger_shield_damage_02",
					"stagger_shield_damage_03",
					"stagger_shield_damage_04"
				},
				left = {
					"stagger_shield_damage_01",
					"stagger_shield_damage_02",
					"stagger_shield_damage_03",
					"stagger_shield_damage_04"
				},
				right = {
					"stagger_shield_damage_01",
					"stagger_shield_damage_02",
					"stagger_shield_damage_03",
					"stagger_shield_damage_04"
				},
				dwn = {
					"stagger_shield_damage_01",
					"stagger_shield_damage_02",
					"stagger_shield_damage_03",
					"stagger_shield_damage_04"
				}
			},
			{
				fwd = {
					"stagger_shield_damage_01",
					"stagger_shield_damage_02",
					"stagger_shield_damage_03",
					"stagger_shield_damage_04"
				},
				bwd = {
					"stagger_shield_damage_01",
					"stagger_shield_damage_02",
					"stagger_shield_damage_03",
					"stagger_shield_damage_04"
				},
				left = {
					"stagger_shield_damage_01",
					"stagger_shield_damage_02",
					"stagger_shield_damage_03",
					"stagger_shield_damage_04"
				},
				right = {
					"stagger_shield_damage_01",
					"stagger_shield_damage_02",
					"stagger_shield_damage_03",
					"stagger_shield_damage_04"
				},
				dwn = {
					"stagger_shield_damage_01",
					"stagger_shield_damage_02",
					"stagger_shield_damage_03",
					"stagger_shield_damage_04"
				}
			},
			{
				fwd = {
					"stagger_shield_block_01",
					"stagger_shield_block_02",
					"stagger_shield_block_03",
					"stagger_shield_block_04",
					"stagger_shield_block_05"
				},
				bwd = {
					"stagger_shield_block_01",
					"stagger_shield_block_02",
					"stagger_shield_block_03",
					"stagger_shield_block_04",
					"stagger_shield_block_05"
				},
				left = {
					"stagger_shield_block_left"
				},
				right = {
					"stagger_shield_block_right"
				},
				dwn = {
					"stagger_shield_block_01",
					"stagger_shield_block_02",
					"stagger_shield_block_03",
					"stagger_shield_block_04",
					"stagger_shield_block_05"
				}
			},
			{
				fwd = {
					"stagger_shield_break_01",
					"stagger_shield_break_02",
					"stagger_shield_break_03",
					"stagger_shield_break_04",
					"stagger_shield_break_05"
				},
				bwd = {
					"stagger_shield_break_01",
					"stagger_shield_break_02",
					"stagger_shield_break_03",
					"stagger_shield_break_04",
					"stagger_shield_break_05"
				},
				left = {
					"stagger_shield_break_01",
					"stagger_shield_break_02",
					"stagger_shield_break_03",
					"stagger_shield_break_04",
					"stagger_shield_break_05"
				},
				right = {
					"stagger_shield_break_01",
					"stagger_shield_break_02",
					"stagger_shield_break_03",
					"stagger_shield_break_04",
					"stagger_shield_break_05"
				},
				dwn = {
					"stagger_shield_break_01",
					"stagger_shield_break_02",
					"stagger_shield_break_03",
					"stagger_shield_break_04",
					"stagger_shield_break_05"
				}
			}
		}
	}
}

BreedActions.chaos_bulwark = table.create_copy(BreedActions.chaos_bulwark, action_data)
