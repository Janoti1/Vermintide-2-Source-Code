local breed_data = {
	walk_speed = 0.65,
	proximity_system_check = true,
	threat_value = 10,
	radius = 1,
	headshot_coop_stamina_fatigue_type = "headshot_special",
	race = "chaos",
	is_always_spawnable = true,
	animation_sync_rpc = "rpc_sync_anim_state_7",
	bot_hitbox_radius_approximation = 0.8,
	aoe_radius = 0.7,
	debug_spawn_category = "Specials",
	player_locomotion_constrain_radius = 0.7,
	initial_is_passive = false,
	has_inventory = true,
	is_bot_aid_threat = true,
	run_speed = 0.65,
	death_reaction = "ai_default",
	wield_inventory_on_spawn = true,
	max_vortex_units = 1,
	default_inventory_template = "chaos_sorcerer_vortex",
	stagger_resistance = 3,
	dialogue_source_name = "chaos_vortex_sorcerer",
	bone_lod_level = 1,
	flingable = true,
	summon_sound_event = "chaos_sorcerer_vortex_summoning",
	base_unit = "units/beings/enemies/chaos_vortex_sorcerer/chr_chaos_vortex_sorcerer",
	height = 1.8,
	hit_mass_count = 8,
	stagger_threshold_explosion = 5,
	disable_second_hit_ragdoll = true,
	poison_resistance = 100,
	armor_category = 1,
	controllable = true,
	death_sound_event = "chaos_sorcerer_vortex_death",
	smart_targeting_width = 0.3,
	perception_continuous = "perception_continuous_keep_target",
	behavior = "chaos_vortex_sorcerer",
	target_selection = "pick_closest_vortex_target",
	no_stagger_duration = true,
	awards_positive_reinforcement_message = true,
	exchange_order = 2,
	stagger_threshold_heavy = 3,
	stagger_threshold_light = 0.5,
	hit_reaction = "ai_default",
	special = true,
	smart_targeting_outer_width = 0.7,
	hit_effect_template = "HitEffectsChaosSorcerer",
	smart_targeting_height_multiplier = 2.2,
	unit_template = "ai_unit_chaos_sorcerer",
	smart_object_template = "special",
	perception = "perception_all_seeing",
	minion_detection_radius = 20,
	stagger_threshold_medium = 2,
	is_of_interest_func = "is_of_interest_to_vortex",
	vortexable = false,
	aoe_height = 2.1,
	detection_radius = math.huge,
	infighting = InfightingSettings.small,
	max_health = BreedTweaks.max_health.vortex_sorcerer,
	bloodlust_health = BreedTweaks.bloodlust_health.chaos_special,
	stagger_duration = BreedTweaks.stagger_duration.sorcerer,
	hit_mass_counts = BreedTweaks.hit_mass_counts.sorcerer,
	stagger_reduction = BreedTweaks.stagger_reduction.sorcerer,
	diff_stagger_resist = BreedTweaks.diff_stagger_resist.sorcerer,
	run_on_spawn = AiBreedSnippets.on_chaos_vortex_sorcerer_spawn,
	run_on_death = AiBreedSnippets.on_chaos_vortex_sorcerer_death,
	run_on_despawn = AiBreedSnippets.on_chaos_vortex_sorcerer_despawn,
	debug_color = {
		255,
		200,
		200,
		0
	},
	disabled = Development.setting("disable_vortex_sorcerer") or false,
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
				"j_spine1"
			}
		},
		torso = {
			prio = 2,
			actors = {
				"c_hips",
				"c_spine",
				"c_spine1",
				"c_leftshoulder",
				"c_rightshoulder"
			},
			push_actors = {
				"j_spine1"
			}
		},
		left_arm = {
			prio = 3,
			actors = {
				"c_leftarm",
				"c_leftforearm",
				"c_lefthand"
			},
			push_actors = {
				"j_spine1"
			}
		},
		right_arm = {
			prio = 3,
			actors = {
				"c_rightarm",
				"c_rightforearm",
				"c_righthand"
			},
			push_actors = {
				"j_spine1"
			}
		},
		left_leg = {
			prio = 3,
			actors = {
				"c_leftupleg",
				"c_leftleg",
				"c_leftfoot",
				"c_lefttoebase"
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
				"c_rightfoot",
				"c_righttoebase"
			},
			push_actors = {
				"j_leftfoot",
				"j_rightfoot",
				"j_hips"
			}
		},
		full = {
			prio = 4,
			actors = {}
		},
		afro = {
			prio = 5,
			actors = {
				"h_afro"
			}
		}
	},
	allowed_layers = {
		planks = 1.5,
		ledges = 5,
		bot_ratling_gun_fire = 10,
		jumps = 5,
		destructible_wall = 5,
		temporary_wall = 0,
		ledges_with_fence = 5,
		doors = 1.5,
		teleporters = 5,
		bot_poison_wind = 2,
		fire_grenade = 10
	},
	status_effect_settings = {
		category = "medium",
		ignored_statuses = table.set({
			StatusEffectNames.burning_warpfire,
			StatusEffectNames.poisoned
		})
	},
	custom_death_enter_function = function (unit, killer_unit, damage_type, death_hit_zone, t, damage_source)
		local blackboard = BLACKBOARDS[unit]

		if not Unit.alive(killer_unit) then
			return
		end

		QuestSettings.check_vortex_sorcerer_killed_while_summoning(blackboard, killer_unit)
		QuestSettings.check_vortex_sorcerer_killed_while_ally_in_vortex(blackboard, killer_unit)
		QuestSettings.check_vortex_sorcerer_killed_by_melee(killer_unit, damage_source)
	end
}

