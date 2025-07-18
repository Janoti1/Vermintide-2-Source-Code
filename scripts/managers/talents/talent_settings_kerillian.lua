require("scripts/entity_system/systems/buff/buff_sync_type")

local buff_perks = require("scripts/unit_extensions/default_player_unit/buffs/settings/buff_perk_names")
local buff_tweak_data = {
	kerillian_shade_ability_cooldown_on_hit = {
		bonus = 0.5
	},
	kerillian_shade_ability_cooldown_on_damage_taken = {
		bonus = 0.2
	},
	kerillian_shade_passive = {
		bonus = 1
	},
	kerillian_shade_passive_crit = {
		bonus = 0.05
	},
	kerillian_shade_activated_ability = {
		duration = 5
	},
	kerillian_shade_activated_ability_quick_cooldown_buff = {
		multiplier = -0.45
	},
	kerillian_shade_activated_ability_quick_cooldown_crit = {
		duration = 4,
		bonus = 1
	},
	kerillian_shade_regrowth = {},
	kerillian_shade_bloodlust = {},
	kerillian_shade_conqueror = {},
	kerillian_shade_increased_damage_on_poisoned_or_bleeding_enemy = {
		multiplier = 0.2
	},
	kerillian_shade_increased_critical_strike_damage = {
		multiplier = 0.5
	},
	kerillian_shade_stacking_headshot_damage_on_headshot_buff = {
		max_stacks = 10,
		multiplier = 0.1,
		duration = 10
	},
	kerillian_shade_headshot_backstab_counter = {
		max_stacks = 2
	},
	kerillian_shade_passive_improved = {
		bonus = 0.25
	},
	kerillian_shade_backstabs_cooldown_regeneration_buff = {
		max_stacks = 1,
		multiplier = 1,
		duration = 3
	},
	kerillian_shade_charged_backstabs_buff = {
		max_stacks = 2,
		duration = 5,
		bonus = 0.25
	},
	kerillian_shade_backstabs_replenishes_ammunition = {
		bonus = 1
	},
	kerillian_shade_backstabs_replenishes_ammunition_cooldown = {
		duration = 2
	},
	kerillian_shade_backstabs_free_shot_buff = {
		max_stacks = 3
	},
	kerillian_shade_activated_ability_short = {
		duration = 3
	},
	kerillian_shade_activated_ability_short_blocker = {
		duration = 5
	},
	kerillian_shade_movement_speed = {
		multiplier = 1.1
	},
	kerillian_shade_movement_speed_on_critical_hit_buff = {
		duration = 5,
		multiplier = 1.2
	},
	kerillian_shade_damage_reduction_on_critical_hit_buff = {
		duration = 5,
		multiplier = -0.2
	},
	kerillian_shade_activated_ability_quick_cooldown = {
		duration = 5
	},
	kerillian_shade_activated_ability_power_vs_unarmored = {
		multiplier = 0.2
	},
	kerillian_shade_activated_ability_move_speed = {
		duration = 12,
		multiplier = 1.2
	},
	kerillian_shade_ult_invis = {
		duration = 3
	},
	kerillian_shade_ult_invis_combo_window = {
		max_stacks = 1,
		duration = 0.3,
		extend_time = 1
	},
	kerillian_shade_power_buff = {
		multiplier = 0.15
	},
	kerillian_shade_phasing_buff = {
		duration = 10
	},
	kerillian_shade_movespeed_buff = {
		multiplier = 1.1,
		display_multiplier = 0.1
	},
	kerillian_maidenguard_ability_cooldown_on_hit = {
		bonus = 0.25
	},
	kerillian_maidenguard_ability_cooldown_on_damage_taken = {
		bonus = 0.5
	},
	kerillian_maidenguard_passive_dodge = {
		multiplier = 1.15
	},
	kerillian_maidenguard_passive_dodge_speed = {
		multiplier = 1.15
	},
	kerillian_maidenguard_passive_increased_stamina = {
		bonus = 1
	},
	kerillian_maidenguard_passive_damage_reduction = {
		multiplier = -0.2
	},
	kerillian_maidenguard_passive_stamina_regen_aura = {
		range = 5
	},
	kerillian_maidenguard_passive_stamina_regen_buff = {
		multiplier = 1
	},
	kerillian_maidenguard_activated_ability = {
		duration = 0.45
	},
	kerillian_maidenguard_reaper = {},
	kerillian_maidenguard_bloodlust = {},
	kerillian_maidenguard_conqueror = {},
	kerillian_maidenguard_power_level_on_unharmed = {
		multiplier = 0.15
	},
	kerillian_maidenguard_power_level_on_unharmed_cooldown = {
		duration = 10
	},
	kerillian_maidenguard_crit_chance = {
		bonus = 0.05
	},
	kerillian_maidenguard_cooldown_on_nearby_allies_buff = {
		max_stacks = 3,
		multiplier = 0.15
	},
	kerillian_maidenguard_power_on_dodge = {
		multiplier = 0.1
	},
	kerillian_maidenguard_speed_on_block_buff = {
		multiplier = 0.3
	},
	kerillian_maidenguard_power_on_block_buff = {
		multiplier = 0.1
	},
	kerillian_maidenguard_passive_attack_speed_on_dodge_buff = {
		max_stacks = 3,
		multiplier = 0.05,
		duration = 6
	},
	kerillian_maidenguard_improved_dodge = {
		multiplier = 1.201
	},
	kerillian_maidenguard_improved_dodge_speed = {
		multiplier = 1.201
	},
	kerillian_maidenguard_max_ammo = {
		multiplier = 0.4
	},
	kerillian_maidenguard_max_health = {
		multiplier = 0.15
	},
	kerillian_maidenguard_block_cost = {
		multiplier = -0.3
	},
	kerillian_maidenguard_activated_ability_damage = {
		multiplier = 1
	},
	kerillian_maidenguard_activated_ability_invis_duration = {
		duration = 2
	},
	kerillian_maidenguard_activated_ability_crit_buff = {
		max_stacks = 5,
		duration = 15,
		bonus = 0.05
	},
	kerillian_maidenguard_insta_ress = {
		duration = 10,
		multiplier = -20
	},
	kerillian_maidenguard_insta_ress_buff = {
		duration = 0.5
	},
	kerillian_maidenguard_ress_buff = {
		duration = 5,
		bonus = 0.5
	},
	kerillian_waywatcher_ability_cooldown_on_hit = {
		bonus = 0.35
	},
	kerillian_waywatcher_ability_cooldown_on_damage_taken = {
		bonus = 0.3
	},
	kerillian_waywatcher_passive = {
		time_between_heals = 10,
		heal_amount = 3
	},
	kerillian_waywatcher_passive_increased_ammunition = {
		multiplier = 1
	},
	kerillian_waywatcher_regrowth = {},
	kerillian_waywatcher_reaper = {},
	kerillian_waywatcher_conqueror = {},
	kerillian_waywatcher_attack_speed_on_ranged_headshot_buff = {
		duration = 5,
		multiplier = 0.15
	},
	kerillian_waywatcher_extra_arrow_melee_kill_buff = {
		bonus = 1,
		duration = 10
	},
	kerillian_waywatcher_movement_speed_on_special_kill_buff = {
		duration = 10,
		multiplier = 1.15
	},
	kerillian_waywatcher_improved_regen = {
		display_multiplier = 0.5,
		bonus = 3
	},
	kerillian_waywatcher_passive_cooldown_restore = {
		display_multiplier = 0.05
	},
	kerillian_waywatcher_activated_ability_cooldown = {
		multiplier = -0.2
	},
	kerillian_waywatcher_projectile_ricochet = {
		bonus = 3
	},
	kerillian_waywatcher_activated_ability_restore_ammo_on_career_skill_special_kill = {
		ammo_bonus_fraction = 0.3
	},
	kerillian_waywatcher_activated_ability_piercing_shot = {
		multiplier = 1
	}
}

