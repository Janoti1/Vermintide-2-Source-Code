local stagger_types = require("scripts/utils/stagger_types")
local breed_data = {
	detection_radius = 18,
	radius = 1,
	walk_speed = 1.8,
	leave_walk_distance = 5,
	aim_template = "chaos_marauder",
	patrol_active_target_selection = "pick_closest_target_with_spillover",
	exchange_order = 4,
	flingable = true,
	hit_effect = "fx/tower_skeletons_hit",
	target_selection = "pick_closest_target_with_spillover",
	is_always_spawnable = true,
	aoe_height = 1.4,
	debug_spawn_category = "Misc",
	no_blood = true,
	animation_sync_rpc = "rpc_sync_anim_state_8",
	stagger_threshold_heavy = 3,
	slot_template = "chaos_roamer",
	poison_resistance = 100,
	uses_spawn_animation = true,
	wield_inventory_on_spawn = true,
	attack_general_sound_event = "Play_enemy_undead_ethereal_skeleton_attack_vce_husk",
	default_inventory_template = "undead_ethereal_skeleton_2h",
	stagger_resistance = 2,
	patrol_detection_radius = 10,
	hit_mass_count = 1.5,
	hesitation_timer = 5,
	die_on_vortex_land = true,
	panic_close_detection_radius_sq = 9,
	height = 1.5,
	use_slot_type = "normal",
	attack_player_sound_event = "Play_enemy_undead_ethereal_skeleton_attack_vce",
	look_at_range = 40,
	patrol_active_perception = "perception_regular",
	no_stagger_duration = false,
	perception_previous_attacker_stickyness_value = -7.75,
	race = "undead",
	uses_attack_sfx_callback = true,
	ai_strength = 4,
	death_reaction = "ai_default",
	armor_category = 1,
	push_sound_event = "Play_generic_pushed_impact_large",
	backstab_player_sound_event = "Play_enemy_undead_ethereal_skeleton_attack_vce_back",
	death_sound_event = "Play_enemy_undead_ethereal_skeleton_death",
	is_bot_threat = true,
	threat_value = 2.5,
	bone_lod_level = 1,
	smart_object_template = "chaos_marauder",
	smart_targeting_width = 0.2,
	behavior = "ethereal_skeleton_with_hammer",
	use_regular_horde_spawning = false,
	during_horde_detection_radius = 15,
	shield_user = false,
	has_inventory = true,
	run_speed = 4.8,
	follow_reach = 1,
	ai_toughness = 2,
	stagger_multiplier = 1,
	stagger_threshold_light = 0.1,
	hit_reaction = "ai_default",
	passive_in_patrol = false,
	patrol_passive_target_selection = "patrol_passive_target_selection",
	smart_targeting_outer_width = 0.75,
	hit_effect_template = "HitEffectsUndeadEtherealSkeleton",
	smart_targeting_height_multiplier = 2,
	passive_walk_speed = 4.8,
	horde_behavior = "ethereal_skeleton_with_hammer",
	unit_template = "ai_unit_skeleton",
	has_running_attack = true,
	no_stagger_damage_reduction = true,
	perception = "perception_regular",
	player_locomotion_constrain_radius = 0.7,
	weapon_reach = 2.5,
	horde_target_selection = "horde_pick_closest_target_with_spillover",
	use_backstab_vo = true,
	patrol_passive_perception = "perception_regular",
	vortexable = true,
	base_unit = "units/beings/enemies/undead_ethereal_skeleton/chr_undead_ethereal_skeleton",
	enter_walk_distance = 2.5,
	infighting = InfightingSettings.small,
	passive_in_patrol_start_anim = {
		"move_fwd_4",
		"move_fwd_5",
		"move_fwd_6"
	},
	default_spawn_animation = {
		"spawn_floor",
		"spawn_floor_2",
		"spawn_floor_3",
		"spawn_floor_4",
		"spawn_floor_5",
		"spawn_floor_6",
		"spawn_floor_7",
		"spawn_floor_2",
		"spawn_floor_3",
		"spawn_floor_4",
		"spawn_floor_5",
		"spawn_floor_6",
		"spawn_floor_7"
	},
	perception_exceptions = {
		poison_well = true,
		wizard_destructible = true
	},
	size_variation_range = {
		0.95,
		1.125
	},
	blackboard_init_data = {
		player_locomotion_constrain_radius = 0
	},
	max_health = BreedTweaks.max_health.marauder,
	bloodlust_health = BreedTweaks.bloodlust_health.chaos_elite,
	diff_stagger_resist = BreedTweaks.diff_stagger_resist.marauder,
	stagger_reduction = BreedTweaks.stagger_reduction.marauder,
	stagger_duration = BreedTweaks.stagger_duration.marauder,
	hit_mass_counts = BreedTweaks.hit_mass_counts.clan_rat,
	status_effect_settings = {
		category = "small",
		ignored_statuses = table.set({
			StatusEffectNames.burning,
			StatusEffectNames.burning_warpfire,
			StatusEffectNames.poisoned
		})
	},
	debug_color = {
		255,
		200,
		40,
		40
	},
	stagger_modifier_function = function (stagger_type, duration, length, hit_zone_name, blackboard, breed)
		if blackboard.stagger_type == stagger_types.heavy or blackboard.stagger_type == stagger_types.explosion then
			if stagger_type == stagger_types.heavy and blackboard.heavy_stagger_immune_time then
				stagger_type = stagger_types.none
				duration = 0
				length = 0
			elseif stagger_type ~= stagger_types.heavy and blackboard.stagger_immune_time then
				stagger_type = stagger_types.none
				duration = 0
				length = 0
			end
		end

		return stagger_type, duration, length
	end,
	BTHesitationVariations = {
		hesitate = {
			"outnumbered_1",
			"outnumbered_2",
			"outnumbered_4",
			"outnumbered_5",
			"outnumbered_6",
			"outnumbered_7",
			"outnumbered_8",
			"outnumbered_9"
		},
		hesitate_bwd = {
			"hesitate_bwd_2",
			"hesitate_bwd_3",
			"hesitate_bwd_4",
			"hesitate_bwd_5",
			"hesitate_bwd_6",
			"hesitate_bwd"
		}
	},
	hitzone_multiplier_types = {
		head = "headshot"
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
				"j_neck1",
				"j_spine2"
			}
		},
		neck = {
			prio = 1,
			actors = {
				"c_neck",
				"c_neck1"
			},
			push_actors = {
				"j_head",
				"j_neck",
				"j_neck1",
				"j_spine2"
			}
		},
		torso = {
			prio = 2,
			actors = {
				"c_spine2",
				"c_spine1",
				"c_spine",
				"c_hips"
			},
			push_actors = {
				"j_neck",
				"j_spine2",
				"j_spine1",
				"j_hips",
				"j_spine"
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
				"j_spine2",
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
				"j_spine2",
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
				"j_leftleg",
				"j_hips",
				"j_spine"
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
				"j_rightfoot",
				"j_rightleg",
				"j_hips",
				"j_spine"
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
		c_leftupleg = "j_leftupleg",
		c_rightarm = "j_rightarm",
		c_rightshoulder = "j_rightshoulder",
		c_rightfoot = "j_rightfoot",
		c_head = "j_head",
		c_rightleg = "j_rightleg",
		c_lefthand = "j_lefthand",
		c_rightforearm = "j_rightforearm",
		c_leftleg = "j_leftleg",
		c_spine2 = "j_spine2",
		c_righthand = "j_righthand",
		c_rightupleg = "j_rightupleg",
		c_neck1 = "j_neck1",
		c_spine = "j_spine",
		c_leftshoulder = "j_leftshoulder",
		c_leftforearm = "j_leftforearm",
		c_leftfoot = "j_leftfoot",
		c_neck = "j_neck",
		c_spine1 = "j_spine1",
		c_leftarm = "j_leftarm",
		c_hips = "j_hips"
	},
	ragdoll_actor_thickness = {
		j_rightfoot = 0.2,
		j_leftarm = 0.2,
		j_leftleg = 0.2,
		j_leftforearm = 0.2,
		j_leftshoulder = 0.3,
		j_neck = 0.3,
		j_neck1 = 0.3,
		j_leftupleg = 0.2,
		j_rightshoulder = 0.3,
		j_rightarm = 0.2,
		j_righttoebase = 0.2,
		j_righthand = 0.2,
		j_hips = 0.3,
		j_rightleg = 0.2,
		j_leftfoot = 0.2,
		j_rightupleg = 0.2,
		j_lefttoebase = 0.2,
		j_head = 0.3,
		j_spine2 = 0.3,
		j_spine1 = 0.3,
		j_spine = 0.3,
		j_lefthand = 0.2,
		j_rightforearm = 0.2
	},
	allowed_layers = {
		planks = 1.5,
		ledges = 1.5,
		bot_ratling_gun_fire = 1,
		jumps = 0,
		ledges_with_fence = 0,
		doors = 1.5,
		teleporters = 5,
		bot_poison_wind = 1.5,
		fire_grenade = 1
	}
}