Breeds.chaos_vortex_sorcerer = table.create_copy(Breeds.chaos_vortex_sorcerer, breed_data)

local action_data = {
	skulk_approach = {
		teleport_closer_summon_limit = 2,
		vortex_template_name = "standard",
		close_distance = 25,
		search_func_name = "_update_vortex_search",
		min_cast_vortex_distance = 0,
		move_animation = "move_fwd",
		sorcerer_type = "vortex",
		max_cast_vortex_distance = 75,
		vortex_spawn_timer = 25,
		far_away_from_target_sq = 2500,
		max_player_vortex_distance = 15,
		teleport_closer_range = 10,
		preferred_distance = 30,
		part_hp_lost_to_teleport = 0.3,
		min_player_vortex_distance = 0,
		vortex_check_timer = 2,
		teleport_cooldown = {
			10,
			12
		}
	},
	spawn_vortex = {
		missile_life_time = 2.25,
		missile_speed = 20,
		missile_cast_interval = 0.2,
		missile_effect_unit_name = "units/weapons/projectile/vortex_rune/vortex_rune",
		vortex_template_name = "standard",
		summoning_time = 2.5,
		inner_decal_unit_name = "units/decals/decal_vortex_circle_inner",
		outer_decal_unit_name = "units/decals/decal_vortex_circle_outer",
		attack_anim = "attack_cast_spell_loop",
		num_missiles = 5,
		spawn_func_name = "_spawn_vortex",
		extra_time_per_distance = 0.05,
		init_func_name = "_start_vortex_summoning",
		update_func_name = "_update_vortex_summoning",
		cleanup_func_name = "_clean_up_vortex_summoning",
		link_decal_units_to_vortex = true,
		missile_launch_angle = math.pi / 4,
		ignore_staggers = {
			true,
			true,
			true,
			true,
			true,
			true
		}
	},
	quick_teleport = {
		teleport_effect = "fx/chr_chaos_sorcerer_teleport",
		teleport_end_anim = "teleport_end",
		teleport_effect_trail = "fx/chr_chaos_sorcerer_teleport_direction",
		teleport_start_anim = "teleport_start",
		ignore_staggers = {
			true,
			true,
			true,
			true,
			true,
			true
		}
	},
	stagger = {
		custom_enter_function = function (unit, blackboard, t, action)
			blackboard.stagger_ignore_anim_cb = true

			local stagger_anims = action.stagger_anims[blackboard.stagger_type]

			return stagger_anims, "idle"
		end,
		stagger_anims = {
			{
				fwd = {
					"stagger_fwd_light"
				},
				bwd = {
					"stagger_bwd_light"
				},
				right = {
					"stagger_left_light"
				},
				left = {
					"stagger_right_light"
				}
			},
			{
				fwd = {
					"stagger_fwd"
				},
				bwd = {
					"stagger_bwd"
				},
				right = {
					"stagger_left"
				},
				left = {
					"stagger_right"
				}
			},
			{
				fwd = {
					"stagger_fwd"
				},
				bwd = {
					"stagger_bwd"
				},
				right = {
					"stagger_left"
				},
				left = {
					"stagger_right"
				}
			},
			{
				fwd = {
					"stagger_fwd_light"
				},
				bwd = {
					"stagger_bwd_light"
				},
				right = {
					"stagger_left_light"
				},
				left = {
					"stagger_right_light"
				}
			},
			{
				fwd = {
					"stagger_fwd_light"
				},
				bwd = {
					"stagger_bwd_light"
				},
				right = {
					"stagger_left_light"
				},
				left = {
					"stagger_right_light"
				}
			},
			{
				fwd = {
					"stagger_fwd_exp"
				},
				bwd = {
					"stagger_bwd_exp"
				},
				right = {
					"stagger_left_exp"
				},
				left = {
					"stagger_right_exp"
				}
			},
			{
				fwd = {
					"stagger_fwd"
				},
				bwd = {
					"stagger_bwd"
				},
				right = {
					"stagger_left"
				},
				left = {
					"stagger_right"
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
					"stagger_fwd"
				},
				bwd = {
					"stagger_bwd"
				},
				right = {
					"stagger_left"
				},
				left = {
					"stagger_right"
				}
			}
		}
	}
}

BreedActions.chaos_vortex_sorcerer = table.create_copy(BreedActions.chaos_vortex_sorcerer, action_data)
