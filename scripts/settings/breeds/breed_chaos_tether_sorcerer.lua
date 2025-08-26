local breed_data = {
	detection_radius = 9999999,
	player_locomotion_constrain_radius = 0.7,
	walk_speed = 0.65,
	race = "chaos",
	radius = 1,
	no_stagger_duration = true,
	height = 1.8,
	poison_resistance = 100,
	animation_sync_rpc = "rpc_sync_anim_state_8",
	aoe_radius = 0.7,
	is_always_spawnable = true,
	bot_hitbox_radius_approximation = 0.8,
	debug_spawn_category = "Specials",
	headshot_coop_stamina_fatigue_type = "headshot_special",
	awards_positive_reinforcement_message = true,
	initial_is_passive = false,
	controllable = true,
	has_inventory = true,
	base_unit = "units/beings/enemies/chaos_sorcerer_corruptor/chr_chaos_sorcerer_corruptor",
	wield_inventory_on_spawn = true,
	threat_value = 8,
	default_inventory_template = "chaos_sorcerer",
	stagger_resistance = 3,
	dialogue_source_name = "chaos_tether_sorcerer",
	bone_lod_level = 1,
	flingable = true,
	is_resurrectable = false,
	hit_mass_count = 8,
	disable_second_hit_ragdoll = true,
	proximity_system_check = true,
	death_reaction = "ai_default",
	armor_category = 1,
	death_sound_event = "chaos_sorcerer_corrupt_death",
	smart_targeting_width = 0.3,
	is_bot_aid_threat = true,
	behavior = "chaos_tether_sorcerer",
	target_selection = "pick_tether_target",
	run_speed = 0.65,
	exchange_order = 2,
	stagger_threshold_light = 0.5,
	hit_reaction = "ai_default",
	special = true,
	smart_targeting_outer_width = 0.7,
	hit_effect_template = "HitEffectsChaosSorcerer",
	smart_targeting_height_multiplier = 2.2,
	unit_template = "ai_unit_chaos_corruptor_sorcerer",
	smart_object_template = "special",
	perception = "perception_tether_sorcerer",
	minion_detection_radius = 10,
	weapon_reach = 15,
	is_of_interest_func = "is_of_interest_to_corruptor",
	vortexable = false,
	aoe_height = 2.1,
	infighting = InfightingSettings.small,
	max_health = BreedTweaks.max_health.corruptor_sorcerer,
	bloodlust_health = BreedTweaks.bloodlust_health.chaos_special,
	stagger_duration = BreedTweaks.stagger_duration.sorcerer,
	diff_stagger_resist = BreedTweaks.diff_stagger_resist.sorcerer,
	hit_mass_counts = BreedTweaks.hit_mass_counts.sorcerer,
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
	run_on_spawn = function (unit, ...)
		return AiBreedSnippets.on_chaos_sorcerer_spawn(unit, ...)
	end,
	on_weapon_wield = function (unit)
		Unit.flow_event(unit, "lua_spawn_tether_staff_effect")
	end,
	target_player_sound_events = {
		witch_hunter = "chaos_sorcerer_plague_targeting_saltspyre",
		empire_soldier = "chaos_sorcerer_plague_targeting_soldier",
		dwarf_ranger = "chaos_sorcerer_plague_targeting_dwarf",
		wood_elf = "chaos_sorcerer_plague_targeting_elf",
		bright_wizard = "chaos_sorcerer_plague_targeting_wizard"
	},
	status_effect_settings = {
		category = "medium",
		ignored_statuses = table.set({
			StatusEffectNames.burning_warpfire,
			StatusEffectNames.poisoned
		})
	},
	debug_color = {
		255,
		200,
		200,
		0
	},
	disabled = Development.setting("disable_plague_sorcerer") or false,
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
	custom_death_enter_function = function (unit, killer_unit, damage_type, death_hit_zone, t)
		local blackboard = BLACKBOARDS[unit]

		if not Unit.alive(killer_unit) then
			return
		end

		local teleport_at_t = blackboard.teleport_at_t

		if teleport_at_t then
			QuestSettings.check_corruptor_killed_at_teleport_time(blackboard, teleport_at_t, t, killer_unit)
		end

		QuestSettings.check_corruptor_killed_while_grabbing(blackboard, killer_unit)
	end
}

Breeds.chaos_tether_sorcerer = table.create_copy(Breeds.chaos_tether_sorcerer, breed_data)

local action_data = {
	spawn = {
		spawning_effect = "fx/chr_chaos_sorcerer_teleport"
	},
	skulk_tether = {
		move_animation = "move_fwd",
		preferred_distance_variance = 5,
		close_distance = 10,
		preferred_distance = 20
	},
	grab_attack = {
		drain_life_tick_rate = 1,
		dodge_angle = 3.5,
		projectile_radius = 2,
		max_distance_squared = 144,
		cooldown = 4,
		fatigue_type = "blocked_attack",
		projectile_speed = 25,
		dodge_distance = 1.25,
		damage_type = "cutting",
		min_dodge_angle_squared = 4,
		drag_in_anim = "attack_dementor_drag_in",
		attack_anim = "attack_dementor_start",
		damage = 5,
		unblockable = true,
		disable_player_time = math.huge,
		difficulty_damage = {
			hardest = 25,
			normal = 5,
			hard = 8,
			harder = 15,
			cataclysm = 30,
			easy = 3,
			versus_base = 5,
			cataclysm_3 = 50,
			cataclysm_2 = 40
		},
		health_leech = {
			hardest = 20,
			normal = 2,
			hard = 5,
			harder = 10,
			cataclysm = 30,
			easy = 2,
			versus_base = 2,
			cataclysm_3 = 50,
			cataclysm_2 = 40
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

BreedActions.chaos_tether_sorcerer = table.create_copy(BreedActions.chaos_tether_sorcerer, action_data)
