local breed_data = {
	detection_radius = 9999999,
	walk_speed = 2.3,
	has_inventory = true,
	bone_lod_level = 1,
	minion_detection_radius = 10,
	height = 2.4,
	bot_hitbox_radius_approximation = 0.8,
	animation_sync_rpc = "rpc_sync_anim_state_8",
	aoe_radius = 0.7,
	death_reaction = "ai_default",
	debug_spawn_category = "Misc",
	run_speed = 4.8,
	race = "chaos",
	behavior = "chaos_mutator_sorcerer",
	perception = "perception_pack_master",
	threat_value = 0,
	awards_positive_reinforcement_message = true,
	wield_inventory_on_spawn = false,
	default_inventory_template = "chaos_mutator_sorcerer",
	stagger_resistance = 3,
	dialogue_source_name = "chaos_corruptor_sorcerer",
	flingable = true,
	radius = 1,
	hit_mass_count = 8,
	disable_second_hit_ragdoll = true,
	proximity_system_check = true,
	poison_resistance = 100,
	armor_category = 1,
	use_navigation_path_splines = true,
	smart_targeting_width = 0.3,
	is_bot_aid_threat = true,
	initial_is_passive = false,
	target_selection = "pick_mutator_sorcerer_target",
	no_stagger_duration = false,
	exchange_order = 2,
	navigation_spline_distance_to_borders = 1,
	stagger_threshold_light = 0.5,
	hit_reaction = "ai_default",
	special = true,
	smart_targeting_outer_width = 0.7,
	hit_effect_template = "HitEffectsDummySorcerer",
	smart_targeting_height_multiplier = 2.2,
	unit_template = "ai_unit_chaos_corruptor_sorcerer",
	ignore_bot_opportunity = true,
	smart_object_template = "special",
	headshot_coop_stamina_fatigue_type = "headshot_special",
	player_locomotion_constrain_radius = 0.7,
	weapon_reach = 15,
	far_off_despawn_immunity = true,
	is_of_interest_func = "is_of_interest_to_corruptor",
	vortexable = false,
	base_unit = "units/beings/enemies/chaos_mutator_sorcerer/chr_chaos_mutator_sorcerer",
	aoe_height = 2.1,
	infighting = InfightingSettings.small,
	max_health = {
		30,
		30,
		40,
		60,
		90,
		90,
		90,
		90
	},
	bloodlust_health = BreedTweaks.bloodlust_health.chaos_special,
	stagger_duration = {
		3,
		3,
		3,
		3,
		3,
		3,
		3,
		3
	},
	diff_stagger_resist = BreedTweaks.diff_stagger_resist.sorcerer,
	hit_mass_counts = BreedTweaks.hit_mass_counts.sorcerer,
	hitzone_multiplier_types = {
		head = "headshot"
	},
	run_on_spawn = AiBreedSnippets.on_chaos_sorcerer_spawn,
	status_effect_settings = {
		category = "medium",
		ignored_statuses = table.set({
			StatusEffectNames.burning,
			StatusEffectNames.burning_warpfire,
			StatusEffectNames.poisoned
		})
	},
	target_player_sound_events = {
		witch_hunter = "chaos_sorcerer_plague_targeting_saltspyre",
		empire_soldier = "chaos_sorcerer_plague_targeting_soldier",
		dwarf_ranger = "chaos_sorcerer_plague_targeting_dwarf",
		wood_elf = "chaos_sorcerer_plague_targeting_elf",
		bright_wizard = "chaos_sorcerer_plague_targeting_wizard"
	},
	debug_color = {
		255,
		200,
		200,
		0
	},
	disabled = Development.setting("disable_plague_sorcerer") or false,
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
	}
}

Breeds.chaos_mutator_sorcerer = table.create_copy(Breeds.chaos_mutator_sorcerer, breed_data)

