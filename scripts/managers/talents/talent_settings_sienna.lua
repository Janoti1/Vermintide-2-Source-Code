require("scripts/settings/profiles/career_constants")

local buff_perks = require("scripts/unit_extensions/default_player_unit/buffs/settings/buff_perk_names")
local buff_tweak_data = {
	sienna_scholar_ability_cooldown_on_hit = {
		bonus = 0.25
	},
	sienna_scholar_ability_cooldown_on_damage_taken = {
		bonus = 0.3
	},
	sienna_scholar_passive = {
		chunk_size = 9
	},
	sienna_scholar_passive_crit_chance = {
		max_stacks = 5,
		bonus = 0.06
	},
	sienna_scholar_passive_ranged_damage = {
		multiplier = 0.1
	},
	sienna_scholar_activated_ability_heal = {
		bonus = 35
	},
	sienna_scholar_reaper = {},
	sienna_scholar_bloodlust = {},
	sienna_scholar_conqueror = {},
	sienna_scholar_ranged_power_ascending_descending = {
		update_frequency = 1,
		max_sub_buff_stacks = 25
	},
	sienna_scholar_ranged_power_ascending_descending_buff = {
		max_stacks = 25,
		multiplier = 0.01
	},
	sienna_scholar_crit_chance_above_health_threshold = {
		activation_health = 0.8
	},
	sienna_scholar_crit_chance_above_health_threshold_buff = {
		bonus = 0.1
	},
	sienna_scholar_increased_attack_speed = {
		multiplier = 0.05
	},
	sienna_scholar_passive_increased_attack_speed_from_overcharge = {
		chunk_size = 9
	},
	sienna_scholar_passive_increased_attack_speed = {
		max_stacks = 5,
		multiplier = 0.02
	},
	sienna_scholar_passive_increased_power_level_on_high_overcharge = {
		chunk_size = 42
	},
	sienna_scholar_passive_increased_power_level_on_high_overcharge_buff = {
		multiplier = 0.2
	},
	sienna_scholar_passive_overcharge_pause_on_special_kill_buff = {
		duration = 12,
		multiplier = -1
	},
	sienna_scholar_damage_taken_on_elite_or_special_kill_buff = {
		max_stacks = 3,
		multiplier = -0.1,
		duration = 10
	},
	sienna_scholar_move_speed_on_critical_hit_buff = {
		max_stacks = 3,
		multiplier = 1.05,
		duration = 10
	},
	sienna_scholar_activated_ability_no_overcharge = {
		max_stacks = 1,
		duration = 12,
		multiplier = -0.5
	},
	sienna_scholar_vent_zone = {
		multiplier = -0.8
	},
	sienna_scholar_vent_zone_buff = {
		multiplier = 0.2
	},
	sienna_adept_ability_cooldown_on_hit = {
		bonus = 0.25
	},
	sienna_adept_ability_cooldown_on_damage_taken = {
		bonus = 0.5
	},
	sienna_adept_passive = {
		duration = 6
	},
	sienna_adept_passive_ranged_damage = {
		multiplier = 0.1
	},
	sienna_adept_passive_overcharge_charge_speed_increased = {
		chunk_size = 6
	},
	sienna_adept_passive_overcharge_charge_speed_increased_buff = {
		multiplier = -0.1
	},
	tranquility = {
		multiplier = 3
	},
	sienna_adept_vanguard = {},
	sienna_adept_bloodlust = {},
	sienna_adept_conqueror = {},
	sienna_adept_power_level_on_full_charge = {
		multiplier = 0.5
	},
	sienna_adept_attack_speed_on_enemies_hit = {
		required_targets = 4
	},
	sienna_adept_attack_speed_on_enemies_hit_buff = {
		duration = 5,
		multiplier = 0.15
	},
	sienna_adept_improved_tranquility = {
		multiplier = 1
	},
	sienna_adept_passive_cooldown = {
		duration = 3
	},
	sienna_adept_passive_charge_speed_increased_buff = {
		multiplier = -0.4
	},
	sienna_adept_damage_reduction_on_ignited_enemy_buff = {
		max_stacks = 3,
		multiplier = -0.08,
		duration = 5
	},
	sienna_adept_cooldown_reduction_on_burning_enemy_killed = {
		internal_cooldown = 0.5,
		cooldown_reduction = 0.03
	},
	sienna_adept_increased_burn_damage = {
		multiplier = 1
	},
	sienna_adept_reduced_non_burn_damage = {
		multiplier = -0.15
	},
	sienna_adept_ability_trail_double = {
		duration = 10
	},
	sienna_adept_activated_ability_distance = {
		display_multiplier = 0.5
	},
	sienna_adept_activated_ability_cooldown = {
		multiplier = -0.4
	},
	sienna_unchained_ability_cooldown_on_hit = {
		bonus = 0.25
	},
	sienna_unchained_ability_cooldown_on_damage_taken = {
		bonus = 0.5
	},
	sienna_unchained_passive = {
		multiplier = -0.5
	},
	sienna_unchained_passive_increased_melee_power_on_overcharge = {
		chunk_size = 6
	},
	sienna_unchained_passive_melee_power_on_overcharge = {
		max_stacks = 5,
		multiplier = 0.12
	},
	sienna_unchained_activated_ability = {
		duration = 2
	},
	sienna_unchained_push_arc_buff = {
		multiplier = 0.7
	},
	sienna_unchained_vanguard = {},
	sienna_unchained_reaper = {},
	sienna_unchained_conqueror = {},
	sienna_unchained_attack_speed_on_high_overcharge_buff = {
		multiplier = 0.15
	},
	sienna_unchained_exploding_burning_enemies = {
		display_proc_chance = 0.25
	},
	sienna_unchained_passive_overcharged_blocks = {
		multiplier = 0.5
	},
	sienna_unchained_reduced_vent_damage = {
		multiplier = -0.5
	},
	sienna_unchained_increased_vent_speed = {
		multiplier = 0.3
	},
	sienna_unchained_reduced_damage_taken_after_venting_buff = {
		max_stacks = 3,
		multiplier = -0.05,
		duration = 15
	},
	sienna_unchained_reduced_passive_overcharge_after_venting_buff = {
		max_stacks = 3,
		multiplier = -0.166,
		duration = 15
	},
	sienna_unchained_burning_enemies_reduced_damage = {
		multiplier = -0.3
	},
	sienna_unchained_reduced_overcharge = {
		multiplier = -0.1
	},
	sienna_unchained_activated_ability_pulse = {
		duration = 10
	},
	sienna_unchained_activated_ability_temp_health = {
		heal_amount = 30,
		heal_amount_versus = 20
	},
	sienna_unchained_activated_ability_power_on_enemies_hit_buff = {
		max_stacks = 5,
		multiplier = 0.05,
		duration = 15
	}
}