TalentBuffTemplates = TalentBuffTemplates or {}
TalentBuffTemplates.wood_elf = {
	kerillian_shade_ability_cooldown_on_hit = {
		buffs = {
			{
				event = "on_hit",
				buff_func = "reduce_activated_ability_cooldown"
			}
		}
	},
	kerillian_shade_ability_cooldown_on_damage_taken = {
		buffs = {
			{
				event = "on_damage_taken",
				buff_func = "reduce_activated_ability_cooldown_on_damage_taken"
			}
		}
	},
	kerillian_shade_passive = {
		buffs = {
			{
				stat_buff = "backstab_multiplier"
			}
		}
	},
	kerillian_shade_passive_crit = {
		buffs = {
			{
				stat_buff = "critical_strike_chance"
			}
		}
	},
	kerillian_shade_passive_sfx = {
		buffs = {
			{
				event = "on_backstab",
				sound_to_play = "Play_career_ability_kerillian_shade_backstab_small",
				buff_func = "event_hud_sfx"
			}
		}
	},
	kerillian_shade_stealth_crits = {
		buffs = {
			{
				event = "on_invisible",
				buff_to_add = "kerillian_shade_stealth_crits_buff",
				buff_func = "add_buff_local"
			}
		}
	},
	kerillian_shade_stealth_crits_remover = {
		buffs = {
			{
				event = "on_visible",
				remove_buff_func = "remove_buff_stack",
				buff_func = "remove_buff_stack",
				remove_buff_stack_data = {
					{
						num_stacks = 1,
						buff_to_remove = "kerillian_shade_stealth_crits_buff",
						server_controlled = false
					}
				}
			}
		}
	},
	kerillian_shade_stealth_crits_buff = {
		buffs = {
			{
				max_stacks = 1,
				icon = "kerillian_shade_perk_dagger_in_the_dark",
				stat_buff = "critical_strike_chance_melee",
				bonus = 1
			}
		}
	},
	kerillian_shade_passive_backstab_killing_blow = {
		buffs = {
			{
				perks = {
					buff_perks.crit_backstab_killing_blow
				}
			}
		}
	},
	kerillian_shade_passive_stealth_parry = {
		buffs = {
			{
				event = "on_timed_block",
				buff_to_add = "kerillian_shade_dash_stealth",
				buff_func = "add_buff"
			}
		}
	},
	kerillian_shade_dash_stealth = {
		buffs = {
			{
				buff_to_add = "kerillian_shade_dash_stealth_active",
				duration = 1.5,
				max_stacks = 1,
				buff_func = "kerillian_thorn_sister_add_buff_remove",
				event = "on_dodge",
				icon = "kerillian_shade_perk_blur",
				refresh_durations = true
			}
		}
	},
	kerillian_shade_dash_stealth_active = {
		activation_sound = "Play_career_ability_kerillian_shade_enter_small",
		buffs = {
			{
				duration = 1.5,
				remove_buff_func = "on_remove_shade_dash_stealth",
				proc_weight = 5,
				buff_func = "shade_short_stealth_on_hit",
				event = "on_hit",
				refresh_durations = true,
				apply_buff_func = "on_apply_shade_dash_stealth",
				continuous_effect = "fx/screenspace_shade_skill_01",
				max_stacks = 1,
				icon = "kerillian_shade_perk_blur"
			}
		}
	},
	kerillian_shade_activated_ability = {
		deactivation_effect = "fx/screenspace_shade_skill_02",
		buffs = {
			{
				can_restealth_on_remove = true,
				name = "kerillian_shade_activated_ability",
				proc_weight = 5,
				buff_func = "shade_activated_ability_on_hit",
				event = "on_hit",
				refresh_durations = true,
				apply_buff_func = "apply_shade_activated_ability",
				remove_buff_func = "on_shade_activated_ability_remove",
				continuous_effect = "fx/screenspace_shade_skill_01",
				max_stacks = 1,
				icon = "passive_bonus_kerillian_shade",
				can_restealth_combo = true,
				perks = {
					"shade_melee_boost"
				}
			}
		}
	},
	kerillian_shade_activated_ability_restealth = {
		deactivation_effect = "fx/screenspace_shade_skill_02",
		buffs = {
			{
				icon = "passive_bonus_kerillian_shade",
				name = "kerillian_shade_activated_ability_restealth",
				proc_weight = 5,
				buff_func = "shade_activated_ability_on_hit",
				event = "on_hit",
				refresh_durations = true,
				apply_buff_func = "apply_shade_activated_ability",
				remove_buff_func = "on_shade_activated_ability_remove",
				continuous_effect = "fx/screenspace_shade_skill_01",
				max_stacks = 1,
				can_restealth_on_remove = false,
				can_restealth_combo = true,
				duration = buff_tweak_data.kerillian_shade_activated_ability.duration,
				perks = {
					"shade_melee_boost"
				}
			}
		}
	},
	kerillian_shade_regrowth = {
		buffs = {
			{
				name = "regrowth",
				buff_func = "heal_finesse_damage_on_melee",
				event = "on_hit",
				bonus = 2,
				perks = {
					buff_perks.ninja_healing
				}
			}
		}
	},
	kerillian_shade_bloodlust = {
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
	kerillian_shade_conqueror = {
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
	kerillian_shade_increased_damage_on_poisoned_or_bleeding_enemy = {
		buffs = {
			{
				stat_buff = "increased_weapon_damage_poisoned_or_bleeding"
			}
		}
	},
	kerillian_shade_increased_critical_strike_damage = {
		buffs = {
			{
				stat_buff = "critical_strike_effectiveness"
			}
		}
	},
	kerillian_shade_stacking_headshot_damage_on_headshot = {
		buffs = {
			{
				event = "on_hit",
				buff_to_add = "kerillian_shade_stacking_headshot_damage_on_headshot_buff",
				buff_func = "add_buff_on_headshot"
			}
		}
	},
	kerillian_shade_stacking_headshot_damage_on_headshot_buff = {
		buffs = {
			{
				refresh_durations = true,
				icon = "kerillian_shade_stacking_headshot_damage_on_headshot",
				stat_buff = "headshot_multiplier"
			}
		}
	},
	kerillian_shade_headshot_backstab = {
		buffs = {
			{
				event = "on_hit",
				buff_to_add = "kerillian_shade_headshot_cooldown",
				buff_func = "add_buff_on_headshot",
				allowed_attacks = {
					heavy_attack = true
				}
			}
		}
	},
	kerillian_shade_headshot_cooldown = {
		buffs = {
			{
				duration = 3,
				multiplier = 0.2,
				stat_buff = "cooldown_regen",
				icon = "kerillian_shade_stacking_headshot_damage_on_headshot"
			}
		}
	},
	kerillian_shade_charged_backstabs = {
		buffs = {
			{
				event = "on_hit",
				buff_to_add = "kerillian_shade_charged_backstabs_buff",
				buff_func = "kerillian_shade_buff_on_charged_backstab"
			}
		}
	},
	kerillian_shade_charged_backstabs_buff = {
		buffs = {
			{
				refresh_durations = true,
				icon = "kerillian_shade_passive_improved",
				stat_buff = "backstab_multiplier"
			}
		}
	},
	kerillian_shade_passive_improved_crit_blocker = {
		buffs = {
			{
				duration = 0.1
			}
		}
	},
	kerillian_shade_backstabs_cooldown_regeneration = {
		buffs = {
			{
				event = "on_kill",
				buff_to_add = "kerillian_shade_backstabs_cooldown_regeneration_buff",
				buff_func = "kerillian_shade_cooldown_regen_on_backstab_kill"
			}
		}
	},
	kerillian_shade_backstabs_cooldown_regeneration_buff = {
		buffs = {
			{
				refresh_durations = true,
				icon = "kerillian_shade_passive_stealth_on_backstab_kill",
				stat_buff = "cooldown_regen"
			}
		}
	},
	kerillian_shade_backstabs_free_shot_buff = {
		buffs = {
			{
				icon = "kerillian_shade_backstabs_replenishes_ammunition"
			}
		}
	},
	kerillian_shade_backstabs_replenishes_ammunition = {
		buffs = {
			{
				event = "on_backstab",
				buff_func = "shade_backstab_ammo_gain"
			}
		}
	},
	kerillian_shade_backstabs_replenishes_ammunition_cooldown = {
		buffs = {
			{}
		}
	},
	kerillian_shade_passive_stealth_on_backstab_kill = {
		buffs = {
			{
				event = "on_kill",
				buff_func = "kerillian_shade_stealth_on_backstab_kill"
			}
		}
	},
	kerillian_shade_activated_ability_short_blocker = {
		buffs = {
			{
				max_stacks = 1,
				icon = "kerillian_shade_passive_stealth_on_backstab_kill",
				debuff = true
			}
		}
	},
	kerillian_shade_activated_ability_short = {
		deactivation_effect = "fx/screenspace_shade_skill_02",
		buffs = {
			{
				remove_buff_func = "on_shade_activated_ability_remove",
				name = "kerillian_shade_activated_ability_short",
				proc_weight = 5,
				buff_func = "shade_short_stealth_on_hit",
				event = "on_hit",
				refresh_durations = true,
				apply_buff_func = "apply_shade_activated_ability",
				continuous_effect = "fx/screenspace_shade_skill_01",
				max_stacks = 1,
				icon = "kerillian_shade_passive_stealth_on_backstab_kill",
				can_restealth_combo = false
			}
		}
	},
	kerillian_shade_movement_speed = {
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
	kerillian_shade_movement_speed_on_critical_hit = {
		buffs = {
			{
				event = "on_critical_hit",
				buff_to_add = "kerillian_shade_movement_speed_on_critical_hit_buff",
				buff_func = "add_buff"
			}
		}
	},
	kerillian_shade_movement_speed_on_critical_hit_buff = {
		buffs = {
			{
				remove_buff_func = "remove_movement_buff",
				refresh_durations = true,
				max_stacks = 1,
				icon = "kerillian_shade_movement_speed_on_critical_hit",
				apply_buff_func = "apply_movement_buff",
				path_to_movement_setting_to_modify = {
					"move_speed"
				}
			}
		}
	},
	kerillian_shade_damage_reduction_on_critical_hit = {
		buffs = {
			{
				event = "on_critical_hit",
				buff_to_add = "kerillian_shade_damage_reduction_on_critical_hit_buff",
				buff_func = "add_buff"
			}
		}
	},
	kerillian_shade_damage_reduction_on_critical_hit_buff = {
		buffs = {
			{
				max_stacks = 1,
				icon = "kerillian_shade_damage_reduction_on_critical_hit",
				stat_buff = "damage_taken",
				refresh_durations = true
			}
		}
	},
	kerillian_shade_ult_invis = {
		deactivation_effect = "fx/screenspace_shade_skill_02",
		buffs = {
			{
				buff_to_add = "shade_short_stealth_on_hit",
				name = "kerillian_shade_ult_invis",
				proc_weight = 4,
				buff_func = "shade_combo_stealth_on_hit",
				event = "on_hit",
				refresh_durations = true,
				apply_buff_func = "apply_shade_activated_ability",
				remove_buff_func = "on_shade_activated_ability_remove",
				continuous_effect = "fx/screenspace_shade_skill_01",
				max_stacks = 1,
				icon = "kerillian_shade_activated_ability_quick_cooldown",
				can_restealth_combo = false
			}
		}
	},
	kerillian_shade_ult_invis_combo_window = {
		buffs = {
			{
				refresh_durations = true,
				max_stacks = 1,
				extend_time = 1,
				buff_func = "shade_combo_stealth_extend_on_kill",
				event = "on_kill_elite_special",
				duration = 0.3,
				remove_buff_func = "kerillian_shade_missed_combo_window"
			}
		}
	},
	kerillian_shade_ult_invis_combo_blocker = {
		buffs = {
			{
				max_stacks = 1,
				refresh_durations = true,
				duration = 0.1
			}
		}
	},
	kerillian_shade_restealth_blocker = {
		buffs = {
			{
				max_stacks = 1,
				refresh_durations = true,
				duration = 0.1,
				debuff = true
			}
		}
	},
	kerillian_shade_activated_ability_phasing = {
		deactivation_effect = "fx/screenspace_shade_skill_02",
		buffs = {
			{
				remove_buff_func = "on_shade_activated_ability_remove",
				name = "kerillian_shade_activated_ability_phasing",
				proc_weight = 5,
				buff_func = "shade_activated_ability_on_hit",
				event = "on_hit",
				refresh_durations = true,
				apply_buff_func = "apply_shade_activated_ability",
				icon = "passive_bonus_kerillian_shade",
				duration = 5,
				continuous_effect = "fx/screenspace_shade_skill_01",
				max_stacks = 1,
				can_restealth_on_remove = true,
				can_restealth_combo = true
			}
		}
	},
	kerillian_shade_phasing_buff = {
		buffs = {
			{
				refresh_durations = true,
				remove_buff_func = "kerillian_shade_noclip_off",
				max_stacks = 1,
				icon = "kerillian_shade_activated_ability_dash",
				apply_buff_func = "kerillian_shade_noclip_on"
			}
		}
	},
	kerillian_shade_movespeed_buff = {
		buffs = {
			{
				refresh_durations = true,
				name = "kerillian_shade_movespeed_buff",
				remove_buff_func = "remove_movement_buff",
				max_stacks = 1,
				apply_buff_func = "apply_movement_buff",
				duration = buff_tweak_data.kerillian_shade_phasing_buff.duration,
				path_to_movement_setting_to_modify = {
					"move_speed"
				}
			}
		}
	},
	kerillian_shade_power_buff = {
		buffs = {
			{
				refresh_durations = true,
				name = "kerillian_shade_power_buff",
				stat_buff = "power_level",
				max_stacks = 1,
				duration = buff_tweak_data.kerillian_shade_phasing_buff.duration
			}
		}
	},
	kerillian_maidenguard_ability_cooldown_on_hit = {
		buffs = {
			{
				event = "on_hit",
				buff_func = "reduce_activated_ability_cooldown"
			}
		}
	},
	kerillian_maidenguard_ability_cooldown_on_damage_taken = {
		buffs = {
			{
				event = "on_damage_taken",
				buff_func = "reduce_activated_ability_cooldown_on_damage_taken"
			}
		}
	},
	kerillian_maidenguard_passive_increased_stamina = {
		buffs = {
			{
				stat_buff = "max_fatigue"
			}
		}
	},
	kerillian_maidenguard_passive_damage_reduction = {
		buffs = {
			{
				stat_buff = "damage_taken"
			}
		}
	},
	kerillian_maidenguard_passive_dodge = {
		buffs = {
			{
				remove_buff_func = "remove_movement_buff",
				apply_buff_func = "apply_movement_buff",
				path_to_movement_setting_to_modify = {
					"dodging",
					"distance_modifier"
				}
			}
		}
	},
	kerillian_maidenguard_passive_dodge_speed = {
		buffs = {
			{
				remove_buff_func = "remove_movement_buff",
				apply_buff_func = "apply_movement_buff",
				path_to_movement_setting_to_modify = {
					"dodging",
					"speed_modifier"
				}
			}
		}
	},
	kerillian_maidenguard_passive_stamina_regen_aura = {
		buffs = {
			{
				buff_to_add = "kerillian_maidenguard_passive_stamina_regen_buff",
				update_func = "activate_buff_on_distance",
				remove_buff_func = "remove_aura_buff"
			}
		}
	},
	kerillian_maidenguard_passive_uninterruptible_revive = {
		buffs = {
			{
				perks = {
					buff_perks.uninterruptible_revive
				}
			}
		}
	},
	kerillian_maidenguard_passive_stamina_regen_buff = {
		buffs = {
			{
				max_stacks = 1,
				icon = "kerillian_maidenguard_passive",
				stat_buff = "fatigue_regen"
			}
		}
	},
	kerillian_maidenguard_activated_ability = {
		buffs = {
			{
				max_stacks = 1,
				remove_buff_func = "end_maidenguard_activated_ability",
				apply_buff_func = "start_maidenguard_activated_ability",
				refresh_durations = true
			}
		}
	},
	kerillian_maidenguard_activated_ability_invis_duration = {
		buffs = {
			{
				icon = "kerillian_maidenguard_activated_ability_invis_duration",
				remove_buff_func = "end_maidenguard_ability_stealth",
				apply_buff_func = "start_maidenguard_ability_stealth"
			}
		}
	},
	kerillian_maidenguard_ress_time = {
		buffs = {
			{
				multiplier = -0.5,
				stat_buff = "faster_revive",
				buff_func = "buff_defence_on_revived_target",
				event = "on_revived_ally",
				refresh_durations = true,
				buff_to_add = {
					"kerillian_maidenguard_insta_ress_buff"
				}
			}
		}
	},
	kerillian_maidenguard_reaper = {
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
	kerillian_maidenguard_bloodlust = {
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
	kerillian_maidenguard_conqueror = {
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
	kerillian_maidenguard_power_level_on_unharmed = {
		buffs = {
			{
				remove_on_proc = true,
				max_stacks = 1,
				stat_buff = "power_level",
				buff_func = "maidenguard_reset_unharmed_buff",
				event = "on_damage_taken",
				icon = "kerillian_maidenguard_power_level_on_unharmed"
			}
		}
	},
	kerillian_maidenguard_power_level_on_unharmed_cooldown = {
		buffs = {
			{
				buff_to_add = "kerillian_maidenguard_power_level_on_unharmed",
				icon = "kerillian_maidenguard_power_level_on_unharmed",
				max_stacks = 1,
				refresh_durations = true,
				is_cooldown = true,
				remove_buff_func = "add_buff"
			}
		}
	},
	kerillian_maidenguard_crit_chance = {
		buffs = {
			{
				stat_buff = "critical_strike_chance"
			}
		}
	},
	kerillian_maidenguard_speed_on_block = {
		buffs = {
			{
				buff_to_add = "kerillian_maidenguard_speed_on_block_dummy_buff",
				authority = "client",
				buff_func = "maidenguard_add_power_buff_on_block",
				event = "on_block",
				amount_to_add = 2,
				max_stacks = 1,
				update_func = "maidenguard_attack_speed_on_block_update",
				max_sub_buff_stacks = 2,
				stat_increase_buffs = {
					"kerillian_maidenguard_speed_on_block_buff",
					"kerillian_maidenguard_power_on_block_buff"
				}
			}
		}
	},
	kerillian_maidenguard_speed_on_push = {
		buffs = {
			{
				buff_to_add = "kerillian_maidenguard_speed_on_block_dummy_buff",
				authority = "client",
				buff_func = "maidenguard_add_power_buff_on_block",
				event = "on_push",
				amount_to_add = 2,
				max_stacks = 1,
				update_func = "maidenguard_attack_speed_on_block_update",
				max_sub_buff_stacks = 2,
				stat_increase_buffs = {
					"kerillian_maidenguard_speed_on_block_buff",
					"kerillian_maidenguard_power_on_block_buff"
				}
			}
		}
	},
	kerillian_maidenguard_speed_on_block_dummy_buff = {
		buffs = {
			{
				max_stacks = 2,
				icon = "kerillian_maidenguard_power_level_on_unharmed"
			}
		}
	},
	kerillian_maidenguard_speed_on_block_buff = {
		buffs = {
			{
				max_stacks = 1,
				stat_buff = "attack_speed"
			}
		}
	},
	kerillian_maidenguard_power_on_block_buff = {
		buffs = {
			{
				max_stacks = 1,
				stat_buff = "power_level"
			}
		}
	},
	kerillian_maidenguard_power_on_blocked_attacks_remove_damage = {
		buffs = {
			{
				authority = "client",
				chunk_size = 1,
				buff_to_remove = "kerillian_maidenguard_speed_on_block_dummy_buff",
				buff_func = "maidenguard_remove_on_block_speed_buff",
				event = "on_hit",
				max_stacks = 1,
				reference_buffs = {
					"kerillian_maidenguard_speed_on_block",
					"kerillian_maidenguard_speed_on_push"
				}
			}
		}
	},
	kerillian_maidenguard_versatile_dodge = {
		buffs = {
			{
				event = "on_dodge",
				attack_buff_to_add = "kerillian_maidenguard_power_on_dodge",
				buff_func = "maidenguard_footwork_buff",
				dodge_buffs_to_add = {
					"kerillian_maidenguard_improved_dodge",
					"kerillian_maidenguard_improved_dodge_speed"
				}
			}
		}
	},
	kerillian_maidenguard_power_on_dodge = {
		buffs = {
			{
				icon = "kerillian_maidenguard_cooldown_on_nearby_allies",
				refresh_durations = true,
				stat_buff = "power_level",
				max_stacks = 1,
				duration = 2
			}
		}
	},
	kerillian_maidenguard_cooldown_on_nearby_allies_buff = {
		buffs = {
			{
				stat_buff = "cooldown_regen",
				icon = "kerillian_maidenguard_cooldown_on_nearby_allies"
			}
		}
	},
	kerillian_maidenguard_passive_attack_speed_on_dodge = {
		buffs = {
			{
				event = "on_dodge",
				buff_to_add = "kerillian_maidenguard_passive_attack_speed_on_dodge_buff",
				buff_func = "add_buff"
			}
		}
	},
	kerillian_maidenguard_passive_attack_speed_on_dodge_buff = {
		buffs = {
			{
				refresh_durations = true,
				icon = "kerillian_maidenguard_passive_attack_speed_on_dodge",
				stat_buff = "attack_speed"
			}
		}
	},
	kerillian_maidenguard_improved_dodge = {
		buffs = {
			{
				buff_func = "maidenguard_footwork_on_dodge_end",
				event = "on_dodge_finished",
				remove_buff_func = "remove_movement_buff",
				apply_buff_func = "apply_movement_buff",
				path_to_movement_setting_to_modify = {
					"dodging",
					"distance_modifier"
				}
			}
		}
	},
	kerillian_maidenguard_improved_dodge_speed = {
		buffs = {
			{
				buff_func = "maidenguard_footwork_on_dodge_end",
				event = "on_dodge_finished",
				remove_buff_func = "remove_movement_buff",
				apply_buff_func = "apply_movement_buff",
				path_to_movement_setting_to_modify = {
					"dodging",
					"speed_modifier"
				}
			}
		}
	},
	kerillian_maidenguard_passive_noclip_dodge_start = {
		buffs = {
			{
				event = "on_dodge",
				status_identifier = "kerillian_maidenguard_passive_noclip_dodge",
				set_status = true,
				buff_func = "set_noclip"
			}
		}
	},
	kerillian_maidenguard_passive_noclip_dodge_end = {
		buffs = {
			{
				event = "on_dodge_finished",
				status_identifier = "kerillian_maidenguard_passive_noclip_dodge",
				set_status = false,
				buff_func = "set_noclip"
			}
		}
	},
	kerillian_maidenguard_max_ammo = {
		buffs = {
			{
				stat_buff = "total_ammo"
			}
		}
	},
	kerillian_maidenguard_max_health = {
		buffs = {
			{
				stat_buff = "max_health_alive"
			}
		}
	},
	kerillian_maidenguard_block_cost = {
		buffs = {
			{
				stat_buff = "block_cost"
			}
		}
	},
	kerillian_maidenguard_activated_ability_buff_on_enemy_hit = {
		buffs = {
			{
				event = "on_charge_ability_hit",
				buff_to_add = "kerillian_maidenguard_activated_ability_crit_buff",
				buff_func = "add_buff"
			}
		}
	},
	kerillian_maidenguard_activated_ability_crit_buff = {
		buffs = {
			{
				icon = "kerillian_maidenguard_activated_ability_buff_on_enemy_hit",
				refresh_durations = true,
				stat_buff = "critical_strike_chance"
			}
		}
	},
	kerillian_maidenguard_insta_ress = {
		buffs = {
			{
				stat_buff = "faster_revive",
				buff_func = "buff_defence_on_revived_target",
				event = "on_revived_ally",
				refresh_durations = true,
				buff_to_add = {
					"kerillian_maidenguard_insta_ress_buff"
				}
			}
		}
	},
	kerillian_maidenguard_insta_ress_buff = {
		buffs = {
			{
				heal_amount = 20,
				remove_buff_func = "add_health_on_application"
			}
		}
	},
	kerillian_maidenguard_ress_buff = {
		buffs = {
			{
				stat_buff = "critical_strike_chance",
				icon = "kerillian_maidenguard_crit_chance"
			}
		}
	},
	kerillian_waywatcher_ability_cooldown_on_hit = {
		buffs = {
			{
				event = "on_hit",
				buff_func = "reduce_activated_ability_cooldown"
			}
		}
	},
	kerillian_waywatcher_ability_cooldown_on_damage_taken = {
		buffs = {
			{
				event = "on_damage_taken",
				buff_func = "reduce_activated_ability_cooldown_on_damage_taken"
			}
		}
	},
	kerillian_waywatcher_passive_increased_ammunition = {
		buffs = {
			{
				stat_buff = "total_ammo"
			}
		}
	},
	kerillian_waywatcher_passive = {
		buffs = {
			{
				max_stacks = 1,
				icon = "kerillian_waywatcher_passive",
				update_func = "update_kerillian_waywatcher_regen"
			}
		}
	},
	kerillian_waywatcher_passive_increased_zoom = {
		buffs = {
			{
				perks = {
					buff_perks.increased_zoom
				}
			}
		}
	},
	kerillian_waywatcher_passive_no_damage_dropoff = {
		buffs = {
			{
				perks = {
					buff_perks.no_damage_dropoff
				}
			}
		}
	},
	kerillian_waywatcher_regrowth = {
		buffs = {
			{
				name = "regrowth",
				buff_func = "heal_finesse_damage_on_melee",
				event = "on_hit",
				bonus = 2,
				perks = {
					buff_perks.ninja_healing
				}
			}
		}
	},
	kerillian_waywatcher_reaper = {
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
	kerillian_waywatcher_conqueror = {
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
	kerillian_waywatcher_extra_arrow_melee_kill = {
		buffs = {
			{
				event = "on_kill",
				buff_to_add = "kerillian_waywatcher_extra_arrow_melee_kill_buff",
				buff_func = "kerillian_waywatcher_add_extra_shot_buff_on_melee_kill"
			}
		}
	},
	kerillian_waywatcher_extra_arrow_melee_kill_buff = {
		buffs = {
			{
				remove_on_proc = true,
				refresh_durations = true,
				stat_buff = "extra_shot",
				buff_func = "kerillian_waywatcher_consume_extra_shot_buff",
				event = "on_ranged_hit",
				icon = "kerillian_waywatcher_extra_arrow_melee_kill",
				max_stacks = 1
			}
		}
	},
	kerillian_waywatcher_critical_bleed = {
		buffs = {
			{
				perks = {
					buff_perks.kerillian_critical_bleed_dot
				}
			}
		}
	},
	kerillian_waywatcher_attack_speed_on_ranged_headshot = {
		buffs = {
			{
				event = "on_hit",
				buff_to_add = "kerillian_waywatcher_attack_speed_on_ranged_headshot_buff",
				buff_on_stacks = 5,
				buff_func = "add_buff_on_ranged_headshot"
			}
		}
	},
	kerillian_waywatcher_attack_speed_on_ranged_headshot_buff = {
		buffs = {
			{
				max_stacks = 1,
				icon = "kerillian_waywatcher_attack_speed_on_ranged_headshot",
				stat_buff = "attack_speed",
				refresh_durations = true
			}
		}
	},
	kerillian_waywatcher_movement_speed_on_special_kill = {
		buffs = {
			{
				event = "on_kill_elite_special",
				buff_to_add = "kerillian_waywatcher_movement_speed_on_special_kill_buff",
				buff_func = "add_buff"
			}
		}
	},
	kerillian_waywatcher_movement_speed_on_special_kill_buff = {
		buffs = {
			{
				remove_buff_func = "remove_movement_buff",
				refresh_durations = true,
				max_stacks = 1,
				icon = "kerillian_waywatcher_movement_speed_on_special_kill",
				apply_buff_func = "apply_movement_buff",
				path_to_movement_setting_to_modify = {
					"move_speed"
				}
			}
		}
	},
	kerillian_waywatcher_activated_ability_cooldown = {
		buffs = {
			{
				stat_buff = "activated_cooldown"
			}
		}
	},
	kerillian_waywatcher_projectile_ricochet = {
		buffs = {
			{
				max_stacks = 1,
				stat_buff = "projectile_bounces",
				perks = {
					buff_perks.add_projectile_bounces
				}
			}
		}
	},
	kerillian_waywatcher_activated_ability_restore_ammo_on_career_skill_special_kill = {
		buffs = {
			{
				event = "on_kill_elite_special",
				buff_func = "kerillian_waywatcher_restore_ammo_on_career_skill_special_kill"
			}
		}
	},
	kerillian_waywatcher_activated_ability_piercing_shot = {
		buffs = {
			{
				event = "on_hit",
				buff_func = "kerillian_waywatcher_reduce_activated_ability_cooldown"
			}
		}
	}
}
TalentTrees = TalentTrees or {}
TalentTrees.wood_elf = {
	{
		{
			"kerillian_shade_thp_ninjafencer",
			"kerillian_shade_thp_smiter",
			"kerillian_shade_thp_linesman"
		},
		{
			"kerillian_shade_increased_critical_strike_damage",
			"kerillian_shade_increased_damage_on_poisoned_or_bleeding_enemy",
			"kerillian_shade_stacking_headshot_damage_on_headshot"
		},
		{
			"kerillian_shade_smiter_unbalance",
			"kerillian_shade_finesse_unbalance",
			"kerillian_shade_power_level_unbalance"
		},
		{
			"kerillian_shade_charged_backstabs",
			"kerillian_shade_backstabs_cooldown_regeneration",
			"kerillian_shade_backstabs_replenishes_ammunition"
		},
		{
			"kerillian_shade_damage_reduction_on_critical_hit",
			"kerillian_shade_movement_speed_on_critical_hit",
			"kerillian_shade_movement_speed"
		},
		{
			"kerillian_shade_activated_stealth_combo",
			"kerillian_shade_activated_ability_phasing",
			"kerillian_shade_activated_ability_restealth"
		}
	},
	{
		{
			"kerillian_maidenguard_thp_linesman",
			"kerillian_maidenguard_thp_smiter",
			"kerillian_maidenguard_thp_tank"
		},
		{
			"kerillian_maidenguard_power_level_on_unharmed",
			"kerillian_maidenguard_crit_chance",
			"kerillian_maidenguard_speed_on_block"
		},
		{
			"kerillian_maidenguard_smiter_unbalance",
			"kerillian_maidenguard_linesman_unbalance",
			"kerillian_maidenguard_power_level_unbalance"
		},
		{
			"kerillian_maidenguard_passive_attack_speed_on_dodge",
			"kerillian_maidenguard_versatile_dodge",
			"kerillian_maidenguard_passive_noclip_dodge"
		},
		{
			"kerillian_maidenguard_max_health",
			"kerillian_maidenguard_block_cost",
			"kerillian_maidenguard_max_ammo"
		},
		{
			"kerillian_maidenguard_activated_ability_invis_duration",
			"kerillian_maidenguard_activated_ability_damage",
			"kerillian_maidenguard_activated_ability_buff_on_enemy_hit"
		}
	},
	{
		{
			"kerillian_waywatcher_thp_ninjafencer",
			"kerillian_waywatcher_thp_linesman",
			"kerillian_waywatcher_thp_smiter"
		},
		{
			"kerillian_waywatcher_extra_arrow_melee_kill",
			"kerillian_waywatcher_critical_bleed",
			"kerillian_waywatcher_attack_speed_on_ranged_headshot"
		},
		{
			"kerillian_waystalker_linesman_unbalance",
			"kerillian_waystalker_finesse_unbalance",
			"kerillian_waystalker_power_level_unbalance"
		},
		{
			"kerillian_waywatcher_improved_regen",
			"kerillian_waywatcher_passive_cooldown_restore",
			"kerillian_waywatcher_group_regen"
		},
		{
			"kerillian_waywatcher_movement_speed_on_special_kill",
			"kerillian_waywatcher_projectile_ricochet",
			"kerillian_waywatcher_activated_ability_cooldown"
		},
		{
			"kerillian_waywatcher_activated_ability_piercing_shot",
			"kerillian_waywatcher_activated_ability_additional_projectile",
			"kerillian_waywatcher_activated_ability_restore_ammo_on_career_skill_special_kill"
		}
	}
}
Talents.wood_elf = {
	{
		description = "regrowth_desc_4",
		name = "kerillian_shade_regrowth_2",
		buffer = "both",
		num_ranks = 1,
		icon = "kerillian_shade_regrowth",
		description_values = {
			{
				value = tostring(BuffUtils.get_buff_template("regrowth", "adventure").buffs[1].bonus / 4)
			},
			{
				value = tostring(BuffUtils.get_buff_template("regrowth", "adventure").buffs[1].bonus)
			},
			{
				value = tostring(BuffUtils.get_buff_template("regrowth", "adventure").buffs[1].bonus * 2)
			}
		},
		buffs = {
			"kerillian_shade_regrowth"
		}
	},
	{
		description = "bloodlust_desc_3",
		name = "kerillian_shade_bloodlust",
		buffer = "server",
		num_ranks = 1,
		icon = "kerillian_shade_bloodlust",
		description_values = {
			{
				value_type = "percent",
				value = BuffUtils.get_buff_template("bloodlust", "adventure").buffs[1].multiplier
			}
		},
		buffs = {
			"kerillian_shade_bloodlust"
		}
	},
	{
		description = "conqueror_desc_3",
		name = "kerillian_shade_heal_share",
		buffer = "server",
		num_ranks = 1,
		icon = "kerillian_shade_conqueror",
		description_values = {
			{
				value_type = "percent",
				value = BuffUtils.get_buff_template("conqueror", "adventure").buffs[1].multiplier
			}
		},
		buffs = {
			"kerillian_shade_conqueror"
		}
	},
	{
		name = "kerillian_shade_thp_ninjafencer",
		buffer = "server",
		num_ranks = 1,
		icon = "kerillian_shade_regrowth",
		display_name = BuffUtils.get_buff_template("thp_ninjafencer", "adventure").buffs[1].display_name,
		description = BuffUtils.get_buff_template("thp_ninjafencer", "adventure").buffs[1].description,
		description_values = BuffUtils.get_buff_template("thp_ninjafencer", "adventure").buffs[1].description_values,
		buffs = {
			"thp_ninjafencer"
		}
	},
	{
		name = "kerillian_shade_thp_smiter",
		buffer = "server",
		num_ranks = 1,
		icon = "kerillian_shade_bloodlust",
		display_name = BuffUtils.get_buff_template("thp_smiter", "adventure").buffs[1].display_name,
		description = BuffUtils.get_buff_template("thp_smiter", "adventure").buffs[1].description,
		description_values = BuffUtils.get_buff_template("thp_smiter", "adventure").buffs[1].description_values,
		buffs = {
			"thp_smiter"
		}
	},
	{
		name = "kerillian_shade_thp_linesman",
		buffer = "server",
		num_ranks = 1,
		icon = "kerillian_shade_conqueror",
		display_name = BuffUtils.get_buff_template("thp_linesman", "adventure").buffs[1].display_name,
		description = BuffUtils.get_buff_template("thp_linesman", "adventure").buffs[1].description,
		description_values = BuffUtils.get_buff_template("thp_linesman", "adventure").buffs[1].description_values,
		buffs = {
			"thp_linesman"
		}
	},
	{
		description = "kerillian_shade_increased_damage_on_poisoned_or_bleeding_enemy_desc",
		name = "kerillian_shade_increased_damage_on_poisoned_or_bleeding_enemy",
		buffer = "server",
		num_ranks = 1,
		icon = "kerillian_shade_increased_damage_on_poisoned_or_bleeding_enemy",
		description_values = {
			{
				value_type = "percent",
				value = buff_tweak_data.kerillian_shade_increased_damage_on_poisoned_or_bleeding_enemy.multiplier
			}
		},
		buffs = {
			"kerillian_shade_increased_damage_on_poisoned_or_bleeding_enemy"
		}
	},
	{
		description = "kerillian_shade_increased_critical_strike_damage_desc",
		name = "kerillian_shade_increased_critical_strike_damage",
		buffer = "server",
		num_ranks = 1,
		icon = "kerillian_shade_increased_critical_strike_damage",
		description_values = {
			{
				value_type = "percent",
				value = buff_tweak_data.kerillian_shade_increased_critical_strike_damage.multiplier
			}
		},
		buffs = {
			"kerillian_shade_increased_critical_strike_damage"
		}
	},
	{
		description = "kerillian_shade_stacking_headshot_damage_on_headshot_desc",
		name = "kerillian_shade_stacking_headshot_damage_on_headshot",
		buffer = "server",
		num_ranks = 1,
		icon = "kerillian_shade_stacking_headshot_damage_on_headshot",
		description_values = {
			{
				value_type = "percent",
				value = buff_tweak_data.kerillian_shade_stacking_headshot_damage_on_headshot_buff.multiplier
			},
			{
				value = buff_tweak_data.kerillian_shade_stacking_headshot_damage_on_headshot_buff.duration
			},
			{
				value = buff_tweak_data.kerillian_shade_stacking_headshot_damage_on_headshot_buff.max_stacks
			}
		},
		buffs = {
			"kerillian_shade_stacking_headshot_damage_on_headshot"
		}
	},
	{
		description = "kerillian_shade_charged_backstabs_desc",
		name = "kerillian_shade_charged_backstabs",
		buffer = "both",
		num_ranks = 1,
		icon = "kerillian_shade_passive_improved",
		description_values = {
			{
				value_type = "percent",
				value = buff_tweak_data.kerillian_shade_charged_backstabs_buff.bonus
			},
			{
				value = buff_tweak_data.kerillian_shade_charged_backstabs_buff.duration
			},
			{
				value = buff_tweak_data.kerillian_shade_charged_backstabs_buff.max_stacks
			}
		},
		buffs = {
			"kerillian_shade_charged_backstabs"
		}
	},
	{
		description = "kerillian_shade_backstabs_cooldown_regeneration_desc",
		name = "kerillian_shade_backstabs_cooldown_regeneration",
		num_ranks = 1,
		icon = "kerillian_shade_passive_stealth_on_backstab_kill",
		description_values = {
			{
				value = buff_tweak_data.kerillian_shade_backstabs_cooldown_regeneration_buff.duration
			}
		},
		buffs = {
			"kerillian_shade_backstabs_cooldown_regeneration"
		}
	},
	{
		description = "kerillian_shade_backstabs_replenishes_ammunition_desc_2",
		name = "kerillian_shade_backstabs_replenishes_ammunition",
		num_ranks = 1,
		icon = "kerillian_shade_backstabs_replenishes_ammunition",
		description_values = {
			{
				value = buff_tweak_data.kerillian_shade_backstabs_replenishes_ammunition.bonus
			},
			{
				value = buff_tweak_data.kerillian_shade_backstabs_replenishes_ammunition_cooldown.duration
			}
		},
		buffs = {
			"kerillian_shade_backstabs_replenishes_ammunition"
		}
	},
	{
		description = "kerillian_shade_movement_speed_desc",
		name = "kerillian_shade_movement_speed",
		num_ranks = 1,
		icon = "kerillian_shade_movement_speed",
		description_values = {
			{
				value_type = "baked_percent",
				value = buff_tweak_data.kerillian_shade_movement_speed.multiplier
			}
		},
		buffs = {
			"kerillian_shade_movement_speed"
		}
	},
	{
		description = "kerillian_shade_movement_speed_on_critical_hit_desc",
		name = "kerillian_shade_movement_speed_on_critical_hit",
		num_ranks = 1,
		icon = "kerillian_shade_movement_speed_on_critical_hit",
		description_values = {
			{
				value_type = "baked_percent",
				value = buff_tweak_data.kerillian_shade_movement_speed_on_critical_hit_buff.multiplier
			},
			{
				value = buff_tweak_data.kerillian_shade_movement_speed_on_critical_hit_buff.duration
			}
		},
		buffs = {
			"kerillian_shade_movement_speed_on_critical_hit"
		}
	},
	{
		description = "kerillian_shade_damage_reduction_on_critical_hit_desc",
		name = "kerillian_shade_damage_reduction_on_critical_hit",
		buffer = "server",
		num_ranks = 1,
		icon = "kerillian_shade_damage_reduction_on_critical_hit",
		description_values = {
			{
				value_type = "percent",
				value = buff_tweak_data.kerillian_shade_damage_reduction_on_critical_hit_buff.multiplier
			},
			{
				value = buff_tweak_data.kerillian_shade_damage_reduction_on_critical_hit_buff.duration
			}
		},
		buffs = {
			"kerillian_shade_damage_reduction_on_critical_hit"
		}
	},
	{
		description = "kerillian_shade_activated_stealth_combo_desc",
		name = "kerillian_shade_activated_stealth_combo",
		buffer = "both",
		num_ranks = 1,
		icon = "kerillian_shade_activated_ability_quick_cooldown",
		description_values = {
			{
				value = buff_tweak_data.kerillian_shade_ult_invis.duration
			},
			{
				value = buff_tweak_data.kerillian_shade_ult_invis_combo_window.extend_time
			}
		},
		buffs = {}
	},
	{
		description = "kerillian_shade_activated_ability_phasing_desc",
		name = "kerillian_shade_activated_ability_phasing",
		num_ranks = 1,
		icon = "kerillian_shade_activated_ability_dash",
		description_values = {
			{
				value_type = "baked_percent",
				value = buff_tweak_data.kerillian_shade_movespeed_buff.multiplier
			},
			{
				value_type = "percent",
				value = buff_tweak_data.kerillian_shade_power_buff.multiplier
			},
			{
				value = buff_tweak_data.kerillian_shade_phasing_buff.duration
			}
		},
		buffs = {}
	},
	{
		description = "kerillian_shade_activated_ability_restealth_desc_3",
		name = "kerillian_shade_activated_ability_restealth",
		num_ranks = 1,
		icon = "kerillian_shade_activated_ability_restealth",
		description_values = {},
		buffs = {}
	},
	{
		description = "smiter_unbalance_desc",
		name = "kerillian_shade_smiter_unbalance",
		buffer = "server",
		num_ranks = 1,
		icon = "kerillian_shade_smiter_unbalance",
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
		description = "finesse_unbalance_desc",
		name = "kerillian_shade_finesse_unbalance",
		buffer = "server",
		num_ranks = 1,
		icon = "kerillian_shade_ninja_unbalance",
		description_values = {
			{
				value_type = "percent",
				value = BuffUtils.get_buff_template("finesse_unbalance", "adventure").buffs[1].display_multiplier
			},
			{
				value_type = "percent",
				value = BuffUtils.get_buff_template("finesse_unbalance", "adventure").buffs[1].max_display_multiplier
			}
		},
		buffs = {
			"finesse_unbalance"
		}
	},
	{
		description = "power_level_unbalance_desc",
		name = "kerillian_shade_power_level_unbalance",
		buffer = "server",
		num_ranks = 1,
		icon = "kerillian_shade_power_level_unbalance",
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
		description = "reaper_desc",
		name = "kerillian_maidenguard_reaper",
		buffer = "server",
		num_ranks = 1,
		icon = "kerillian_maidenguard_regrowth",
		description_values = {
			{
				value = BuffUtils.get_buff_template("reaper", "adventure").buffs[1].max_targets
			}
		},
		buffs = {
			"kerillian_maidenguard_reaper"
		}
	},
	{
		description = "bloodlust_desc_3",
		name = "kerillian_maidenguard_bloodlust_2",
		buffer = "server",
		num_ranks = 1,
		icon = "kerillian_maidenguard_bloodlust",
		description_values = {
			{
				value_type = "percent",
				value = BuffUtils.get_buff_template("bloodlust", "adventure").buffs[1].multiplier
			}
		},
		buffs = {
			"kerillian_maidenguard_bloodlust"
		}
	},
	{
		description = "conqueror_desc_3",
		name = "kerillian_maidenguard_heal_share",
		buffer = "server",
		num_ranks = 1,
		icon = "kerillian_maidenguard_conqueror",
		description_values = {
			{
				value_type = "percent",
				value = BuffUtils.get_buff_template("conqueror", "adventure").buffs[1].multiplier
			}
		},
		buffs = {
			"kerillian_maidenguard_conqueror"
		}
	},
	{
		name = "kerillian_maidenguard_thp_linesman",
		buffer = "server",
		num_ranks = 1,
		icon = "kerillian_maidenguard_regrowth",
		display_name = BuffUtils.get_buff_template("thp_linesman", "adventure").buffs[1].display_name,
		description = BuffUtils.get_buff_template("thp_linesman", "adventure").buffs[1].description,
		description_values = BuffUtils.get_buff_template("thp_linesman", "adventure").buffs[1].description_values,
		buffs = {
			"thp_linesman"
		}
	},
	{
		name = "kerillian_maidenguard_thp_smiter",
		buffer = "server",
		num_ranks = 1,
		icon = "kerillian_maidenguard_bloodlust",
		display_name = BuffUtils.get_buff_template("thp_smiter", "adventure").buffs[1].display_name,
		description = BuffUtils.get_buff_template("thp_smiter", "adventure").buffs[1].description,
		description_values = BuffUtils.get_buff_template("thp_smiter", "adventure").buffs[1].description_values,
		buffs = {
			"thp_smiter"
		}
	},
	{
		name = "kerillian_maidenguard_thp_tank",
		buffer = "server",
		num_ranks = 1,
		icon = "kerillian_maidenguard_conqueror",
		display_name = BuffUtils.get_buff_template("thp_tank", "adventure").buffs[1].display_name,
		description = BuffUtils.get_buff_template("thp_tank", "adventure").buffs[1].description,
		description_values = BuffUtils.get_buff_template("thp_tank", "adventure").buffs[1].description_values,
		buffs = {
			"thp_tank"
		}
	},
	{
		description = "kerillian_maidenguard_power_level_on_unharmed_desc",
		name = "kerillian_maidenguard_power_level_on_unharmed",
		buffer = "both",
		num_ranks = 1,
		icon = "kerillian_maidenguard_power_level_on_unharmed",
		description_values = {
			{
				value = buff_tweak_data.kerillian_maidenguard_power_level_on_unharmed_cooldown.duration
			},
			{
				value_type = "percent",
				value = buff_tweak_data.kerillian_maidenguard_power_level_on_unharmed.multiplier
			}
		},
		buffs = {
			"kerillian_maidenguard_power_level_on_unharmed"
		}
	},
	{
		description = "kerillian_maidenguard_crit_chance_desc",
		name = "kerillian_maidenguard_crit_chance",
		buffer = "client",
		num_ranks = 1,
		icon = "kerillian_maidenguard_damage_reduction_on_last_standing",
		description_values = {
			{
				value_type = "percent",
				value = buff_tweak_data.kerillian_maidenguard_crit_chance.bonus
			}
		},
		buffs = {
			"kerillian_maidenguard_crit_chance"
		}
	},
	{
		description = "kerillian_maidenguard_versatile_dodge_desc",
		name = "kerillian_maidenguard_versatile_dodge",
		buffer = "both",
		num_ranks = 1,
		icon = "kerillian_maidenguard_cooldown_on_nearby_allies",
		description_values = {
			{
				value_type = "baked_percent",
				value = buff_tweak_data.kerillian_maidenguard_improved_dodge.multiplier
			},
			{
				value_type = "percent",
				value = buff_tweak_data.kerillian_maidenguard_power_on_dodge.multiplier
			}
		},
		buffs = {
			"kerillian_maidenguard_versatile_dodge"
		}
	},
	{
		description = "kerillian_maidenguard_passive_attack_speed_on_dodge_desc",
		name = "kerillian_maidenguard_passive_attack_speed_on_dodge",
		num_ranks = 1,
		icon = "kerillian_maidenguard_passive_attack_speed_on_dodge",
		description_values = {
			{
				value_type = "percent",
				value = buff_tweak_data.kerillian_maidenguard_passive_attack_speed_on_dodge_buff.multiplier
			},
			{
				value = buff_tweak_data.kerillian_maidenguard_passive_attack_speed_on_dodge_buff.duration
			},
			{
				value = buff_tweak_data.kerillian_maidenguard_passive_attack_speed_on_dodge_buff.max_stacks
			}
		},
		buffs = {
			"kerillian_maidenguard_passive_attack_speed_on_dodge"
		}
	},
	{
		description = "kerillian_maidenguard_speed_on_block_desc",
		name = "kerillian_maidenguard_speed_on_block",
		buffer = "both",
		num_ranks = 1,
		icon = "kerillian_maidenguard_improved_dodge",
		description_values = {
			{
				value_type = "percent",
				value = buff_tweak_data.kerillian_maidenguard_speed_on_block_buff.multiplier
			},
			{
				value_type = "percent",
				value = buff_tweak_data.kerillian_maidenguard_power_on_block_buff.multiplier
			}
		},
		buffs = {
			"kerillian_maidenguard_speed_on_block",
			"kerillian_maidenguard_speed_on_push",
			"kerillian_maidenguard_power_on_blocked_attacks_remove_damage"
		}
	},
	{
		description = "kerillian_maidenguard_passive_noclip_dodge_desc",
		name = "kerillian_maidenguard_passive_noclip_dodge",
		num_ranks = 1,
		icon = "kerillian_maidenguard_passive_noclip_dodge",
		description_values = {},
		buffs = {
			"kerillian_maidenguard_passive_noclip_dodge_start",
			"kerillian_maidenguard_passive_noclip_dodge_end"
		}
	},
	{
		description = "kerillian_maidenguard_max_ammo_desc",
		name = "kerillian_maidenguard_max_ammo",
		num_ranks = 1,
		icon = "kerillian_maidenguard_max_ammo",
		description_values = {
			{
				value_type = "percent",
				value = buff_tweak_data.kerillian_maidenguard_max_ammo.multiplier
			}
		},
		buffs = {
			"kerillian_maidenguard_max_ammo"
		}
	},
	{
		description = "kerillian_maidenguard_max_health_desc",
		name = "kerillian_maidenguard_max_health",
		buffer = "server",
		num_ranks = 1,
		icon = "kerillian_maidenguard_max_stamina",
		description_values = {
			{
				value_type = "percent",
				value = buff_tweak_data.kerillian_maidenguard_max_health.multiplier
			}
		},
		buffs = {
			"kerillian_maidenguard_max_health"
		}
	},
	{
		description = "kerillian_maidenguard_block_cost_desc",
		name = "kerillian_maidenguard_block_cost",
		num_ranks = 1,
		icon = "kerillian_maidenguard_block_cost",
		description_values = {
			{
				value_type = "percent",
				value = buff_tweak_data.kerillian_maidenguard_block_cost.multiplier
			}
		},
		buffs = {
			"kerillian_maidenguard_block_cost"
		}
	},
	{
		description = "kerillian_maidenguard_activated_ability_invis_duration_desc",
		name = "kerillian_maidenguard_activated_ability_invis_duration",
		num_ranks = 1,
		icon = "kerillian_maidenguard_activated_ability_invis_duration",
		description_values = {
			{
				value = buff_tweak_data.kerillian_maidenguard_activated_ability_invis_duration.duration
			}
		},
		buffs = {}
	},
	{
		description = "kerillian_maidenguard_activated_ability_damage_desc_2",
		name = "kerillian_maidenguard_activated_ability_damage",
		buffer = "both",
		num_ranks = 1,
		icon = "kerillian_maidenguard_activated_ability_damage",
		description_values = {},
		buffs = {}
	},
	{
		description = "kerillian_maidenguard_activated_ability_buff_on_enemy_hit_desc",
		name = "kerillian_maidenguard_activated_ability_buff_on_enemy_hit",
		buffer = "both",
		num_ranks = 1,
		icon = "kerillian_maidenguard_activated_ability_buff_on_enemy_hit",
		description_values = {
			{
				value_type = "percent",
				value = buff_tweak_data.kerillian_maidenguard_activated_ability_crit_buff.bonus
			},
			{
				value = buff_tweak_data.kerillian_maidenguard_activated_ability_crit_buff.duration
			},
			{
				value = buff_tweak_data.kerillian_maidenguard_activated_ability_crit_buff.max_stacks
			}
		},
		buffs = {
			"kerillian_maidenguard_activated_ability_buff_on_enemy_hit"
		}
	},
	{
		description = "smiter_unbalance_desc",
		name = "kerillian_maidenguard_smiter_unbalance",
		buffer = "server",
		num_ranks = 1,
		icon = "kerillian_maidenguard_smiter_unbalance",
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
		name = "kerillian_maidenguard_linesman_unbalance",
		buffer = "server",
		num_ranks = 1,
		icon = "kerillian_maidenguard_linesman_unbalance",
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
		name = "kerillian_maidenguard_power_level_unbalance",
		buffer = "server",
		num_ranks = 1,
		icon = "kerillian_maidenguard_power_level_unbalance",
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
		description = "regrowth_desc_4",
		name = "kerillian_waywatcher_regrowth_2",
		buffer = "both",
		num_ranks = 1,
		icon = "kerillian_waywatcher_regrowth",
		description_values = {
			{
				value = tostring(BuffUtils.get_buff_template("regrowth", "adventure").buffs[1].bonus / 4)
			},
			{
				value = tostring(BuffUtils.get_buff_template("regrowth", "adventure").buffs[1].bonus)
			},
			{
				value = tostring(BuffUtils.get_buff_template("regrowth", "adventure").buffs[1].bonus * 2)
			}
		},
		buffs = {
			"kerillian_waywatcher_regrowth"
		}
	},
	{
		description = "reaper_desc",
		name = "kerillian_waywatcher_reaper",
		buffer = "server",
		num_ranks = 1,
		icon = "kerillian_waywatcher_bloodlust",
		description_values = {
			{
				value = BuffUtils.get_buff_template("reaper", "adventure").buffs[1].max_targets
			}
		},
		buffs = {
			"kerillian_waywatcher_reaper"
		}
	},
	{
		description = "conqueror_desc_3",
		name = "kerillian_waywatcher_heal_share",
		buffer = "server",
		num_ranks = 1,
		icon = "kerillian_waywatcher_conqueror",
		description_values = {
			{
				value_type = "percent",
				value = BuffUtils.get_buff_template("conqueror", "adventure").buffs[1].multiplier
			}
		},
		buffs = {
			"kerillian_waywatcher_conqueror"
		}
	},
	{
		name = "kerillian_waywatcher_thp_ninjafencer",
		buffer = "server",
		num_ranks = 1,
		icon = "kerillian_waywatcher_regrowth",
		display_name = BuffUtils.get_buff_template("thp_ninjafencer", "adventure").buffs[1].display_name,
		description = BuffUtils.get_buff_template("thp_ninjafencer", "adventure").buffs[1].description,
		description_values = BuffUtils.get_buff_template("thp_ninjafencer", "adventure").buffs[1].description_values,
		buffs = {
			"thp_ninjafencer"
		}
	},
	{
		name = "kerillian_waywatcher_thp_linesman",
		buffer = "server",
		num_ranks = 1,
		icon = "kerillian_waywatcher_bloodlust",
		display_name = BuffUtils.get_buff_template("thp_linesman", "adventure").buffs[1].display_name,
		description = BuffUtils.get_buff_template("thp_linesman", "adventure").buffs[1].description,
		description_values = BuffUtils.get_buff_template("thp_linesman", "adventure").buffs[1].description_values,
		buffs = {
			"thp_linesman"
		}
	},
	{
		name = "kerillian_waywatcher_thp_smiter",
		buffer = "server",
		num_ranks = 1,
		icon = "kerillian_waywatcher_conqueror",
		display_name = BuffUtils.get_buff_template("thp_smiter", "adventure").buffs[1].display_name,
		description = BuffUtils.get_buff_template("thp_smiter", "adventure").buffs[1].description,
		description_values = BuffUtils.get_buff_template("thp_smiter", "adventure").buffs[1].description_values,
		buffs = {
			"thp_smiter"
		}
	},
	{
		description = "kerillian_waywatcher_extra_arrow_melee_kill_desc",
		name = "kerillian_waywatcher_extra_arrow_melee_kill",
		num_ranks = 1,
		icon = "kerillian_waywatcher_extra_arrow_melee_kill",
		description_values = {
			{
				value = buff_tweak_data.kerillian_waywatcher_extra_arrow_melee_kill_buff.duration
			}
		},
		buffs = {
			"kerillian_waywatcher_extra_arrow_melee_kill"
		}
	},
	{
		description = "kerillian_waywatcher_critical_bleed_desc",
		name = "kerillian_waywatcher_critical_bleed",
		buffer = "server",
		num_ranks = 1,
		icon = "kerillian_waywatcher_critical_bleed",
		description_values = {},
		buffs = {
			"kerillian_waywatcher_critical_bleed"
		}
	},
	{
		description = "kerillian_waywatcher_attack_speed_on_ranged_headshot_desc",
		name = "kerillian_waywatcher_attack_speed_on_ranged_headshot",
		num_ranks = 1,
		icon = "kerillian_waywatcher_attack_speed_on_ranged_headshot",
		description_values = {
			{
				value_type = "percent",
				value = buff_tweak_data.kerillian_waywatcher_attack_speed_on_ranged_headshot_buff.multiplier
			},
			{
				value = buff_tweak_data.kerillian_waywatcher_attack_speed_on_ranged_headshot_buff.duration
			}
		},
		buffs = {
			"kerillian_waywatcher_attack_speed_on_ranged_headshot"
		}
	},
	{
		description = "kerillian_waywatcher_improved_regen_desc_2",
		name = "kerillian_waywatcher_improved_regen",
		num_ranks = 1,
		icon = "kerillian_waywatcher_improved_regen",
		description_values = {
			{
				value_type = "percent",
				value = buff_tweak_data.kerillian_waywatcher_improved_regen.display_multiplier
			}
		},
		buffs = {}
	},
	{
		description = "kerillian_waywatcher_group_regen_desc_2",
		name = "kerillian_waywatcher_group_regen",
		num_ranks = 1,
		icon = "kerillian_waywatcher_group_regen",
		buffs = {}
	},
	{
		description = "kerillian_waywatcher_passive_cooldown_restore_desc",
		name = "kerillian_waywatcher_passive_cooldown_restore",
		num_ranks = 1,
		icon = "kerillian_waywatcher_passive_cooldown_restore",
		description_values = {
			{
				value_type = "percent",
				value = buff_tweak_data.kerillian_waywatcher_passive_cooldown_restore.display_multiplier
			}
		},
		buffs = {}
	},
	{
		description = "kerillian_waywatcher_movement_speed_on_special_kill_desc",
		name = "kerillian_waywatcher_movement_speed_on_special_kill",
		num_ranks = 1,
		icon = "kerillian_waywatcher_movement_speed_on_special_kill",
		description_values = {
			{
				value_type = "baked_percent",
				value = buff_tweak_data.kerillian_waywatcher_movement_speed_on_special_kill_buff.multiplier
			},
			{
				value = buff_tweak_data.kerillian_waywatcher_movement_speed_on_special_kill_buff.duration
			}
		},
		buffs = {
			"kerillian_waywatcher_movement_speed_on_special_kill"
		}
	},
	{
		description = "kerillian_waywatcher_activated_ability_cooldown_desc",
		name = "kerillian_waywatcher_activated_ability_cooldown",
		num_ranks = 1,
		icon = "kerillian_waywatcher_activated_ability_cooldown",
		description_values = {
			{
				value_type = "percent",
				value = buff_tweak_data.kerillian_waywatcher_activated_ability_cooldown.multiplier
			}
		},
		buffs = {
			"kerillian_waywatcher_activated_ability_cooldown"
		}
	},
	{
		description = "kerillian_waywatcher_projectile_ricochet_desc",
		name = "kerillian_waywatcher_projectile_ricochet",
		buffer = "all",
		num_ranks = 1,
		icon = "kerillian_waywatcher_projectile_ricochet",
		description_values = {
			{
				value = buff_tweak_data.kerillian_waywatcher_projectile_ricochet.bonus
			}
		},
		buffs = {
			"kerillian_waywatcher_projectile_ricochet"
		}
	},
	{
		description = "kerillian_waywatcher_activated_ability_restore_ammo_on_career_skill_special_kill_desc",
		name = "kerillian_waywatcher_activated_ability_restore_ammo_on_career_skill_special_kill",
		num_ranks = 1,
		icon = "kerillian_waywatcher_activated_ability_restore_ammo_on_career_skill_special_kill",
		description_values = {
			{
				value_type = "percent",
				value = buff_tweak_data.kerillian_waywatcher_activated_ability_restore_ammo_on_career_skill_special_kill.ammo_bonus_fraction
			}
		},
		buffs = {
			"kerillian_waywatcher_activated_ability_restore_ammo_on_career_skill_special_kill"
		}
	},
	{
		description = "kerillian_waywatcher_activated_ability_additional_projectile_desc",
		name = "kerillian_waywatcher_activated_ability_additional_projectile",
		num_ranks = 1,
		icon = "kerillian_waywatcher_activated_ability_additional_projectile",
		description_values = {},
		buffs = {}
	},
	{
		description = "kerillian_waywatcher_activated_ability_piercing_shot_desc",
		name = "kerillian_waywatcher_activated_ability_piercing_shot",
		num_ranks = 1,
		icon = "kerillian_waywatcher_activated_ability_piercing_shot",
		talent_career_skill_index = 2,
		description_values = {
			{
				value_type = "percent",
				value = buff_tweak_data.kerillian_waywatcher_activated_ability_piercing_shot.multiplier
			}
		},
		buffs = {
			"kerillian_waywatcher_activated_ability_piercing_shot"
		}
	},
	{
		description = "linesman_unbalance_desc",
		name = "kerillian_waystalker_linesman_unbalance",
		buffer = "server",
		num_ranks = 1,
		icon = "kerillian_waystalker_linesman_unbalance",
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
		description = "finesse_unbalance_desc",
		name = "kerillian_waystalker_finesse_unbalance",
		buffer = "server",
		num_ranks = 1,
		icon = "kerillian_waystalker_ninja_unbalance",
		description_values = {
			{
				value_type = "percent",
				value = BuffUtils.get_buff_template("finesse_unbalance", "adventure").buffs[1].display_multiplier
			},
			{
				value_type = "percent",
				value = BuffUtils.get_buff_template("finesse_unbalance", "adventure").buffs[1].max_display_multiplier
			}
		},
		buffs = {
			"finesse_unbalance"
		}
	},
	{
		description = "power_level_unbalance_desc",
		name = "kerillian_waystalker_power_level_unbalance",
		buffer = "server",
		num_ranks = 1,
		icon = "kerillian_waystalker_power_level_unbalance",
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
		description = "kerillian_placeholder",
		name = "kerillian_placeholder"
	}
}

BuffUtils.copy_talent_buff_names(TalentBuffTemplates.wood_elf)
BuffUtils.apply_buff_tweak_data(TalentBuffTemplates.wood_elf, buff_tweak_data)