local action_data = {
	idle = {
		idle_animation = "float_into",
		ignore_staggers = {
			true,
			true,
			true,
			true,
			true,
			true
		}
	},
	follow = {
		hunting_sound_distance = 15,
		stop_fast_move_speed_sound_event = "Stop_enemy_mutator_chaos_sorcerer_wind_loop",
		distance_to_attack = 3,
		infront_movement_multiplier = 2,
		catchup_distance = 20,
		move_animation = "float_fwd",
		stop_hunting_sound_event = "Stop_enemy_mutator_chaos_sorcerer_hunting_loop",
		slow_down_on_look_at = true,
		hunting_sound_event = "Play_enemy_mutator_chaos_sorcerer_hunting_loop",
		slow_move_speed = 0.65,
		stop_skulking_sound_event = "Stop_enemy_mutator_chaos_sorcerer_skulking_loop",
		skulking_sound_event = "Play_enemy_mutator_chaos_sorcerer_skulking_loop",
		fast_move_speed = 4,
		fast_move_speed_sound_event = "Play_enemy_mutator_chaos_sorcerer_wind_loop",
		catchup_speed = 8,
		start_anims_name = {
			bwd = "float_start_bwd",
			fwd = "float_start_fwd",
			left = "float_start_left",
			right = "float_start_right"
		},
		ignore_staggers = {
			true,
			true,
			true,
			true,
			true,
			true
		}
	},
	grab_attack = {
		ignore_dodge = true,
		dodge_angle = 3.5,
		projectile_radius = 2,
		max_distance_squared = 144,
		cooldown = 4,
		drain_life_tick_rate = 1,
		fatigue_type = "blocked_attack",
		dodge_distance = 1.25,
		damage_type = "pack_master_grab",
		min_dodge_angle_squared = 4,
		drag_in_anim = "attack_dementor_drag_in",
		attack_anim = "attack_dementor_start",
		damage = 5,
		unblockable = true,
		disable_player_time = math.huge,
		difficulty_damage = {
			harder = 12,
			hard = 8,
			normal = 5,
			hardest = 18,
			cataclysm = 22,
			cataclysm_3 = 22,
			cataclysm_2 = 22,
			easy = 3
		},
		ignore_staggers = {
			true,
			true,
			true,
			true,
			true,
			true
		}
	},
	smash_door = {
		move_speed = 3.75,
		rotation_speed = 0,
		door_attack_distance = 1
	},
	quick_teleport = {
		teleport_effect = "fx/chr_chaos_sorcerer_teleport",
		teleport_end_anim = "teleport_end",
		teleport_effect_trail = "fx/chr_chaos_sorcerer_teleport_direction",
		teleport_start_anim = "teleport_start",
		teleport_pos_func = function (unit, blackboard)
			local conflict_director = Managers.state.conflict
			local wanted_teleport_distance_in_main_path = math.max(conflict_director.main_path_info.ahead_travel_dist - 40, 0)
			local wanted_teleport_position = MainPathUtils.point_on_mainpath(nil, wanted_teleport_distance_in_main_path)

			return wanted_teleport_position
		end,
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
		ignore_staggers = {
			true,
			true,
			true,
			true,
			true,
			true
		},
		custom_enter_function = function (unit, blackboard, t, action)
			local stagger_anims

			blackboard.stagger_ignore_anim_cb = true

			if blackboard.corruptor_grab_stagger then
				stagger_anims = action.grabbing_stagger_anims[blackboard.stagger_type]
				blackboard.stagger_time = t + 1
			else
				stagger_anims = action.stagger_anims[blackboard.stagger_type]
			end

			return stagger_anims, "idle"
		end,
		custom_exit_function = function (unit, blackboard, t)
			blackboard.corruptor_grab_stagger = nil
		end,
		stagger_anims = {
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
				fwd = {},
				bwd = {},
				left = {},
				right = {}
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
			}
		},
		grabbing_stagger_anims = {
			{
				fwd = {
					"stagger_fwd_light_dementor"
				},
				bwd = {
					"stagger_bwd_light_dementor"
				},
				right = {
					"stagger_left_light_dementor"
				},
				left = {
					"stagger_right_light_dementor"
				}
			},
			{
				fwd = {
					"stagger_fwd_dementor"
				},
				bwd = {
					"stagger_bwd_dementor"
				},
				right = {
					"stagger_left_dementor"
				},
				left = {
					"stagger_right_dementor"
				}
			},
			{
				fwd = {
					"stagger_fwd_dementor"
				},
				bwd = {
					"stagger_bwd_dementor"
				},
				right = {
					"stagger_left_dementor"
				},
				left = {
					"stagger_right_dementor"
				}
			},
			{
				fwd = {
					"stagger_fwd_light_dementor"
				},
				bwd = {
					"stagger_bwd_light_dementor"
				},
				right = {
					"stagger_left_light_dementor"
				},
				left = {
					"stagger_right_light_dementor"
				}
			},
			{
				fwd = {
					"stagger_fwd_light_dementor"
				},
				bwd = {
					"stagger_bwd_light_dementor"
				},
				right = {
					"stagger_left_light_dementor"
				},
				left = {
					"stagger_right_light_dementor"
				}
			},
			{
				fwd = {
					"stagger_fwd_dementor"
				},
				bwd = {
					"stagger_bwd_dementor"
				},
				right = {
					"stagger_left_dementor"
				},
				left = {
					"stagger_right_dementor"
				}
			},
			{
				fwd = {
					"stagger_fwd_dementor"
				},
				bwd = {
					"stagger_bwd_dementor"
				},
				right = {
					"stagger_left_dementor"
				},
				left = {
					"stagger_right_dementor"
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
					"stagger_fwd_dementor"
				},
				bwd = {
					"stagger_bwd_dementor"
				},
				right = {
					"stagger_left_dementor"
				},
				left = {
					"stagger_right_dementor"
				}
			}
		}
	}
}

BreedActions.chaos_mutator_sorcerer = table.create_copy(BreedActions.chaos_mutator_sorcerer, action_data)