TalentBuffTemplates = TalentBuffTemplates or {}
TalentBuffTemplates.bright_wizard = {
	sienna_scholar_ability_cooldown_on_hit = {
		buffs = {
			{
				event = "on_hit",
				buff_func = "reduce_activated_ability_cooldown"
			}
		}
	},
	sienna_scholar_ability_cooldown_on_damage_taken = {
		buffs = {
			{
				event = "on_damage_taken",
				buff_func = "reduce_activated_ability_cooldown_on_damage_taken"
			}
		}
	},
	sienna_scholar_passive = {
		buffs = {
			{
				buff_to_add = "sienna_scholar_passive_crit_chance",
				update_func = "activate_buff_stacks_based_on_overcharge_chunks",
				max_stacks = 5
			}
		}
	},
	sienna_scholar_passive_crit_chance = {
		buffs = {
			{
				max_stacks = 10,
				icon = "sienna_scholar_passive",
				stat_buff = "critical_strike_chance"
			}
		}
	},
	sienna_scholar_passive_ranged_damage = {
		buffs = {
			{
				stat_buff = "increased_weapon_damage_ranged"
			}
		}
	},
	sienna_scholar_passive_max_overcharge = {
		buffs = {
			{
				stat_buff = "max_overcharge",
				multiplier = CareerConstants.bw_scholar.perk_3_max_overcharge
			}
		}
	},
	sienna_scholar_overcharge_no_slow = {
		buffs = {
			{
				perks = {
					buff_perks.overcharge_no_slow
				}
			}
		}
	},
	sienna_scholar_reaper = {
		buffs = {
			{
				multiplier = -0.05,
				name = "reaper",
				buff_func = "heal_damage_targets_on_melee",
				event = "on_player_damage_dealt",
				max_targets = 5,
				bonus = 0.25,
				perks = {
					buff_perks.linesman_healing
				}
			}
		}
	},
	sienna_scholar_bloodlust = {
		buffs = {
			{
				name = "bloodlust",
				multiplier = 0.45,
				heal_cap = 0.25,
				buff_func = "heal_percentage_of_enemy_hp_on_melee_kill",
				event = "on_kill",
				perks = {
					buff_perks.smiter_healing
				}
			}
		}
	},
	sienna_scholar_conqueror = {
		buffs = {
			{
				name = "conqueror",
				multiplier = 0.2,
				range = 10,
				buff_func = "heal_other_players_percent_at_range",
				event = "on_healed_consumeable"
			}
		}
	},
	sienna_scholar_ranged_power_ascending_descending = {
		buffs = {
			{
				buff_to_add = "sienna_scholar_ranged_power_ascending_descending_buff",
				update_func = "update_ascending_descending_buff_stacks_on_time"
			}
		}
	},
	sienna_scholar_ranged_power_ascending_descending_buff = {
		buffs = {
			{
				max_stacks = 25,
				icon = "sienna_scholar_ranged_power_ascending_descending",
				stat_buff = "power_level_ranged"
			}
		}
	},
	sienna_scholar_crit_chance_above_health_threshold = {
		buffs = {
			{
				buff_to_add = "sienna_scholar_crit_chance_above_health_threshold_buff",
				update_func = "activate_buff_on_health_percent",
				activation_health = 0.8
			}
		}
	},
	sienna_scholar_crit_chance_above_health_threshold_buff = {
		buffs = {
			{
				max_stacks = 1,
				icon = "sienna_scholar_crit_chance_above_health_threshold",
				stat_buff = "critical_strike_chance"
			}
		}
	},
	sienna_scholar_increased_attack_speed = {
		buffs = {
			{
				stat_buff = "attack_speed"
			}
		}
	},
	sienna_scholar_passive_increased_attack_speed_from_overcharge = {
		buffs = {
			{
				buff_to_add = "sienna_scholar_passive_increased_attack_speed",
				update_func = "activate_buff_stacks_based_on_overcharge_chunks",
				max_stacks = 5
			}
		}
	},
	sienna_scholar_passive_increased_attack_speed = {
		buffs = {
			{
				stat_buff = "attack_speed",
				icon = "sienna_scholar_passive_increased_attack_speed_from_overcharge"
			}
		}
	},
	sienna_scholar_passive_increased_power_level_on_high_overcharge = {
		buffs = {
			{
				buff_to_add = "sienna_scholar_passive_increased_power_level_on_high_overcharge_buff",
				update_func = "activate_server_buff_stacks_based_on_overcharge_chunks"
			}
		}
	},
	sienna_scholar_passive_increased_power_level_on_high_overcharge_buff = {
		buffs = {
			{
				stat_buff = "power_level_ranged",
				icon = "sienna_scholar_passive_increased_power_level_on_high_overcharge"
			}
		}
	},
	sienna_scholar_passive_overcharge_pause_on_special_kill = {
		buffs = {
			{
				buff_to_add = "sienna_scholar_passive_overcharge_pause_on_special_kill_buff",
				event = "on_kill",
				buff_func = "add_buff_on_special_kill"
			}
		}
	},
	sienna_scholar_passive_overcharge_pause_on_special_kill_buff = {
		buffs = {
			{
				max_stacks = 1,
				icon = "sienna_scholar_passive_overcharge_pause_on_special_kill",
				stat_buff = "reduced_overcharge",
				refresh_durations = true
			}
		}
	},
	sienna_scholar_damage_taken_on_elite_or_special_kill = {
		buffs = {
			{
				buff_to_add = "sienna_scholar_damage_taken_on_elite_or_special_kill_buff",
				event = "on_kill",
				buff_func = "add_buff_on_elite_or_special_kill"
			}
		}
	},
	sienna_scholar_damage_taken_on_elite_or_special_kill_buff = {
		buffs = {
			{
				refresh_durations = true,
				icon = "sienna_scholar_damage_taken_on_elite_or_special_kill",
				stat_buff = "damage_taken"
			}
		}
	},
	sienna_scholar_vent_zone = {
		buffs = {
			{
				buff_to_add = "sienna_scholar_vent_zone_buff",
				radius = 7,
				stat_buff = "vent_damage",
				update_func = "sienna_scholar_vent_zone_update",
				update_frequency = 1
			}
		}
	},
	sienna_scholar_vent_zone_buff = {
		buffs = {
			{
				max_stacks = 3,
				icon = "sienna_scholar_activated_ability_dump_overcharge",
				stat_buff = "vent_damage",
				debuff = true
			}
		}
	},
	sienna_scholar_move_speed_on_critical_hit = {
		buffs = {
			{
				buff_to_add = "sienna_scholar_move_speed_on_critical_hit_buff",
				event = "on_critical_hit",
				buff_func = "add_buff"
			}
		}
	},
	sienna_scholar_move_speed_on_critical_hit_buff = {
		buffs = {
			{
				remove_buff_func = "remove_movement_buff",
				refresh_durations = true,
				icon = "sienna_scholar_move_speed_on_critical_hit",
				apply_buff_func = "apply_movement_buff",
				path_to_movement_setting_to_modify = {
					"move_speed"
				}
			}
		}
	},
	sienna_scholar_activated_ability_no_overcharge = {
		buffs = {
			{
				refresh_durations = true,
				stat_buff = "reduced_ranged_charge_time",
				icon = "sienna_scholar_overcharge_no_slow",
				priority_buff = true,
				perks = {
					buff_perks.no_overcharge_explosion
				}
			}
		}
	},
	sienna_scholar_activated_ability_crit_refresh_cooldown = {
		buffs = {
			{
				event = "on_hit",
				buff_func = "sienna_scholar_refund_activated_ability_cooldown"
			}
		}
	},
	sienna_adept_ability_cooldown_on_hit = {
		buffs = {
			{
				event = "on_hit",
				buff_func = "reduce_activated_ability_cooldown"
			}
		}
	},
	sienna_adept_ability_cooldown_on_damage_taken = {
		buffs = {
			{
				event = "on_damage_taken",
				buff_func = "reduce_activated_ability_cooldown_on_damage_taken"
			}
		}
	},
	sienna_adept_passive = {
		buffs = {
			{
				buff_to_add = "tranquility",
				is_cooldown = true,
				icon = "sienna_adept_passive",
				duration_end_func = "add_buff_local",
				max_stacks = 1,
				refresh_durations = true
			}
		}
	},
	sienna_adept_passive_cooldown = {
		buffs = {
			{
				buff_to_add = "tranquility",
				is_cooldown = true,
				icon = "sienna_adept_passive",
				duration_end_func = "add_buff_local",
				max_stacks = 1,
				refresh_durations = true
			}
		}
	},
	sienna_adept_passive_ranged_damage = {
		buffs = {
			{
				stat_buff = "increased_weapon_damage_ranged"
			}
		}
	},
	sienna_adept_passive_overcharge_charge_speed_increased = {
		buffs = {
			{
				buff_to_add = "sienna_adept_passive_overcharge_charge_speed_increased_buff",
				update_func = "activate_buff_stacks_based_on_overcharge_chunks",
				max_stacks = 5
			}
		}
	},
	sienna_adept_passive_overcharge_charge_speed_increased_buff = {
		buffs = {
			{
				max_stacks = 3,
				icon = "sienna_scholar_activated_ability_dump_overcharge",
				stat_buff = "reduced_ranged_charge_time"
			}
		}
	},
	sienna_adept_passive_reset_on_damage_taken = {
		buffs = {
			{
				event = "on_damage_taken",
				buff_func = "reset_tranquility"
			}
		}
	},
	sienna_adept_passive_reset_on_spell_used = {
		buffs = {
			{
				event = "on_spell_used",
				buff_func = "reset_tranquility"
			}
		}
	},
	tranquility = {
		buffs = {
			{
				max_stacks = 1,
				icon = "sienna_adept_passive",
				priority_buff = true,
				stat_buff = "overcharge_regen"
			}
		}
	},
	sienna_adept_vanguard = {
		buffs = {
			{
				name = "vanguard",
				multiplier = 1,
				buff_func = "heal_stagger_targets_on_melee",
				event = "on_stagger",
				perks = {
					buff_perks.tank_healing
				}
			}
		}
	},
	sienna_adept_bloodlust = {
		buffs = {
			{
				name = "bloodlust",
				multiplier = 0.45,
				heal_cap = 0.25,
				buff_func = "heal_percentage_of_enemy_hp_on_melee_kill",
				event = "on_kill",
				perks = {
					buff_perks.smiter_healing
				}
			}
		}
	},
	sienna_adept_conqueror = {
		buffs = {
			{
				name = "conqueror",
				multiplier = 0.2,
				range = 10,
				buff_func = "heal_other_players_percent_at_range",
				event = "on_healed_consumeable"
			}
		}
	},
	sienna_adept_power_level_on_full_charge = {
		buffs = {
			{
				buff_to_add = "sienna_adept_power_level_on_full_charge_buff",
				stat_buff = "full_charge_boost",
				buff_func = "add_buff",
				event = "on_full_charge",
				perks = {
					buff_perks.full_charge_boost
				}
			}
		}
	},
	sienna_adept_power_level_on_full_charge_buff = {
		buffs = {
			{
				remove_on_proc = true,
				max_stacks = 1,
				buff_func = "dummy_function",
				event = "on_charge_finished",
				icon = "sienna_adept_power_level_on_full_charge",
				priority_buff = true
			}
		}
	},
	sienna_adept_attack_speed_on_enemies_hit = {
		buffs = {
			{
				event = "on_hit",
				buff_to_add = "sienna_adept_attack_speed_on_enemies_hit_buff",
				buff_func = "sienna_adept_add_attack_speed_buff_on_enemies_hit"
			}
		}
	},
	sienna_adept_attack_speed_on_enemies_hit_buff = {
		buffs = {
			{
				max_stacks = 1,
				icon = "sienna_adept_attack_speed_on_enemies_hit",
				stat_buff = "attack_speed",
				refresh_durations = true
			}
		}
	},
	sienna_adept_passive_improved = {
		buffs = {
			{
				buff_to_add = "sienna_adept_improved_tranquility",
				activation_buff = "tranquility",
				update_func = "activate_buff_on_other_buff"
			}
		}
	},
	sienna_adept_improved_tranquility = {
		buffs = {
			{
				stat_buff = "overcharge_regen",
				max_stacks = 1
			}
		}
	},
	sienna_adept_passive_charge_speed_increased = {
		buffs = {
			{
				buff_to_add = "sienna_adept_passive_charge_speed_increased_buff",
				activation_buff = "tranquility",
				update_func = "activate_buff_on_other_buff"
			}
		}
	},
	sienna_adept_passive_charge_speed_increased_buff = {
		buffs = {
			{
				max_stacks = 1,
				icon = "sienna_adept_passive_charge_speed_increased",
				stat_buff = "reduced_ranged_charge_time"
			}
		}
	},
	sienna_adept_damage_reduction_on_ignited_enemy = {
		buffs = {
			{
				event = "on_enemy_ignited",
				buff_to_add = "sienna_adept_damage_reduction_on_ignited_enemy_buff",
				require_alive_enemy = true,
				buff_func = "sienna_adept_add_damage_reduction_buff_on_ignited_enemy"
			}
		}
	},
	sienna_adept_damage_reduction_on_ignited_enemy_buff = {
		buffs = {
			{
				refresh_durations = true,
				icon = "sienna_adept_damage_reduction_on_ignited_enemy",
				stat_buff = "damage_taken"
			}
		}
	},
	sienna_adept_cooldown_reduction_on_burning_enemy_killed = {
		buffs = {
			{
				event = "on_kill",
				buff_func = "sienna_adept_reduce_activated_ability_cooldown_on_burning_enemy_killed"
			}
		}
	},
	sienna_adept_increased_burn_damage = {
		buffs = {
			{
				stat_buff = "increased_burn_dot_damage"
			}
		}
	},
	sienna_adept_reduced_non_burn_damage = {
		buffs = {
			{
				stat_buff = "reduced_non_burn_damage"
			}
		}
	},
	sienna_adept_ability_trail_double = {
		buffs = {
			{
				buff_to_add = "sienna_adept_ability_trail_double_remove",
				icon = "sienna_adept_activated_ability_dump_overcharge",
				max_stacks = 1,
				remove_buff_func = "sienna_adept_double_trail_talent_start_ability_cooldown_add",
				perks = {
					buff_perks.free_ability
				}
			}
		}
	},
	sienna_adept_ability_trail_double_remove = {
		buffs = {
			{
				max_stacks = 1,
				duration = 0,
				remove_buff_func = "sienna_adept_double_trail_talent_start_ability_cooldown"
			}
		}
	},
	sienna_adept_activated_ability_cooldown = {
		buffs = {
			{
				stat_buff = "activated_cooldown"
			}
		}
	},
	sienna_unchained_ability_cooldown_on_hit = {
		buffs = {
			{
				event = "on_hit",
				buff_func = "reduce_activated_ability_cooldown"
			}
		}
	},
	sienna_unchained_ability_cooldown_on_damage_taken = {
		buffs = {
			{
				event = "on_damage_taken",
				buff_func = "reduce_activated_ability_cooldown_on_damage_taken"
			}
		}
	},
	sienna_unchained_passive = {
		buffs = {
			{
				stat_buff = "damage_taken_to_overcharge",
				perks = {
					buff_perks.sienna_unchained
				}
			}
		}
	},
	sienna_unchained_passive_overcharged_blocks = {
		buffs = {
			{
				perks = {
					buff_perks.overcharged_block
				}
			}
		}
	},
	sienna_unchained_passive_increased_melee_power_on_overcharge = {
		buffs = {
			{
				buff_to_add = "sienna_unchained_passive_melee_power_on_overcharge",
				update_func = "activate_server_buff_stacks_based_on_overcharge_chunks"
			}
		}
	},
	sienna_unchained_passive_melee_power_on_overcharge = {
		buffs = {
			{
				stat_buff = "power_level_melee",
				icon = "sienna_unchained_passive"
			}
		}
	},
	sienna_unchained_activated_ability = {
		buffs = {
			{
				apply_buff_func = "enter_sienna_unchained_activated_ability",
				remove_buff_func = "end_sienna_unchained_activated_ability"
			}
		}
	},
	sienna_unchained_vanguard = {
		buffs = {
			{
				name = "vanguard",
				multiplier = 1,
				buff_func = "heal_stagger_targets_on_melee",
				event = "on_stagger",
				perks = {
					buff_perks.tank_healing
				}
			}
		}
	},
	sienna_unchained_reaper = {
		buffs = {
			{
				multiplier = -0.05,
				name = "reaper",
				buff_func = "heal_damage_targets_on_melee",
				event = "on_player_damage_dealt",
				max_targets = 5,
				bonus = 0.25,
				perks = {
					buff_perks.linesman_healing
				}
			}
		}
	},
	sienna_unchained_conqueror = {
		buffs = {
			{
				name = "conqueror",
				multiplier = 0.2,
				range = 10,
				buff_func = "heal_other_players_percent_at_range",
				event = "on_healed_consumeable"
			}
		}
	},
	sienna_unchained_attack_speed_on_high_overcharge = {
		buffs = {
			{
				buff_to_add = "sienna_unchained_attack_speed_on_high_overcharge_buff",
				update_func = "activate_buff_stacks_based_on_overcharge_chunks",
				chunk_size = 20,
				max_stacks = 1
			}
		}
	},
	sienna_unchained_attack_speed_on_high_overcharge_buff = {
		buffs = {
			{
				max_stacks = 1,
				icon = "sienna_unchained_attack_speed_on_high_overcharge",
				stat_buff = "attack_speed"
			}
		}
	},
	sienna_unchained_burn_push = {
		buffs = {
			{
				event = "on_hit",
				buff_to_add = "sienna_unchained_push_arc_buff",
				buff_func = "sienna_burn_push_on_charged_attacks",
				perks = {
					buff_perks.sienna_unchained_burn_push
				}
			}
		}
	},
	sienna_unchained_push_arc_buff = {
		buffs = {
			{
				max_stacks = 1,
				stat_buff = "block_angle",
				buff_func = "sienna_burn_push_on_charged_attacks_remove",
				event = "on_push",
				icon = "sienna_unchained_burn_push"
			}
		}
	},
	sienna_unchained_exploding_burning_enemies = {
		buffs = {
			{
				event = "on_kill",
				proc_chance = 0.4,
				buff_func = "sienna_on_kill_explosion"
			}
		}
	},
	sienna_unchained_reduced_vent_damage = {
		buffs = {
			{
				stat_buff = "vent_damage"
			}
		}
	},
	sienna_unchained_increased_vent_speed = {
		buffs = {
			{
				stat_buff = "vent_speed"
			}
		}
	},
	sienna_unchained_reduced_damage_taken_after_venting = {
		buffs = {
			{
				event = "on_damage_taken",
				buff_func = "sienna_unchained_add_buff_on_vent_damage",
				buffs_to_add = {
					"sienna_unchained_reduced_damage_taken_after_venting_buff",
					"sienna_unchained_reduced_passive_overcharge_after_venting_buff"
				}
			}
		}
	},
	sienna_unchained_reduced_damage_taken_after_venting_buff = {
		buffs = {
			{
				refresh_durations = true,
				icon = "sienna_unchained_reduced_damage_taken_after_venting",
				stat_buff = "damage_taken"
			}
		}
	},
	sienna_unchained_reduced_passive_overcharge_after_venting_buff = {
		buffs = {
			{
				stat_buff = "reduced_overcharge_from_passive",
				refresh_durations = true
			}
		}
	},
	sienna_unchained_burning_enemies_reduced_damage = {
		buffs = {
			{
				stat_buff = "damage_taken_burning_enemy"
			}
		}
	},
	sienna_unchained_health_to_ult = {
		buffs = {
			{
				buff_to_add = "sienna_unchained_health_to_cooldown_buff",
				update_func = "activate_buff_stacks_based_on_overcharge_chunks",
				chunk_size = 40,
				max_stacks = 1
			}
		}
	},
	sienna_unchained_health_to_cooldown_buff = {
		buffs = {
			{
				update_func = "sienna_unchained_health_to_cooldown_update",
				icon = "sienna_unchained_attack_speed_on_high_overcharge",
				frequency = 0.5
			}
		}
	},
	sienna_unchained_reduced_overcharge = {
		buffs = {
			{
				stat_buff = "reduced_overcharge"
			}
		}
	},
	sienna_unchained_activated_ability_pulse = {
		buffs = {
			{
				remove_buff_func = "sienna_unchained_activated_ability_pulse_remove",
				update_func = "sienna_unchained_activated_ability_pulse_update",
				pulse_frequency = 0.5,
				refresh_durations = true,
				max_stacks = 1,
				icon = "sienna_unchained_activated_ability_power_on_enemies_hit"
			}
		}
	},
	sienna_unchained_activated_ability_power_on_enemies_hit = {
		buffs = {
			{
				event = "on_hit",
				buff_to_add = "sienna_unchained_activated_ability_power_on_enemies_hit_buff",
				max_stacks = 1,
				buff_func = "sienna_unchained_activated_ability_power_on_enemies_hit"
			}
		}
	},
	sienna_unchained_activated_ability_power_on_enemies_hit_buff = {
		buffs = {
			{
				refresh_durations = true,
				icon = "sienna_unchained_activated_ability_radius",
				stat_buff = "power_level"
			}
		}
	}
}
TalentTrees = TalentTrees or {}
TalentTrees.bright_wizard = {
	{
		{
			"sienna_scholar_thp_linesman",
			"sienna_scholar_thp_smiter",
			"sienna_scholar_thp_ninjafencer"
		},
		{
			"sienna_scholar_ranged_power_ascending_descending",
			"sienna_scholar_increased_attack_speed",
			"sienna_scholar_crit_chance_above_health_threshold"
		},
		{
			"sienna_scholar_smiter_unbalance",
			"sienna_scholar_linesman_unbalance",
			"sienna_scholar_power_level_unbalance"
		},
		{
			"sienna_scholar_passive_overcharge_pause_on_special_kill",
			"sienna_scholar_passive_increased_power_level_on_high_overcharge",
			"sienna_scholar_passive_increased_attack_speed_from_overcharge"
		},
		{
			"sienna_scholar_damage_taken_on_elite_or_special_kill",
			"sienna_scholar_vent_zone",
			"sienna_scholar_move_speed_on_critical_hit"
		},
		{
			"sienna_scholar_activated_ability_no_overcharge",
			"sienna_scholar_activated_ability_heal",
			"sienna_scholar_activated_ability_crit_refresh_cooldown"
		}
	},
	{
		{
			"sienna_adept_thp_tank",
			"sienna_adept_thp_smiter",
			"sienna_adept_thp_linesman"
		},
		{
			"sienna_adept_power_level_on_full_charge",
			"sienna_adept_increased_burn_damage_reduced_non_burn_damage",
			"sienna_adept_infinite_burn"
		},
		{
			"sienna_adept_tank_unbalance",
			"sienna_adept_smiter_unbalance",
			"sienna_adept_power_level_unbalance"
		},
		{
			"sienna_adept_passive_cooldown",
			"sienna_adept_passive_charge_speed_increased",
			"sienna_adept_passive_improved"
		},
		{
			"sienna_adept_damage_reduction_on_ignited_enemy",
			"sienna_adept_cooldown_reduction_on_burning_enemy_killed",
			"sienna_adept_attack_speed_on_enemies_hit"
		},
		{
			"sienna_adept_activated_ability_cooldown",
			"sienna_adept_activated_ability_explosion",
			"sienna_adept_ability_trail_double"
		}
	},
	{
		{
			"sienna_unchained_thp_tank",
			"sienna_unchained_thp_linesman",
			"sienna_unchained_thp_smiter"
		},
		{
			"sienna_unchained_attack_speed_on_high_overcharge",
			"sienna_unchained_burn_push_2",
			"sienna_unchained_exploding_burning_enemies"
		},
		{
			"sienna_unchained_tank_unbalance",
			"sienna_unchained_linesman_unbalance",
			"sienna_unchained_power_level_unbalance"
		},
		{
			"sienna_unchained_overcharged_blocks",
			"sienna_unchained_increased_vent_speed",
			"sienna_unchained_reduced_damage_taken_after_venting_2"
		},
		{
			"sienna_unchained_burning_enemies_reduced_damage",
			"sienna_unchained_health_to_ult",
			"sienna_unchained_reduced_overcharge"
		},
		{
			"sienna_unchained_activated_ability_power_on_enemies_hit",
			"sienna_unchained_activated_ability_fire_aura",
			"sienna_unchained_activated_ability_temp_health"
		}
	}
}
Talents.bright_wizard = {
	{
		description = "reaper_desc",
		name = "sienna_scholar_reaper",
		buffer = "server",
		num_ranks = 1,
		icon = "sienna_scholar_regrowth",
		description_values = {
			{
				value = BuffUtils.get_buff_template("reaper", "adventure").buffs[1].max_targets
			}
		},
		buffs = {
			"sienna_scholar_reaper"
		}
	},
	{
		description = "bloodlust_desc_3",
		name = "sienna_scholar_bloodlust_2",
		buffer = "server",
		num_ranks = 1,
		icon = "sienna_scholar_bloodlust",
		description_values = {
			{
				value_type = "percent",
				value = BuffUtils.get_buff_template("bloodlust", "adventure").buffs[1].multiplier
			}
		},
		buffs = {
			"sienna_scholar_bloodlust"
		}
	},
	{
		description = "conqueror_desc_3",
		name = "sienna_scholar_heal_share",
		buffer = "server",
		num_ranks = 1,
		icon = "sienna_scholar_conqueror",
		description_values = {
			{
				value_type = "percent",
				value = BuffUtils.get_buff_template("conqueror", "adventure").buffs[1].multiplier
			}
		},
		buffs = {
			"sienna_scholar_conqueror"
		}
	},
	{
		name = "sienna_scholar_thp_linesman",
		buffer = "server",
		num_ranks = 1,
		icon = "sienna_scholar_regrowth",
		display_name = BuffUtils.get_buff_template("thp_linesman", "adventure").buffs[1].display_name,
		description = BuffUtils.get_buff_template("thp_linesman", "adventure").buffs[1].description,
		description_values = BuffUtils.get_buff_template("thp_linesman", "adventure").buffs[1].description_values,
		buffs = {
			"thp_linesman"
		}
	},
	{
		name = "sienna_scholar_thp_smiter",
		buffer = "server",
		num_ranks = 1,
		icon = "sienna_scholar_bloodlust",
		display_name = BuffUtils.get_buff_template("thp_smiter", "adventure").buffs[1].display_name,
		description = BuffUtils.get_buff_template("thp_smiter", "adventure").buffs[1].description,
		description_values = BuffUtils.get_buff_template("thp_smiter", "adventure").buffs[1].description_values,
		buffs = {
			"thp_smiter"
		}
	},
	{
		name = "sienna_scholar_thp_ninjafencer",
		buffer = "server",
		num_ranks = 1,
		icon = "sienna_scholar_conqueror",
		display_name = BuffUtils.get_buff_template("thp_ninjafencer", "adventure").buffs[1].display_name,
		description = BuffUtils.get_buff_template("thp_ninjafencer", "adventure").buffs[1].description,
		description_values = BuffUtils.get_buff_template("thp_ninjafencer", "adventure").buffs[1].description_values,
		buffs = {
			"thp_ninjafencer"
		}
	},
	{
		description = "sienna_scholar_increased_attack_speed_desc",
		name = "sienna_scholar_increased_attack_speed",
		num_ranks = 1,
		icon = "sienna_scholar_increased_attack_speed",
		description_values = {
			{
				value_type = "percent",
				value = buff_tweak_data.sienna_scholar_increased_attack_speed.multiplier
			}
		},
		buffs = {
			"sienna_scholar_increased_attack_speed"
		}
	},
	{
		description = "sienna_scholar_crit_chance_above_health_threshold_desc",
		name = "sienna_scholar_crit_chance_above_health_threshold",
		buffer = "server",
		num_ranks = 1,
		icon = "sienna_scholar_crit_chance_above_health_threshold",
		description_values = {
			{
				value_type = "percent",
				value = buff_tweak_data.sienna_scholar_crit_chance_above_health_threshold_buff.bonus
			},
			{
				value_type = "percent",
				value = buff_tweak_data.sienna_scholar_crit_chance_above_health_threshold.activation_health
			}
		},
		buffs = {
			"sienna_scholar_crit_chance_above_health_threshold"
		}
	},
	{
		description = "sienna_scholar_ranged_power_ascending_descending_desc",
		name = "sienna_scholar_ranged_power_ascending_descending",
		buffer = "server",
		num_ranks = 1,
		icon = "sienna_scholar_ranged_power_ascending_descending",
		description_values = {
			{
				value_type = "percent",
				value = buff_tweak_data.sienna_scholar_ranged_power_ascending_descending_buff.multiplier
			},
			{
				value = buff_tweak_data.sienna_scholar_ranged_power_ascending_descending.update_frequency
			},
			{
				value = buff_tweak_data.sienna_scholar_ranged_power_ascending_descending.max_sub_buff_stacks
			}
		},
		buffs = {
			"sienna_scholar_ranged_power_ascending_descending"
		}
	},
	{
		description = "sienna_scholar_passive_increased_attack_speed_from_overcharge_desc",
		name = "sienna_scholar_passive_increased_attack_speed_from_overcharge",
		num_ranks = 1,
		icon = "sienna_scholar_passive_increased_attack_speed_from_overcharge",
		description_values = {
			{
				value_type = "percent",
				value = buff_tweak_data.sienna_scholar_passive_increased_attack_speed.multiplier
			},
			{
				value = buff_tweak_data.sienna_scholar_passive_increased_attack_speed_from_overcharge.chunk_size
			},
			{
				value = buff_tweak_data.sienna_scholar_passive_increased_attack_speed.max_stacks
			}
		},
		buffs = {
			"sienna_scholar_passive_increased_attack_speed_from_overcharge"
		}
	},
	{
		description = "sienna_scholar_passive_increased_power_level_on_high_overcharge_desc",
		name = "sienna_scholar_passive_increased_power_level_on_high_overcharge",
		buffer = "server",
		num_ranks = 1,
		icon = "sienna_scholar_passive_increased_power_level_on_high_overcharge",
		description_values = {
			{
				value_type = "percent",
				value = buff_tweak_data.sienna_scholar_passive_increased_power_level_on_high_overcharge_buff.multiplier
			}
		},
		buffs = {
			"sienna_scholar_passive_increased_power_level_on_high_overcharge"
		}
	},
	{
		description = "sienna_scholar_passive_overcharge_pause_on_special_kill_desc",
		name = "sienna_scholar_passive_overcharge_pause_on_special_kill",
		num_ranks = 1,
		icon = "sienna_scholar_passive_overcharge_pause_on_special_kill",
		description_values = {
			{
				value = buff_tweak_data.sienna_scholar_passive_overcharge_pause_on_special_kill_buff.duration
			}
		},
		buffs = {
			"sienna_scholar_passive_overcharge_pause_on_special_kill"
		}
	},
	{
		description = "sienna_scholar_damage_taken_on_elite_or_special_kill_desc",
		name = "sienna_scholar_damage_taken_on_elite_or_special_kill",
		buffer = "server",
		num_ranks = 1,
		icon = "sienna_scholar_damage_taken_on_elite_or_special_kill",
		description_values = {
			{
				value_type = "percent",
				value = buff_tweak_data.sienna_scholar_damage_taken_on_elite_or_special_kill_buff.multiplier
			},
			{
				value = buff_tweak_data.sienna_scholar_damage_taken_on_elite_or_special_kill_buff.duration
			}
		},
		buffs = {
			"sienna_scholar_damage_taken_on_elite_or_special_kill"
		}
	},
	{
		description = "sienna_scholar_vent_zone_desc",
		name = "sienna_scholar_vent_zone",
		num_ranks = 1,
		icon = "sienna_scholar_activated_ability_dump_overcharge",
		description_values = {
			{
				value_type = "percent",
				value = -buff_tweak_data.sienna_scholar_vent_zone.multiplier
			},
			{
				value_type = "percent",
				value = -buff_tweak_data.sienna_scholar_vent_zone_buff.multiplier
			}
		},
		buffs = {
			"sienna_scholar_vent_zone"
		}
	},
	{
		description = "sienna_scholar_move_speed_on_critical_hit_desc",
		name = "sienna_scholar_move_speed_on_critical_hit",
		num_ranks = 1,
		icon = "sienna_scholar_move_speed_on_critical_hit",
		description_values = {
			{
				value_type = "baked_percent",
				value = buff_tweak_data.sienna_scholar_move_speed_on_critical_hit_buff.multiplier
			},
			{
				value = buff_tweak_data.sienna_scholar_move_speed_on_critical_hit_buff.duration
			},
			{
				value = buff_tweak_data.sienna_scholar_move_speed_on_critical_hit_buff.max_stacks
			}
		},
		buffs = {
			"sienna_scholar_move_speed_on_critical_hit"
		}
	},
	{
		description = "sienna_scholar_activated_ability_no_overcharge_desc",
		name = "sienna_scholar_activated_ability_no_overcharge",
		num_ranks = 1,
		icon = "sienna_scholar_overcharge_no_slow",
		description_values = {
			{
				value_type = "baked_percent",
				value = 1 + buff_tweak_data.sienna_scholar_activated_ability_no_overcharge.multiplier
			},
			{
				value = buff_tweak_data.sienna_scholar_activated_ability_no_overcharge.duration
			}
		},
		buffs = {}
	},
	{
		description = "sienna_scholar_activated_ability_heal_desc",
		name = "sienna_scholar_activated_ability_heal",
		num_ranks = 1,
		icon = "sienna_scholar_activated_ability_heal",
		description_values = {
			{
				value = buff_tweak_data.sienna_scholar_activated_ability_heal.bonus
			}
		},
		buffs = {}
	},
	{
		description = "sienna_scholar_activated_ability_crit_refresh_cooldown_desc",
		name = "sienna_scholar_activated_ability_crit_refresh_cooldown",
		num_ranks = 1,
		icon = "sienna_scholar_activated_ability_crit_refresh_cooldown",
		buffs = {
			"sienna_scholar_activated_ability_crit_refresh_cooldown"
		}
	},
	{
		description = "smiter_unbalance_desc",
		name = "sienna_scholar_smiter_unbalance",
		buffer = "server",
		num_ranks = 1,
		icon = "sienna_scholar_smiter_unbalance",
		description_values = {
			{
				value_type = "percent",
				value = BuffUtils.get_buff_template("smiter_unbalance", "adventure").buffs[1].display_multiplier
			},
			{
				value_type = "percent",
				value = BuffUtils.get_buff_template("smiter_unbalance", "adventure").buffs[1].max_display_multiplier
			}
		},
		buffs = {
			"smiter_unbalance"
		}
	},
	{
		description = "linesman_unbalance_desc",
		name = "sienna_scholar_linesman_unbalance",
		buffer = "server",
		num_ranks = 1,
		icon = "sienna_scholar_linesman_unbalance",
		description_values = {
			{
				value_type = "percent",
				value = BuffUtils.get_buff_template("linesman_unbalance", "adventure").buffs[1].display_multiplier
			},
			{
				value_type = "percent",
				value = BuffUtils.get_buff_template("linesman_unbalance", "adventure").buffs[1].max_display_multiplier
			}
		},
		buffs = {
			"linesman_unbalance"
		}
	},
	{
		description = "power_level_unbalance_desc",
		name = "sienna_scholar_power_level_unbalance",
		buffer = "server",
		num_ranks = 1,
		icon = "sienna_scholar_power_level_unbalance",
		description_values = {
			{
				value_type = "percent",
				value = BuffUtils.get_buff_template("power_level_unbalance", "adventure").buffs[1].multiplier
			}
		},
		buffs = {
			"power_level_unbalance"
		}
	},
	{
		description = "vanguard_desc",
		name = "sienna_adept_vanguard",
		buffer = "server",
		num_ranks = 1,
		icon = "sienna_adept_regrowth",
		description_values = {},
		buffs = {
			"sienna_adept_vanguard"
		}
	},
	{
		description = "bloodlust_desc_3",
		name = "sienna_adept_bloodlust_2",
		buffer = "server",
		num_ranks = 1,
		icon = "sienna_adept_bloodlust",
		description_values = {
			{
				value_type = "percent",
				value = BuffUtils.get_buff_template("bloodlust", "adventure").buffs[1].multiplier
			}
		},
		buffs = {
			"sienna_adept_bloodlust"
		}
	},
	{
		description = "conqueror_desc_3",
		name = "sienna_adept_heal_share",
		buffer = "server",
		num_ranks = 1,
		icon = "sienna_adept_conqueror",
		description_values = {
			{
				value_type = "percent",
				value = BuffUtils.get_buff_template("conqueror", "adventure").buffs[1].multiplier
			}
		},
		buffs = {
			"sienna_adept_conqueror"
		}
	},
	{
		name = "sienna_adept_thp_tank",
		buffer = "server",
		num_ranks = 1,
		icon = "sienna_adept_regrowth",
		display_name = BuffUtils.get_buff_template("thp_tank", "adventure").buffs[1].display_name,
		description = BuffUtils.get_buff_template("thp_tank", "adventure").buffs[1].description,
		description_values = BuffUtils.get_buff_template("thp_tank", "adventure").buffs[1].description_values,
		buffs = {
			"thp_tank"
		}
	},
	{
		name = "sienna_adept_thp_smiter",
		buffer = "server",
		num_ranks = 1,
		icon = "sienna_adept_bloodlust",
		display_name = BuffUtils.get_buff_template("thp_smiter", "adventure").buffs[1].display_name,
		description = BuffUtils.get_buff_template("thp_smiter", "adventure").buffs[1].description,
		description_values = BuffUtils.get_buff_template("thp_smiter", "adventure").buffs[1].description_values,
		buffs = {
			"thp_smiter"
		}
	},
	{
		name = "sienna_adept_thp_linesman",
		buffer = "server",
		num_ranks = 1,
		icon = "sienna_adept_conqueror",
		display_name = BuffUtils.get_buff_template("thp_linesman", "adventure").buffs[1].display_name,
		description = BuffUtils.get_buff_template("thp_linesman", "adventure").buffs[1].description,
		description_values = BuffUtils.get_buff_template("thp_linesman", "adventure").buffs[1].description_values,
		buffs = {
			"thp_linesman"
		}
	},
	{
		description = "sienna_adept_infinite_burn_desc",
		name = "sienna_adept_infinite_burn",
		num_ranks = 1,
		icon = "sienna_adept_stun_resistance",
		description_values = {},
		buffs = {}
	},
	{
		description = "sienna_adept_power_level_on_full_charge_desc",
		name = "sienna_adept_power_level_on_full_charge",
		num_ranks = 1,
		icon = "sienna_adept_power_level_on_full_charge",
		description_values = {
			{
				value_type = "percent",
				value = buff_tweak_data.sienna_adept_power_level_on_full_charge.multiplier
			}
		},
		buffs = {
			"sienna_adept_power_level_on_full_charge"
		}
	},
	{
		description = "sienna_adept_attack_speed_on_enemies_hit_desc",
		name = "sienna_adept_attack_speed_on_enemies_hit",
		num_ranks = 1,
		icon = "sienna_adept_attack_speed_on_enemies_hit",
		description_values = {
			{
				value = buff_tweak_data.sienna_adept_attack_speed_on_enemies_hit.required_targets
			},
			{
				value_type = "percent",
				value = buff_tweak_data.sienna_adept_attack_speed_on_enemies_hit_buff.multiplier
			},
			{
				value = buff_tweak_data.sienna_adept_attack_speed_on_enemies_hit_buff.duration
			}
		},
		buffs = {
			"sienna_adept_attack_speed_on_enemies_hit"
		}
	},
	{
		description = "sienna_adept_passive_charge_speed_increased_desc",
		name = "sienna_adept_passive_charge_speed_increased",
		num_ranks = 1,
		icon = "sienna_adept_passive_charge_speed_increased",
		description_values = {
			{
				value_type = "percent",
				value = buff_tweak_data.sienna_adept_passive_charge_speed_increased_buff.multiplier
			}
		},
		buffs = {
			"sienna_adept_passive_charge_speed_increased"
		}
	},
	{
		description = "sienna_adept_passive_improved_desc_2",
		name = "sienna_adept_passive_improved",
		num_ranks = 1,
		icon = "sienna_adept_passive_improved",
		description_values = {
			{
				value_type = "percent",
				value = buff_tweak_data.sienna_adept_improved_tranquility.multiplier
			}
		},
		buffs = {
			"sienna_adept_passive_improved"
		}
	},
	{
		description = "sienna_adept_passive_cooldown_desc",
		name = "sienna_adept_passive_cooldown",
		num_ranks = 1,
		icon = "sienna_adept_passive_cooldown",
		description_values = {
			{
				value = buff_tweak_data.sienna_adept_passive_cooldown.duration
			}
		},
		buffs = {}
	},
	{
		description = "sienna_adept_damage_reduction_on_ignited_enemy_desc",
		name = "sienna_adept_damage_reduction_on_ignited_enemy",
		buffer = "server",
		num_ranks = 1,
		icon = "sienna_adept_damage_reduction_on_ignited_enemy",
		description_values = {
			{
				value_type = "percent",
				value = buff_tweak_data.sienna_adept_damage_reduction_on_ignited_enemy_buff.multiplier
			},
			{
				value = buff_tweak_data.sienna_adept_damage_reduction_on_ignited_enemy_buff.duration
			},
			{
				value = buff_tweak_data.sienna_adept_damage_reduction_on_ignited_enemy_buff.max_stacks
			}
		},
		buffs = {
			"sienna_adept_damage_reduction_on_ignited_enemy"
		}
	},
	{
		description = "sienna_adept_cooldown_reduction_on_burning_enemy_killed_desc",
		name = "sienna_adept_cooldown_reduction_on_burning_enemy_killed",
		num_ranks = 1,
		icon = "sienna_adept_cooldown_reduction_on_burning_enemy_killed",
		description_values = {
			{
				value_type = "percent",
				value = buff_tweak_data.sienna_adept_cooldown_reduction_on_burning_enemy_killed.cooldown_reduction
			}
		},
		buffs = {
			"sienna_adept_cooldown_reduction_on_burning_enemy_killed"
		}
	},
	{
		description = "sienna_adept_increased_burn_damage_reduced_non_burn_damage_desc",
		name = "sienna_adept_increased_burn_damage_reduced_non_burn_damage",
		buffer = "server",
		num_ranks = 1,
		icon = "sienna_adept_increased_burn_damage_reduced_non_burn_damage",
		description_values = {
			{
				value_type = "percent",
				value = buff_tweak_data.sienna_adept_increased_burn_damage.multiplier
			},
			{
				value_type = "percent",
				value = buff_tweak_data.sienna_adept_reduced_non_burn_damage.multiplier
			}
		},
		buffs = {
			"sienna_adept_increased_burn_damage",
			"sienna_adept_reduced_non_burn_damage"
		}
	},
	{
		description = "sienna_adept_ability_trail_double_desc",
		name = "sienna_adept_ability_trail_double",
		num_ranks = 1,
		icon = "sienna_adept_activated_ability_dump_overcharge",
		description_values = {
			{
				value = buff_tweak_data.sienna_adept_ability_trail_double.duration
			}
		},
		buffs = {}
	},
	{
		description = "sienna_adept_activated_ability_explosion_desc",
		name = "sienna_adept_activated_ability_explosion",
		num_ranks = 1,
		icon = "sienna_adept_activated_ability_explosion",
		description_values = {},
		buffs = {}
	},
	{
		description = "sienna_adept_activated_ability_distance_desc",
		name = "sienna_adept_activated_ability_distance",
		num_ranks = 1,
		icon = "sienna_adept_activated_ability_distance",
		description_values = {
			{
				value_type = "percent",
				value = buff_tweak_data.sienna_adept_activated_ability_distance.display_multiplier
			}
		},
		buffs = {}
	},
	{
		description = "sienna_adept_activated_ability_cooldown_desc",
		name = "sienna_adept_activated_ability_cooldown",
		num_ranks = 1,
		icon = "sienna_adept_activated_ability_cooldown",
		description_values = {
			{
				value_type = "percent",
				value = buff_tweak_data.sienna_adept_activated_ability_cooldown.multiplier
			}
		},
		buffs = {
			"sienna_adept_activated_ability_cooldown"
		}
	},
	{
		description = "tank_unbalance_desc",
		name = "sienna_adept_tank_unbalance",
		buffer = "server",
		num_ranks = 1,
		icon = "sienna_adept_tank_unbalance",
		description_values = {
			{
				value_type = "percent",
				value = BuffUtils.get_buff_template("tank_unbalance_buff", "adventure").buffs[1].bonus
			},
			{
				value = BuffUtils.get_buff_template("tank_unbalance_buff", "adventure").buffs[1].duration
			},
			{
				value_type = "percent",
				value = BuffUtils.get_buff_template("tank_unbalance", "adventure").buffs[1].display_multiplier
			},
			{
				value_type = "percent",
				value = BuffUtils.get_buff_template("tank_unbalance", "adventure").buffs[1].max_display_multiplier
			}
		},
		buffs = {
			"tank_unbalance"
		}
	},
	{
		description = "smiter_unbalance_desc",
		name = "sienna_adept_smiter_unbalance",
		buffer = "server",
		num_ranks = 1,
		icon = "sienna_adept_smiter_unbalance",
		description_values = {
			{
				value_type = "percent",
				value = BuffUtils.get_buff_template("smiter_unbalance", "adventure").buffs[1].display_multiplier
			},
			{
				value_type = "percent",
				value = BuffUtils.get_buff_template("smiter_unbalance", "adventure").buffs[1].max_display_multiplier
			}
		},
		buffs = {
			"smiter_unbalance"
		}
	},
	{
		description = "power_level_unbalance_desc",
		name = "sienna_adept_power_level_unbalance",
		buffer = "server",
		num_ranks = 1,
		icon = "sienna_adept_power_level_unbalance",
		description_values = {
			{
				value_type = "percent",
				value = BuffUtils.get_buff_template("power_level_unbalance", "adventure").buffs[1].multiplier
			}
		},
		buffs = {
			"power_level_unbalance"
		}
	},
	{
		description = "vanguard_desc",
		name = "sienna_unchained_vanguard",
		buffer = "server",
		num_ranks = 1,
		icon = "sienna_unchained_regrowth",
		description_values = {},
		buffs = {
			"sienna_unchained_vanguard"
		}
	},
	{
		description = "reaper_desc",
		name = "sienna_unchained_reaper",
		buffer = "server",
		num_ranks = 1,
		icon = "sienna_unchained_bloodlust",
		description_values = {
			{
				value = BuffUtils.get_buff_template("reaper", "adventure").buffs[1].max_targets
			}
		},
		buffs = {
			"sienna_unchained_reaper"
		}
	},
	{
		description = "conqueror_desc_3",
		name = "sienna_unchained_heal_share",
		buffer = "server",
		num_ranks = 1,
		icon = "sienna_unchained_conqueror",
		description_values = {
			{
				value_type = "percent",
				value = BuffUtils.get_buff_template("conqueror", "adventure").buffs[1].multiplier
			}
		},
		buffs = {
			"sienna_unchained_conqueror"
		}
	},
	{
		name = "sienna_unchained_thp_tank",
		buffer = "server",
		num_ranks = 1,
		icon = "sienna_unchained_regrowth",
		display_name = BuffUtils.get_buff_template("thp_tank", "adventure").buffs[1].display_name,
		description = BuffUtils.get_buff_template("thp_tank", "adventure").buffs[1].description,
		description_values = BuffUtils.get_buff_template("thp_tank", "adventure").buffs[1].description_values,
		buffs = {
			"thp_tank"
		}
	},
	{
		name = "sienna_unchained_thp_linesman",
		buffer = "server",
		num_ranks = 1,
		icon = "sienna_unchained_bloodlust",
		display_name = BuffUtils.get_buff_template("thp_linesman", "adventure").buffs[1].display_name,
		description = BuffUtils.get_buff_template("thp_linesman", "adventure").buffs[1].description,
		description_values = BuffUtils.get_buff_template("thp_linesman", "adventure").buffs[1].description_values,
		buffs = {
			"thp_linesman"
		}
	},
	{
		name = "sienna_unchained_thp_smiter",
		buffer = "server",
		num_ranks = 1,
		icon = "sienna_unchained_conqueror",
		display_name = BuffUtils.get_buff_template("thp_smiter", "adventure").buffs[1].display_name,
		description = BuffUtils.get_buff_template("thp_smiter", "adventure").buffs[1].description,
		description_values = BuffUtils.get_buff_template("thp_smiter", "adventure").buffs[1].description_values,
		buffs = {
			"thp_smiter"
		}
	},
	{
		description = "sienna_unchained_attack_speed_on_high_overcharge_desc",
		name = "sienna_unchained_attack_speed_on_high_overcharge",
		num_ranks = 1,
		icon = "sienna_unchained_attack_speed_on_high_overcharge",
		description_values = {
			{
				value_type = "percent",
				value = buff_tweak_data.sienna_unchained_attack_speed_on_high_overcharge_buff.multiplier
			}
		},
		buffs = {
			"sienna_unchained_attack_speed_on_high_overcharge"
		}
	},
	{
		description = "sienna_unchained_burn_push_desc_2",
		name = "sienna_unchained_burn_push_2",
		buffer = "both",
		num_ranks = 1,
		icon = "sienna_unchained_burn_push",
		description_values = {
			{
				value_type = "percent",
				value = buff_tweak_data.sienna_unchained_push_arc_buff.multiplier
			}
		},
		buffs = {
			"sienna_unchained_burn_push"
		}
	},
	{
		description = "sienna_unchained_exploding_burning_enemies_desc",
		name = "sienna_unchained_exploding_burning_enemies",
		buffer = "server",
		num_ranks = 1,
		icon = "sienna_unchained_exploding_burning_enemies",
		description_values = {},
		buffs = {
			"sienna_unchained_exploding_burning_enemies"
		}
	},
	{
		description = "sienna_unchained_overcharged_blocks_desc",
		name = "sienna_unchained_overcharged_blocks",
		buffer = "both",
		num_ranks = 1,
		icon = "sienna_unchained_reduced_vent_damage",
		description_values = {
			{
				value_type = "percent",
				value = buff_tweak_data.sienna_unchained_passive_overcharged_blocks.multiplier
			}
		},
		buffs = {
			"sienna_unchained_passive_overcharged_blocks"
		}
	},
	{
		description = "sienna_unchained_increased_vent_speed_desc_2",
		name = "sienna_unchained_increased_vent_speed",
		num_ranks = 1,
		icon = "sienna_unchained_increased_vent_speed",
		description_values = {
			{
				value_type = "percent",
				value = buff_tweak_data.sienna_unchained_increased_vent_speed.multiplier
			},
			{
				value_type = "percent",
				value = buff_tweak_data.sienna_unchained_reduced_vent_damage.multiplier
			}
		},
		buffs = {
			"sienna_unchained_increased_vent_speed",
			"sienna_unchained_reduced_vent_damage"
		}
	},
	{
		description = "sienna_unchained_reduced_damage_taken_after_venting_desc_2",
		name = "sienna_unchained_reduced_damage_taken_after_venting_2",
		buffer = "server",
		num_ranks = 1,
		icon = "sienna_unchained_reduced_damage_taken_after_venting",
		description_values = {
			{
				value_type = "percent",
				value = buff_tweak_data.sienna_unchained_reduced_damage_taken_after_venting_buff.multiplier
			},
			{
				value_type = "percent",
				value = buff_tweak_data.sienna_unchained_reduced_passive_overcharge_after_venting_buff.multiplier
			},
			{
				value = buff_tweak_data.sienna_unchained_reduced_damage_taken_after_venting_buff.duration
			},
			{
				value = buff_tweak_data.sienna_unchained_reduced_damage_taken_after_venting_buff.max_stacks
			}
		},
		buffs = {
			"sienna_unchained_reduced_damage_taken_after_venting"
		}
	},
	{
		description = "sienna_unchained_burning_enemies_reduced_damage_desc",
		name = "sienna_unchained_burning_enemies_reduced_damage",
		buffer = "server",
		num_ranks = 1,
		icon = "sienna_unchained_burning_enemies_reduced_damage",
		description_values = {
			{
				value_type = "percent",
				value = buff_tweak_data.sienna_unchained_burning_enemies_reduced_damage.multiplier
			}
		},
		buffs = {}
	},
	{
		description = "sienna_unchained_health_to_ult_desc",
		name = "sienna_unchained_health_to_ult",
		buffer = "both",
		num_ranks = 1,
		icon = "sienna_unchained_vent_overheat_on_low_health",
		description_values = {},
		buffs = {
			"sienna_unchained_health_to_ult"
		}
	},
	{
		description = "sienna_unchained_reduced_overcharge_desc",
		name = "sienna_unchained_reduced_overcharge",
		num_ranks = 1,
		icon = "sienna_unchained_reduced_overcharge",
		description_values = {
			{
				value_type = "percent",
				value = buff_tweak_data.sienna_unchained_reduced_overcharge.multiplier
			}
		},
		buffs = {
			"sienna_unchained_reduced_overcharge"
		}
	},
	{
		description = "sienna_unchained_activated_ability_power_on_enemies_hit_desc",
		name = "sienna_unchained_activated_ability_power_on_enemies_hit",
		buffer = "server",
		num_ranks = 1,
		icon = "sienna_unchained_activated_ability_radius",
		description_values = {
			{
				value_type = "percent",
				value = buff_tweak_data.sienna_unchained_activated_ability_power_on_enemies_hit_buff.multiplier
			},
			{
				value = buff_tweak_data.sienna_unchained_activated_ability_power_on_enemies_hit_buff.duration
			},
			{
				value = buff_tweak_data.sienna_unchained_activated_ability_power_on_enemies_hit_buff.max_stacks
			}
		},
		buffs = {
			"sienna_unchained_activated_ability_power_on_enemies_hit"
		}
	},
	{
		description = "sienna_unchained_activated_ability_fire_aura_desc",
		name = "sienna_unchained_activated_ability_fire_aura",
		buffer = "server",
		num_ranks = 1,
		icon = "sienna_unchained_activated_ability_power_on_enemies_hit",
		description_values = {
			{
				value = buff_tweak_data.sienna_unchained_activated_ability_pulse.duration
			}
		},
		buffs = {}
	},
	{
		description = "sienna_unchained_activated_ability_temp_health_desc",
		name = "sienna_unchained_activated_ability_temp_health",
		num_ranks = 1,
		icon = "sienna_unchained_activated_ability_temp_health",
		description_values = {
			{
				value = buff_tweak_data.sienna_unchained_activated_ability_temp_health.heal_amount
			}
		},
		buffs = {},
		attributes = {
			heal_amount = buff_tweak_data.sienna_unchained_activated_ability_temp_health.heal_amount
		},
		mechanism_overrides = {
			versus = {
				description_values = {
					{
						value = buff_tweak_data.sienna_unchained_activated_ability_temp_health.heal_amount_versus
					}
				},
				attributes = {
					heal_amount = buff_tweak_data.sienna_unchained_activated_ability_temp_health.heal_amount_versus
				}
			}
		}
	},
	{
		description = "tank_unbalance_desc",
		name = "sienna_unchained_tank_unbalance",
		buffer = "server",
		num_ranks = 1,
		icon = "sienna_unchained_tank_unbalance",
		description_values = {
			{
				value_type = "percent",
				value = BuffUtils.get_buff_template("tank_unbalance_buff", "adventure").buffs[1].bonus
			},
			{
				value = BuffUtils.get_buff_template("tank_unbalance_buff", "adventure").buffs[1].duration
			},
			{
				value_type = "percent",
				value = BuffUtils.get_buff_template("tank_unbalance", "adventure").buffs[1].display_multiplier
			},
			{
				value_type = "percent",
				value = BuffUtils.get_buff_template("tank_unbalance", "adventure").buffs[1].max_display_multiplier
			}
		},
		buffs = {
			"tank_unbalance"
		}
	},
	{
		description = "linesman_unbalance_desc",
		name = "sienna_unchained_linesman_unbalance",
		buffer = "server",
		num_ranks = 1,
		icon = "sienna_unchained_linesman_unbalance",
		description_values = {
			{
				value_type = "percent",
				value = BuffUtils.get_buff_template("linesman_unbalance", "adventure").buffs[1].display_multiplier
			},
			{
				value_type = "percent",
				value = BuffUtils.get_buff_template("linesman_unbalance", "adventure").buffs[1].max_display_multiplier
			}
		},
		buffs = {
			"linesman_unbalance"
		}
	},
	{
		description = "power_level_unbalance_desc",
		name = "sienna_unchained_power_level_unbalance",
		buffer = "server",
		num_ranks = 1,
		icon = "sienna_unchained_power_level_unbalance",
		description_values = {
			{
				value_type = "percent",
				value = BuffUtils.get_buff_template("power_level_unbalance", "adventure").buffs[1].multiplier
			}
		},
		buffs = {
			"power_level_unbalance"
		}
	},
	{
		description = "sienna_placeholder",
		name = "sienna_placeholder"
	}
}

BuffUtils.copy_talent_buff_names(TalentBuffTemplates.bright_wizard)
BuffUtils.apply_buff_tweak_data(TalentBuffTemplates.bright_wizard, buff_tweak_data)