Breeds.ethereal_skeleton_with_hammer = table.create_copy(Breeds.ethereal_skeleton_with_hammer, breed_data)

local AttackIntensityPerDifficulty = {
	sweep = {
		easy = {
			normal = 1.5,
			sweep = 3
		},
		normal = {
			normal = 1.5,
			sweep = 3
		},
		hard = {
			normal = 1.5,
			sweep = 3
		},
		harder = {
			normal = 1.5,
			sweep = 3
		},
		hardest = {
			normal = 1.5,
			sweep = 3
		},
		cataclysm = {
			normal = 1.5,
			sweep = 3
		},
		cataclysm_2 = {
			normal = 1.5,
			sweep = 3
		},
		cataclysm_3 = {
			normal = 1.5,
			sweep = 3
		}
	},
	cleave = {
		easy = {
			cleave = 3,
			normal = 1.5
		},
		normal = {
			cleave = 3,
			normal = 1.5
		},
		hard = {
			cleave = 3,
			normal = 1.5
		},
		harder = {
			cleave = 3,
			normal = 1.5
		},
		hardest = {
			cleave = 3,
			normal = 1.5
		},
		cataclysm = {
			cleave = 3,
			normal = 1.5
		},
		cataclysm_2 = {
			cleave = 3,
			normal = 1.5
		},
		cataclysm_3 = {
			cleave = 3,
			normal = 1.5
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
		}
	},
	running = {
		easy = {
			running = 3.5
		},
		normal = {
			running = 3.5
		},
		hard = {
			running = 3.5
		},
		harder = {
			running = 3.5
		},
		hardest = {
			running = 3.5
		},
		cataclysm = {
			running = 3.5
		},
		cataclysm_2 = {
			running = 3.5
		},
		cataclysm_3 = {
			running = 3.5
		}
	}
}
local action_data = {
	alerted = {
		action_weight = 1,
		no_hesitation = true,
		cooldown = -1,
		close_range_alert_idle = false,
		override_time_alerted = 1.8,
		alerted_anims = {
			"alerted"
		},
		easter_egg_alerted_anims = {
			"alerted_2"
		},
		start_anims_name = {
			fwd = {
				"alerted_fwd"
			},
			bwd = {
				"alerted_bwd"
			},
			left = {
				"alerted_left"
			},
			right = {
				"alerted_right"
			}
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
		cooldown = -1,
		action_weight = 1,
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
		},
		considerations = UtilityConsiderations.clan_rat_follow
	},
	special_attack = {
		action_weight = 1,
		considerations = UtilityConsiderations.chaos_raider_special_attack
	},
	moving_attack = {
		action_weight = 10,
		considerations = UtilityConsiderations.chaos_raider_moving_attack
	},
	running_attack = {
		hit_react_type = "heavy",
		height = 1.1,
		offset_forward = 0.5,
		cooldown = 1,
		rotation_time = 1,
		bot_threat_start_time = 1,
		damage_type = "cutting",
		offset_up = 0,
		attack_anim = "attack_cleave",
		range = 1.95,
		damage = 30,
		bot_threat_duration = 0.7,
		attack_intensity_type = "running",
		action_weight = 10,
		move_anim = "move_fwd",
		width = 1.6,
		difficulty_attack_intensity = AttackIntensityPerDifficulty,
		considerations = UtilityConsiderations.chaos_raider_running_attack,
		step_attack_anim = {
			"attack_run",
			"attack_run_2"
		},
		difficulty_damage = BreedTweaks.difficulty_damage.chaos_roamer_attack,
		fatigue_type = BreedTweaks.fatigue_types.elite_sweep.running_attack,
		attack_finished_duration = BreedTweaks.attack_finished_duration.chaos_elite
	},
	special_attack_cleave = {
		height = 2,
		offset_forward = 0,
		hit_react_type = "heavy",
		rotation_time_step = 2.1,
		cooldown = 1,
		rotation_time = 1,
		bot_threat_start_time = 0.7,
		no_block_stagger = true,
		damage_type = "cutting",
		offset_up = 0,
		range = 2.75,
		damage = 30,
		bot_threat_duration = 0.7,
		attack_intensity_type = "cleave",
		bot_threat_start_time_step = 1.6,
		move_anim = "move_fwd",
		width = 0.4,
		difficulty_attack_intensity = AttackIntensityPerDifficulty,
		attack_anim = {
			"attack_cleave",
			"attack_cleave_02"
		},
		step_attack_anim = {
			"attack_cleave_moving_01"
		},
		difficulty_damage = BreedTweaks.difficulty_damage.beastmen_roamer_attack,
		fatigue_type = BreedTweaks.fatigue_types.elite_cleave.normal_attack,
		attack_finished_duration = BreedTweaks.attack_finished_duration.chaos_elite
	},
	special_attack_sweep = {
		offset_forward = 0.5,
		height = 1.1,
		cooldown = 1,
		rotation_time = 1,
		bot_threat_start_time = 0.6,
		damage_type = "cutting",
		offset_up = 0,
		range = 2.6,
		damage = 20,
		bot_threat_duration = 0.7,
		attack_intensity_type = "sweep",
		move_anim = "move_fwd",
		width = 1.6,
		difficulty_attack_intensity = AttackIntensityPerDifficulty,
		attack_anim = {
			"attack_pounce",
			"attack_pounce_2",
			"attack_pounce_3",
			"attack_pounce_4"
		},
		step_attack_anim = {
			"attack_move",
			"attack_move_2"
		},
		difficulty_damage = BreedTweaks.difficulty_damage.chaos_roamer_attack,
		fatigue_type = BreedTweaks.fatigue_types.elite_sweep.normal_attack,
		attack_finished_duration = BreedTweaks.attack_finished_duration.chaos_elite
	},
	push_attack = {
		impact_push_speed = 7,
		damage = 0,
		fatigue_type = "sv_push",
		hit_react_type = "heavy",
		max_impact_push_speed = 8,
		attack_intensity_type = "push",
		action_weight = 1,
		damage_type = "blunt",
		unblockable = true,
		attack_anim = "attack_push",
		difficulty_attack_intensity = AttackIntensityPerDifficulty,
		considerations = UtilityConsiderations.chaos_raider_push_attack,
		attack_finished_duration = BreedTweaks.attack_finished_duration.chaos_elite
	},
	combat_shout = {
		cooldown = -1,
		shout_anim = "shout",
		action_weight = 1,
		considerations = UtilityConsiderations.clan_rat_shout
	},
	smash_door = {
		unblockable = true,
		name = "smash_door",
		damage = 3,
		damage_type = "cutting",
		move_anim = "move_fwd",
		attack_anim = "attack_blocker"
	},
	blocked = {
		blocked_anims = {
			"blocked",
			"blocked_2"
		},
		difficulty_duration = BreedTweaks.blocked_duration.chaos_elite
	},
	stagger = {
		scale_animation_speeds = true,
		custom_enter_function = function (unit, blackboard, t, action)
			if blackboard.stagger_type == stagger_types.heavy then
				blackboard.stagger_immune_time = t + 2.25
				blackboard.heavy_stagger_immune_time = t + 1.5
			elseif blackboard.stagger_type == stagger_types.explosion then
				blackboard.stagger_immune_time = t + 3.5
			end

			local stagger_anims = action.stagger_anims[blackboard.stagger_type]

			return stagger_anims, "idle"
		end,
		stagger_anims = {
			{
				fwd = {
					"stagger_fwd_light",
					"stagger_fwd_light_2",
					"stagger_fwd_light_3",
					"stagger_fwd_light_4",
					"stagger_fwd_light_5",
					"stagger_fwd_light_6"
				},
				bwd = {
					"stagger_bwd_light",
					"stagger_bwd_light_2",
					"stagger_bwd_light_3",
					"stagger_bwd_light_4",
					"stagger_bwd_light_5",
					"stagger_bwd_light_6",
					"stagger_bwd_light_7",
					"stagger_bwd_light_8"
				},
				left = {
					"stagger_left_light",
					"stagger_left_light_2",
					"stagger_left_light_3",
					"stagger_left_light_4"
				},
				right = {
					"stagger_right_light",
					"stagger_right_light_2",
					"stagger_right_light_3",
					"stagger_right_light_4"
				},
				dwn = {
					"stun_down"
				}
			},
			{
				fwd = {
					"stagger_fwd",
					"stagger_fwd_2",
					"stagger_fwd_3",
					"stagger_fwd_4"
				},
				bwd = {
					"stagger_bwd",
					"stagger_bwd_2",
					"stagger_bwd_3",
					"stagger_bwd_4"
				},
				left = {
					"stagger_left",
					"stagger_left_2",
					"stagger_left_3",
					"stagger_left_4",
					"stagger_left_5"
				},
				right = {
					"stagger_right",
					"stagger_right_2",
					"stagger_right_3",
					"stagger_right_4",
					"stagger_right_5"
				},
				dwn = {
					"stagger_medium_downward",
					"stagger_medium_downward_2",
					"stagger_medium_downward_3"
				}
			},
			{
				fwd = {
					"stagger_fwd_heavy",
					"stagger_fwd_heavy_2",
					"stagger_fwd_heavy_3",
					"stagger_fwd_heavy_4"
				},
				bwd = {
					"stagger_up_heavy",
					"stagger_up_heavy_2",
					"stagger_up_heavy_3",
					"stagger_bwd_heavy",
					"stagger_bwd_heavy_2",
					"stagger_bwd_heavy_3",
					"stagger_bwd_heavy_4"
				},
				left = {
					"stagger_left_heavy",
					"stagger_left_heavy_2",
					"stagger_left_heavy_3",
					"stagger_left_heavy_4"
				},
				right = {
					"stagger_right_heavy",
					"stagger_right_heavy_2",
					"stagger_right_heavy_3",
					"stagger_right_heavy_4"
				},
				dwn = {
					"stagger_dwn_heavy",
					"stagger_dwn_heavy_2",
					"stagger_dwn_heavy_3"
				}
			},
			{
				fwd = {
					"stun_fwd_ranged_light",
					"stun_fwd_ranged_light_2",
					"stun_fwd_ranged_light_3"
				},
				bwd = {
					"stun_bwd_ranged_light",
					"stun_bwd_ranged_light_2",
					"stun_bwd_ranged_light_3"
				},
				left = {
					"stun_left_ranged_light",
					"stun_left_ranged_light_2",
					"stun_left_ranged_light_3"
				},
				right = {
					"stun_right_ranged_light",
					"stun_right_ranged_light_2",
					"stun_right_ranged_light_3"
				}
			},
			{
				fwd = {
					"stagger_fwd",
					"stagger_fwd_2",
					"stagger_fwd_3",
					"stagger_fwd_4"
				},
				bwd = {
					"stagger_bwd",
					"stagger_bwd_2",
					"stagger_bwd_3",
					"stagger_bwd_4"
				},
				left = {
					"stagger_left",
					"stagger_left_2",
					"stagger_left_3",
					"stagger_left_4",
					"stagger_left_5"
				},
				right = {
					"stagger_right",
					"stagger_right_2",
					"stagger_right_3",
					"stagger_right_4",
					"stagger_right_5"
				},
				dwn = {
					"stagger_medium_downward",
					"stagger_medium_downward_2",
					"stagger_medium_downward_3"
				}
			},
			{
				fwd = {
					"stagger_explosion_back",
					"stagger_explosion_back_2"
				},
				bwd = {
					"stagger_explosion_front"
				},
				left = {
					"stagger_explosion_left"
				},
				right = {
					"stagger_explosion_right"
				}
			},
			{
				fwd = {
					"stagger_fwd_light",
					"stagger_fwd_light_2",
					"stagger_fwd_light_3",
					"stagger_fwd_light_4",
					"stagger_fwd_light_5",
					"stagger_fwd_light_6"
				},
				bwd = {
					"stagger_bwd_light",
					"stagger_bwd_light_4",
					"stagger_bwd_light_5",
					"stagger_bwd_light_6",
					"stagger_bwd_light_7",
					"stagger_bwd_light_8"
				},
				left = {
					"stagger_left_light",
					"stagger_left_light_2",
					"stagger_left_light_3",
					"stagger_left_light_4"
				},
				right = {
					"stagger_right_light",
					"stagger_right_light_2",
					"stagger_right_light_3",
					"stagger_right_light_4"
				},
				dwn = {
					"stun_down"
				}
			},
			{
				fwd = {},
				bwd = {},
				left = {},
				right = {}
			},
			{
				fwd = {
					"stagger_fwd_light",
					"stagger_fwd_light_2",
					"stagger_fwd_light_3",
					"stagger_fwd_light_4",
					"stagger_fwd_light_5",
					"stagger_fwd_light_6"
				},
				bwd = {
					"stagger_bwd_light",
					"stagger_bwd_light_2",
					"stagger_bwd_light_3",
					"stagger_bwd_light_4",
					"stagger_bwd_light_5",
					"stagger_bwd_light_6",
					"stagger_bwd_light_7",
					"stagger_bwd_light_8"
				},
				left = {
					"stagger_left_light",
					"stagger_left_light_2",
					"stagger_left_light_3",
					"stagger_left_light_4"
				},
				right = {
					"stagger_right_light",
					"stagger_right_light_2",
					"stagger_right_light_3",
					"stagger_right_light_4"
				},
				dwn = {
					"stun_down"
				}
			}
		}
	}
}

action_data.fallback_idle = action_data.idle
BreedActions.ethereal_skeleton_with_hammer = table.create_copy(BreedActions.ethereal_skeleton_with_hammer, action_data)
