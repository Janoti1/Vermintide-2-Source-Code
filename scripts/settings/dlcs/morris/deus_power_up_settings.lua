require("scripts/entity_system/systems/buff/buff_sync_type")
require("scripts/settings/dlcs/morris/deus_cost_settings")
require("scripts/settings/dlcs/morris/tweak_data/buff_tweak_data")

local buff_perks = require("scripts/unit_extensions/default_player_unit/buffs/settings/buff_perk_names")

DeusPowerUpSettings = DeusPowerUpSettings or {
	cursed_chest_max_picks = 1,
	num_set_boons_weight_multiplier = 1.75,
	weapon_chest_choice_amount = 1,
	cursed_chest_choice_amount = 3,
	weight_by_rarity = {
		event = 6,
		exotic = 3,
		rare = 6,
		unique = 1
	}
}

local skulls_buffs_to_refresh = {
	"boon_skulls_01_stack",
	"boon_skulls_01_surge",
	"boon_skulls_02_stack",
	"boon_skulls_02_surge",
	"boon_skulls_04_regen",
	"boon_skulls_05_stack",
	"boon_skulls_05_surge"
}
local next_support_bomb_rotation = 0

local function get_bomb_zone_rotation()
	local rot_delta = 0.2
	local rot = next_support_bomb_rotation

	assert(rot < math.tau, "Bomb zone fx may overlap. Lower rot_delta")

	next_support_bomb_rotation = next_support_bomb_rotation + math.tau * rot_delta

	return Quaternion.axis_angle(Vector3.up(), rot)
end

local next_cursed_zone_rotation = 0

local function get_cursed_zone_rotation()
	local rot_delta = 0.5
	local rot = next_cursed_zone_rotation

	assert(rot < math.tau, "Cursed zone fx may overlap. Lower rot_delta")

	next_support_bomb_rotation = next_support_bomb_rotation + math.tau * rot_delta

	return Quaternion.axis_angle(Vector3.up(), rot)
end

DeusPowerUpBuffTemplates = {
	deus_coin_pickup_regen_buff = {
		buffs = {
			{
				name = "deus_coin_pickup_regen_buff",
				heal_type = "health_regen",
				time_between_heal = 1,
				update_func = "health_regen_update",
				apply_buff_func = "health_regen_start",
				icon = "deus_healing",
				heal = MorrisBuffTweakData.deus_coin_pickup_regen_buff.heal,
				duration = MorrisBuffTweakData.deus_coin_pickup_regen_buff.duration
			}
		}
	},
	deus_large_ammo_pickup_infinite_ammo_buff = {
		buffs = {
			{
				name = "deus_large_ammo_pickup_infinite_ammo_buff",
				icon = "icons_placeholder",
				perks = {
					buff_perks.infinite_ammo
				},
				duration = MorrisBuffTweakData.deus_large_ammo_pickup_infinite_ammo_buff.duration
			}
		}
	},
	deus_revive_regen_buff = {
		buffs = {
			{
				heal_type = "health_regen",
				name = "deus_revive_regen_buff",
				max_stacks = 1,
				time_between_heal = 1,
				refresh_durations = true,
				apply_buff_func = "health_regen_start",
				icon = "deus_revive_regen",
				update_func = "health_regen_update",
				heal = MorrisBuffTweakData.deus_revive_regen_buff.heal,
				duration = MorrisBuffTweakData.deus_revive_regen_buff.duration
			}
		}
	},
	active_ability_movement_speed = {
		buffs = {
			{
				apply_buff_func = "apply_active_ability_movement_buff",
				name = "movement",
				icon = "movement_speed_on_active_ability_use",
				refresh_durations = true,
				remove_buff_func = "remove_active_ability_movement_buff",
				max_stacks = 1,
				multiplier = MorrisBuffTweakData.active_ability_movement_speed.multiplier,
				duration = MorrisBuffTweakData.active_ability_movement_speed.duration,
				path_to_movement_setting_to_modify = {
					"move_speed"
				}
			}
		}
	},
	explosive_pushes = {
		buffs = {
			{
				explosion_template = "buff_explosion",
				name = "explosive_pushes",
				authority = "server",
				buff_func = "on_push_explosion",
				event = "on_push",
				icon = "potion_buff_02",
				power_scale = 1.5,
				duration = MorrisBuffTweakData.explosive_pushes.duration
			}
		}
	},
	deus_crit_on_damage_taken_buff = {
		buffs = {
			{
				icon = "deus_icon_crit_on_damage_taken",
				name = "deus_crit_on_damage_taken_buff",
				refresh_durations = true,
				max_stacks = 1,
				duration = MorrisBuffTweakData.deus_crit_on_damage_taken_buff.duration,
				perks = {
					buff_perks.guaranteed_crit
				}
			}
		}
	},
	deus_damage_reduction_on_incapacitated_buff = {
		buffs = {
			{
				name = "deus_damage_reduction_on_incapacitated_buff",
				stat_buff = "damage_taken",
				icon = "deus_icon_damage_reduction_on_incapacitated",
				max_stacks = 1,
				remove_buff_func = "remove_damage_reduction_on_incapacitated",
				apply_buff_func = "apply_damage_reduction_on_incapacitated",
				multiplier = MorrisBuffTweakData.deus_damage_reduction_on_incapacitated_buff.multiplier,
				duration = MorrisBuffTweakData.deus_damage_reduction_on_incapacitated_buff.duration
			}
		}
	},
	elites_on_kill_explosion_buff = {
		buffs = {
			{
				sound_event = "morris_power_ups_exploding_enemy",
				name = "elites_on_kill_explosion_buff",
				authority = "server",
				buff_func = "elites_on_kill_explosion",
				power_scale = 2,
				event = "on_kill",
				max_stacks = 1,
				explosion_template = "buff_explosion",
				icon = "explosive_kills_on_elite_kills",
				amount_of_explosions = MorrisBuffTweakData.explosive_kills_on_elite_kills.amount_of_explosions
			}
		}
	},
	deus_knockdown_damage_immunity_buff = {
		buffs = {
			{
				particle_fx = "fx/cw_allies_shield",
				name = "deus_knockdown_damage_immunity_buff",
				buff_func = "play_particle_effect",
				event = "on_damage_taken",
				icon = "deus_knockdown_damage_immunity_aura",
				max_stacks = 1,
				proc_weight = 15,
				perks = {
					buff_perks.invulnerable
				}
			}
		}
	},
	drop_item_on_ability_use_cooldown = {
		buffs = {
			{
				icon = "drop_item_on_ability_use",
				name = "drop_item_on_ability_use_cooldown",
				max_stacks = 1,
				refresh_durations = true,
				is_cooldown = true,
				duration = 5
			}
		}
	},
	deus_timed_block_free_shot_buff = {
		buffs = {
			{
				event = "on_ammo_used",
				name = "deus_timed_block_free_shot_buff",
				buff_func = "dummy_function",
				remove_on_proc = true,
				icon = "deus_utils",
				priority_buff = true,
				max_stacks = 1,
				perks = {
					buff_perks.infinite_ammo
				}
			}
		}
	},
	deus_special_farm_max_health = {
		buffs = {
			{
				buff_to_add = "deus_special_farm_max_health_buff",
				name = "deus_special_farm_max_health",
				authority = "server",
				buff_func = "deus_special_farm_max_health_on_special",
				specials_per_pop = 5,
				event = "on_special_killed"
			}
		}
	},
	deus_special_farm_max_health_buff = {
		buffs = {
			{
				multiplier = 0.1,
				name = "deus_special_farm_max_health_buff",
				stat_buff = "max_health",
				is_persistent = true,
				max_stacks = 10,
				icon = "markus_huntsman_damage_reduction_on_monster_kill",
				priority_buff = true
			}
		}
	},
	deus_reckless_swings_buff = {
		buffs = {
			{
				name = "deus_reckless_swings_buff",
				stat_buff = "power_level_melee",
				buff_func = "deus_reckless_swings_buff_on_hit",
				event = "on_hit",
				icon = "deus_reckless_swings",
				max_stacks = 1,
				multiplier = MorrisBuffTweakData.deus_reckless_swings_buff.multiplier,
				damage_to_deal = MorrisBuffTweakData.deus_reckless_swings_buff.damage_to_deal
			}
		}
	},
	deus_second_wind_attack_speed = {
		buffs = {
			{
				buff_to_add = "deus_second_wind_cooldown",
				name = "deus_second_wind_attack_speed",
				stat_buff = "attack_speed",
				duration_end_func = "add_buff_local",
				remove_buff_func = "remove_second_wind",
				apply_buff_func = "apply_second_wind",
				icon = "deus_second_wind",
				max_stacks = 1,
				perks = {
					buff_perks.invulnerable
				},
				duration = MorrisBuffTweakData.deus_second_wind_attack_speed.duration,
				multiplier = MorrisBuffTweakData.deus_second_wind_attack_speed.multiplier
			}
		}
	},
	deus_second_wind_movement_speed = {
		buffs = {
			{
				remove_buff_func = "remove_movement_buff",
				name = "deus_second_wind_movement_speed",
				max_stacks = 1,
				apply_buff_func = "apply_movement_buff",
				duration = MorrisBuffTweakData.deus_second_wind_movement_speed.duration,
				multiplier = MorrisBuffTweakData.deus_second_wind_movement_speed.multiplier,
				path_to_movement_setting_to_modify = {
					"move_speed"
				}
			}
		}
	},
	deus_second_wind_cooldown = {
		buffs = {
			{
				name = "deus_second_wind_cooldown",
				max_stacks = 1,
				is_cooldown = true,
				icon = "deus_second_wind",
				duration = MorrisBuffTweakData.deus_second_wind_cooldown.duration
			}
		}
	},
	deus_guard_aura = {
		buffs = {
			{
				buff_to_add = "deus_guard_buff",
				name = "deus_guard_aura",
				disregard_self = true,
				remove_buff_func = "remove_aura_buff",
				range = 10,
				update_func = "activate_buff_on_distance",
				authority = "server",
				update_frequency = 0.5
			}
		}
	},
	deus_guard_buff = {
		buffs = {
			{
				name = "deus_guard_buff",
				stat_buff = "damage_taken",
				buff_func = "deus_guard_buff_on_damage",
				max_stacks = 1,
				icon = "deus_icon_guard_aura_check",
				event = "on_damage_taken",
				multiplier = MorrisBuffTweakData.deus_guard_buff.multiplier
			}
		}
	},
	deus_push_increased_cleave_buff = {
		buffs = {
			{
				icon = "deus_push_increased_cleave",
				name = "deus_push_increased_cleave_buff",
				stat_buff = "power_level_melee_cleave",
				max_stacks = 1,
				duration = MorrisBuffTweakData.deus_push_increased_cleave_buff.duration,
				multiplier = MorrisBuffTweakData.deus_push_increased_cleave_buff.multiplier
			}
		}
	},
	deus_parry_damage_immune_buff = {
		buffs = {
			{
				icon = "deus_parry_damage_immune",
				name = "deus_parry_damage_immune_buff",
				max_stacks = 1,
				apply_buff_func = "apply_parry_damage_immune",
				perks = {
					buff_perks.invulnerable
				},
				duration = MorrisBuffTweakData.deus_parry_damage_immune_buff.duration
			}
		}
	},
	deus_standing_still_damage_reduction_buff = {
		buffs = {
			{
				name = "deus_standing_still_damage_reduction_buff",
				stat_buff = "damage_taken",
				icon = "deus_standing_still_damage_reduction",
				multiplier = MorrisBuffTweakData.deus_standing_still_damage_reduction_buff.multiplier
			}
		}
	},
	triple_melee_headshot_power_boost = {
		buffs = {
			{
				name = "triple_melee_headshot_power_boost",
				stat_buff = "power_level_melee",
				max_stacks = 1,
				icon = "triple_melee_headshot_power",
				refresh_durations = true,
				multiplier = MorrisBuffTweakData.triple_melee_headshot_power_boost.multiplier,
				duration = MorrisBuffTweakData.triple_melee_headshot_power_boost.duration
			}
		}
	},
	melee_killing_spree_speed_boost = {
		buffs = {
			{
				remove_buff_func = "remove_screenspace_fx",
				name = "melee_killing_spree_speed_boost",
				stat_buff = "attack_speed",
				screenspace_fx = "fx/cw_speed_screenspace",
				refresh_durations = true,
				apply_buff_func = "apply_screenspace_fx",
				max_stacks = 1,
				icon = "melee_killing_spree_speed",
				multiplier = MorrisBuffTweakData.melee_killing_spree_speed_boost.multiplier,
				duration = MorrisBuffTweakData.melee_killing_spree_speed_boost.duration
			},
			{
				name = "melee_killing_spree_speed_boost",
				max_stacks = 1,
				remove_buff_func = "remove_movement_buff",
				apply_buff_func = "apply_movement_buff",
				refresh_durations = true,
				multiplier = MorrisBuffTweakData.melee_killing_spree_speed_boost.baked_multiplier,
				duration = MorrisBuffTweakData.melee_killing_spree_speed_boost.duration,
				path_to_movement_setting_to_modify = {
					"move_speed"
				}
			}
		}
	},
	last_player_standing_power_reg_boost = {
		buffs = {
			{
				name = "last_player_standing_power_boost",
				stat_buff = "power_level",
				icon = "last_player_standing_power_reg",
				multiplier = MorrisBuffTweakData.last_player_standing_power_reg_boost.multiplier,
				duration = MorrisBuffTweakData.last_player_standing_power_reg_boost.duration
			},
			{
				name = "last_player_standing_reg_boost",
				heal_type = "health_regen",
				time_between_heal = 0.5,
				update_func = "health_regen_update",
				apply_buff_func = "health_regen_start",
				heal = MorrisBuffTweakData.last_player_standing_power_reg_boost.heal,
				duration = MorrisBuffTweakData.last_player_standing_power_reg_boost.duration
			}
		}
	},
	cooldown_reg_not_hit_buff = {
		buffs = {
			{
				name = "cooldown_reg_not_hit_buff",
				stat_buff = "cooldown_regen",
				icon = "deus_icon_cooldown_reg_not_hit",
				multiplier = MorrisBuffTweakData.cooldown_reg_not_hit_buff.multiplier,
				max_stacks = MorrisBuffTweakData.cooldown_reg_not_hit_buff.max_stacks
			}
		}
	},
	skulls_boon_buffs_tracker = {
		buffs = {
			{
				name = "skulls_boon_buffs_tracker"
			}
		}
	},
	boon_skulls_01_stack = {
		buffs = {
			{
				ignore_if_not_local = true,
				stat_buff = "attack_speed",
				name = "boon_skulls_01_stack",
				refresh_durations = true,
				synced_buff_to_add = "boon_skulls_01_surge",
				on_max_stacks_func = "add_buff_synced",
				sync_type = "LocalAndServer",
				icon = "boon_skulls_01",
				reset_on_max_stacks = true,
				is_cooldown = true,
				duration = MorrisBuffTweakData.boon_skulls_01_data.duration,
				duration_modifier_func = MorrisBuffTweakData.boon_skulls_set_01_data.duration_modifier_func,
				multiplier = function (unit, buff_extension)
					local multiplier = MorrisBuffTweakData.boon_skulls_01_data.attack_speed_per_stack
					local has_full_set = buff_extension:num_buff_stacks("power_up_boon_skulls_set_bonus_01_event") > 0

					if has_full_set then
						multiplier = multiplier * (1 + MorrisBuffTweakData.boon_skulls_set_bonus_01.effect_amplify_amount)
					end

					return multiplier
				end,
				max_stacks = MorrisBuffTweakData.boon_skulls_01_data.max_stacks
			}
		}
	},
	boon_skulls_01_surge = {
		buffs = {
			{
				stat_buff = "attack_speed",
				name = "boon_skulls_01_surge",
				remove_buff_func = "skulls_event_boon_surge_removed",
				apply_buff_func = "skulls_event_boon_surge_applied",
				icon = "boon_skulls_01",
				max_stacks = 1,
				duration = MorrisBuffTweakData.boon_skulls_01_data.duration,
				duration_modifier_func = MorrisBuffTweakData.boon_skulls_set_01_data.duration_modifier_func,
				multiplier = function (unit, buff_extension)
					local multiplier = MorrisBuffTweakData.boon_skulls_01_data.attack_speed_on_proc
					local has_full_set = buff_extension:num_buff_stacks("power_up_boon_skulls_set_bonus_01_event") > 0

					if has_full_set then
						multiplier = multiplier * (1 + MorrisBuffTweakData.boon_skulls_set_bonus_01.effect_amplify_amount)
					end

					return multiplier
				end,
				refresh_duration_of_buffs_on_apply = skulls_buffs_to_refresh
			}
		}
	},
	boon_skulls_02_stack = {
		buffs = {
			{
				ignore_if_not_local = true,
				stat_buff = "power_level",
				name = "boon_skulls_02_stack",
				refresh_durations = true,
				synced_buff_to_add = "boon_skulls_02_surge",
				on_max_stacks_func = "add_buff_synced",
				sync_type = "LocalAndServer",
				icon = "boon_skulls_02",
				reset_on_max_stacks = true,
				is_cooldown = true,
				duration = MorrisBuffTweakData.boon_skulls_02_data.duration,
				duration_modifier_func = MorrisBuffTweakData.boon_skulls_set_01_data.duration_modifier_func,
				multiplier = function (unit, buff_extension)
					local multiplier = MorrisBuffTweakData.boon_skulls_02_data.power_per_stack
					local has_full_set = buff_extension:num_buff_stacks("power_up_boon_skulls_set_bonus_01_event") > 0

					if has_full_set then
						multiplier = multiplier * (1 + MorrisBuffTweakData.boon_skulls_set_bonus_01.effect_amplify_amount)
					end

					return multiplier
				end,
				max_stacks = MorrisBuffTweakData.boon_skulls_02_data.max_stacks
			}
		}
	},
	boon_skulls_02_surge = {
		buffs = {
			{
				stat_buff = "power_level",
				name = "boon_skulls_02_surge",
				remove_buff_func = "skulls_event_boon_surge_removed",
				apply_buff_func = "skulls_event_boon_surge_applied",
				icon = "boon_skulls_02",
				max_stacks = 1,
				duration = MorrisBuffTweakData.boon_skulls_02_data.duration,
				duration_modifier_func = MorrisBuffTweakData.boon_skulls_set_01_data.duration_modifier_func,
				multiplier = MorrisBuffTweakData.boon_skulls_02_data.power_on_proc,
				refresh_duration_of_buffs_on_apply = skulls_buffs_to_refresh
			}
		}
	},
	boon_skulls_04_regen = {
		buffs = {
			{
				stat_buff = "cooldown_regen",
				name = "boon_skulls_04_regen",
				remove_buff_func = "boon_skulls_04_regen_remove",
				apply_buff_func = "skulls_event_boon_surge_applied",
				icon = "boon_skulls_04",
				update_func = "boon_skulls_04_regen_update",
				update_frequency = 1,
				duration = MorrisBuffTweakData.boon_skulls_04_data.proc_duration,
				duration_modifier_func = MorrisBuffTweakData.boon_skulls_set_01_data.duration_modifier_func,
				multiplier = function (unit, buff_extension)
					local multiplier = MorrisBuffTweakData.boon_skulls_04_data.proc_cooldown_regen
					local has_full_set = buff_extension:num_buff_stacks("power_up_boon_skulls_set_bonus_01_event") > 0

					if has_full_set then
						multiplier = multiplier * (1 + MorrisBuffTweakData.boon_skulls_set_bonus_01.effect_amplify_amount)
					end

					return multiplier
				end,
				refresh_duration_of_buffs_on_apply = skulls_buffs_to_refresh
			}
		}
	},
	boon_skulls_04_stack = {
		buffs = {
			{
				is_cooldown = true,
				name = "boon_skulls_04_stack",
				icon = "boon_skulls_04",
				max_stacks = MorrisBuffTweakData.boon_skulls_04_data.total_thp_to_consume
			}
		}
	},
	boon_skulls_05_stack = {
		buffs = {
			{
				ignore_if_not_local = true,
				stat_buff = "power_level",
				name = "boon_skulls_05_stack",
				icon = "boon_skulls_05",
				refresh_durations = true,
				is_cooldown = true,
				synced_buff_to_add = "boon_skulls_05_surge",
				on_max_stacks_func = "add_buff_synced",
				sync_type = "LocalAndServer",
				reset_on_max_stacks = true,
				duration = MorrisBuffTweakData.boon_skulls_05_data.duration,
				duration_modifier_func = MorrisBuffTweakData.boon_skulls_set_01_data.duration_modifier_func,
				multiplier = function (unit, buff_extension)
					local multiplier = MorrisBuffTweakData.boon_skulls_05_data.power_per_stack
					local has_full_set = buff_extension:num_buff_stacks("power_up_boon_skulls_set_bonus_01_event") > 0

					if has_full_set then
						multiplier = multiplier * (1 + MorrisBuffTweakData.boon_skulls_set_bonus_01.effect_amplify_amount)
					end

					return multiplier
				end,
				max_stacks = MorrisBuffTweakData.boon_skulls_05_data.max_stacks
			}
		}
	},
	boon_skulls_05_surge = {
		buffs = {
			{
				stat_buff = "power_level",
				name = "boon_skulls_05_surge",
				icon = "boon_skulls_05",
				refresh_durations = true,
				apply_buff_func = "skulls_event_boon_surge_applied",
				remove_buff_func = "skulls_event_boon_surge_removed",
				max_stacks = 1,
				duration = MorrisBuffTweakData.boon_skulls_05_data.duration,
				duration_modifier_func = MorrisBuffTweakData.boon_skulls_set_01_data.duration_modifier_func,
				multiplier = function (unit, buff_extension)
					local multiplier = MorrisBuffTweakData.boon_skulls_05_data.power_on_proc
					local has_full_set = buff_extension:num_buff_stacks("power_up_boon_skulls_set_bonus_01_event") > 0

					if has_full_set then
						multiplier = multiplier * (1 + MorrisBuffTweakData.boon_skulls_set_bonus_01.effect_amplify_amount)
					end

					return multiplier
				end,
				refresh_duration_of_buffs_on_apply = skulls_buffs_to_refresh
			}
		}
	},
	boon_skulls_03_cooldown = {
		buffs = {
			{
				name = "boon_skulls_03_cooldown",
				max_stacks = 1,
				is_cooldown = true,
				icon = "boon_skulls_03",
				duration = MorrisBuffTweakData.boon_skulls_03_data.cooldown,
				duration_modifier_func = function (unit, sub_buff_template, duration, buff_extension, params)
					local has_full_set = buff_extension:num_buff_stacks("power_up_boon_skulls_set_bonus_01_event") > 0

					if has_full_set then
						duration = duration / (1 + MorrisBuffTweakData.boon_skulls_set_bonus_01.duration_amplify_amount)
					end

					return duration
				end,
				refresh_duration_of_buffs_on_apply = skulls_buffs_to_refresh
			}
		}
	},
	boon_supportbomb_healing_01_zone = {
		buffs = {
			{
				name = "boon_supportbomb_healing_01_zone",
				buff_area_buff = "boon_supportbomb_healing_01_buff",
				area_start_sfx = "Play_boon_aoe_zone_explode_healing",
				area_end_sfx = "Play_boon_aoe_zone_stop",
				enter_area_sfx = "Play_boon_aoe_zone_enter",
				buff_self = true,
				leave_area_sfx = "Play_boon_aoe_zone_exit",
				buff_allies = true,
				buff_area = true,
				area_unit_name = "units/hub_elements/empty",
				area_radius = MorrisBuffTweakData.boon_supportbomb_shared_data.radius,
				buff_sync_type = BuffSyncType.Server,
				duration = MorrisBuffTweakData.boon_supportbomb_shared_data.duration,
				buff_area_particles = {
					{
						orphaned_policy = "destroy",
						first_person = false,
						third_person = true,
						effect = "fx/skulls_2024/boons_zone_base_fx",
						continuous = true,
						destroy_policy = "destroy",
						custom_variables = {
							{
								name = "radius_min_max",
								value = {
									MorrisBuffTweakData.boon_supportbomb_shared_data.radius,
									MorrisBuffTweakData.boon_supportbomb_shared_data.radius,
									1
								}
							},
							{
								name = "decal_size",
								value = {
									MorrisBuffTweakData.boon_supportbomb_shared_data.radius * 2.25,
									MorrisBuffTweakData.boon_supportbomb_shared_data.radius * 2.25,
									1
								}
							},
							{
								name = "sphere_size",
								value = {
									MorrisBuffTweakData.boon_supportbomb_shared_data.radius,
									MorrisBuffTweakData.boon_supportbomb_shared_data.radius,
									1
								}
							}
						},
						material_variables = {}
					}
				}
			}
		}
	},
	boon_supportbomb_healing_01_buff = {
		buffs = {
			{
				heal_type = "heal_from_proc",
				name = "boon_supportbomb_healing_01_buff",
				update_func = "heal_owner",
				update_frequency = 1,
				heal_amount = MorrisBuffTweakData.boon_supportbomb_healing_01_data.heal_amount
			}
		}
	},
	boon_supportbomb_concentration_01_zone = {
		buffs = {
			{
				name = "boon_supportbomb_concentration_01_zone",
				buff_area_buff = "boon_supportbomb_concentration_01_buff",
				area_start_sfx = "Play_boon_aoe_zone_explode_cooldown",
				area_end_sfx = "Play_boon_aoe_zone_stop",
				enter_area_sfx = "Play_boon_aoe_zone_enter",
				buff_self = true,
				leave_area_sfx = "Play_boon_aoe_zone_exit",
				buff_allies = true,
				buff_area = true,
				area_unit_name = "units/hub_elements/empty",
				area_radius = MorrisBuffTweakData.boon_supportbomb_shared_data.radius,
				buff_sync_type = BuffSyncType.Client,
				duration = MorrisBuffTweakData.boon_supportbomb_shared_data.duration,
				buff_area_particles = {
					{
						orphaned_policy = "destroy",
						first_person = false,
						third_person = true,
						effect = "fx/skulls_2024/boons_zone_concentration_fx",
						continuous = true,
						destroy_policy = "destroy",
						custom_variables = {
							{
								name = "radius_min_max",
								value = {
									MorrisBuffTweakData.boon_supportbomb_shared_data.radius,
									MorrisBuffTweakData.boon_supportbomb_shared_data.radius,
									1
								}
							},
							{
								name = "decal_size",
								value = {
									MorrisBuffTweakData.boon_supportbomb_shared_data.radius * 2.25,
									MorrisBuffTweakData.boon_supportbomb_shared_data.radius * 2.25,
									1
								}
							},
							{
								name = "sphere_size",
								value = {
									MorrisBuffTweakData.boon_supportbomb_shared_data.radius,
									MorrisBuffTweakData.boon_supportbomb_shared_data.radius,
									1
								}
							}
						},
						material_variables = {}
					}
				}
			}
		}
	},
	boon_supportbomb_concentration_01_buff = {
		buffs = {
			{
				name = "boon_supportbomb_concentration_01_buff",
				stat_buff = "cooldown_regen",
				multiplier = MorrisBuffTweakData.boon_supportbomb_concentration_01_data.multiplier
			}
		}
	},
	boon_supportbomb_crit_01_zone = {
		buffs = {
			{
				name = "boon_supportbomb_crit_01_zone",
				buff_area_buff = "boon_supportbomb_crit_01_buff",
				area_start_sfx = "Play_boon_aoe_zone_explode_crit",
				area_end_sfx = "Play_boon_aoe_zone_stop",
				enter_area_sfx = "Play_boon_aoe_zone_enter",
				buff_self = true,
				leave_area_sfx = "Play_boon_aoe_zone_exit",
				buff_allies = true,
				buff_area = true,
				area_unit_name = "units/hub_elements/empty",
				area_radius = MorrisBuffTweakData.boon_supportbomb_shared_data.radius,
				buff_sync_type = BuffSyncType.Client,
				duration = MorrisBuffTweakData.boon_supportbomb_shared_data.duration,
				buff_area_particles = {
					{
						orphaned_policy = "destroy",
						first_person = false,
						third_person = true,
						effect = "fx/skulls_2024/boons_zone_crit_fx",
						continuous = true,
						destroy_policy = "destroy",
						custom_variables = {
							{
								name = "radius_min_max",
								value = {
									MorrisBuffTweakData.boon_supportbomb_shared_data.radius,
									MorrisBuffTweakData.boon_supportbomb_shared_data.radius,
									1
								}
							},
							{
								name = "decal_size",
								value = {
									MorrisBuffTweakData.boon_supportbomb_shared_data.radius * 2.25,
									MorrisBuffTweakData.boon_supportbomb_shared_data.radius * 2.25,
									1
								}
							},
							{
								name = "sphere_size",
								value = {
									MorrisBuffTweakData.boon_supportbomb_shared_data.radius,
									MorrisBuffTweakData.boon_supportbomb_shared_data.radius,
									1
								}
							}
						},
						material_variables = {}
					}
				}
			}
		}
	},
	boon_supportbomb_crit_01_buff = {
		buffs = {
			{
				name = "boon_supportbomb_crit_01_buff",
				stat_buff = "critical_strike_chance",
				bonus = MorrisBuffTweakData.boon_supportbomb_crit_01_data.bonus
			}
		}
	},
	boon_supportbomb_speed_01_zone = {
		buffs = {
			{
				name = "boon_supportbomb_speed_01_zone",
				buff_area_buff = "boon_supportbomb_speed_01_buff",
				area_start_sfx = "Play_boon_aoe_zone_explode_attackspeed",
				area_end_sfx = "Play_boon_aoe_zone_stop",
				enter_area_sfx = "Play_boon_aoe_zone_enter",
				buff_self = true,
				leave_area_sfx = "Play_boon_aoe_zone_exit",
				buff_allies = true,
				buff_area = true,
				area_unit_name = "units/hub_elements/empty",
				area_radius = MorrisBuffTweakData.boon_supportbomb_shared_data.radius,
				buff_sync_type = BuffSyncType.Client,
				duration = MorrisBuffTweakData.boon_supportbomb_shared_data.duration,
				buff_area_particles = {
					{
						orphaned_policy = "destroy",
						first_person = false,
						third_person = true,
						effect = "fx/skulls_2024/boons_zone_speed_fx",
						continuous = true,
						destroy_policy = "destroy",
						custom_variables = {
							{
								name = "radius_min_max",
								value = {
									MorrisBuffTweakData.boon_supportbomb_shared_data.radius,
									MorrisBuffTweakData.boon_supportbomb_shared_data.radius,
									1
								}
							},
							{
								name = "decal_size",
								value = {
									MorrisBuffTweakData.boon_supportbomb_shared_data.radius * 2.25,
									MorrisBuffTweakData.boon_supportbomb_shared_data.radius * 2.25,
									1
								}
							},
							{
								name = "sphere_size",
								value = {
									MorrisBuffTweakData.boon_supportbomb_shared_data.radius,
									MorrisBuffTweakData.boon_supportbomb_shared_data.radius,
									1
								}
							}
						},
						material_variables = {}
					}
				}
			}
		}
	},
	boon_supportbomb_speed_01_buff = {
		buffs = {
			{
				name = "boon_supportbomb_speed_01_buff",
				stat_buff = "attack_speed",
				multiplier = MorrisBuffTweakData.boon_supportbomb_speed_01_data.multiplier
			}
		}
	},
	boon_supportbomb_strenght_01_zone = {
		buffs = {
			{
				name = "boon_supportbomb_strenght_01_zone",
				buff_area_buff = "boon_supportbomb_strenght_01_buff",
				area_start_sfx = "Play_boon_aoe_zone_explode_power",
				area_end_sfx = "Play_boon_aoe_zone_stop",
				enter_area_sfx = "Play_boon_aoe_zone_enter",
				buff_self = true,
				leave_area_sfx = "Play_boon_aoe_zone_exit",
				buff_allies = true,
				buff_area = true,
				area_unit_name = "units/hub_elements/empty",
				area_radius = MorrisBuffTweakData.boon_supportbomb_shared_data.radius,
				buff_sync_type = BuffSyncType.ClientAndServer,
				duration = MorrisBuffTweakData.boon_supportbomb_shared_data.duration,
				buff_area_particles = {
					{
						orphaned_policy = "destroy",
						first_person = false,
						third_person = true,
						effect = "fx/skulls_2024/boons_zone_strenght_fx",
						continuous = true,
						destroy_policy = "destroy",
						custom_variables = {
							{
								name = "radius_min_max",
								value = {
									MorrisBuffTweakData.boon_supportbomb_shared_data.radius,
									MorrisBuffTweakData.boon_supportbomb_shared_data.radius,
									1
								}
							},
							{
								name = "decal_size",
								value = {
									MorrisBuffTweakData.boon_supportbomb_shared_data.radius * 2.25,
									MorrisBuffTweakData.boon_supportbomb_shared_data.radius * 2.25,
									1
								}
							},
							{
								name = "sphere_size",
								value = {
									MorrisBuffTweakData.boon_supportbomb_shared_data.radius,
									MorrisBuffTweakData.boon_supportbomb_shared_data.radius,
									1
								}
							}
						},
						material_variables = {}
					}
				}
			}
		}
	},
	boon_supportbomb_strenght_01_buff = {
		buffs = {
			{
				name = "boon_supportbomb_strenght_01_buff",
				stat_buff = "power_level",
				multiplier = MorrisBuffTweakData.boon_supportbomb_strenght_01_data.multiplier
			}
		}
	},
	boon_career_ability_burning_aoe = {
		buffs = {
			{
				name = "boon_career_ability_burning_aoe",
				refresh_durations = true,
				apply_buff_func = "start_dot_damage",
				damage_type = "burninating",
				damage_profile = "burning_dot",
				update_func = "apply_dot_damage",
				reapply_buff_func = "reapply_dot_damage",
				buff_sync_type = BuffSyncType.ClientAndServer,
				perks = {
					buff_perks.burning
				},
				max_stacks = MorrisBuffTweakData.boon_career_ability_burning_aoe_data.max_stacks,
				time_between_dot_damages = MorrisBuffTweakData.boon_career_ability_burning_aoe_data.time_between_dot_damages,
				update_start_delay = MorrisBuffTweakData.boon_career_ability_burning_aoe_data.update_start_delay,
				duration = MorrisBuffTweakData.boon_career_ability_burning_aoe_data.duration
			}
		}
	},
	boon_career_ability_poison_aoe = {
		buffs = {
			{
				name = "boon_career_ability_poison_aoe",
				refresh_durations = true,
				apply_buff_func = "start_dot_damage",
				damage_profile = "poison",
				update_func = "apply_dot_damage",
				reapply_buff_func = "reapply_dot_damage",
				buff_sync_type = BuffSyncType.ClientAndServer,
				perks = {
					buff_perks.poisoned
				},
				max_stacks = MorrisBuffTweakData.boon_career_ability_bleed_aoe_data.max_stacks,
				time_between_dot_damages = MorrisBuffTweakData.boon_career_ability_bleed_aoe_data.time_between_dot_damages,
				update_start_delay = MorrisBuffTweakData.boon_career_ability_bleed_aoe_data.update_start_delay,
				duration = MorrisBuffTweakData.boon_career_ability_bleed_aoe_data.duration
			}
		}
	},
	boon_career_ability_bleed_aoe = {
		buffs = {
			{
				name = "boon_career_ability_burning_aoe",
				refresh_durations = true,
				apply_buff_func = "start_dot_damage",
				damage_profile = "bleed",
				update_func = "apply_dot_damage",
				reapply_buff_func = "reapply_dot_damage",
				buff_sync_type = BuffSyncType.ClientAndServer,
				perks = {
					buff_perks.bleeding
				},
				max_stacks = MorrisBuffTweakData.boon_career_ability_bleed_aoe_data.max_stacks,
				time_between_dot_damages = MorrisBuffTweakData.boon_career_ability_bleed_aoe_data.time_between_dot_damages,
				update_start_delay = MorrisBuffTweakData.boon_career_ability_bleed_aoe_data.update_start_delay,
				duration = MorrisBuffTweakData.boon_career_ability_bleed_aoe_data.duration
			}
		}
	},
	boon_cursed_chest_damage_area_buff = {
		buffs = {
			{
				name = "boon_cursed_chest_damage_area_buff",
				buff_area_buff = "boon_cursed_chest_damage_buff",
				enter_area_func = "enter_buff_area",
				enter_area_sfx = "Play_boon_aoe_zone_enter",
				buff_self = true,
				leave_area_sfx = "Play_boon_aoe_zone_exit",
				buff_allies = true,
				buff_area = true,
				area_unit_name = "units/hub_elements/empty",
				exit_area_func = "exit_buff_area",
				area_radius = MorrisBuffTweakData.boon_cursed_chest_damage_area_buff_data.radius,
				buff_sync_type = BuffSyncType.ClientAndServer,
				duration = MorrisBuffTweakData.boon_cursed_chest_damage_area_buff_data.duration,
				buff_area_particles = {
					{
						orphaned_policy = "destroy",
						first_person = false,
						third_person = true,
						effect = "fx/skulls_2024/boons_zone_strenght_fx",
						continuous = true,
						destroy_policy = "destroy",
						custom_variables = {
							{
								name = "radius_min_max",
								value = {
									MorrisBuffTweakData.boon_cursed_chest_damage_area_buff_data.radius,
									MorrisBuffTweakData.boon_cursed_chest_damage_area_buff_data.radius,
									1
								}
							},
							{
								name = "decal_size",
								value = {
									MorrisBuffTweakData.boon_cursed_chest_damage_area_buff_data.radius * 2.25,
									MorrisBuffTweakData.boon_cursed_chest_damage_area_buff_data.radius * 2.25,
									1
								}
							},
							{
								name = "sphere_size",
								value = {
									MorrisBuffTweakData.boon_cursed_chest_damage_area_buff_data.radius,
									MorrisBuffTweakData.boon_cursed_chest_damage_area_buff_data.radius,
									1
								}
							}
						},
						material_variables = {}
					}
				}
			}
		}
	},
	boon_cursed_chest_damage_buff = {
		buffs = {
			{
				name = "boon_cursed_chest_damage_buff",
				stat_buff = "damage_dealt",
				multiplier = MorrisBuffTweakData.boon_cursed_chest_damage_area_buff_data.damage_multiplier,
				duration = MorrisBuffTweakData.boon_cursed_chest_damage_area_buff_data.duration,
				max_stacks = MorrisBuffTweakData.boon_cursed_chest_damage_area_buff_data.max_stacks
			}
		}
	},
	boon_cursed_chest_cooldown_area_buff = {
		buffs = {
			{
				name = "boon_cursed_chest_cooldown_area_buff",
				buff_area_buff = "boon_cursed_chest_cooldown_buff",
				enter_area_func = "enter_buff_area",
				enter_area_sfx = "Play_boon_aoe_zone_enter",
				buff_self = true,
				leave_area_sfx = "Play_boon_aoe_zone_exit",
				buff_allies = true,
				buff_area = true,
				area_unit_name = "units/hub_elements/empty",
				exit_area_func = "exit_buff_area",
				area_radius = MorrisBuffTweakData.boon_cursed_chest_cooldown_area_buff_data.radius,
				buff_sync_type = BuffSyncType.ClientAndServer,
				duration = MorrisBuffTweakData.boon_cursed_chest_cooldown_area_buff_data.duration,
				buff_area_particles = {
					{
						orphaned_policy = "destroy",
						first_person = false,
						third_person = true,
						effect = "fx/skulls_2024/boons_zone_concentration_fx",
						continuous = true,
						destroy_policy = "destroy",
						custom_variables = {
							{
								name = "radius_min_max",
								value = {
									MorrisBuffTweakData.boon_cursed_chest_damage_area_buff_data.radius,
									MorrisBuffTweakData.boon_cursed_chest_damage_area_buff_data.radius,
									1
								}
							},
							{
								name = "decal_size",
								value = {
									MorrisBuffTweakData.boon_cursed_chest_damage_area_buff_data.radius * 2.25,
									MorrisBuffTweakData.boon_cursed_chest_damage_area_buff_data.radius * 2.25,
									1
								}
							},
							{
								name = "sphere_size",
								value = {
									MorrisBuffTweakData.boon_cursed_chest_damage_area_buff_data.radius,
									MorrisBuffTweakData.boon_cursed_chest_damage_area_buff_data.radius,
									1
								}
							}
						},
						material_variables = {}
					}
				}
			}
		}
	},
	boon_cursed_chest_cooldown_buff = {
		buffs = {
			{
				name = "boon_cursed_chest_cooldown_buff",
				stat_buff = "cooldown_regen",
				duration = MorrisBuffTweakData.boon_cursed_chest_cooldown_area_buff_data.duration,
				multiplier = MorrisBuffTweakData.boon_cursed_chest_cooldown_area_buff_data.cooldown_multiplier,
				max_stacks = MorrisBuffTweakData.boon_cursed_chest_cooldown_area_buff_data.max_stacks
			}
		}
	}
}

DLCUtils.merge("deus_power_up_buff_templates", DeusPowerUpBuffTemplates)

DeusPowerUpTemplates = DeusPowerUpTemplates or {
	attack_speed = {
		display_name = "properties_attack_speed",
		max_amount = 1,
		advanced_description = "description_properties_attack_speed",
		icon = "icon_property_attack_speed",
		plain_display_name = "properties_attack_speed_plain",
		buff_template = {
			buffs = {
				{
					stat_buff = "attack_speed"
				}
			}
		},
		description_values = {
			{
				value_type = "percent",
				value = MorrisBuffTweakData.attack_speed.multiplier
			}
		}
	},
	stamina = {
		advanced_description = "description_properties_stamina",
		display_name = "properties_stamina",
		max_amount = 1,
		icon = "icon_property_stamina",
		plain_display_name = "properties_stamina_plain",
		buff_template = {
			buffs = {
				{
					stat_buff = "max_fatigue"
				}
			}
		},
		description_values = {
			{
				value_type = "bonus",
				value = MorrisBuffTweakData.stamina.bonus
			}
		}
	},
	push_block_arc = {
		advanced_description = "description_properties_push_block_arc",
		display_name = "properties_push_block_arc",
		max_amount = 1,
		icon = "icon_property_block_arc",
		plain_display_name = "properties_push_block_arc_plain",
		buff_template = {
			buffs = {
				{
					stat_buff = "block_angle"
				}
			}
		},
		description_values = {
			{
				value_type = "percent",
				value = MorrisBuffTweakData.push_block_arc.multiplier
			}
		}
	},
	crit_chance = {
		advanced_description = "description_properties_crit_chance",
		display_name = "properties_crit_chance",
		max_amount = 1,
		icon = "icon_property_crit_chance",
		plain_display_name = "properties_crit_chance_plain",
		buff_template = {
			buffs = {
				{
					stat_buff = "critical_strike_chance"
				}
			}
		},
		description_values = {
			{
				value_type = "percent",
				value = MorrisBuffTweakData.crit_chance.bonus
			}
		}
	},
	ability_cooldown_reduction = {
		advanced_description = "description_properties_ability_cooldown_reduction",
		display_name = "properties_ability_cooldown_reduction",
		max_amount = 1,
		icon = "icon_property_activated_cdr",
		plain_display_name = "properties_ability_cooldown_reduction_plain",
		buff_template = {
			buffs = {
				{
					stat_buff = "activated_cooldown"
				}
			}
		},
		description_values = {
			{
				value_type = "percent",
				value = MorrisBuffTweakData.ability_cooldown_reduction.multiplier
			}
		}
	},
	crit_boost = {
		advanced_description = "description_properties_crit_boost",
		display_name = "properties_crit_boost",
		max_amount = 1,
		icon = "icon_property_crit_boost",
		plain_display_name = "properties_crit_boost_plain",
		buff_template = {
			buffs = {
				{
					stat_buff = "critical_strike_effectiveness"
				}
			}
		},
		description_values = {
			{
				value_type = "percent",
				value = MorrisBuffTweakData.crit_boost.multiplier
			}
		}
	},
	power_vs_skaven = {
		advanced_description = "description_properties_power_vs_skaven",
		display_name = "properties_power_vs_skaven",
		max_amount = 1,
		icon = "icon_property_power_skaven",
		plain_display_name = "properties_power_vs_skaven_plain",
		buff_template = {
			buffs = {
				{
					stat_buff = "power_level_skaven"
				}
			}
		},
		description_values = {
			{
				value_type = "percent",
				value = MorrisBuffTweakData.power_vs_skaven.multiplier
			}
		}
	},
	power_vs_chaos = {
		advanced_description = "description_properties_power_vs_chaos",
		display_name = "properties_power_vs_chaos",
		max_amount = 1,
		icon = "icon_property_power_chaos",
		plain_display_name = "properties_power_vs_chaos_plain",
		buff_template = {
			buffs = {
				{
					stat_buff = "power_level_chaos"
				}
			}
		},
		description_values = {
			{
				value_type = "percent",
				value = MorrisBuffTweakData.power_vs_chaos.multiplier
			}
		}
	},
	power_vs_unarmoured = {
		advanced_description = "description_properties_power_vs_unarmoured",
		display_name = "properties_power_vs_unarmoured",
		max_amount = 1,
		icon = "icon_property_power_unarmoured",
		plain_display_name = "properties_power_vs_unarmoured_plain",
		buff_template = {
			buffs = {
				{
					stat_buff = "power_level_unarmoured"
				}
			}
		},
		description_values = {
			{
				value_type = "percent",
				value = MorrisBuffTweakData.power_vs_unarmoured.multiplier
			}
		}
	},
	power_vs_armoured = {
		advanced_description = "description_properties_power_vs_armoured",
		display_name = "properties_power_vs_armoured",
		max_amount = 1,
		icon = "icon_property_power_armoured",
		plain_display_name = "properties_power_vs_armoured_plain",
		buff_template = {
			buffs = {
				{
					stat_buff = "power_level_armoured"
				}
			}
		},
		description_values = {
			{
				value_type = "percent",
				value = MorrisBuffTweakData.power_vs_armoured.multiplier
			}
		}
	},
	power_vs_large = {
		advanced_description = "description_properties_power_vs_large",
		display_name = "properties_power_vs_large",
		max_amount = 1,
		icon = "icon_property_power_large",
		plain_display_name = "properties_power_vs_large_plain",
		buff_template = {
			buffs = {
				{
					stat_buff = "power_level_large"
				}
			}
		},
		description_values = {
			{
				value_type = "percent",
				value = MorrisBuffTweakData.power_vs_large.multiplier
			}
		}
	},
	power_vs_frenzy = {
		advanced_description = "description_properties_power_vs_frenzy",
		display_name = "properties_power_vs_frenzy",
		max_amount = 1,
		icon = "icon_property_power_frenzy",
		plain_display_name = "properties_power_vs_frenzy_plain",
		buff_template = {
			buffs = {
				{
					stat_buff = "power_level_frenzy"
				}
			}
		},
		description_values = {
			{
				value_type = "percent",
				value = MorrisBuffTweakData.power_vs_frenzy.multiplier
			}
		}
	},
	health = {
		advanced_description = "description_properties_health",
		display_name = "properties_health",
		max_amount = 1,
		icon = "icon_property_health_increase",
		plain_display_name = "properties_health_plain",
		buff_template = {
			buffs = {
				{
					stat_buff = "max_health"
				}
			}
		},
		description_values = {
			{
				value_type = "percent",
				value = MorrisBuffTweakData.health.multiplier
			}
		}
	},
	block_cost = {
		advanced_description = "description_properties_block_cost",
		display_name = "properties_block_cost",
		max_amount = 2,
		icon = "icon_property_block_cost_reduction",
		plain_display_name = "properties_block_cost_plain",
		buff_template = {
			buffs = {
				{
					stat_buff = "block_cost"
				}
			}
		},
		description_values = {
			{
				value_type = "percent",
				value = MorrisBuffTweakData.block_cost.multiplier
			}
		}
	},
	protection_skaven = {
		advanced_description = "description_properties_protection_skaven",
		display_name = "properties_protection_skaven",
		max_amount = 1,
		icon = "icon_property_dmg_reduction_skaven",
		plain_display_name = "properties_protection_skaven_plain",
		buff_template = {
			buffs = {
				{
					stat_buff = "protection_skaven"
				}
			}
		},
		description_values = {
			{
				value_type = "percent",
				value = MorrisBuffTweakData.protection_skaven.multiplier
			}
		}
	},
	protection_chaos = {
		advanced_description = "description_properties_protection_chaos",
		display_name = "properties_protection_chaos",
		max_amount = 1,
		icon = "icon_property_dmg_reduction_chaos",
		plain_display_name = "properties_protection_chaos_plain",
		buff_template = {
			buffs = {
				{
					stat_buff = "protection_chaos"
				}
			}
		},
		description_values = {
			{
				value_type = "percent",
				value = MorrisBuffTweakData.protection_chaos.multiplier
			}
		}
	},
	protection_aoe = {
		advanced_description = "description_properties_protection_aoe",
		display_name = "properties_protection_aoe",
		max_amount = 1,
		icon = "icon_property_dmg_reduction_aoe",
		plain_display_name = "properties_protection_aoe_plain",
		buff_template = {
			buffs = {
				{
					stat_buff = "protection_aoe"
				}
			}
		},
		description_values = {
			{
				value_type = "percent",
				value = MorrisBuffTweakData.protection_aoe.multiplier
			}
		}
	},
	respawn_speed = {
		advanced_description = "description_properties_respawn_speed",
		display_name = "properties_respawn_speed",
		max_amount = 1,
		icon = "icon_property_speed_respawn",
		plain_display_name = "properties_respawn_speed_plain",
		buff_template = {
			buffs = {
				{
					stat_buff = "faster_respawn"
				}
			}
		},
		description_values = {
			{
				value_type = "percent",
				value = MorrisBuffTweakData.respawn_speed.multiplier
			}
		}
	},
	revive_speed = {
		advanced_description = "description_properties_revive_speed",
		display_name = "properties_revive_speed",
		max_amount = 1,
		icon = "icon_property_speed_revive",
		plain_display_name = "properties_revive_speed_plain",
		buff_template = {
			buffs = {
				{
					stat_buff = "faster_revive"
				}
			}
		},
		description_values = {
			{
				value_type = "percent",
				value = MorrisBuffTweakData.revive_speed.multiplier
			}
		}
	},
	fatigue_regen = {
		advanced_description = "description_properties_fatigue_regen",
		display_name = "properties_fatigue_regen",
		max_amount = 2,
		icon = "icon_property_speed_stamina_regen",
		plain_display_name = "properties_fatigue_regen_plain",
		buff_template = {
			buffs = {
				{
					stat_buff = "fatigue_regen"
				}
			}
		},
		description_values = {
			{
				value_type = "percent",
				value = MorrisBuffTweakData.fatigue_regen.multiplier
			}
		}
	},
	movespeed = {
		advanced_description = "description_properties_movespeed",
		display_name = "properties_movespeed",
		max_amount = 2,
		icon = "icon_property_movement_speed",
		plain_display_name = "properties_movespeed_plain",
		buff_template = {
			buffs = {
				{
					remove_buff_func = "remove_movement_buff",
					apply_buff_func = "apply_movement_buff",
					path_to_movement_setting_to_modify = {
						"move_speed"
					}
				}
			}
		},
		description_values = {
			{
				value_type = "percent",
				value = MorrisBuffTweakData.movespeed.description_value
			}
		}
	},
	curse_resistance = {
		advanced_description = "description_properties_curse_resistance",
		display_name = "properties_curse_resistance",
		max_amount = 1,
		icon = "icon_property_grimoire_resistance",
		plain_display_name = "properties_curse_resistance_plain",
		buff_template = {
			buffs = {
				{
					stat_buff = "curse_protection"
				}
			}
		},
		description_values = {
			{
				value_type = "percent",
				value = MorrisBuffTweakData.curse_resistance.multiplier
			}
		}
	},
	home_brewer = {
		display_name = "trait_ring_not_consume_potion",
		advanced_description = "description_trait_ring_not_consume_potion",
		max_amount = 1,
		icon = "charm_not_consume_potion",
		buff_template = {
			buffs = {
				{
					dormant = true,
					stat_buff = "not_consume_potion"
				}
			}
		},
		description_values = {
			{
				value_type = "percent",
				value = MorrisBuffTweakData.home_brewer.proc_chance
			}
		}
	},
	decanter = {
		display_name = "trait_ring_potion_duration",
		advanced_description = "description_trait_ring_potion_duration",
		max_amount = 1,
		icon = "charm_potion_duration_increased",
		buff_template = {
			buffs = {
				{
					dormant = true,
					perks = {
						buff_perks.potion_duration
					}
				}
			}
		},
		description_values = {
			{
				value_type = "percent",
				value = MorrisBuffTweakData.decanter.multiplier
			}
		}
	},
	healers_touch = {
		display_name = "trait_necklace_not_consume_healing",
		advanced_description = "description_trait_necklace_not_consume_healing",
		max_amount = 1,
		icon = "necklace_not_consume_healing",
		buff_template = {
			buffs = {
				{
					dormant = true,
					stat_buff = "not_consume_medpack"
				}
			}
		},
		description_values = {
			{
				value_type = "percent",
				value = MorrisBuffTweakData.healers_touch.proc_chance
			}
		}
	},
	hand_of_shallya = {
		display_name = "trait_necklace_heal_self_on_heal_other",
		advanced_description = "conqueror_desc_3",
		max_amount = 1,
		icon = "necklace_heal_self_on_heal_other",
		buff_template = {
			buffs = {
				{
					multiplier = 0.2,
					name = "necklace_heal_share",
					range = 10,
					buff_func = "heal_other_players_percent_at_range",
					event = "on_healed_consumeable",
					dormant = true
				}
			}
		},
		description_values = {
			{
				value_type = "percent",
				value = MorrisBuffTweakData.hand_of_shallya.multiplier
			}
		}
	},
	power_up_of_shallya = {
		display_name = "trait_necklace_increased_healing_received",
		advanced_description = "description_trait_necklace_increased_healing_received",
		max_amount = 1,
		icon = "necklace_increased_healing_received",
		buff_template = {
			buffs = {
				{
					max_stacks = 1,
					dormant = true,
					stat_buff = "healing_received"
				}
			}
		},
		description_values = {
			{
				value_type = "percent",
				value = MorrisBuffTweakData.power_up_of_shallya.multiplier
			}
		}
	},
	natural_bond = {
		display_name = "trait_necklace_no_healing_health_regen",
		advanced_description = "description_trait_necklace_no_healing_health_regen_2",
		max_amount = 1,
		icon = "necklace_no_healing_health_regen",
		buff_template = {
			buffs = {
				{
					max_stacks = 1,
					update_func = "update_heal_ticks",
					dormant = true,
					perks = {
						buff_perks.no_permanent_health
					}
				}
			}
		},
		description_values = {
			{
				value = MorrisBuffTweakData.natural_bond.heal_amount
			},
			{
				value = MorrisBuffTweakData.natural_bond.time_between_heals
			}
		}
	},
	barkskin = {
		advanced_description = "description_trait_necklace_damage_taken_reduction_on_heal_2",
		display_name = "trait_necklace_damage_taken_reduction_on_heal",
		max_amount = 1,
		icon = "necklace_damage_taken_reduction_on_heal",
		buff_name = "trait_necklace_damage_taken_reduction_on_heal",
		buff_template = {
			buffs = {
				{
					event = "on_damage_taken",
					dormant = true,
					buff_func = "buff_defence_on_damage_taken"
				}
			}
		},
		description_values = {
			{
				value_type = "percent",
				value = MorrisBuffTweakData.barkskin.multiplier
			},
			{
				value_type = "duration",
				value = MorrisBuffTweakData.barkskin.sub_buff_duration
			},
			{
				value_type = "duration",
				value = MorrisBuffTweakData.barkskin.sub_buff_duration
			}
		}
	},
	grenadier = {
		advanced_description = "description_trait_trinket_not_consume_grenade",
		display_name = "trait_trinket_not_consume_grenade",
		max_amount = 1,
		icon = "trait_trinket_not_consume_grenade",
		buff_name = "trait_trinket_not_consume_grenade",
		buff_template = {
			buffs = {
				{
					dormant = true,
					stat_buff = "not_consume_grenade"
				}
			}
		},
		description_values = {
			{
				value_type = "percent",
				value = MorrisBuffTweakData.grenadier.proc_chance
			}
		}
	},
	explosive_ordinance = {
		display_name = "trait_trinket_increase_grenade_radius",
		advanced_description = "description_trait_trinket_increase_grenade_radius",
		max_amount = 1,
		icon = "trinket_increase_grenade_radius",
		buff_template = {
			buffs = {
				{
					dormant = true,
					stat_buff = "grenade_radius"
				}
			}
		},
		description_values = {
			{
				value_type = "percent",
				value = MorrisBuffTweakData.explosive_ordinance.multiplier
			}
		}
	},
	shrapnel = {
		display_name = "trait_trinket_grenade_damage_taken",
		advanced_description = "description_trait_trinket_grenade_damage_taken",
		max_amount = 1,
		icon = "trinket_reduce_radius_by_50_increase_power_by_50",
		buff_template = {
			buffs = {
				{
					event = "on_hit",
					buff_func = "debuff_defence_grenade_hit"
				}
			}
		},
		description_values = {
			{
				value = 0.2,
				value_type = "percent"
			},
			{
				value = 10,
				value_type = "duration"
			}
		}
	},
	deus_transmute_into_coins = {
		rectangular_icon = true,
		advanced_description = "description_deus_transmute_into_coins",
		max_amount = 1,
		icon = "icons_placeholder",
		display_name = "display_name_deus_transmute_into_coins",
		buff_template = {
			buffs = {
				{
					event = "on_hit",
					name = "deus_transmute_into_coins",
					sound_event = "morris_power_ups_drop_coins",
					buff_func = "deus_transmute_into_coins"
				}
			}
		},
		description_values = {}
	},
	heal_on_dot_damage_dealt = {
		rectangular_icon = true,
		advanced_description = "description_heal_on_dot_damage_dealt",
		max_amount = 1,
		icon = "heal_on_dot_damage_dealt",
		display_name = "display_name_heal_on_dot_damage_dealt",
		buff_template = {
			buffs = {
				{
					event = "on_dot_damage_dealt",
					name = "heal_on_dot_damage_dealt",
					authority = "server",
					buff_func = "heal_on_dot_damage_dealt",
					value = MorrisBuffTweakData.heal_on_dot_damage_dealt.heal_per_tick
				}
			}
		},
		description_values = {
			{
				value_type = "amount",
				value = MorrisBuffTweakData.heal_on_dot_damage_dealt.heal_per_tick
			}
		}
	},
	explosive_kills_on_elite_kills = {
		rectangular_icon = true,
		advanced_description = "description_explosive_kills_on_elite_kills",
		max_amount = 1,
		icon = "explosive_kills_on_elite_kills",
		display_name = "display_name_explosive_kills_on_elite_kills",
		buff_template = {
			buffs = {
				{
					event = "on_kill_elite_special",
					name = "explosive_kills_on_elite_kills",
					buff_to_add = "elites_on_kill_explosion_buff",
					buff_func = "add_buff_on_melee_kills_proc"
				}
			}
		},
		description_values = {
			{
				value_type = "amount",
				value = MorrisBuffTweakData.explosive_kills_on_elite_kills.amount_of_explosions
			}
		}
	},
	explosive_pushes_on_damage_taken = {
		rectangular_icon = true,
		advanced_description = "description_explosive_pushes_on_damage_taken",
		max_amount = 1,
		icon = "icons_placeholder",
		display_name = "display_name_explosive_pushes_on_damage_taken",
		buff_template = {
			buffs = {
				{
					event = "on_damage_taken",
					name = "explosive_pushes_on_damage_taken",
					buff_to_add = "explosive_pushes",
					buff_func = "add_buff_on_proc"
				}
			}
		},
		description_values = {
			{
				value_type = "duration",
				value = MorrisBuffTweakData.explosive_pushes.duration
			}
		}
	},
	deus_crit_on_damage_taken = {
		rectangular_icon = true,
		advanced_description = "description_deus_crit_on_damage_taken",
		max_amount = 1,
		icon = "deus_icon_crit_on_damage_taken",
		display_name = "display_name_deus_crit_on_damage_taken",
		buff_template = {
			buffs = {
				{
					event = "on_damage_taken",
					name = "deus_crit_on_damage_taken",
					buff_to_add = "deus_crit_on_damage_taken_buff",
					buff_func = "add_buff_on_non_friendly_damage_taken"
				}
			}
		},
		description_values = {
			{
				value_type = "duration",
				value = MorrisBuffTweakData.deus_crit_on_damage_taken_buff.duration
			}
		}
	},
	deus_damage_reduction_on_incapacitated = {
		rectangular_icon = true,
		advanced_description = "description_deus_damage_reduction_on_incapacitated",
		max_amount = 1,
		icon = "deus_icon_damage_reduction_on_incapacitated",
		display_name = "display_name_deus_damage_reduction_on_incapacitated",
		buff_template = {
			buffs = {
				{
					event = "on_damage_taken",
					name = "deus_damage_reduction_on_incapacitated",
					buff_to_add = "deus_damage_reduction_on_incapacitated_buff",
					buff_func = "deus_damage_reduction_on_incapacitated"
				}
			}
		},
		description_values = {
			{
				value_type = "percent",
				value = MorrisBuffTweakData.deus_damage_reduction_on_incapacitated_buff.multiplier
			},
			{
				value_type = "duration",
				value = MorrisBuffTweakData.deus_damage_reduction_on_incapacitated_buff.duration
			}
		}
	},
	deus_powerup_attack_speed = {
		rectangular_icon = true,
		advanced_description = "description_deus_powerup_attack_speed",
		max_amount = 1,
		icon = "deus_powerup_attack_speed",
		display_name = "display_name_deus_powerup_attack_speed",
		buff_template = {
			buffs = {
				{
					name = "deus_powerup_attack_speed",
					stat_buff = "attack_speed",
					multiplier = MorrisBuffTweakData.deus_powerup_attack_speed.multiplier
				}
			}
		},
		description_values = {
			{
				value_type = "percent",
				value = MorrisBuffTweakData.deus_powerup_attack_speed.multiplier
			}
		}
	},
	deus_reckless_swings = {
		rectangular_icon = true,
		advanced_description = "description_deus_reckless_swings",
		max_amount = 1,
		icon = "deus_reckless_swings",
		display_name = "display_name_deus_reckless_swings",
		buff_template = {
			buffs = {
				{
					buff_to_add = "deus_reckless_swings_buff",
					name = "deus_reckless_swings",
					authority = "server",
					update_func = "update_server_buff_on_health_percent",
					update_frequency = 0.5,
					health_threshold = MorrisBuffTweakData.deus_reckless_swings_buff.health_threshold
				}
			}
		},
		description_values = {
			{
				value_type = "percent",
				value = MorrisBuffTweakData.deus_reckless_swings_buff.health_threshold
			},
			{
				value_type = "percent",
				value = MorrisBuffTweakData.deus_reckless_swings_buff.multiplier
			},
			{
				value_type = "amount",
				value = MorrisBuffTweakData.deus_reckless_swings_buff.damage_to_deal
			}
		}
	},
	deus_second_wind = {
		rectangular_icon = true,
		advanced_description = "description_deus_second_wind",
		max_amount = 1,
		icon = "deus_second_wind",
		display_name = "display_name_deus_second_wind",
		buff_template = {
			buffs = {
				{
					max_stacks = 1,
					name = "deus_second_wind",
					proc_weight = 10,
					buff_func = "deus_second_wind_on_hit",
					event = "on_damage_taken",
					authority = "server",
					buffs_to_add = {
						"deus_second_wind_attack_speed",
						"deus_second_wind_movement_speed"
					},
					health_threshold = MorrisBuffTweakData.deus_second_wind_attack_speed.health_threshold
				}
			}
		},
		description_values = {
			{
				value_type = "percent",
				value = MorrisBuffTweakData.deus_second_wind_attack_speed.health_threshold
			},
			{
				value_type = "percent",
				value = MorrisBuffTweakData.deus_second_wind_attack_speed.multiplier
			},
			{
				value_type = "duration",
				value = MorrisBuffTweakData.deus_second_wind_attack_speed.duration
			}
		}
	},
	deus_push_cost_reduction = {
		rectangular_icon = true,
		advanced_description = "description_deus_push_cost_reduction",
		max_amount = 1,
		icon = "deus_push_cost_reduction",
		display_name = "display_name_deus_push_cost_reduction",
		buff_template = {
			buffs = {
				{
					name = "deus_push_cost_reduction",
					perks = {
						buff_perks.slayer_stamina
					}
				}
			}
		},
		description_values = {
			{
				value_type = "percent",
				value = MorrisBuffTweakData.deus_push_cost_reduction.visualizer_number
			}
		}
	},
	deus_guard_aura_check = {
		rectangular_icon = true,
		advanced_description = "description_deus_guard_aura_check",
		max_amount = 1,
		icon = "deus_icon_guard_aura_check",
		display_name = "display_name_deus_guard_aura_check",
		buff_template = {
			buffs = {
				{
					buff_to_add = "deus_guard_aura",
					name = "deus_guard_aura_check",
					authority = "server",
					update_func = "update_server_buff_on_health_percent",
					update_frequency = 0.5,
					health_threshold = MorrisBuffTweakData.deus_guard_buff.health_threshold
				}
			}
		},
		description_values = {
			{
				value_type = "percent",
				value = MorrisBuffTweakData.deus_guard_buff.health_threshold
			}
		}
	},
	deus_extra_stamina = {
		rectangular_icon = true,
		advanced_description = "description_deus_extra_stamina",
		max_amount = 1,
		icon = "deus_icon_extra_stamina",
		display_name = "display_name_deus_extra_stamina",
		buff_template = {
			buffs = {
				{
					name = "deus_extra_stamina",
					stat_buff = "max_fatigue",
					bonus = MorrisBuffTweakData.deus_extra_stamina.extra_stamina
				}
			}
		},
		description_values = {
			{
				value_type = "amount",
				value = MorrisBuffTweakData.deus_extra_stamina.visualizer_number
			}
		}
	},
	deus_parry_damage_immune = {
		rectangular_icon = true,
		advanced_description = "description_deus_parry_damage_immune",
		max_amount = 1,
		icon = "deus_parry_damage_immune",
		display_name = "display_name_deus_parry_damage_immune",
		buff_template = {
			buffs = {
				{
					event = "on_timed_block",
					name = "deus_parry_damage_immune",
					buff_to_add = "deus_parry_damage_immune_buff",
					buff_func = "add_buff"
				}
			}
		},
		description_values = {
			{
				value_type = "duration",
				value = MorrisBuffTweakData.deus_parry_damage_immune_buff.duration
			}
		}
	},
	deus_skill_on_special_kill = {
		rectangular_icon = true,
		advanced_description = "description_deus_skill_on_special_kill",
		max_amount = 1,
		icon = "deus_skill_on_special_kill",
		display_name = "display_name_deus_skill_on_special_kill",
		buff_template = {
			buffs = {
				{
					event = "on_special_killed",
					name = "deus_skill_on_special_kill",
					buff_func = "skill_on_special_kill",
					percent_restored = MorrisBuffTweakData.deus_skill_on_special_kill.percent_restored
				}
			}
		},
		description_values = {
			{
				value_type = "percent",
				value = MorrisBuffTweakData.deus_skill_on_special_kill.percent_restored
			}
		}
	},
	drop_item_on_ability_use = {
		rectangular_icon = true,
		advanced_description = "description_drop_item_on_ability_use",
		max_amount = 1,
		icon = "drop_item_on_ability_use",
		display_name = "display_name_drop_item_on_ability_use",
		buff_template = {
			buffs = {
				{
					name = "drop_item_on_active_ability_use",
					buff_func = "drop_item_on_ability_use",
					event = "on_ability_cooldown_started",
					cooldown_buff = "drop_item_on_ability_use_cooldown",
					cooldown_durations = {
						pockets_full_of_bombs_potion = 120,
						deus_rally_flag = 180,
						holy_hand_grenade = 180
					}
				}
			}
		},
		description_values = {}
	},
	movement_speed_on_active_ability_use = {
		rectangular_icon = true,
		advanced_description = "description_movement_speed_on_active_ability_use",
		max_amount = 1,
		icon = "movement_speed_on_active_ability_use",
		display_name = "display_name_movement_speed_on_active_ability_use",
		buff_template = {
			buffs = {
				{
					event = "on_ability_cooldown_started",
					name = "movement_speed_on_active_ability_use",
					buff_to_add = "active_ability_movement_speed",
					buff_func = "add_buff_on_proc"
				}
			}
		},
		description_values = {
			{
				value_type = "percent",
				value = MorrisBuffTweakData.active_ability_movement_speed.visualizer_multiplier
			},
			{
				value_type = "duration",
				value = MorrisBuffTweakData.active_ability_movement_speed.duration
			}
		}
	},
	attack_speed_per_cooldown = {
		rectangular_icon = true,
		advanced_description = "description_attack_speed_per_cooldown",
		max_amount = 1,
		icon = "deus_icon_attack_speed_per_cooldown",
		display_name = "display_name_attack_speed_per_cooldown",
		buff_template = {
			buffs = {
				{
					name = "attack_speed_per_cooldown",
					stat_buff = "attack_speed",
					update_func = "update_attack_speed_per_cooldown",
					value = MorrisBuffTweakData.attack_speed_per_cooldown.multiplier
				}
			}
		},
		description_values = {
			{
				value_type = "percent",
				value = MorrisBuffTweakData.attack_speed_per_cooldown.multiplier
			}
		}
	},
	cooldown_on_friendly_ability = {
		rectangular_icon = true,
		advanced_description = "description_cooldown_on_friendly_ability",
		max_amount = 1,
		icon = "deus_icon_cooldown_on_friendly_ability",
		display_name = "display_name_cooldown_on_friendly_ability",
		buff_template = {
			buffs = {
				{
					name = "cooldown_on_friendly_ability",
					range = 20,
					buff_func = "cooldown_on_friendly_ability",
					event = "on_ability_activated",
					value = MorrisBuffTweakData.cooldown_on_friendly_ability.percent_restored
				}
			}
		},
		description_values = {
			{
				value_type = "percent",
				value = MorrisBuffTweakData.cooldown_on_friendly_ability.percent_restored
			}
		}
	},
	deus_push_increased_cleave = {
		rectangular_icon = true,
		advanced_description = "description_deus_push_increased_cleave",
		max_amount = 1,
		icon = "deus_push_increased_cleave",
		display_name = "display_name_deus_push_increased_cleave",
		buff_template = {
			buffs = {
				{
					event = "on_push",
					name = "deus_push_increased_cleave",
					buff_to_add = "deus_push_increased_cleave_buff",
					buff_func = "add_buff"
				}
			}
		},
		description_values = {
			{
				value_type = "percent",
				value = MorrisBuffTweakData.deus_push_increased_cleave_buff.multiplier
			},
			{
				value_type = "duration",
				value = MorrisBuffTweakData.deus_push_increased_cleave_buff.duration
			}
		}
	},
	deus_throw_speed_increase = {
		rectangular_icon = true,
		advanced_description = "description_deus_throw_speed_increase",
		max_amount = 1,
		icon = "deus_utils",
		display_name = "display_name_deus_throw_speed_increase",
		buff_template = {
			buffs = {
				{
					max_stacks = 1,
					name = "deus_throw_speed_increase",
					stat_buff = "throw_speed_increase",
					multiplier = MorrisBuffTweakData.deus_throw_speed_increase.multiplier
				}
			}
		},
		description_values = {
			{
				value_type = "percent",
				value = MorrisBuffTweakData.deus_throw_speed_increase.multiplier
			}
		}
	},
	deus_grenade_multi_throw = {
		rectangular_icon = true,
		advanced_description = "description_deus_grenade_multi_throw",
		max_amount = 1,
		icon = "deus_icon_grenade_multi_throw",
		display_name = "display_name_deus_grenade_multi_throw",
		buff_template = {
			buffs = {
				{
					name = "deus_grenade_multi_throw",
					stat_buff = "grenade_extra_shot",
					bonus = MorrisBuffTweakData.deus_grenade_multi_throw.bonus
				}
			}
		},
		description_values = {
			{
				value_type = "bonus",
				value = MorrisBuffTweakData.deus_grenade_multi_throw.bonus
			}
		}
	},
	deus_knockdown_damage_immunity_aura = {
		rectangular_icon = true,
		advanced_description = "description_deus_knockdown_damage_immunity_aura",
		max_amount = 1,
		icon = "deus_knockdown_damage_immunity_aura",
		display_name = "display_name_deus_knockdown_damage_immunity_aura",
		buff_template = {
			buffs = {
				{
					buff_to_add = "deus_knockdown_damage_immunity_buff",
					name = "deus_knockdown_damage_immunity_aura",
					authority = "server",
					range = 10,
					update_func = "deus_knockdown_damage_immunity_aura_func",
					remove_buff_func = "remove_aura_buff"
				}
			}
		},
		description_values = {
			exotic = {}
		}
	},
	deus_coin_pickup_regen = {
		rectangular_icon = true,
		advanced_description = "description_deus_coin_pickup_regen",
		max_amount = 1,
		icon = "deus_healing",
		display_name = "display_name_deus_coin_pickup_regen",
		buff_template = {
			buffs = {
				{
					name = "deus_coin_pickup_regen",
					authority = "server",
					buff_func = "add_buff_on_pickup",
					event = "on_consumable_picked_up",
					pickup_types = {
						deus_soft_currency = {
							"deus_coin_pickup_regen_buff"
						}
					}
				}
			}
		},
		description_values = {
			{
				value_type = "duration",
				value = MorrisBuffTweakData.deus_coin_pickup_regen_buff.duration
			}
		}
	},
	deus_ammo_pickup_give_allies_ammo = {
		rectangular_icon = true,
		advanced_description = "description_deus_ammo_pickup_give_allies_ammo",
		max_amount = 1,
		icon = "deus_icon_ammo_pickup_give_allies_ammo",
		display_name = "display_name_deus_ammo_pickup_give_allies_ammo",
		buff_template = {
			buffs = {
				{
					name = "deus_ammo_pickup_give_allies_ammo",
					authority = "server",
					buff_func = "ally_gain_ammo_on_pickup",
					event = "on_consumable_picked_up",
					pickup_types = {
						ammo = {
							max_range = 10,
							ammo_bonus_fraction = MorrisBuffTweakData.deus_ammo_pickup_give_allies_ammo.percent
						}
					}
				}
			}
		},
		description_values = {
			{
				value_type = "percent",
				value = MorrisBuffTweakData.deus_ammo_pickup_give_allies_ammo.percent
			}
		}
	},
	deus_target_full_health_damage_mult = {
		rectangular_icon = true,
		advanced_description = "description_deus_target_full_health_damage_mult",
		max_amount = 1,
		icon = "deus_target_full_health_damage_mult",
		display_name = "display_name_deus_target_full_health_damage_mult",
		buff_template = {
			buffs = {
				{
					name = "deus_target_full_health_damage_mult",
					authority = "server",
					buff_func = "deus_target_full_health_damage_mult",
					event = "on_player_damage_dealt",
					damage_mult = MorrisBuffTweakData.deus_target_full_health_damage_mult.baked_multiplier,
					valid_attack_types = {
						heavy_attack = true,
						light_attack = true
					}
				}
			}
		},
		description_values = {
			{
				value_type = "percent",
				value = MorrisBuffTweakData.deus_target_full_health_damage_mult.visualizer_number
			}
		}
	},
	deus_barrel_power = {
		rectangular_icon = true,
		advanced_description = "description_deus_barrel_power",
		max_amount = 1,
		icon = "deus_icon_barrel_power",
		display_name = "display_name_deus_barrel_power",
		buff_template = {
			buffs = {
				{
					name = "deus_barrel_power",
					buff_func = "deus_damage_source_damage_mult",
					event = "on_damage_dealt",
					valid_damage_sources = {
						explosive_barrel = true,
						explosive_barrel_objective = true
					},
					damage_mult = MorrisBuffTweakData.deus_barrel_power.multiplier
				}
			}
		},
		description_values = {
			{
				value_type = "percent",
				value = MorrisBuffTweakData.deus_barrel_power.visualizer_number
			}
		}
	},
	deus_revive_regen = {
		rectangular_icon = true,
		advanced_description = "description_deus_revive_regen",
		max_amount = 1,
		icon = "deus_revive_regen",
		display_name = "display_name_deus_revive_regen",
		buff_template = {
			buffs = {
				{
					name = "deus_revive_regen",
					authority = "server",
					buff_func = "add_buff_on_ally_revived",
					event = "on_revived_ally",
					buff_to_add = {
						"deus_revive_regen_buff"
					},
					buff_to_add_revived = {
						"deus_revive_regen_buff"
					}
				}
			}
		},
		description_values = {
			{
				value_type = "duration",
				value = MorrisBuffTweakData.deus_revive_regen_buff.duration
			}
		}
	},
	deus_ammo_pickup_heal = {
		rectangular_icon = true,
		advanced_description = "description_deus_ammo_pickup_heal",
		max_amount = 1,
		icon = "deus_icon_ammo_pickup_heal",
		display_name = "display_name_deus_ammo_pickup_heal",
		buff_template = {
			buffs = {
				{
					sound_event = "hud_player_buff_regen_health",
					name = "deus_ammo_pickup_heal",
					authority = "server",
					buff_func = "heal_on_pickup",
					event = "on_consumable_picked_up",
					pickup_types = {
						ammo = {
							type = "health_regen",
							amount = MorrisBuffTweakData.deus_ammo_pickup_heal.amount
						}
					}
				}
			}
		},
		description_values = {
			{
				value_type = "amount",
				value = MorrisBuffTweakData.deus_ammo_pickup_heal.amount
			}
		}
	},
	deus_max_health = {
		rectangular_icon = true,
		advanced_description = "description_deus_max_health",
		max_amount = 1,
		icon = "deus_max_health",
		display_name = "display_name_deus_max_health",
		buff_template = {
			buffs = {
				{
					name = "deus_max_health",
					stat_buff = "max_health",
					multiplier = MorrisBuffTweakData.deus_max_health.multiplier
				}
			}
		},
		description_values = {
			{
				value_type = "percent",
				value = MorrisBuffTweakData.deus_max_health.multiplier
			}
		}
	},
	deus_health_regeneration = {
		rectangular_icon = true,
		advanced_description = "description_deus_health_regeneration",
		max_amount = 1,
		icon = "deus_icon_health_regeneration",
		display_name = "display_name_deus_health_regeneration",
		buff_template = {
			buffs = {
				{
					name = "deus_health_regeneration",
					authority = "server",
					heal_type = "health_regen",
					update_func = "health_regen_update",
					apply_buff_func = "health_regen_start",
					time_between_heal = MorrisBuffTweakData.deus_health_regeneration.frequency,
					heal = MorrisBuffTweakData.deus_health_regeneration.amount
				}
			}
		},
		description_values = {
			{
				value_type = "duration",
				value = MorrisBuffTweakData.deus_health_regeneration.amount
			},
			{
				value_type = "duration",
				value = MorrisBuffTweakData.deus_health_regeneration.frequency
			}
		}
	},
	deus_large_ammo_pickup_infinite_ammo = {
		rectangular_icon = true,
		advanced_description = "description_deus_large_ammo_pickup_infinite_ammo",
		max_amount = 1,
		icon = "deus_offense",
		display_name = "display_name_deus_large_ammo_pickup_infinite_ammo",
		buff_template = {
			buffs = {
				{
					name = "deus_large_ammo_pickup_infinite_ammo",
					authority = "client",
					buff_func = "add_buff_on_pickup",
					event = "on_consumable_picked_up",
					pickup_names = {
						all_ammo = {
							"deus_large_ammo_pickup_infinite_ammo_buff"
						},
						all_ammo_small = {
							"deus_large_ammo_pickup_infinite_ammo_buff"
						}
					}
				}
			}
		},
		description_values = {
			{
				value_type = "duration",
				value = MorrisBuffTweakData.deus_large_ammo_pickup_infinite_ammo_buff.duration
			}
		}
	},
	deus_larger_clip = {
		rectangular_icon = true,
		advanced_description = "description_deus_larger_clip",
		max_amount = 1,
		icon = "deus_offense",
		display_name = "display_name_deus_larger_clip",
		buff_template = {
			buffs = {
				{
					name = "deus_larger_clip",
					stat_buff = "clip_size",
					multiplier = MorrisBuffTweakData.deus_larger_clip.multiplier
				},
				{
					remove_buff_func = "refresh_ranged_slot_buffs",
					name = "deus_larger_clip_update",
					apply_buff_func = "refresh_ranged_slot_buffs"
				}
			}
		},
		description_values = {
			{
				value_type = "percent",
				value = MorrisBuffTweakData.deus_larger_clip.multiplier
			}
		}
	},
	deus_timed_block_free_shot = {
		rectangular_icon = true,
		advanced_description = "description_deus_timed_block_free_shot",
		max_amount = 1,
		icon = "deus_utils",
		display_name = "display_name_deus_timed_block_free_shot",
		buff_template = {
			buffs = {
				{
					event = "on_timed_block",
					name = "deus_timed_block_free_shot",
					buff_to_add = "deus_timed_block_free_shot_buff",
					buff_func = "add_buff"
				}
			}
		},
		description_values = {}
	},
	deus_more_head_less_body_damage = {
		rectangular_icon = true,
		advanced_description = "description_deus_more_head_less_body_damage",
		max_amount = 1,
		icon = "deus_more_head_less_body_damage",
		display_name = "display_name_deus_more_head_less_body_damage",
		buff_template = {
			buffs = {
				{
					name = "deus_more_head_less_body_damage",
					stat_buff = "headshot_damage",
					multiplier = MorrisBuffTweakData.deus_more_head_less_body_damage.positive_multiplier
				},
				{
					name = "deus_more_head_less_body_damage_negative",
					stat_buff = "non_headshot_damage",
					multiplier = MorrisBuffTweakData.deus_more_head_less_body_damage.negative_multiplier
				}
			}
		},
		description_values = {
			{
				value_type = "percent",
				value = MorrisBuffTweakData.deus_more_head_less_body_damage.positive_multiplier
			},
			{
				value_type = "percent",
				value = MorrisBuffTweakData.deus_more_head_less_body_damage.negative_multiplier
			}
		}
	},
	friendly_cooldown_on_ability = {
		rectangular_icon = true,
		advanced_description = "description_friendly_cooldown_on_ability",
		max_amount = 1,
		icon = "friendly_cooldown_on_ability",
		display_name = "display_name_friendly_cooldown_on_ability",
		buff_template = {
			buffs = {
				{
					name = "friendly_cooldown_on_ability",
					range = 20,
					authority = "server",
					buff_func = "friendly_cooldown_on_ability",
					event = "on_ability_activated",
					value = MorrisBuffTweakData.friendly_cooldown_on_ability.percent
				}
			}
		},
		description_values = {
			{
				value_type = "percent",
				value = MorrisBuffTweakData.friendly_cooldown_on_ability.percent
			}
		}
	},
	triple_melee_headshot_power = {
		rectangular_icon = true,
		advanced_description = "description_triple_melee_headshot_power",
		max_amount = 1,
		icon = "triple_melee_headshot_power",
		display_name = "display_name_triple_melee_headshot_power",
		buff_template = {
			buffs = {
				{
					buff_to_add = "triple_melee_headshot_power_boost",
					name = "triple_melee_headshot_power",
					buff_func = "triple_melee_headshot_power_counter",
					event = "on_hit",
					hits = MorrisBuffTweakData.triple_melee_headshot_power_boost.count
				}
			}
		},
		description_values = {
			{
				value_type = "amount",
				value = MorrisBuffTweakData.triple_melee_headshot_power_boost.count
			},
			{
				value_type = "percent",
				value = MorrisBuffTweakData.triple_melee_headshot_power_boost.multiplier
			},
			{
				value_type = "duration",
				value = MorrisBuffTweakData.triple_melee_headshot_power_boost.duration
			}
		}
	},
	deus_cooldown_regen = {
		rectangular_icon = true,
		advanced_description = "description_deus_cooldown_regen",
		max_amount = 1,
		icon = "deus_icon_cooldown_regen",
		display_name = "display_name_deus_cooldown_regen",
		buff_template = {
			buffs = {
				{
					max_stacks = 10,
					name = "deus_cooldown_regen",
					stat_buff = "cooldown_regen",
					multiplier = MorrisBuffTweakData.deus_cooldown_regen.multiplier
				}
			}
		},
		description_values = {
			{
				value = 0.1,
				value_type = "percent"
			}
		}
	},
	deus_infinite_dodges = {
		rectangular_icon = true,
		advanced_description = "description_deus_infinite_dodges",
		max_amount = 1,
		icon = "deus_infinite_dodges",
		display_name = "display_name_deus_infinite_dodges",
		buff_template = {
			buffs = {
				{
					name = "deus_infinite_dodges",
					perks = {
						buff_perks.infinite_dodge
					}
				}
			}
		},
		description_values = {
			exotic = {}
		}
	},
	deus_uninterruptable_attacks = {
		rectangular_icon = true,
		advanced_description = "description_deus_uninterruptable_attacks",
		max_amount = 1,
		icon = "deus_uninterruptable_attacks",
		display_name = "display_name_deus_uninterruptable_attacks",
		buff_template = {
			buffs = {
				{
					name = "deus_uninterruptable_attacks",
					perks = {
						buff_perks.uninterruptible
					}
				}
			}
		},
		description_values = {}
	},
	deus_increased_healing_taken = {
		rectangular_icon = true,
		advanced_description = "description_deus_increased_healing_taken",
		max_amount = 1,
		icon = "deus_increased_healing_taken",
		display_name = "display_name_deus_increased_healing_taken",
		buff_template = {
			buffs = {
				{
					name = "deus_more_healing_received",
					stat_buff = "healing_received",
					max_stacks = 10,
					priority_buff = true,
					multiplier = MorrisBuffTweakData.deus_increased_healing_taken.multiplier
				}
			}
		},
		description_values = {
			{
				value_type = "percent",
				value = MorrisBuffTweakData.deus_increased_healing_taken.multiplier
			}
		}
	},
	last_player_standing_power_reg = {
		rectangular_icon = true,
		advanced_description = "description_last_player_standing_power_reg",
		max_amount = 1,
		icon = "last_player_standing_power_reg",
		display_name = "display_name_last_player_standing_power_reg",
		buff_template = {
			buffs = {
				{
					event = "on_ally_knocked_down",
					name = "last_player_standing_power_reg",
					buff_to_add = "last_player_standing_power_reg_boost",
					buff_func = "last_player_standing_knocked_down_check"
				}
			}
		},
		description_values = {
			{
				value_type = "percent",
				value = MorrisBuffTweakData.last_player_standing_power_reg_boost.multiplier
			},
			{
				value_type = "duration",
				value = MorrisBuffTweakData.last_player_standing_power_reg_boost.duration
			}
		}
	},
	deus_cooldown_reg_not_hit = {
		rectangular_icon = true,
		advanced_description = "description_deus_cooldown_reg_not_hit",
		max_amount = 1,
		icon = "deus_icon_cooldown_reg_not_hit",
		display_name = "display_name_deus_cooldown_reg_not_hit",
		buff_template = {
			buffs = {
				{
					buff_to_add = "cooldown_reg_not_hit_buff",
					name = "cooldown_reg_on_not_hit",
					authority = "server",
					buff_func = "deus_cooldown_reg_not_hit_damage_taken",
					event = "on_damage_taken",
					update_func = "deus_cooldown_reg_not_hit_update",
					apply_buff_func = "deus_cooldown_reg_not_hit_init",
					interval = MorrisBuffTweakData.cooldown_reg_not_hit_buff.frequency
				}
			}
		},
		description_values = {
			{
				value_type = "amount",
				value = MorrisBuffTweakData.cooldown_reg_not_hit_buff.frequency
			},
			{
				value_type = "percent",
				value = MorrisBuffTweakData.cooldown_reg_not_hit_buff.multiplier
			},
			{
				value_type = "stacks",
				value = MorrisBuffTweakData.cooldown_reg_not_hit_buff.max_stacks
			}
		}
	},
	deus_push_charge = {
		rectangular_icon = true,
		advanced_description = "description_deus_push_charge",
		max_amount = 1,
		icon = "deus_push_charge",
		display_name = "display_name_deus_push_charge",
		buff_template = {
			buffs = {
				{
					sound_event = "dodge",
					name = "deus_push_charge",
					authority = "client",
					buff_func = "deus_push_charge",
					event = "on_push",
					lunge_settings = {
						initial_speed = 25,
						duration = 0.25,
						falloff_to_speed = 5
					}
				}
			}
		},
		description_values = {}
	},
	transfer_temp_health_at_full = {
		rectangular_icon = true,
		advanced_description = "description_transfer_temp_health_at_full",
		max_amount = 1,
		icon = "transfer_temp_health_at_full",
		display_name = "display_name_transfer_temp_health_at_full",
		buff_template = {
			buffs = {
				{
					range = 20,
					name = "transfer_temp_health_at_full",
					authority = "server",
					buff_func = "transfer_temp_health_at_full",
					event = "on_healed"
				}
			}
		},
		description_values = {}
	},
	deus_standing_still_damage_reduction = {
		rectangular_icon = true,
		advanced_description = "description_deus_standing_still_damage_reduction",
		max_amount = 1,
		icon = "deus_standing_still_damage_reduction",
		display_name = "display_name_deus_standing_still_damage_reduction",
		buff_template = {
			buffs = {
				{
					buff_to_add = "deus_standing_still_damage_reduction_buff",
					name = "deus_standing_still_damage_reduction",
					authority = "server",
					update_func = "deus_standing_still_damage_reduction_update",
					update_frequency = 0.2
				}
			}
		},
		description_values = {
			{
				value_type = "percent",
				value = MorrisBuffTweakData.deus_standing_still_damage_reduction_buff.multiplier
			}
		}
	},
	deus_free_potion_use_on_ability = {
		rectangular_icon = true,
		advanced_description = "description_deus_free_potion_use_on_ability",
		max_amount = 1,
		icon = "deus_icon_free_potion_use_on_ability",
		display_name = "display_name_deus_free_potion_use_on_ability",
		buff_template = {
			buffs = {
				{
					event = "on_ability_cooldown_started",
					name = "deus_free_potion_use_on_ability",
					buff_func = "apply_held_potion_effect",
					proc_chance = MorrisBuffTweakData.deus_free_potion_use_on_ability.proc_chance
				}
			}
		},
		description_values = {
			{
				value_type = "percent",
				value = MorrisBuffTweakData.deus_free_potion_use_on_ability.proc_chance
			}
		}
	},
	deus_block_procs_parry = {
		rectangular_icon = true,
		advanced_description = "description_deus_block_procs_parry",
		max_amount = 1,
		icon = "deus_icon_block_procs_parry",
		display_name = "display_name_deus_block_procs_parry",
		buff_template = {
			buffs = {
				{
					event = "on_block",
					name = "deus_block_procs_parry",
					buff_func = "block_procs_parry"
				}
			}
		},
		description_values = {}
	},
	melee_killing_spree_speed = {
		rectangular_icon = true,
		advanced_description = "description_melee_killing_spree_speed",
		max_amount = 1,
		icon = "melee_killing_spree_speed",
		display_name = "display_name_melee_killing_spree_speed",
		buff_template = {
			buffs = {
				{
					buff_to_add = "melee_killing_spree_speed_boost",
					name = "melee_killing_spree_speed",
					authority = "client",
					buff_func = "melee_killing_spree_speed_counter",
					event = "on_kill",
					update_func = "melee_killing_spree_speed_counter_update",
					kills = MorrisBuffTweakData.melee_killing_spree_speed_boost.kill_amount,
					time = MorrisBuffTweakData.melee_killing_spree_speed_boost.kill_window
				}
			}
		},
		description_values = {
			{
				value_type = "amount",
				value = MorrisBuffTweakData.melee_killing_spree_speed_boost.kill_amount
			},
			{
				value_type = "percent",
				value = MorrisBuffTweakData.melee_killing_spree_speed_boost.multiplier
			},
			{
				value_type = "amount",
				value = MorrisBuffTweakData.melee_killing_spree_speed_boost.duration
			}
		}
	},
	boon_skulls_01 = {
		rectangular_icon = true,
		advanced_description = "description_boon_skulls_01",
		max_amount = 1,
		icon = "boon_skulls_01",
		display_name = "display_name_boon_skulls_01",
		buff_template = {
			buffs = {
				{
					buff_to_add = "boon_skulls_01_stack",
					name = "boon_skulls_01",
					authority = "client",
					buff_func = "boon_skulls_01_on_hit",
					event = "on_melee_hit"
				}
			}
		},
		description_values = {
			{
				value_type = "percent",
				value = MorrisBuffTweakData.boon_skulls_01_data.attack_speed_per_stack
			},
			{
				value = MorrisBuffTweakData.boon_skulls_01_data.max_stacks
			},
			{
				value = MorrisBuffTweakData.boon_skulls_01_data.max_stacks
			},
			{
				value_type = "percent",
				value = MorrisBuffTweakData.boon_skulls_01_data.attack_speed_on_proc
			},
			{
				value = MorrisBuffTweakData.boon_skulls_01_data.duration
			}
		}
	},
	boon_skulls_02 = {
		rectangular_icon = true,
		advanced_description = "description_boon_skulls_02",
		max_amount = 1,
		icon = "boon_skulls_02",
		display_name = "display_name_boon_skulls_02",
		buff_template = {
			buffs = {
				{
					buff_to_add = "boon_skulls_02_stack",
					name = "boon_skulls_02",
					authority = "client",
					buff_func = "boon_skulls_02_on_kill",
					event = "on_kill"
				}
			}
		},
		description_values = {
			{
				value_type = "percent",
				value = MorrisBuffTweakData.boon_skulls_02_data.power_per_stack
			},
			{
				value = MorrisBuffTweakData.boon_skulls_02_data.max_stacks
			},
			{
				value_type = "percent",
				value = MorrisBuffTweakData.boon_skulls_02_data.power_on_proc
			},
			{
				value = MorrisBuffTweakData.boon_skulls_02_data.duration
			}
		}
	},
	boon_skulls_03 = {
		rectangular_icon = true,
		advanced_description = "description_boon_skulls_03",
		max_amount = 1,
		icon = "boon_skulls_03",
		display_name = "display_name_boon_skulls_03",
		buff_template = {
			buffs = {
				{
					explosion_template_name = "boon_skulls_03",
					name = "boon_skulls_03",
					authority = "client",
					buff_func = "boon_skulls_03_on_parry",
					event = "on_timed_block",
					cooldown_buff_name = "boon_skulls_03_cooldown"
				}
			}
		},
		description_values = {
			{
				value = MorrisBuffTweakData.boon_skulls_03_data.cooldown
			}
		}
	},
	boon_skulls_04 = {
		rectangular_icon = true,
		advanced_description = "description_boon_skulls_04",
		max_amount = 1,
		icon = "boon_skulls_04",
		display_name = "display_name_boon_skulls_04",
		buff_template = {
			buffs = {
				{
					buff_to_add = "boon_skulls_04_regen",
					name = "boon_skulls_04",
					authority = "client",
					buff_func = "boon_skulls_04_on_hit",
					event = "on_melee_hit"
				}
			}
		},
		description_values = {
			{
				value = MorrisBuffTweakData.boon_skulls_04_data.thp_on_hit
			},
			{
				value = MorrisBuffTweakData.boon_skulls_04_data.total_thp_to_consume
			},
			{
				value = MorrisBuffTweakData.boon_skulls_04_data.thp_per_second
			},
			{
				value_type = "percent",
				value = MorrisBuffTweakData.boon_skulls_04_data.proc_cooldown_regen
			},
			{
				value = MorrisBuffTweakData.boon_skulls_04_data.proc_duration
			}
		}
	},
	boon_skulls_05 = {
		rectangular_icon = true,
		advanced_description = "description_boon_skulls_05",
		max_amount = 1,
		icon = "boon_skulls_05",
		display_name = "display_name_boon_skulls_05",
		buff_template = {
			buffs = {
				{
					buff_to_add = "boon_skulls_05_stack",
					name = "boon_skulls_05",
					authority = "client",
					buff_func = "boon_skulls_05_on_hit",
					event = "on_melee_hit"
				}
			}
		},
		description_values = {
			{
				value_type = "percent",
				value = MorrisBuffTweakData.boon_skulls_05_data.power_per_stack
			},
			{
				value = MorrisBuffTweakData.boon_skulls_05_data.duration
			},
			{
				value = MorrisBuffTweakData.boon_skulls_05_data.max_stacks
			},
			{
				value_type = "percent",
				value = MorrisBuffTweakData.boon_skulls_05_data.power_on_proc
			},
			{
				value = MorrisBuffTweakData.boon_skulls_05_data.duration
			}
		}
	},
	boon_skulls_set_bonus_01 = {
		rectangular_icon = true,
		advanced_description = "description_boon_skulls_set_bonus_01",
		max_amount = 1,
		icon = "boon_skulls_set_bonus_01",
		display_name = "display_name_boon_skulls_set_bonus_01",
		buff_template = {
			buffs = {
				{
					max_stacks = 1,
					name = "boon_skulls_set_bonus_01"
				}
			}
		},
		description_values = {
			{
				value_type = "percent",
				value = MorrisBuffTweakData.boon_skulls_set_bonus_01.effect_amplify_amount
			},
			{
				value_type = "percent",
				value = MorrisBuffTweakData.boon_skulls_set_bonus_01.duration_amplify_amount
			}
		}
	},
	boon_skulls_06 = {
		rectangular_icon = true,
		advanced_description = "description_boon_skulls_06",
		max_amount = 1,
		icon = "boon_skulls_06",
		display_name = "display_name_boon_skulls_06",
		buff_template = {
			buffs = {
				{
					name = "boon_skulls_06",
					stat_buff = "power_level",
					multiplier = function (unit, buff_extension)
						local num_stacks = buff_extension:num_buff_stacks("skulls_2023_buff")
						local multiplier = MorrisBuffTweakData.boon_skulls_06_data.power_per_stack * num_stacks
						local has_full_set = buff_extension:num_buff_stacks("power_up_boon_skulls_set_bonus_02_event") > 0

						if has_full_set then
							multiplier = multiplier * (1 + MorrisBuffTweakData.boon_skulls_set_bonus_02.effect_amplify_amount)
						end

						return multiplier
					end
				}
			}
		},
		description_values = {
			{
				value_type = "percent",
				value = MorrisBuffTweakData.boon_skulls_06_data.power_per_stack
			}
		}
	},
	boon_skulls_07 = {
		rectangular_icon = true,
		advanced_description = "description_boon_skulls_07",
		max_amount = 1,
		icon = "boon_skulls_07",
		display_name = "display_name_boon_skulls_07",
		buff_template = {
			buffs = {
				{
					event = "on_mutator_skull_picked_up",
					name = "boon_skulls_07",
					buff_func = "boon_skulls_07_on_skull_picked_up"
				}
			}
		},
		description_values = {
			{
				value = MorrisBuffTweakData.boon_skulls_07.coins_to_gain
			}
		}
	},
	boon_skulls_08 = {
		rectangular_icon = true,
		advanced_description = "description_boon_skulls_08",
		max_amount = 1,
		icon = "boon_skulls_08",
		display_name = "display_name_boon_skulls_08",
		buff_template = {
			buffs = {
				{
					event = "on_mutator_skull_picked_up",
					name = "boon_skulls_08",
					authority = "client",
					buff_func = "boon_skulls_08_on_skull_picked_up"
				}
			}
		},
		description_values = {
			{
				value_type = "percent",
				value = MorrisBuffTweakData.boon_skulls_08.cooldown_to_reduce
			}
		}
	},
	boon_skulls_set_bonus_02 = {
		rectangular_icon = true,
		advanced_description = "description_boon_skulls_set_bonus_02",
		max_amount = 1,
		icon = "boon_skulls_set_bonus_02",
		display_name = "display_name_boon_skulls_set_bonus_02",
		buff_template = {
			buffs = {
				{
					max_stacks = 1,
					name = "boon_skulls_set_bonus_02"
				}
			}
		},
		description_values = {
			{
				value_type = "percent",
				value = MorrisBuffTweakData.boon_skulls_set_bonus_02.effect_amplify_amount
			},
			{
				value_type = "percent",
				value = MorrisBuffTweakData.boon_skulls_set_bonus_02.duration_amplify_amount
			}
		}
	},
	talent_1_1 = {
		rectangular_icon = true,
		talent_tier = 1,
		talent = true,
		max_amount = 1,
		talent_index = 1
	},
	talent_1_2 = {
		rectangular_icon = true,
		talent_tier = 1,
		talent = true,
		max_amount = 1,
		talent_index = 2
	},
	talent_1_3 = {
		rectangular_icon = true,
		talent_tier = 1,
		talent = true,
		max_amount = 1,
		talent_index = 3
	},
	talent_2_1 = {
		rectangular_icon = true,
		talent_tier = 2,
		talent = true,
		max_amount = 1,
		talent_index = 1
	},
	talent_2_2 = {
		rectangular_icon = true,
		talent_tier = 2,
		talent = true,
		max_amount = 1,
		talent_index = 2
	},
	talent_2_3 = {
		rectangular_icon = true,
		talent_tier = 2,
		talent = true,
		max_amount = 1,
		talent_index = 3
	},
	talent_3_1 = {
		rectangular_icon = true,
		talent_tier = 3,
		talent = true,
		max_amount = 1,
		talent_index = 1
	},
	talent_3_2 = {
		rectangular_icon = true,
		talent_tier = 3,
		talent = true,
		max_amount = 1,
		talent_index = 2
	},
	talent_3_3 = {
		rectangular_icon = true,
		talent_tier = 3,
		talent = true,
		max_amount = 1,
		talent_index = 3
	},
	talent_4_1 = {
		rectangular_icon = true,
		talent_tier = 4,
		talent = true,
		max_amount = 1,
		talent_index = 1
	},
	talent_4_2 = {
		rectangular_icon = true,
		talent_tier = 4,
		talent = true,
		max_amount = 1,
		talent_index = 2
	},
	talent_4_3 = {
		rectangular_icon = true,
		talent_tier = 4,
		talent = true,
		max_amount = 1,
		talent_index = 3
	},
	talent_5_1 = {
		rectangular_icon = true,
		talent_tier = 5,
		talent = true,
		max_amount = 1,
		talent_index = 1
	},
	talent_5_2 = {
		rectangular_icon = true,
		talent_tier = 5,
		talent = true,
		max_amount = 1,
		talent_index = 2
	},
	talent_5_3 = {
		rectangular_icon = true,
		talent_tier = 5,
		talent = true,
		max_amount = 1,
		talent_index = 3
	},
	talent_6_1 = {
		rectangular_icon = true,
		talent_tier = 6,
		talent = true,
		max_amount = 1,
		talent_index = 1
	},
	talent_6_2 = {
		rectangular_icon = true,
		talent_tier = 6,
		talent = true,
		max_amount = 1,
		talent_index = 2
	},
	talent_6_3 = {
		rectangular_icon = true,
		talent_tier = 6,
		talent = true,
		max_amount = 1,
		talent_index = 3
	},
	deus_power_up_quest_granted_test_01 = {
		rectangular_icon = true,
		advanced_description = "description_deus_power_up_quest_granted_test_01",
		max_amount = 1,
		icon = "melee_killing_spree_speed",
		display_name = "display_name_deus_power_up_quest_granted_test_01",
		buff_template = {
			buffs = {
				{
					event = "on_kill",
					name = "deus_power_up_quest_granted_test_01",
					buff_func = "spawn_orb",
					orb_settings = {
						orb_name = "test_orb_01"
					}
				}
			}
		},
		description_values = {}
	},
	melee_wave = {
		rectangular_icon = true,
		advanced_description = "description_melee_wave",
		max_amount = 1,
		icon = "deus_icon_melee_wave",
		display_name = "display_name_melee_wave",
		buff_template = {
			create_parent_buff_shared_table = true,
			buffs = {
				{
					buff_to_add = "melee_wave_buff",
					name = "melee_wave",
					buff_func = "add_melee_wave_stacks",
					event = "on_ability_activated",
					stacks_to_add = MorrisBuffTweakData.melee_wave.stacks_to_add
				},
				{
					event = "on_hit",
					name = "melee_wave_on_hit",
					explosion_template = "melee_wave",
					buff_func = "melee_wave_effect"
				}
			}
		},
		description_values = {
			{
				value_type = "amount",
				value = MorrisBuffTweakData.melee_wave.stacks_to_add
			}
		}
	},
	money_magnet = {
		rectangular_icon = true,
		advanced_description = "description_money_magnet",
		max_amount = 1,
		icon = "deus_icon_money_magnet",
		display_name = "display_name_money_magnet",
		buff_template = {
			buffs = {
				{
					update_every = 1,
					name = "money_magnet",
					update_func = "money_magnet_update",
					apply_buff_func = "money_magnet_start",
					magnet_distance = MorrisBuffTweakData.money_magnet.magnet_distance
				}
			}
		},
		description_values = {
			{
				value_type = "amount",
				value = MorrisBuffTweakData.money_magnet.magnet_distance
			}
		}
	},
	skill_by_block = {
		rectangular_icon = true,
		advanced_description = "description_skill_by_block",
		max_amount = 1,
		icon = "deus_icon_skill_by_block",
		display_name = "display_name_skill_by_block",
		buff_template = {
			buffs = {
				{
					event = "on_block",
					name = "skill_by_block",
					buff_func = "reduce_activated_ability_cooldown_on_block"
				}
			}
		},
		description_values = {}
	},
	speed_over_stamina = {
		rectangular_icon = true,
		advanced_description = "description_speed_over_stamina",
		max_amount = 1,
		icon = "deus_icon_speed_over_stamina",
		display_name = "display_name_speed_over_stamina",
		buff_template = {
			buffs = {
				{
					event = "on_block_broken",
					name = "speed_over_stamina",
					buff_to_add = "speed_over_stamina_buff",
					buff_func = "add_buff"
				}
			}
		},
		description_values = {
			{
				value_type = "percent",
				value = MorrisBuffTweakData.speed_over_stamina_buff.multiplier
			},
			{
				value_type = "amount",
				value = MorrisBuffTweakData.speed_over_stamina_buff.duration
			}
		}
	},
	missing_health_power_up = {
		rectangular_icon = true,
		advanced_description = "description_missing_health_power_up",
		max_amount = 1,
		icon = "deus_icon_missing_health_power_up",
		display_name = "display_name_missing_health_power_up",
		buff_template = {
			buffs = {
				{
					buff_to_add = "missing_health_power_up_buff",
					name = "missing_health_power_up",
					update_func = "activate_buff_stacks_based_on_health_chunks",
					chunk_size = MorrisBuffTweakData.missing_health_power_up_buff.chunk_size,
					max_stacks = MorrisBuffTweakData.missing_health_power_up_buff.max_stacks
				}
			}
		},
		description_values = {
			{
				value_type = "percent",
				value = MorrisBuffTweakData.missing_health_power_up_buff.multiplier
			},
			{
				value_type = "amount",
				value = MorrisBuffTweakData.missing_health_power_up_buff.chunk_size
			},
			{
				value_type = "amount",
				value = MorrisBuffTweakData.missing_health_power_up_buff.max_stacks
			}
		}
	},
	detect_weakness = {
		rectangular_icon = true,
		advanced_description = "description_detect_weakness",
		max_amount = 1,
		icon = "deus_icon_kill_the_marked",
		display_name = "display_name_detect_weakness",
		buff_template = {
			buffs = {
				{
					name = "detect_weakness",
					update_func = "update_generic_aoe",
					mark_buff = "detect_weakness_marked_enemy",
					remove_buff_func = "remove_generic_aoe",
					apply_buff_func = "apply_generic_aoe",
					mark_cooldown = 20,
					range_check = {
						only_ai = true,
						randomize_result = true,
						update_rate = 0.5,
						radius = 10,
						unit_left_range_func = "detect_weakness_unit_left_range",
						unit_entered_range_func = "detect_weakness_unit_entered_range"
					},
					markable_enemies = {
						chaos_marauder = true,
						chaos_raider = true,
						skaven_plague_monk = true,
						beastmen_bestigor = true,
						chaos_berzerker = true,
						skaven_clan_rat_with_shield = true,
						skaven_storm_vermin_with_shield = true,
						chaos_marauder_with_shield = true,
						chaos_fanatic = true,
						skaven_slave = true,
						skaven_clan_rat = true,
						beastmen_ungor = true,
						chaos_warrior = true,
						skaven_storm_vermin_commander = true,
						skaven_storm_vermin = true,
						beastmen_gor = true,
						skaven_storm_vermin_champion = true
					}
				},
				{
					name = "detect_weakness_on_kill",
					kill_buff = "detect_weakness_buff",
					buff_func = "detect_weakness_on_kill",
					event = "on_kill",
					mark_buff = "detect_weakness_marked_enemy"
				}
			}
		},
		description_values = {
			{
				value_type = "percent",
				value = MorrisBuffTweakData.detect_weakness_buff.multiplier
			},
			{
				value_type = "amount",
				value = MorrisBuffTweakData.detect_weakness_buff.duration
			}
		}
	},
	squats = {
		rectangular_icon = true,
		advanced_description = "description_squats",
		max_amount = 1,
		icon = "deus_icon_squats",
		display_name = "display_name_squats",
		buff_template = {
			buffs = {
				{
					actual_buff = "squats_buff",
					name = "squats",
					build_up_buff = "squats_build_up_buff",
					buff_func = "squats_add_buff",
					event = "on_crouch",
					buff_to_add = "squats_buff",
					stack_count_to_trigger_actual_buff = MorrisBuffTweakData.squats_build_up_buff.max_stacks
				}
			}
		},
		description_values = {
			{
				value_type = "percent",
				value = MorrisBuffTweakData.squats_buff.multiplier
			},
			{
				value_type = "amount",
				value = MorrisBuffTweakData.squats_buff.duration
			},
			{
				value_type = "amount",
				value = MorrisBuffTweakData.squats_buff.max_stacks
			}
		}
	},
	pyrotechnical_echo = {
		rectangular_icon = true,
		advanced_description = "description_pyrotechnical_echo",
		max_amount = 1,
		icon = "deus_icon_pyrotechnical_echo",
		display_name = "display_name_pyrotechnical_echo",
		buff_template = {
			buffs = {
				{
					name = "pyrotechnical_echo",
					explosion_delay = 1,
					buff_func = "pyrotechnical_echo_on_grenade_exploded",
					event = "on_grenade_exploded",
					update_func = "pyrotechnical_echo_update"
				}
			}
		},
		description_values = {}
	},
	blazing_revenge = {
		rectangular_icon = true,
		advanced_description = "description_blazing_revenge",
		max_amount = 1,
		icon = "deus_icon_blazing_revenge",
		display_name = "display_name_blazing_revenge",
		buff_template = {
			create_parent_buff_shared_table = true,
			buffs = {
				{
					explosion_template = "blazing_revenge",
					name = "blazing_revenge_on_knocked_down",
					radius = 2,
					buff_func = "blazing_revenge_on_knocked_down",
					event = "on_knocked_down",
					remove_buff_func = "blazing_revenge_clear_aoe",
					sound_start_event = "boon_blazing_revenge_start",
					sound_end_event = "boon_blazing_revenge_end"
				},
				{
					event = "on_revived",
					name = "blazing_revenge_on_revived",
					sound_end_event = "boon_blazing_revenge_end",
					buff_func = "blazing_revenge_clear_aoe"
				},
				{
					event = "on_death",
					name = "blazing_revenge_on_death",
					sound_end_event = "boon_blazing_revenge_end",
					buff_func = "blazing_revenge_clear_aoe"
				}
			}
		},
		description_values = {}
	},
	cluster_barrel = {
		rectangular_icon = true,
		advanced_description = "description_cluster_barrel",
		max_amount = 1,
		icon = "deus_icon_cluster_barrel",
		display_name = "display_name_cluster_barrel",
		buff_template = {
			buffs = {
				{
					item_name = "tiny_explosive_barrel",
					name = "cluster_barrel",
					buff_func = "cluster_barrel_on_barrel_exploded",
					event = "on_barrel_exploded",
					max_horizontal_velocity = 4,
					fuse_time = 3,
					vertical_velocity = 7,
					barrel_count = 4,
					random_explosion_delay = 0.8,
					explode_time = 2
				}
			}
		},
		description_values = {}
	},
	wolfpack = {
		rectangular_icon = true,
		advanced_description = "description_wolfpack",
		max_amount = 1,
		icon = "deus_icon_wolfpack",
		display_name = "display_name_wolfpack",
		buff_template = {
			buffs = {
				{
					buff_to_add = "wolfpack_buff",
					name = "wolfpack",
					update_func = "wolfpack_update",
					remove_buff_func = "wolfpack_remove",
					apply_buff_func = "wolfpack_apply",
					range_check = {
						radius = 20,
						update_rate = 3,
						only_players = true,
						unit_left_range_func = "wolfpack_left_range",
						unit_entered_range_func = "wolfpack_entered_range"
					}
				}
			}
		},
		description_values = {
			{
				value_type = "percent",
				value = MorrisBuffTweakData.wolfpack_buff.multiplier
			}
		}
	},
	comradery = {
		rectangular_icon = true,
		advanced_description = "description_comradery",
		max_amount = 1,
		icon = "deus_icon_comradery",
		display_name = "display_name_comradery",
		buff_template = {
			buffs = {
				{
					buff_to_add = "comradery_buff",
					name = "comradery",
					update_func = "comradery_update",
					remove_buff_func = "comradery_remove",
					apply_buff_func = "comradery_apply",
					range_check = {
						radius = 10,
						update_rate = 3,
						only_players = true,
						unit_left_range_func = "comradery_left_range",
						unit_entered_range_func = "comradery_entered_range"
					}
				}
			}
		},
		description_values = {
			{
				value_type = "percent",
				value = MorrisBuffTweakData.comradery_buff.multiplier
			}
		}
	},
	invigorating_strike = {
		rectangular_icon = true,
		advanced_description = "description_invigorating_strike",
		max_amount = 1,
		icon = "deus_icon_invigorating_strike",
		display_name = "display_name_invigorating_strike",
		buff_template = {
			create_parent_buff_shared_table = true,
			buffs = {
				{
					damage_to_heal_conversion_multiplier = 0.4,
					name = "invigorating_strike",
					buff_func = "invigorating_strike_on_damage_dealt",
					event = "on_damage_dealt",
					cooldown_buff = "invigorating_strike_cooldown"
				}
			}
		},
		description_values = {
			{
				value_type = "amount",
				value = MorrisBuffTweakData.invigorating_strike_cooldown.duration
			}
		}
	},
	staggering_force = {
		rectangular_icon = true,
		advanced_description = "description_staggering_force",
		max_amount = 1,
		icon = "deus_icon_staggering_force",
		display_name = "display_name_staggering_force",
		buff_template = {
			buffs = {
				{
					buff_to_add = "staggering_force_buff",
					name = "staggering_force",
					buff_func = "staggering_force_on_stagger",
					event = "on_stagger",
					enemy_count = MorrisBuffTweakData.staggering_force.enemy_count
				}
			}
		},
		description_values = {
			{
				value_type = "amount",
				value = MorrisBuffTweakData.staggering_force.enemy_count
			},
			{
				value_type = "percent",
				value = MorrisBuffTweakData.staggering_force_buff.multiplier
			},
			{
				value_type = "amount",
				value = MorrisBuffTweakData.staggering_force_buff.duration
			}
		}
	},
	thorn_skin = {
		rectangular_icon = true,
		advanced_description = "description_thorn_skin",
		max_amount = 1,
		icon = "deus_icon_thorn_skin",
		display_name = "display_name_thorn_skin",
		buff_template = {
			buffs = {
				{
					event = "on_damage_taken",
					name = "thorn_skin",
					explosion_template = "thorn_skin",
					buff_func = "thorn_skin_effect"
				}
			}
		},
		description_values = {}
	},
	pyrrhic_strength = {
		rectangular_icon = true,
		advanced_description = "description_pyrrhic_strength",
		max_amount = 1,
		icon = "deus_icon_pyrrhic_strength",
		display_name = "display_name_pyrrhic_strength",
		buff_template = {
			buffs = {
				{
					name = "pyrrhic_strength_power",
					stat_buff = "power_level",
					multiplier = MorrisBuffTweakData.pyrrhic_strength_power.multiplier
				},
				{
					name = "pyrrhic_strength_health",
					stat_buff = "health_curse",
					bonus = MorrisBuffTweakData.pyrrhic_strength_health.bonus
				}
			}
		},
		description_values = {
			{
				value_type = "percent",
				value = MorrisBuffTweakData.pyrrhic_strength_power.multiplier
			},
			{
				value_type = "percent",
				value = MorrisBuffTweakData.pyrrhic_strength_health.bonus
			}
		}
	},
	tenacious = {
		rectangular_icon = true,
		advanced_description = "description_tenacious",
		max_amount = 1,
		icon = "deus_icon_tenacious",
		display_name = "display_name_tenacious",
		buff_template = {
			buffs = {
				{
					name = "tenacious",
					update_func = "tenacious_update",
					tick = 1,
					health_per_tick = MorrisBuffTweakData.tenacious.health_per_tick,
					health_threshold = MorrisBuffTweakData.tenacious.health_threshold
				}
			}
		},
		description_values = {
			{
				value_type = "amount",
				value = MorrisBuffTweakData.tenacious.health_per_tick
			},
			{
				value_type = "percent",
				value = MorrisBuffTweakData.tenacious.health_threshold
			}
		}
	},
	lucky = {
		rectangular_icon = true,
		advanced_description = "description_lucky",
		max_amount = 1,
		icon = "deus_icon_lucky",
		display_name = "display_name_lucky",
		buff_template = {
			create_parent_buff_shared_table = true,
			buffs = {
				{
					event = "on_non_critical_action",
					name = "lucky_on_non_crit",
					buff_to_add = "lucky_buff",
					buff_func = "lucky_on_non_crit"
				},
				{
					event = "on_critical_action",
					name = "lucky_on_crit",
					buff_func = "lucky_on_crit"
				}
			}
		},
		description_values = {
			{
				value_type = "percent",
				value = MorrisBuffTweakData.lucky_buff.bonus
			}
		}
	},
	hidden_escape = {
		rectangular_icon = true,
		advanced_description = "description_hidden_escape",
		max_amount = 1,
		icon = "deus_icon_hidden_escape",
		display_name = "display_name_hidden_escape",
		buff_template = {
			create_parent_buff_shared_table = true,
			buffs = {
				{
					buff_to_add = "hidden_escape_buff",
					name = "hidden_escape",
					buff_func = "hidden_escape_on_damage_taken",
					event = "on_damage_taken",
					cooldown_buff = "hidden_escape_cooldown_buff",
					invisibility_cooldown = 60,
					invalid_damage_sources = {
						temporary_health_degen = true,
						overcharge = true,
						life_tap = true,
						ground_impact = true,
						life_drain = true
					}
				}
			}
		},
		description_values = {
			{
				value_type = "amount",
				value = MorrisBuffTweakData.hidden_escape_cooldown_buff.duration
			},
			{
				value_type = "amount",
				value = MorrisBuffTweakData.hidden_escape_buff.duration
			}
		}
	},
	curative_empowerment = {
		rectangular_icon = true,
		advanced_description = "description_curative_empowerment",
		max_amount = 1,
		icon = "deus_icon_curative_empowerment",
		display_name = "display_name_curative_empowerment",
		buff_template = {
			buffs = {
				{
					buff_to_add = "curative_empowerment_buff",
					heal_type = "bandage",
					name = "curative_empowerment",
					buff_func = "curative_empowerment_on_healed_ally",
					event = "on_healed_ally"
				}
			}
		},
		description_values = {
			{
				value_type = "percent",
				value = MorrisBuffTweakData.curative_empowerment_buff.multiplier
			},
			{
				value = MorrisBuffTweakData.curative_empowerment_buff.duration
			}
		}
	},
	pent_up_anger = {
		rectangular_icon = true,
		advanced_description = "description_pent_up_anger",
		max_amount = 1,
		icon = "deus_icon_pent_up_anger",
		display_name = "display_name_pent_up_anger",
		buff_template = {
			buffs = {
				{
					buff_to_add = "pent_up_anger_buff",
					name = "pent_up_anger",
					crit_buff = "pent_up_anger_guaranteed_crit_buff",
					buff_func = "pent_up_anger_on_block",
					event = "on_block"
				}
			}
		},
		description_values = {
			{
				value_type = "amount",
				value = MorrisBuffTweakData.pent_up_anger_buff.max_stacks
			}
		}
	},
	surprise_strike = {
		rectangular_icon = true,
		advanced_description = "description_surprise_strike",
		max_amount = 1,
		icon = "deus_icon_surprise_strike",
		display_name = "display_name_surprise_strike",
		buff_template = {
			buffs = {
				{
					event = "on_visible",
					name = "surprise_strike",
					buff_to_add = "surprise_strike_guaranteed_crit_buff",
					buff_func = "surprise_strike_add_buff"
				}
			}
		},
		description_values = {
			{
				value_type = "amount",
				value = MorrisBuffTweakData.surprise_strike_guaranteed_crit_buff.duration
			}
		}
	},
	bad_breath = {
		rectangular_icon = true,
		advanced_description = "description_bad_breath",
		max_amount = 1,
		icon = "deus_icon_bad_breath",
		display_name = "display_name_bad_breath",
		buff_template = {
			buffs = {
				{
					name = "bad_breath",
					rescue_delay = 0.5,
					buff_func = "start_bad_breath_timer",
					event = "on_player_disabled",
					update_func = "update_bad_breath",
					cooldown_buff = "bad_breath_cooldown_buff",
					explosion_template = "bad_breath",
					rescuable_disable_types = {
						pack_master_grab = true,
						assassin_pounced = true,
						corruptor_grab = true
					}
				}
			}
		},
		description_values = {
			{
				value_type = "amount",
				value = MorrisBuffTweakData.bad_breath_cooldown_buff.duration
			}
		}
	},
	boulder_bro = {
		rectangular_icon = true,
		advanced_description = "description_boulder_bro",
		max_amount = 1,
		icon = "deus_icon_boulder_bro",
		display_name = "display_name_boulder_bro",
		buff_template = {
			buffs = {
				{
					buff_to_add = "boulder_bro_buff",
					name = "boulder_bro",
					apply_buff_func = "boulder_bro_add_buff"
				}
			}
		},
		description_values = {
			{
				value_type = "amount",
				value = MorrisBuffTweakData.boulder_bro_cooldown_buff.duration
			}
		}
	},
	static_blade = {
		rectangular_icon = true,
		advanced_description = "description_static_blade",
		max_amount = 1,
		icon = "deus_icon_static_blade",
		display_name = "display_name_static_blade",
		buff_template = {
			buffs = {
				{
					sound_event = "boon_static_blade",
					name = "static_blade",
					fx = "fx/cw_chain_lightning",
					damage_profile_name = "static_blade",
					event = "on_timed_block",
					buff_func = "static_blade_on_timed_block",
					explosion_template = "static_blade",
					damage_source = "buff",
					cooldown_buff = "static_blade_cooldown_buff"
				}
			}
		},
		description_values = {
			{
				value_type = "amount",
				value = MorrisBuffTweakData.static_blade_cooldown_buff.duration
			}
		}
	},
	boon_bomb_heavy_01 = {
		rectangular_icon = true,
		advanced_description = "description_boon_bomb_heavy_01",
		max_amount = 1,
		icon = "deus_icon_boon_bomb_heavy_01",
		display_name = "display_name_boon_bomb_heavy_01",
		buff_template = {
			buffs = {
				{
					multiplier = -0.5,
					name = "boon_bomb_heavy_01",
					stat_buff = "grenade_throw_range"
				},
				{
					multiplier = 1,
					name = "boon_bomb_heavy_01_radius",
					stat_buff = "explosion_radius"
				},
				{
					multiplier = 1,
					name = "boon_bomb_heavy_01_damage",
					stat_buff = "explosion_damage"
				}
			}
		},
		description_values = {
			{
				value_type = "percent",
				value = math.abs(MorrisBuffTweakData.boon_bomb_heavy_01_data.throw_range)
			},
			{
				value_type = "percent",
				value = MorrisBuffTweakData.boon_bomb_heavy_01_data.radius
			}
		}
	},
	boonset_drone_part1 = {
		rectangular_icon = true,
		advanced_description = "description_boonset_drone_part1",
		max_amount = 1,
		icon = "deus_icon_drone_part1",
		display_name = "display_name_boonset_drone_part1",
		buff_template = {
			buffs = {
				{
					name = "boonset_drone_part1",
					authority = "server",
					buff_func = "spawn_drones_proc_headshot",
					event = "on_damage_dealt",
					damage_profile_name = "deus_damage_drone",
					num_drones = MorrisBuffTweakData.boonset_drone_part1_data.num_drones,
					radius = MorrisBuffTweakData.boonset_drone_part1_data.radius
				}
			}
		},
		description_values = {
			{
				value = MorrisBuffTweakData.boonset_drone_part1_data.num_drones
			}
		}
	},
	boonset_drone_part2 = {
		rectangular_icon = true,
		advanced_description = "description_boonset_drone_part2",
		max_amount = 1,
		icon = "deus_icon_drone_part2",
		display_name = "display_name_boonset_drone_part2",
		buff_template = {
			buffs = {
				{
					name = "boonset_drone_part2",
					authority = "client",
					buff_func = "spawn_drones_proc",
					event = "on_timed_block",
					damage_profile_name = "deus_damage_drone",
					num_drones = MorrisBuffTweakData.boonset_drone_part2_data.num_drones,
					radius = MorrisBuffTweakData.boonset_drone_part2_data.radius
				}
			}
		},
		description_values = {
			{
				value = MorrisBuffTweakData.boonset_drone_part2_data.num_drones
			}
		}
	},
	boonset_drone_part3 = {
		rectangular_icon = true,
		advanced_description = "description_boonset_drone_part3",
		max_amount = 1,
		icon = "deus_icon_drone_part3",
		display_name = "display_name_boonset_drone_part3",
		buff_template = {
			buffs = {
				{
					name = "boonset_drone_part3",
					authority = "server",
					buff_func = "spawn_drones_proc",
					event = "on_critical_hit",
					damage_profile_name = "deus_damage_drone",
					num_drones = MorrisBuffTweakData.boonset_drone_part3_data.num_drones,
					radius = MorrisBuffTweakData.boonset_drone_part3_data.radius
				}
			}
		},
		description_values = {
			{
				value = MorrisBuffTweakData.boonset_drone_part3_data.num_drones
			}
		}
	},
	boonset_drone_part4 = {
		rectangular_icon = true,
		advanced_description = "description_boonset_drone_part4",
		max_amount = 1,
		icon = "deus_icon_drone_part4",
		display_name = "display_name_boonset_drone_part4",
		buff_template = {
			buffs = {
				{
					name = "boonset_drone_part4",
					stat_buff = "increased_drone_count",
					bonus = MorrisBuffTweakData.boonset_drone_part4_data.num_extra_drones
				}
			}
		},
		description_values = {
			{
				value = MorrisBuffTweakData.boonset_drone_part4_data.num_extra_drones
			}
		}
	},
	boonset_crit_set_bonus = {
		rectangular_icon = true,
		advanced_description = "description_boonset_crit_set_bonus",
		display_name = "display_name_boonset_crit_set_bonus",
		max_amount = 1,
		icon = "deus_icon_crit_set_bonus",
		buff_template = {
			buffs = {
				{
					name = "boonset_crit_set_bonus",
					stat_buff = "critical_strike_chance_heavy",
					bonus = 1
				}
			}
		}
	},
	boon_supportbomb_healing_01 = {
		rectangular_icon = true,
		advanced_description = "description_boon_supportbomb_healing_01",
		max_amount = 1,
		icon = "deus_icon_supportbomb_healing_01",
		display_name = "display_name_boon_supportbomb_healing_01",
		buff_template = {
			buffs = {
				{
					buff_to_add = "boon_supportbomb_healing_01_zone",
					name = "boon_supportbomb_healing_01",
					buff_func = "grenade_explode_buff_area",
					event = "on_grenade_exploded",
					perks = {
						buff_perks.no_explosion_friendly_fire
					}
				}
			}
		},
		description_values = {
			{
				value = MorrisBuffTweakData.boon_supportbomb_shared_data.duration
			},
			{
				value = MorrisBuffTweakData.boon_supportbomb_healing_01_data.heal_amount
			}
		}
	},
	boon_supportbomb_strenght_01 = {
		rectangular_icon = true,
		advanced_description = "description_boon_supportbomb_strenght_01",
		max_amount = 1,
		icon = "deus_icon_supportbomb_strenght_01",
		display_name = "display_name_boon_supportbomb_strenght_01",
		buff_template = {
			buffs = {
				{
					buff_to_add = "boon_supportbomb_strenght_01_zone",
					name = "boon_supportbomb_strenght_01",
					buff_func = "grenade_explode_buff_area",
					event = "on_grenade_exploded",
					perks = {
						buff_perks.no_explosion_friendly_fire
					}
				}
			}
		},
		description_values = {
			{
				value = MorrisBuffTweakData.boon_supportbomb_shared_data.duration
			},
			{
				value_type = "percent",
				value = MorrisBuffTweakData.boon_supportbomb_strenght_01_data.multiplier
			}
		}
	},
	boon_supportbomb_speed_01 = {
		rectangular_icon = true,
		advanced_description = "description_boon_supportbomb_speed_01",
		max_amount = 1,
		icon = "deus_icon_supportbomb_speed_01",
		display_name = "display_name_boon_supportbomb_speed_01",
		buff_template = {
			buffs = {
				{
					buff_to_add = "boon_supportbomb_speed_01_zone",
					name = "boon_supportbomb_speed_01",
					buff_func = "grenade_explode_buff_area",
					event = "on_grenade_exploded",
					perks = {
						buff_perks.no_explosion_friendly_fire
					}
				}
			}
		},
		description_values = {
			{
				value = MorrisBuffTweakData.boon_supportbomb_shared_data.duration
			},
			{
				value_type = "percent",
				value = MorrisBuffTweakData.boon_supportbomb_speed_01_data.multiplier
			}
		}
	},
	boon_supportbomb_concentration_01 = {
		rectangular_icon = true,
		advanced_description = "description_boon_supportbomb_concentration_01",
		max_amount = 1,
		icon = "deus_icon_supportbomb_concentration_01",
		display_name = "display_name_boon_supportbomb_concentration_01",
		buff_template = {
			buffs = {
				{
					buff_to_add = "boon_supportbomb_concentration_01_zone",
					name = "boon_supportbomb_concentration_01",
					buff_func = "grenade_explode_buff_area",
					event = "on_grenade_exploded",
					perks = {
						buff_perks.no_explosion_friendly_fire
					}
				}
			}
		},
		description_values = {
			{
				value = MorrisBuffTweakData.boon_supportbomb_shared_data.duration
			},
			{
				value_type = "percent",
				value = MorrisBuffTweakData.boon_supportbomb_concentration_01_data.multiplier
			}
		}
	},
	boon_supportbomb_crit_01 = {
		rectangular_icon = true,
		advanced_description = "description_boon_supportbomb_crit_01",
		max_amount = 1,
		icon = "deus_icon_supportbomb_crit_01",
		display_name = "display_name_boon_supportbomb_crit_01",
		buff_template = {
			buffs = {
				{
					buff_to_add = "boon_supportbomb_crit_01_zone",
					name = "boon_supportbomb_crit_01",
					buff_func = "grenade_explode_buff_area",
					event = "on_grenade_exploded",
					perks = {
						buff_perks.no_explosion_friendly_fire
					}
				}
			}
		},
		description_values = {
			{
				value = MorrisBuffTweakData.boon_supportbomb_shared_data.duration
			},
			{
				value_type = "percent",
				value = MorrisBuffTweakData.boon_supportbomb_crit_01_data.bonus
			}
		}
	},
	boon_careerskill_01 = {
		rectangular_icon = true,
		advanced_description = "description_boon_careerskill_01",
		display_name = "display_name_boon_careerskill_01",
		max_amount = 1,
		icon = "deus_icon_careerskill_01",
		buff_template = {
			buffs = {
				{
					sound_event = "boon_static_blade",
					name = "boon_careerskill_01",
					fx = "fx/cw_chain_lightning",
					damage_profile_name = "boon_career_ability_lightning_aoe",
					event = "on_ability_activated",
					buff_func = "lightning_adjecent_enemies",
					explosion_template = "static_blade",
					damage_source = "buff",
					area_radius = MorrisBuffTweakData.boon_career_ability_lightning_aoe_data.radius
				}
			}
		}
	},
	boon_careerskill_02 = {
		rectangular_icon = true,
		advanced_description = "description_boon_careerskill_02",
		display_name = "display_name_boon_careerskill_02",
		max_amount = 1,
		icon = "deus_icon_careerskill_02",
		buff_template = {
			buffs = {
				{
					name = "boon_careerskill_02",
					authority = "server",
					buff_func = "career_ability_apply_dot_to_adjecent_enemies",
					event = "on_ability_activated",
					dot_template_name = "boon_career_ability_burning_aoe",
					area_radius = MorrisBuffTweakData.boon_career_ability_burning_aoe_data.radius
				}
			}
		}
	},
	boon_careerskill_03 = {
		rectangular_icon = true,
		advanced_description = "description_boon_careerskill_03",
		display_name = "display_name_boon_careerskill_03",
		max_amount = 1,
		icon = "deus_icon_careerskill_03",
		buff_template = {
			buffs = {
				{
					name = "boon_careerskill_03",
					authority = "server",
					buff_func = "career_ability_apply_dot_to_adjecent_enemies",
					event = "on_ability_activated",
					dot_template_name = "boon_career_ability_poison_aoe",
					area_radius = MorrisBuffTweakData.boon_career_ability_poison_aoe_data.radius
				}
			}
		}
	},
	boon_careerskill_04 = {
		rectangular_icon = true,
		advanced_description = "description_boon_careerskill_04",
		display_name = "display_name_boon_careerskill_04",
		max_amount = 1,
		icon = "deus_icon_careerskill_04",
		buff_template = {
			buffs = {
				{
					name = "boon_careerskill_04",
					authority = "server",
					buff_func = "career_ability_apply_dot_to_adjecent_enemies",
					event = "on_ability_activated",
					dot_template_name = "boon_career_ability_bleed_aoe",
					area_radius = MorrisBuffTweakData.boon_career_ability_bleed_aoe_data.radius
				}
			}
		}
	},
	boon_careerskill_06 = {
		rectangular_icon = true,
		advanced_description = "description_boon_careerskill_06",
		max_amount = 1,
		icon = "deus_icon_careerskill_06",
		display_name = "display_name_boon_careerskill_06",
		buff_template = {
			buffs = {
				{
					name = "boon_careerskill_06",
					stat_buff = "extra_ability_charges",
					bonus = MorrisBuffTweakData.boon_careerskill_06_data.bonus
				}
			}
		},
		description_values = {
			{
				value = MorrisBuffTweakData.boon_careerskill_06_data.bonus
			}
		}
	},
	boon_careerskill_07 = {
		rectangular_icon = true,
		advanced_description = "description_boon_careerskill_07",
		max_amount = 1,
		icon = "deus_icon_careerskill_07",
		display_name = "display_name_boon_careerskill_07",
		buff_template = {
			buffs = {
				{
					name = "boon_careerskill_07",
					authority = "server",
					buff_func = "spawn_drones_proc_ability",
					event = "on_ability_activated",
					damage_profile_name = "deus_damage_drone",
					num_drones = MorrisBuffTweakData.boon_careerskill_07_data.num_drones,
					radius = MorrisBuffTweakData.boon_careerskill_07_data.radius
				}
			}
		},
		description_values = {
			{
				value = MorrisBuffTweakData.boon_careerskill_07_data.num_drones
			}
		}
	},
	boon_dot_burning_01 = {
		rectangular_icon = true,
		advanced_description = "description_boon_dot_burning_01",
		display_name = "display_name_boon_dot_burning_01",
		max_amount = 1,
		icon = "deus_icon_dot_burning_01",
		buff_template = {
			buffs = {
				{
					name = "boon_dot_burning_01",
					authority = "server",
					buff_func = "boon_dot_burning_01_spread",
					event = "on_kill",
					dot_template_name = "boon_career_ability_burning_aoe",
					area_radius = MorrisBuffTweakData.boon_dot_burning_01_data.radius
				}
			}
		}
	},
	boon_teamaura_01 = {
		rectangular_icon = true,
		advanced_description = "description_boon_teamaura_01",
		max_amount = 1,
		icon = "deus_icon_teamaura_01",
		display_name = "display_name_boon_teamaura_01",
		buff_template = {
			buffs = {
				{
					event = "damage_calculation_started",
					name = "boon_teamaura_01",
					buff_func = "extra_damage_near_teammates_check",
					distance_from_allies = MorrisBuffTweakData.boon_teamaura_01_data.distance_from_allies
				},
				{
					event = "damage_calculation_ended",
					name = "boon_teamaura_01_cleanup",
					buff_func = "extra_damage_near_teammates_cleanup"
				}
			}
		},
		description_values = {
			{
				value_type = "percent",
				value = MorrisBuffTweakData.boon_teamaura_01_data.multiplier
			}
		}
	},
	boon_teamaura_02 = {
		rectangular_icon = true,
		advanced_description = "description_boon_teamaura_02",
		max_amount = 1,
		icon = "deus_icon_teamaura_02",
		display_name = "display_name_boon_teamaura_02",
		buff_template = {
			buffs = {
				{
					event = "stagger_calculation_started",
					name = "boon_teamaura_02",
					buff_func = "extra_stagger_near_teammates_check",
					distance_from_allies = MorrisBuffTweakData.boon_teamaura_02_data.distance_from_allies
				},
				{
					event = "stagger_calculation_ended",
					name = "boon_teamaura_02_cleanup",
					buff_func = "extra_stagger_near_teammates_cleanup"
				}
			}
		},
		description_values = {
			{
				value_type = "percent",
				value = MorrisBuffTweakData.boon_teamaura_02_data.multiplier
			}
		}
	},
	boon_aura_01 = {
		rectangular_icon = true,
		advanced_description = "description_boon_aura_01",
		max_amount = 1,
		icon = "deus_icon_aura_01",
		display_name = "display_name_boon_aura_01",
		buff_template = {
			buffs = {
				{
					name = "boon_aura_01",
					update_func = "update_generic_aoe",
					remove_buff_func = "remove_generic_aoe",
					apply_buff_func = "apply_generic_aoe",
					range_check = {
						only_ai = true,
						radius = 5,
						server_only = true,
						update_rate = 1,
						unit_left_range_func = "teammates_extra_damage_aura_leave",
						unit_entered_range_func = "teammates_extra_damage_aura_enter"
					}
				},
				{
					event = "damage_calculation_started",
					name = "deus_damage_aura_reduce_own_damage",
					buff_func = "teammates_extra_damage_aura_reduce_own_damage"
				},
				{
					event = "damage_calculation_ended",
					name = "deus_damage_aura_increase_own_damage",
					buff_func = "teammates_extra_damage_aura_revert_own_damage"
				}
			}
		},
		description_values = {
			{
				value_type = "percent",
				value = MorrisBuffTweakData.boon_aura_01.multiplier
			}
		}
	},
	boon_aura_02 = {
		rectangular_icon = true,
		advanced_description = "description_boon_aura_02",
		max_amount = 1,
		icon = "deus_icon_aura_02",
		display_name = "display_name_boon_aura_02",
		buff_template = {
			buffs = {
				{
					name = "boon_aura_02",
					update_func = "update_generic_aoe",
					remove_buff_func = "remove_generic_aoe",
					apply_buff_func = "apply_generic_aoe",
					range_check = {
						only_ai = true,
						radius = 5,
						server_only = true,
						update_rate = 1,
						unit_left_range_func = "teammates_extra_stagger_aura_leave",
						unit_entered_range_func = "teammates_extra_stagger_aura_enter"
					}
				},
				{
					event = "stagger_calculation_started",
					name = "deus_stagger_aura_reduce_own_stagger",
					buff_func = "teammates_extra_stagger_aura_reduce_own_stagger"
				},
				{
					event = "stagger_calculation_ended",
					name = "deus_stagger_aura_increase_own_stagger",
					buff_func = "teammates_extra_stagger_aura_revert_own_stagger"
				}
			}
		},
		description_values = {
			{
				value_type = "percent",
				value = MorrisBuffTweakData.boon_aura_02.multiplier
			}
		}
	},
	boon_aura_03 = {
		rectangular_icon = true,
		advanced_description = "description_boon_aura_03",
		display_name = "display_name_boon_aura_03",
		max_amount = 1,
		icon = "deus_icon_aura_03",
		buff_template = {
			buffs = {
				{
					min_update_frequency = 2.5,
					name = "boon_aura_03",
					explosion_template_name = "periodic_aoe_stagger",
					min_update_frequency_at = 0.3,
					update_func = "periodic_aoe_stagger",
					update_frequency = 5
				}
			}
		}
	},
	boon_aoe_02 = {
		rectangular_icon = true,
		advanced_description = "description_boon_aoe_02",
		max_amount = 1,
		icon = "deus_icon_aoe_02",
		display_name = "display_name_boon_aoe_02",
		buff_template = {
			buffs = {
				{
					event = "cursed_chest_running",
					name = "boon_aoe_02",
					buff_to_add = "boon_cursed_chest_damage_area_buff",
					buff_func = "cursed_chest_area_buff"
				}
			}
		},
		description_values = {
			{
				value_type = "percent",
				value = MorrisBuffTweakData.boon_cursed_chest_damage_area_buff_data.damage_multiplier
			},
			{
				value = MorrisBuffTweakData.boon_cursed_chest_damage_area_buff_data.duration
			}
		}
	},
	boon_aoe_03 = {
		rectangular_icon = true,
		advanced_description = "description_boon_aoe_03",
		max_amount = 1,
		icon = "deus_icon_aoe_03",
		display_name = "display_name_boon_aoe_03",
		buff_template = {
			buffs = {
				{
					event = "cursed_chest_running",
					name = "boon_aoe_03",
					buff_to_add = "boon_cursed_chest_cooldown_area_buff",
					buff_func = "cursed_chest_area_buff"
				}
			}
		},
		description_values = {
			{
				value_type = "percent",
				value = MorrisBuffTweakData.boon_cursed_chest_cooldown_area_buff_data.cooldown_multiplier
			},
			{
				value = MorrisBuffTweakData.boon_cursed_chest_cooldown_area_buff_data.duration
			}
		}
	},
	boon_meta_01 = {
		rectangular_icon = true,
		advanced_description = "description_boon_meta_01",
		max_amount = 1,
		icon = "deus_icon_meta_01",
		display_name = "display_name_boon_meta_01",
		buff_template = {
			buffs = {
				{
					event = "on_boon_granted",
					name = "boon_meta_01",
					apply_buff_func = "boon_meta_01_apply",
					buff_func = "boon_meta_01_boon_granted"
				}
			}
		},
		description_values = {
			{
				value_type = "percent",
				value = MorrisBuffTweakData.boon_meta_01_data.damage_multiplier_per_stack
			},
			{
				value_type = "percent",
				value = MorrisBuffTweakData.boon_meta_01_data.attack_speed_multiplier_per_stack
			}
		}
	},
	boon_weaponrarity_01 = {
		rectangular_icon = true,
		advanced_description = "description_boon_weaponrarity_01",
		max_amount = 1,
		icon = "deus_icon_weaponrarity_01",
		display_name = "display_name_boon_weaponrarity_01",
		buff_template = {
			buffs = {
				{
					stat_buff = "cooldown_regen",
					name = "boon_weaponrarity_01",
					authority = "client",
					buff_func = "boon_weaponrarity_01_weapon_wielded",
					event = "on_wield",
					apply_buff_func = "boon_weaponrarity_01_apply",
					multiplier = MorrisBuffTweakData.boon_weaponrarity_01_data.base_multiplier
				}
			}
		},
		description_values = {
			{
				value_type = "percent",
				value = MorrisBuffTweakData.boon_weaponrarity_01_data.base_multiplier
			},
			{
				value_type = "percent",
				value = math.abs(MorrisBuffTweakData.boon_weaponrarity_01_data.multiplier_per_rarity)
			}
		}
	},
	boon_weaponrarity_02 = {
		rectangular_icon = true,
		advanced_description = "description_boon_weaponrarity_02",
		max_amount = 1,
		icon = "deus_icon_weaponrarity_02",
		display_name = "display_name_boon_weaponrarity_02",
		buff_template = {
			buffs = {
				{
					stat_buff = "critical_strike_chance",
					name = "boon_weaponrarity_02",
					authority = "client",
					buff_func = "boon_weaponrarity_02_weapon_wielded",
					event = "on_wield",
					apply_buff_func = "boon_weaponrarity_02_apply",
					bonus = MorrisBuffTweakData.boon_weaponrarity_02_data.base_bonus
				}
			}
		},
		description_values = {
			{
				value_type = "percent",
				value = MorrisBuffTweakData.boon_weaponrarity_02_data.base_bonus
			},
			{
				value_type = "percent",
				value = math.abs(MorrisBuffTweakData.boon_weaponrarity_02_data.bonus_per_rarity)
			}
		}
	},
	boon_range_01 = {
		rectangular_icon = true,
		advanced_description = "description_boon_range_01",
		max_amount = 1,
		icon = "deus_icon_range_01",
		display_name = "display_name_boon_range_01",
		buff_template = {
			buffs = {
				{
					name = "boon_range_01",
					stat_buff = "ammo_used_multiplier",
					multiplier = MorrisBuffTweakData.boon_range_01_data.ammo_usage_multiplier
				},
				{
					name = "boon_range_01_damage",
					stat_buff = "increased_weapon_damage_ranged",
					multiplier = MorrisBuffTweakData.boon_range_01_data.damage_multiplier
				}
			}
		},
		description_values = {
			{
				value_type = "percent",
				value = MorrisBuffTweakData.boon_range_01_data.damage_multiplier
			},
			{
				value_type = "percent",
				value = MorrisBuffTweakData.boon_range_01_data.ammo_usage_multiplier
			}
		}
	},
	boon_range_02 = {
		rectangular_icon = true,
		advanced_description = "description_boon_range_02",
		max_amount = 1,
		icon = "deus_icon_ranged_02",
		display_name = "display_name_boon_range_02",
		buff_template = {
			buffs = {
				{
					event = "on_ranged_hit",
					name = "boon_range_02",
					authority = "server",
					buff_func = "boon_range_02_delayed_add_on_hit"
				},
				{
					event = "damage_calculation_started",
					name = "boon_range_02_damage_check",
					buff_func = "boon_range_02_damage_check"
				},
				{
					event = "damage_calculation_ended",
					name = "boon_range_02_damage_cleanup",
					buff_func = "boon_range_02_damage_cleanup"
				}
			}
		},
		description_values = {
			{
				value_type = "percent",
				value = MorrisBuffTweakData.boon_range_02_data.multiplier
			},
			{
				value = MorrisBuffTweakData.boon_range_02_data.duration
			}
		}
	},
	resolve = {
		rectangular_icon = true,
		advanced_description = "description_resolve",
		max_amount = 1,
		icon = "deus_icon_resolve",
		display_name = "display_name_resolve",
		buff_template = {
			buffs = {
				{
					full_heal_buff = "resolve_buff",
					name = "resolve",
					buff_func = "resolve_on_revived",
					event = "on_revived",
					update_func = "resolve_update",
					cooldown_buff = "resolve_cooldown_buff"
				}
			}
		},
		description_values = {
			{
				value_type = "amount",
				value = MorrisBuffTweakData.resolve.cooldown
			}
		}
	},
	indomitable = {
		rectangular_icon = true,
		advanced_description = "description_indomitable",
		max_amount = 1,
		icon = "deus_icon_indomitable",
		display_name = "display_name_indomitable",
		buff_template = {
			buffs = {
				{
					name = "indomitable",
					perks = {
						buff_perks.infinite_wounds
					}
				}
			}
		},
		description_values = {}
	},
	health_orbs = {
		rectangular_icon = true,
		advanced_description = "description_health_orbs",
		max_amount = 1,
		icon = "deus_icon_health_orbs",
		display_name = "display_name_health_orbs",
		buff_template = {
			buffs = {
				{
					name = "health_orbs",
					buff_func = "on_damage_taken_health_orbs",
					event = "on_damage_taken",
					health_per_orb = MorrisBuffTweakData.health_orbs.health_per_orb,
					orb_settings = {
						orb_name = "health_orb"
					}
				}
			}
		},
		description_values = {
			{
				value_type = "amount",
				value = MorrisBuffTweakData.health_orbs.health_per_orb
			},
			{
				value_type = "amount",
				value = MorrisBuffTweakData.health_orbs.orb_health
			}
		}
	},
	static_charge = {
		rectangular_icon = true,
		advanced_description = "description_static_charge",
		max_amount = 1,
		icon = "deus_icon_static_charge",
		display_name = "display_name_static_charge",
		buff_template = {
			buffs = {
				{
					name = "static_charge",
					buff_func = "on_kill_static_charge",
					event = "on_kill",
					kills_per_orb = MorrisBuffTweakData.static_charge.kills_per_orb,
					orb_settings = {
						orb_name = "static_charge"
					}
				}
			}
		},
		description_values = {
			{
				value_type = "amount",
				value = MorrisBuffTweakData.static_charge.kills_per_orb
			},
			{
				value_type = "amount",
				value = MorrisBuffTweakData.static_charge.orb_duration
			}
		}
	},
	sharing_is_caring = {
		rectangular_icon = true,
		advanced_description = "description_sharing_is_caring",
		max_amount = 1,
		icon = "deus_icon_sharing_is_caring",
		display_name = "display_name_sharing_is_caring",
		buff_template = {
			buffs = {
				{
					event = "on_potion_consumed",
					name = "sharing_is_caring",
					buff_func = "on_potion_consumed_sharing_is_caring"
				}
			}
		},
		description_values = {}
	},
	protection_orbs = {
		rectangular_icon = true,
		advanced_description = "description_protection_orbs",
		max_amount = 1,
		icon = "deus_icon_protection",
		display_name = "display_name_protection_orbs",
		buff_template = {
			buffs = {
				{
					event = "on_timed_block",
					name = "protection_orbs",
					buff_func = "on_timed_block_protection_orbs",
					cooldown = MorrisBuffTweakData.protection_orbs.trigger_cooldown,
					orb_settings = {
						orb_name = "protection_orb"
					}
				}
			}
		},
		description_values = {
			{
				value_type = "amount",
				value = MorrisBuffTweakData.protection_orbs.trigger_cooldown
			},
			{
				value_type = "percent",
				value = -MorrisBuffTweakData.protection_orb.multiplier
			},
			{
				value_type = "amount",
				value = MorrisBuffTweakData.protection_orb.duration
			}
		}
	},
	focused_accuracy = {
		rectangular_icon = true,
		advanced_description = "description_focused_accuracy",
		max_amount = 1,
		icon = "deus_icon_focussed_accuracy",
		display_name = "display_name_focused_accuracy",
		buff_template = {
			buffs = {
				{
					name = "focused_accuracy",
					buff_func = "focused_accuracy_on_hit",
					event = "on_hit",
					cooldown_buff = "focused_accuracy_cooldown",
					orb_settings = {
						orb_name = "ability_cooldown_reduction_orb"
					}
				}
			}
		},
		description_values = {
			{
				value_type = "amount",
				value = MorrisBuffTweakData.focused_accuracy.cooldown_duration
			},
			{
				value_type = "amount",
				value = MorrisBuffTweakData.ability_cooldown_reduction_orb.duration
			}
		}
	},
	boon_deus_coins_greed = {
		advanced_description = "description_properties_deus_coins_greed",
		display_name = "properties_deus_coins_greed",
		max_amount = 1,
		icon = "bardin_ironbreaker_gromril_armour",
		plain_display_name = "properties_deus_coins_greed",
		buff_template = {
			buffs = {
				{
					stat_buff = "deus_coins_greed"
				}
			}
		},
		description_values = {
			{
				value_type = "percent",
				value = MorrisBuffTweakData.boon_deus_coins_greed.multiplier
			}
		}
	}
}
DeusPowerUpIncompatibilityPairs = {
	wh_zealot = {},
	wh_bountyhunter = {
		{
			"talent_6_2",
			"talent_6_3"
		}
	},
	wh_captain = {},
	wh_priest = {},
	bw_scholar = {},
	bw_adept = {},
	bw_unchained = {},
	dr_ironbreaker = {},
	dr_slayer = {},
	dr_ranger = {
		{
			"talent_4_1",
			"talent_4_2"
		},
		{
			"talent_4_1",
			"talent_4_3"
		},
		{
			"talent_4_2",
			"talent_4_3"
		},
		{
			"talent_6_1",
			"talent_6_2"
		}
	},
	dr_engineer = {
		{
			"talent_4_1",
			"talent_4_3"
		},
		{
			"talent_6_1",
			"talent_6_2"
		},
		{
			"talent_6_1",
			"talent_6_3"
		}
	},
	we_shade = {
		{
			"talent_6_1",
			"talent_6_3"
		}
	},
	we_maidenguard = {},
	we_waywatcher = {
		{
			"talent_4_1",
			"talent_4_2"
		},
		{
			"talent_4_2",
			"talent_4_3"
		},
		{
			"talent_6_1",
			"talent_6_2"
		},
		{
			"talent_6_1",
			"talent_6_3"
		}
	},
	we_thornsister = {
		{
			"talent_6_1",
			"talent_6_2"
		},
		{
			"talent_6_2",
			"talent_6_3"
		}
	},
	es_huntsman = {
		{
			"talent_6_2",
			"talent_6_3"
		}
	},
	es_knight = {
		{
			"talent_4_1",
			"talent_4_2"
		},
		{
			"talent_4_1",
			"talent_4_3"
		},
		{
			"talent_4_2",
			"talent_4_3"
		}
	},
	es_mercenary = {
		{
			"talent_4_1",
			"talent_4_2"
		},
		{
			"talent_4_1",
			"talent_4_3"
		},
		{
			"talent_4_2",
			"talent_4_3"
		},
		{
			"talent_2_3",
			"lucky"
		}
	},
	es_questingknight = {
		{
			"talent_6_1",
			"talent_6_3"
		}
	}
}
DeusPowerUpExclusionList = DeusPowerUpExclusionList or {
	wh_zealot = {
		talent_3_1 = true,
		talent_3_3 = true,
		talent_3_2 = true
	},
	wh_bountyhunter = {
		talent_3_1 = true,
		talent_3_3 = true,
		talent_3_2 = true
	},
	wh_captain = {
		talent_3_1 = true,
		talent_3_3 = true,
		talent_3_2 = true
	},
	wh_priest = {
		deus_ammo_pickup_heal = true,
		talent_3_1 = true,
		deus_ammo_pickup_give_allies_ammo = true,
		talent_3_2 = true,
		deus_larger_clip = true,
		deus_large_ammo_pickup_infinite_ammo = true,
		boon_range_02 = true,
		talent_3_3 = true,
		deus_timed_block_free_shot = true,
		boon_range_01 = true
	},
	bw_scholar = {
		talent_3_1 = true,
		talent_3_3 = true,
		talent_3_2 = true,
		deus_ammo_pickup_heal = true
	},
	bw_adept = {
		talent_3_1 = true,
		talent_3_3 = true,
		talent_3_2 = true,
		deus_ammo_pickup_heal = true
	},
	bw_unchained = {
		talent_3_1 = true,
		talent_3_3 = true,
		talent_3_2 = true,
		deus_ammo_pickup_heal = true
	},
	dr_ironbreaker = {
		talent_3_1 = true,
		talent_3_3 = true,
		talent_3_2 = true
	},
	dr_slayer = {
		deus_ammo_pickup_heal = true,
		talent_3_1 = true,
		deus_ammo_pickup_give_allies_ammo = true,
		heal_on_dot_damage_dealt = true,
		talent_3_2 = true,
		deus_larger_clip = true,
		deus_large_ammo_pickup_infinite_ammo = true,
		talent_3_3 = true,
		deus_timed_block_free_shot = true
	},
	dr_ranger = {
		talent_3_1 = true,
		talent_3_3 = true,
		talent_3_2 = true
	},
	dr_engineer = {
		boon_weaponrarity_01 = true,
		movement_speed_on_active_ability_use = true,
		deus_free_potion_use_on_ability = true,
		drop_item_on_ability_use = true,
		deus_cooldown_regen = true,
		talent_3_2 = true,
		talent_3_1 = true,
		talent_3_3 = true,
		friendly_cooldown_on_ability = true,
		deus_cooldown_reg_not_hit = true
	},
	we_shade = {
		talent_3_1 = true,
		talent_3_3 = true,
		talent_3_2 = true
	},
	we_maidenguard = {
		talent_3_1 = true,
		talent_3_3 = true,
		talent_3_2 = true
	},
	we_waywatcher = {
		talent_3_1 = true,
		talent_3_3 = true,
		talent_3_2 = true
	},
	we_thornsister = {
		talent_3_1 = true,
		talent_3_3 = true,
		talent_3_2 = true
	},
	es_huntsman = {
		talent_3_1 = true,
		talent_3_3 = true,
		talent_3_2 = true
	},
	es_knight = {
		talent_3_1 = true,
		talent_3_3 = true,
		talent_3_2 = true
	},
	es_mercenary = {
		talent_3_1 = true,
		talent_3_3 = true,
		talent_3_2 = true
	},
	es_questingknight = {
		deus_ammo_pickup_heal = true,
		talent_3_1 = true,
		deus_ammo_pickup_give_allies_ammo = true,
		heal_on_dot_damage_dealt = true,
		deus_large_ammo_pickup_infinite_ammo = true,
		boon_range_01 = true,
		talent_3_2 = true,
		deus_larger_clip = true,
		talent_4_2 = true,
		talent_4_1 = true,
		boon_range_02 = true,
		talent_3_3 = true,
		deus_timed_block_free_shot = true,
		talent_4_3 = true
	},
	bw_necromancer = {
		talent_3_1 = true,
		talent_3_3 = true,
		talent_3_2 = true,
		deus_ammo_pickup_heal = true
	}
}
DeusPowerUpAvailabilityTypes = DeusPowerUpAvailabilityTypes or table.enum("cursed_chest", "shrine", "terror_event", "weapon_chest")
DeusPowerUpRarityPool = DeusPowerUpRarityPool or {
	rare = {
		{
			"talent_2_1",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"talent_2_2",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"talent_2_3",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"talent_4_1",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"talent_4_2",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"talent_4_3",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"talent_5_1",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"talent_5_2",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"talent_5_3",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"attack_speed",
			{
				DeusPowerUpAvailabilityTypes.terror_event
			},
			{}
		},
		{
			"stamina",
			{
				DeusPowerUpAvailabilityTypes.terror_event
			},
			{}
		},
		{
			"crit_chance",
			{
				DeusPowerUpAvailabilityTypes.terror_event
			},
			{}
		},
		{
			"push_block_arc",
			{
				DeusPowerUpAvailabilityTypes.terror_event
			},
			{}
		},
		{
			"ability_cooldown_reduction",
			{
				DeusPowerUpAvailabilityTypes.terror_event
			},
			{}
		},
		{
			"crit_boost",
			{
				DeusPowerUpAvailabilityTypes.terror_event
			},
			{}
		},
		{
			"power_vs_skaven",
			{
				DeusPowerUpAvailabilityTypes.terror_event
			},
			{}
		},
		{
			"power_vs_chaos",
			{
				DeusPowerUpAvailabilityTypes.terror_event
			},
			{}
		},
		{
			"power_vs_unarmoured",
			{
				DeusPowerUpAvailabilityTypes.terror_event
			},
			{}
		},
		{
			"power_vs_armoured",
			{
				DeusPowerUpAvailabilityTypes.terror_event
			},
			{}
		},
		{
			"power_vs_large",
			{
				DeusPowerUpAvailabilityTypes.terror_event
			},
			{}
		},
		{
			"power_vs_frenzy",
			{
				DeusPowerUpAvailabilityTypes.terror_event
			},
			{}
		},
		{
			"health",
			{
				DeusPowerUpAvailabilityTypes.terror_event
			},
			{}
		},
		{
			"block_cost",
			{
				DeusPowerUpAvailabilityTypes.terror_event
			},
			{}
		},
		{
			"protection_skaven",
			{
				DeusPowerUpAvailabilityTypes.terror_event
			},
			{}
		},
		{
			"protection_chaos",
			{
				DeusPowerUpAvailabilityTypes.terror_event
			},
			{}
		},
		{
			"protection_aoe",
			{
				DeusPowerUpAvailabilityTypes.terror_event
			},
			{}
		},
		{
			"respawn_speed",
			{
				DeusPowerUpAvailabilityTypes.terror_event
			},
			{}
		},
		{
			"revive_speed",
			{
				DeusPowerUpAvailabilityTypes.terror_event
			},
			{}
		},
		{
			"fatigue_regen",
			{
				DeusPowerUpAvailabilityTypes.terror_event
			},
			{}
		},
		{
			"movespeed",
			{
				DeusPowerUpAvailabilityTypes.terror_event
			},
			{}
		},
		{
			"home_brewer",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"decanter",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"healers_touch",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"hand_of_shallya",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"power_up_of_shallya",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"natural_bond",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"barkskin",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"grenadier",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"explosive_ordinance",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"shrapnel",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"deus_revive_regen",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"deus_ammo_pickup_heal",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"deus_more_head_less_body_damage",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"friendly_cooldown_on_ability",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"deus_skill_on_special_kill",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"triple_melee_headshot_power",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"deus_standing_still_damage_reduction",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"deus_damage_reduction_on_incapacitated",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"deus_cooldown_regen",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"deus_extra_stamina",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"money_magnet",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"speed_over_stamina",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"missing_health_power_up",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"cluster_barrel",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"wolfpack",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"comradery",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"staggering_force",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"tenacious",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"lucky",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"hidden_escape",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"pent_up_anger",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"surprise_strike",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"resolve",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"health_orbs",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"sharing_is_caring",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"protection_orbs",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"focused_accuracy",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"boon_supportbomb_concentration_01",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"boon_supportbomb_speed_01",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"boon_bomb_heavy_01",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"boon_aoe_02",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"boon_aoe_03",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"boon_careerskill_01",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"boon_careerskill_02",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"boon_careerskill_03",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"boon_careerskill_04",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"boonset_drone_part2",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"boon_careerskill_07",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"boon_aura_01",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"boon_aura_02",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"boon_meta_01",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"boon_weaponrarity_01",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"boon_teamaura_02",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"boon_range_02",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"boon_dot_burning_01",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"boon_deus_coins_greed",
			{
				DeusPowerUpAvailabilityTypes.terror_event
			},
			{}
		}
	},
	exotic = {
		{
			"talent_1_1",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"talent_1_2",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"talent_1_3",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"talent_3_1",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"talent_3_2",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"talent_3_3",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"heal_on_dot_damage_dealt",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"explosive_kills_on_elite_kills",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"attack_speed_per_cooldown",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"cooldown_on_friendly_ability",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"deus_max_health",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"deus_health_regeneration",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"deus_powerup_attack_speed",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"deus_second_wind",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"deus_crit_on_damage_taken",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"deus_infinite_dodges",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"deus_uninterruptable_attacks",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"deus_increased_healing_taken",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"last_player_standing_power_reg",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"deus_cooldown_reg_not_hit",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"movement_speed_on_active_ability_use",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"deus_push_cost_reduction",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"deus_free_potion_use_on_ability",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"deus_block_procs_parry",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"deus_push_charge",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"deus_target_full_health_damage_mult",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"deus_barrel_power",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"deus_guard_aura_check",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"boulder_bro",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"static_charge",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"pyrrhic_strength",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"invigorating_strike",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"pyrotechnical_echo",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"blazing_revenge",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"detect_weakness",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"skill_by_block",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"melee_wave",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"static_blade",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"deus_power_up_quest_granted_test_01",
			{},
			{}
		},
		{
			"boon_weaponrarity_02",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"boon_supportbomb_healing_01",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"boon_supportbomb_crit_01",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"boon_supportbomb_strenght_01",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"boonset_drone_part1",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"boonset_drone_part3",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"boon_aura_03",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"boon_range_01",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"boon_teamaura_01",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		}
	},
	unique = {
		{
			"talent_6_1",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"talent_6_2",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"talent_6_3",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"drop_item_on_ability_use",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"deus_grenade_multi_throw",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"deus_knockdown_damage_immunity_aura",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"transfer_temp_health_at_full",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"melee_killing_spree_speed",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"deus_reckless_swings",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"deus_parry_damage_immune",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"deus_push_increased_cleave",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"indomitable",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"bad_breath",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"curative_empowerment",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"thorn_skin",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"boon_careerskill_06",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{}
		},
		{
			"boonset_drone_part4",
			{},
			{}
		},
		{
			"boonset_crit_set_bonus",
			{},
			{}
		}
	},
	event = {
		{
			"boon_skulls_01",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{
				"skulls_2023"
			}
		},
		{
			"boon_skulls_02",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{
				"skulls_2023"
			}
		},
		{
			"boon_skulls_03",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{
				"skulls_2023"
			}
		},
		{
			"boon_skulls_04",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{
				"skulls_2023"
			}
		},
		{
			"boon_skulls_05",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{
				"skulls_2023"
			}
		},
		{
			"boon_skulls_set_bonus_01",
			{},
			{
				"skulls_2023"
			}
		},
		{
			"boon_skulls_06",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{
				"skulls_2023"
			}
		},
		{
			"boon_skulls_07",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{
				"skulls_2023"
			}
		},
		{
			"boon_skulls_08",
			{
				DeusPowerUpAvailabilityTypes.cursed_chest,
				DeusPowerUpAvailabilityTypes.weapon_chest,
				DeusPowerUpAvailabilityTypes.shrine
			},
			{
				"skulls_2023"
			}
		},
		{
			"boon_skulls_set_bonus_02",
			{},
			{
				"skulls_2023"
			}
		}
	}
}
DeusPowerUpSets = {
	{
		completed_sfx = "hud_morris_boon_set_completed",
		progress_sfx = "hud_morris_boon_set_crit_layer",
		pieces = {
			{
				rarity = "rare",
				name = "pent_up_anger"
			},
			{
				rarity = "exotic",
				name = "deus_crit_on_damage_taken"
			},
			{
				rarity = "exotic",
				name = "boon_supportbomb_crit_01"
			}
		},
		rewards = {
			{
				rarity = "unique",
				name = "boonset_crit_set_bonus"
			}
		}
	},
	{
		completed_sfx = "hud_morris_boon_set_completed",
		progress_sfx = "hud_morris_boon_set_crit_layer",
		pieces = {
			{
				rarity = "exotic",
				name = "boonset_drone_part1"
			},
			{
				rarity = "rare",
				name = "boonset_drone_part2"
			},
			{
				rarity = "exotic",
				name = "boonset_drone_part3"
			},
			{
				rarity = "rare",
				name = "boon_careerskill_07"
			}
		},
		rewards = {
			{
				rarity = "unique",
				name = "boonset_drone_part4"
			}
		}
	},
	{
		completed_sfx = "hud_morris_boon_set_completed",
		progress_sfx = "hud_morris_boon_set_skulls2025_01_layer",
		pieces = {
			{
				rarity = "event",
				name = "boon_skulls_01"
			},
			{
				rarity = "event",
				name = "boon_skulls_02"
			},
			{
				rarity = "event",
				name = "boon_skulls_03"
			},
			{
				rarity = "event",
				name = "boon_skulls_04"
			},
			{
				rarity = "event",
				name = "boon_skulls_05"
			}
		},
		rewards = {
			{
				rarity = "event",
				name = "boon_skulls_set_bonus_01"
			}
		}
	},
	{
		completed_sfx = "hud_morris_boon_set_completed",
		progress_sfx = "hud_morris_boon_set_skulls2025_02_layer",
		pieces = {
			{
				rarity = "event",
				name = "boon_skulls_06"
			},
			{
				rarity = "event",
				name = "boon_skulls_07"
			},
			{
				rarity = "event",
				name = "boon_skulls_08"
			}
		},
		rewards = {
			{
				rarity = "event",
				name = "boon_skulls_set_bonus_02"
			}
		}
	}
}
DeusPowerUpRarities = DeusPowerUpRarities or {
	"event",
	"rare",
	"exotic",
	"unique"
}
DeusPowerUpTalentLookup = {}

for power_up_name, power_up_settings in pairs(DeusPowerUpTemplates) do
	if power_up_settings.talent then
		local talent_tier = power_up_settings.talent_tier
		local talent_index = power_up_settings.talent_index
		local talent_tier_map = DeusPowerUpTalentLookup[talent_tier] or {}

		DeusPowerUpTalentLookup[talent_tier] = talent_tier_map
		talent_tier_map[talent_index] = power_up_name
	end
end

local is_valid = true
local error_message = "[DeusPowerUpSettings] One or more errors in power_up settings."

for _, power_up_configs in pairs(DeusPowerUpRarityPool) do
	for _, power_config in ipairs(power_up_configs) do
		local power_up_name = power_config[1]

		if not DeusPowerUpTemplates[power_up_name] then
			is_valid = false
			error_message = error_message .. string.format("\n'%s' is in rarity pool but has no template.", power_up_name)
		end
	end
end

if #DeusPowerUpRarities ~= table.size(DeusPowerUpRarityPool) then
	is_valid = false
	error_message = error_message .. string.format("\nSizes of DeusPowerUpRarities (%d) and DeusPowerUpRarityPool (%d) are not the same! Make sure both tables have the same rarities!", #DeusPowerUpRarities, table.size(DeusPowerUpRarityPool))
end

for _, rarity in ipairs(DeusPowerUpRarities) do
	if not DeusPowerUpRarityPool[rarity] then
		is_valid = false
		error_message = error_message .. string.format("\nDeusPowerUpRarities contains the rarity '%s' which is missing in DeusPowerUpRarityPool.", rarity)
	end
end

for _, rarity in ipairs(DeusPowerUpRarities) do
	local power_up_costs = DeusCostSettings.shop.power_ups

	if not power_up_costs[rarity] then
		error_message = error_message .. string.format("\nPower up with the rarity '%s' can be generated but there is no cost settings for that.", rarity)
	end
end

assert(is_valid, error_message)

DeusPowerUps = DeusPowerUps or {}
DeusPowerUpsArray = DeusPowerUpsArray or {}
DeusPowerUpsArrayByRarity = table.select_map(table.set(DeusPowerUpRarities), function (_, rarity)
	return {}
end)
DeusPowerUpSetLookup = table.select_map(table.set(DeusPowerUpRarities), function (_, rarity)
	return {}
end)
DeusPowerUpsLookup = {}

for career_name, incompatibility_list in pairs(DeusPowerUpIncompatibilityPairs) do
	for _, pair in ipairs(incompatibility_list) do
		local power_up_1 = pair[1]
		local power_up_2 = pair[2]
		local power_up_1_template = DeusPowerUpTemplates[power_up_1]
		local power_up_2_template = DeusPowerUpTemplates[power_up_2]

		assert(power_up_1_template, tostring(power_up_1) .. "in DeusPowerUpIncompatibilityPairs, but not in DeusPowerUpTemplates")
		assert(power_up_2_template, tostring(power_up_2) .. "in DeusPowerUpIncompatibilityPairs, but not in DeusPowerUpTemplates")

		local incompatibility_1 = power_up_1_template.incompatibility or {}
		local incompatibility_2 = power_up_2_template.incompatibility or {}
		local career_incompatibility_1 = incompatibility_1[career_name] or {}
		local career_incompatibility_2 = incompatibility_2[career_name] or {}

		career_incompatibility_1[#career_incompatibility_1 + 1] = power_up_2
		career_incompatibility_2[#career_incompatibility_2 + 1] = power_up_1
		incompatibility_1[career_name] = career_incompatibility_1
		incompatibility_2[career_name] = career_incompatibility_2
		power_up_1_template.incompatibility = incompatibility_1
		power_up_2_template.incompatibility = incompatibility_2
	end
end

for rarity, power_up_configs in pairs(DeusPowerUpRarityPool) do
	DeusPowerUps[rarity] = {}

	for _, power_up_config in ipairs(power_up_configs) do
		local power_up_name = power_up_config[1]
		local availability = power_up_config[2]
		local mutators = power_up_config[3]
		local template = DeusPowerUpTemplates[power_up_name]
		local new_power_up = Script.new_map(13)

		new_power_up.name = power_up_name
		new_power_up.rarity = rarity
		new_power_up.mutators = mutators
		new_power_up.availability = availability
		new_power_up.max_amount = template.max_amount or 1
		new_power_up.incompatibility = template.incompatibility
		new_power_up.weight = template.weight or DeusPowerUpSettings.weight_by_rarity[rarity]

		if template.talent then
			new_power_up.talent = true
			new_power_up.talent_tier = template.talent_tier
			new_power_up.talent_index = template.talent_index
		else
			new_power_up.display_name = template.display_name
			new_power_up.plain_display_name = template.plain_display_name
			new_power_up.buff_name = "power_up_" .. power_up_name .. "_" .. rarity
			new_power_up.advanced_description = template.advanced_description
			new_power_up.description_values = template.description_values
			new_power_up.icon = template.icon

			local buff_template = table.clone(template.buff_template)
			local tweak_data = MorrisBuffTweakData[power_up_name]

			if tweak_data then
				for key, value in pairs(tweak_data) do
					buff_template.buffs[1][key] = value
				end
			end

			buff_template.buffs[1].name = new_power_up.buff_name
			DeusPowerUpBuffTemplates[new_power_up.buff_name] = buff_template
		end

		DeusPowerUps[rarity][power_up_name] = new_power_up

		table.insert(DeusPowerUpsArray, new_power_up)

		DeusPowerUps[rarity][power_up_name].id = #DeusPowerUpsArray

		table.insert(DeusPowerUpsArrayByRarity[rarity], new_power_up)

		DeusPowerUps[rarity][power_up_name].lookup_id = #DeusPowerUpsLookup + 1
		DeusPowerUpsLookup[#DeusPowerUpsLookup + 1] = new_power_up
		DeusPowerUpsLookup[power_up_name] = new_power_up
	end
end

for _, power_up_set in pairs(DeusPowerUpSets) do
	for _, set_piece_settings in pairs(power_up_set.pieces) do
		local rarity = set_piece_settings.rarity
		local name = set_piece_settings.name

		DeusPowerUpSetLookup[rarity][name] = DeusPowerUpSetLookup[rarity][name] or {}

		table.insert(DeusPowerUpSetLookup[rarity][name], power_up_set)
	end

	for _, set_reward_settings in pairs(power_up_set.rewards) do
		local rarity = set_reward_settings.rarity
		local name = set_reward_settings.name

		DeusPowerUpSetLookup[rarity][name] = DeusPowerUpSetLookup[rarity][name] or {}

		table.insert(DeusPowerUpSetLookup[rarity][name], power_up_set)
	end
end
