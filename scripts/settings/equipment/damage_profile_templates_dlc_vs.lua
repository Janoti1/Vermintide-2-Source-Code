local drop_off_ranges = {
	shotgun_dropoff_ranges = {
		dropoff_start = 8,
		dropoff_end = 15
	},
	machinegun_dropoff_ranges = {
		dropoff_start = 10,
		dropoff_end = 30
	},
	machinegun_shotgun_dropoff_ranges = {
		dropoff_start = 30,
		dropoff_end = 50
	},
	carbine_dropoff_ranges = {
		dropoff_start = 15,
		dropoff_end = 30
	},
	sniper_dropoff_ranges = {
		dropoff_start = 30,
		dropoff_end = 50
	},
	flamethrower_dropoff_ranges = {
		dropoff_start = 4,
		dropoff_end = 8
	},
	rapier_dropoff_ranges = {
		dropoff_start = 5,
		dropoff_end = 10
	}
}
local damage_templates = {
	ratling_gunner_vs = {
		no_stagger_damage_reduction_ranged = true,
		charge_value = "projectile",
		fatigue_damage_override = "blocked_attack_2",
		dot_template_name = "vs_ratling_gunner_slow",
		cleave_distribution = {
			attack = 0.25,
			impact = 0.25
		},
		armor_modifier = {
			attack = {
				1,
				0.5,
				1,
				0.8,
				0.5,
				0
			},
			impact = {
				1,
				0.5,
				1,
				0.8,
				0.5,
				0
			}
		},
		default_target = {
			boost_curve_type = "default",
			boost_curve_coefficient = 0.2,
			attack_template = "shot_machinegun",
			power_distribution = {
				attack = 0.1,
				impact = 0.1
			},
			range_modifier_settings = {
				distance_scaling_steps = {
					{
						distance = 0.1,
						multiplier = 0.06
					},
					{
						distance = 10,
						multiplier = 0.06
					},
					{
						distance = 20,
						multiplier = 0.05
					},
					{
						distance = 30,
						multiplier = 0.04
					}
				}
			}
		}
	},
	questing_knight_career_sword_vs = {
		charge_value = "heavy_attack",
		is_explosion = true,
		shield_break = true,
		critical_strike = {
			attack_armor_power_modifer = {
				1,
				1,
				2,
				1,
				1,
				1
			},
			impact_armor_power_modifer = {
				1,
				1,
				200,
				1,
				1,
				1
			}
		},
		armor_modifier = {
			attack = {
				1,
				1,
				2,
				0.1,
				1,
				1
			},
			impact = {
				1,
				1,
				200,
				0.1,
				1,
				1
			}
		},
		cleave_distribution = {
			attack = 0.3,
			impact = 0.5
		},
		default_target = {
			boost_curve_coefficient_headshot = 0.5,
			boost_curve_type = "smiter_curve",
			boost_curve_coefficient = 0.5,
			attack_template = "slashing_smiter",
			power_distribution = {
				attack = 2,
				impact = 2
			}
		}
	},
	questing_knight_career_sword_stab_vs = {
		charge_value = "heavy_attack",
		is_explosion = true,
		shield_break = true,
		critical_strike = {
			attack_armor_power_modifer = {
				1.5,
				1.5,
				2.5,
				0.1,
				1.5,
				1.5
			},
			impact_armor_power_modifer = {
				1,
				1,
				200,
				0.1,
				1,
				1
			}
		},
		armor_modifier = {
			attack = {
				1.5,
				1.5,
				2.5,
				0.1,
				1.5,
				1.5
			},
			impact = {
				1,
				1,
				200,
				0.1,
				1,
				1
			}
		},
		cleave_distribution = {
			attack = 0.3,
			impact = 0.5
		},
		default_target = {
			boost_curve_coefficient_headshot = 0.5,
			boost_curve_type = "smiter_curve",
			boost_curve_coefficient = 0.5,
			attack_template = "heavy_slashing_fencer",
			power_distribution = {
				attack = 2,
				impact = 2
			}
		}
	},
	questing_knight_career_sword_tank_vs = {
		charge_value = "heavy_attack",
		is_explosion = true,
		shield_break = true,
		critical_strike = {
			attack_armor_power_modifer = {
				1,
				1,
				2,
				1,
				1,
				1
			},
			impact_armor_power_modifer = {
				1,
				1,
				200,
				1,
				1,
				1
			}
		},
		armor_modifier = {
			attack = {
				1,
				1,
				2,
				0.1,
				1,
				1
			},
			impact = {
				1,
				1,
				200,
				0.1,
				1,
				1
			}
		},
		cleave_distribution = {
			attack = 0.5,
			impact = 2
		},
		default_target = {
			boost_curve_coefficient_headshot = 0.5,
			boost_curve_type = "tank_curve",
			boost_curve_coefficient = 0.5,
			attack_template = "heavy_slashing_tank",
			power_distribution = {
				attack = 2,
				impact = 2
			}
		}
	},
	thorn_sister_poison_vs = {
		deal_min_damage = true,
		is_dot = true,
		charge_value = "n/a",
		no_stagger_damage_reduction_ranged = true,
		no_stagger = true,
		cleave_distribution = {
			attack = 0.25,
			impact = 0.25
		},
		armor_modifier = {
			attack = {
				0.8,
				0.8,
				0.8,
				0.8,
				0.5,
				0.2
			},
			impact = {
				1,
				1,
				1,
				1,
				0.5,
				0
			}
		},
		default_target = {
			attack_template = "arrow_poison_aoe",
			damage_type = "arrow_poison_dot",
			power_distribution = {
				attack = 0.005,
				impact = 0
			}
		}
	},
	shot_shotgun_vs = {
		charge_value = "instant_projectile",
		no_stagger_damage_reduction_ranged = true,
		shield_break = true,
		critical_strike = {
			attack_armor_power_modifer = {
				1,
				0.3,
				0.5,
				1,
				1,
				0
			},
			impact_armor_power_modifer = {
				1,
				1,
				1,
				1,
				1,
				0.5
			}
		},
		armor_modifier_near = {
			attack = {
				1,
				0.4,
				0.4,
				0.75,
				1,
				0
			},
			impact = {
				1,
				1,
				3,
				0,
				1,
				0.75
			}
		},
		armor_modifier_far = {
			attack = {
				1,
				0.2,
				0.25,
				0.75,
				1,
				0
			},
			impact = {
				1,
				0.7,
				0.5,
				0,
				1,
				0.5
			}
		},
		cleave_distribution = {
			attack = 0.1,
			impact = 0.1
		},
		default_target = {
			boost_curve_coefficient_headshot = 0.75,
			boost_curve_type = "linesman_curve",
			boost_curve_coefficient = 0.75,
			attack_template = "shot_shotgun_vs",
			power_distribution_near = {
				attack = 0.25,
				impact = 0.3
			},
			power_distribution_far = {
				attack = 0.15,
				impact = 0.15
			},
			range_modifier_settings = drop_off_ranges.machinegun_dropoff_ranges
		}
	},
	staff_fireball_vs = {
		charge_value = "projectile",
		require_damage_for_dot = true,
		no_stagger_damage_reduction_ranged = true,
		critical_strike = {
			attack_armor_power_modifer = {
				1,
				0.65,
				1.5,
				1,
				1,
				0.25
			},
			impact_armor_power_modifer = {
				1,
				0.6,
				0,
				0,
				1,
				0.25
			}
		},
		armor_modifier = {
			attack = {
				1,
				0.65,
				1.5,
				1,
				1,
				0
			},
			impact = {
				1,
				0.6,
				0,
				0,
				0.5,
				0
			}
		},
		cleave_distribution = {
			attack = 0.15,
			impact = 0.15
		},
		default_target = {
			boost_curve_coefficient_headshot = 1,
			boost_curve_type = "linesman_curve",
			boost_curve_coefficient = 0.75,
			attack_template = "fireball",
			power_distribution_near = {
				attack = 0.45,
				impact = 0.45
			},
			power_distribution_far = {
				attack = 0.25,
				impact = 0.25
			},
			range_modifier_settings = drop_off_ranges.carbine_dropoff_ranges
		}
	},
	crossbow_bolt_vs = {
		charge_value = "projectile",
		no_stagger_damage_reduction_ranged = true,
		shield_break = true,
		critical_strike = {
			attack_armor_power_modifer = {
				1,
				0.8,
				1.5,
				1,
				0.5,
				0.25
			},
			impact_armor_power_modifer = {
				1,
				0.8,
				1,
				1,
				1,
				0.5
			}
		},
		armor_modifier_near = {
			attack = {
				1,
				0.8,
				1.5,
				1,
				0.75,
				0
			},
			impact = {
				1,
				0.8,
				1,
				1,
				1,
				0.25
			}
		},
		armor_modifier_far = {
			attack = {
				1,
				0.6,
				1.5,
				1,
				0.75,
				0
			},
			impact = {
				1,
				0.6,
				1,
				1,
				1,
				0.25
			}
		},
		cleave_distribution = {
			attack = 0.3,
			impact = 0.3
		},
		default_target = {
			boost_curve_coefficient_headshot = 2.5,
			boost_curve_type = "smiter_curve",
			boost_curve_coefficient = 1,
			attack_template = "bolt_sniper",
			power_distribution_near = {
				attack = 1,
				impact = 0.4
			},
			power_distribution_far = {
				attack = 0.8,
				impact = 0.3
			},
			range_modifier_settings = drop_off_ranges.sniper_dropoff_ranges
		}
	},
	crossbow_bolt_repeating_vs = {
		charge_value = "projectile",
		no_stagger_damage_reduction_ranged = true,
		critical_strike = {
			attack_armor_power_modifer = {
				1,
				0.5,
				1.5,
				1,
				0.5,
				0.25
			},
			impact_armor_power_modifer = {
				1,
				0.5,
				1,
				1,
				1,
				0.5
			}
		},
		armor_modifier_near = {
			attack = {
				1,
				0.5,
				1.5,
				1,
				0.5,
				0
			},
			impact = {
				1,
				0.5,
				1,
				1,
				1,
				0.25
			}
		},
		armor_modifier_far = {
			attack = {
				1,
				0.4,
				1.5,
				1,
				0.5,
				0
			},
			impact = {
				1,
				0.4,
				1,
				1,
				1,
				0.25
			}
		},
		cleave_distribution = {
			attack = 0.2,
			impact = 0.2
		},
		default_target = {
			boost_curve_coefficient_headshot = 1.5,
			boost_curve_type = "smiter_curve",
			boost_curve_coefficient = 0.75,
			attack_template = "bolt_carbine",
			power_distribution_near = {
				attack = 0.475,
				impact = 0.35
			},
			power_distribution_far = {
				attack = 0.35,
				impact = 0.25
			},
			range_modifier_settings = drop_off_ranges.carbine_dropoff_ranges
		}
	},
	shot_machinegun_vs = {
		charge_value = "projectile",
		no_stagger_damage_reduction_ranged = true,
		critical_strike = {
			attack_armor_power_modifer = {
				1,
				0.75,
				1,
				1,
				1,
				0.25
			},
			impact_armor_power_modifer = {
				1,
				0.75,
				1,
				1,
				1,
				0.25
			}
		},
		armor_modifier_near = {
			attack = {
				1,
				0.5,
				1,
				1,
				1,
				0
			},
			impact = {
				1,
				0.5,
				1,
				1,
				1,
				0
			}
		},
		armor_modifier_far = {
			attack = {
				1,
				0,
				1,
				1,
				1,
				0
			},
			impact = {
				1,
				0,
				1,
				1,
				1,
				0
			}
		},
		cleave_distribution = {
			attack = 0.2,
			impact = 0.2
		},
		default_target = {
			boost_curve_coefficient_headshot = 1.5,
			boost_curve_type = "ninja_curve",
			boost_curve_coefficient = 0.75,
			attack_template = "shot_machinegun",
			power_distribution_near = {
				attack = 0.425,
				impact = 0.175
			},
			power_distribution_far = {
				attack = 0.3,
				impact = 0.075
			},
			range_modifier_settings = drop_off_ranges.machinegun_dropoff_ranges
		}
	},
	shot_machinegun_shotgun_vs = {
		charge_value = "projectile",
		no_stagger_damage_reduction_ranged = true,
		critical_strike = {
			attack_armor_power_modifer = {
				1,
				0.25,
				1,
				1,
				1,
				0.175
			},
			impact_armor_power_modifer = {
				1,
				0.25,
				1,
				1,
				1,
				0.125
			}
		},
		armor_modifier_near = {
			attack = {
				1,
				0.25,
				1,
				1,
				1,
				0
			},
			impact = {
				1,
				1,
				3,
				1,
				1,
				0.75
			}
		},
		armor_modifier_far = {
			attack = {
				1,
				0.25,
				1,
				1,
				1,
				0
			},
			impact = {
				1,
				0.7,
				1,
				1,
				1,
				0.5
			}
		},
		cleave_distribution = {
			attack = 0.3,
			impact = 0.3
		},
		default_target = {
			boost_curve_coefficient_headshot = 1,
			boost_curve_type = "ninja_curve",
			boost_curve_coefficient = 0.4,
			attack_template = "shot_machinegun",
			power_distribution_near = {
				attack = 0.275,
				impact = 0.3
			},
			power_distribution_far = {
				attack = 0.25,
				impact = 0.15
			},
			range_modifier_settings = drop_off_ranges.machinegun_shotgun_dropoff_ranges
		}
	},
	thorn_sister_poison_vs = {
		deal_min_damage = true,
		is_dot = true,
		charge_value = "n/a",
		no_stagger_damage_reduction_ranged = true,
		no_stagger = true,
		cleave_distribution = {
			attack = 0.25,
			impact = 0.25
		},
		armor_modifier = {
			attack = {
				0.8,
				0.8,
				0.8,
				0.8,
				0.5,
				0.2
			},
			impact = {
				1,
				1,
				1,
				1,
				0.5,
				0
			}
		},
		default_target = {
			attack_template = "arrow_poison_aoe",
			damage_type = "arrow_poison_dot",
			power_distribution = {
				attack = 0.005,
				impact = 0
			}
		}
	},
	burst_thorn_vs = {
		charge_value = "projectile",
		no_stagger_damage_reduction_ranged = true,
		critical_strike = {
			attack_armor_power_modifer = {
				1,
				0.5,
				1.5,
				1,
				0.5,
				0.25
			},
			impact_armor_power_modifer = {
				1,
				0.5,
				1,
				1,
				1,
				0.5
			}
		},
		armor_modifier_near = {
			attack = {
				1,
				0.3,
				1,
				0.5,
				1.2,
				0
			},
			impact = {
				1,
				0.4,
				1,
				1,
				1,
				1
			}
		},
		armor_modifier_far = {
			attack = {
				1,
				0,
				1.5,
				0.5,
				1,
				0
			},
			impact = {
				1,
				0.25,
				1,
				1,
				1,
				0.25
			}
		},
		cleave_distribution = {
			attack = 0.1,
			impact = 0.1
		},
		default_target = {
			boost_curve_coefficient_headshot = 1.5,
			boost_curve_type = "smiter_curve",
			boost_curve_coefficient = 0.25,
			attack_template = "bolt_carbine",
			power_distribution_near = {
				attack = 0.15,
				impact = 0.12
			},
			power_distribution_far = {
				attack = 0.125,
				impact = 0.1
			},
			range_modifier_settings = drop_off_ranges.carbine_dropoff_ranges
		}
	},
	staff_suck_damage_vs = {
		charge_value = "projectile",
		no_procs = true,
		no_stagger_damage_reduction_ranged = true,
		critical_strike = {
			attack_armor_power_modifer = {
				1,
				0.1,
				1,
				1,
				1,
				0.25
			},
			impact_armor_power_modifer = {
				1,
				0.2,
				1,
				1,
				1,
				0.25
			}
		},
		armor_modifier_far = {
			attack = {
				1,
				0.1,
				1.5,
				1,
				1,
				0
			},
			impact = {
				1,
				0.2,
				1,
				1,
				1,
				0
			}
		},
		armor_modifier_near = {
			attack = {
				1,
				0.5,
				1.5,
				1,
				1,
				0
			},
			impact = {
				1,
				0.8,
				1,
				1,
				1,
				0
			}
		},
		cleave_distribution = {
			attack = 0.01,
			impact = 0.01
		},
		default_target = {
			boost_curve_coefficient_headshot = 2,
			boost_curve_type = "linesman_curve",
			boost_curve_coefficient = 0.75,
			attack_template = "wizard_staff_beam",
			power_distribution_near = {
				attack = 0.01,
				impact = 0.065
			},
			power_distribution_far = {
				attack = 0.01,
				impact = 0.05
			},
			range_modifier_settings = carbine_dropoff_ranges
		}
	},
	soul_rip_vs = {
		charge_value = "heavy_instant_projectile",
		no_stagger_damage_reduction_ranged = true,
		shield_break = true,
		critical_strike = {
			attack_armor_power_modifer = {
				1,
				1.4,
				3,
				1,
				1,
				1
			},
			impact_armor_power_modifer = {
				1,
				1,
				1,
				1,
				1,
				1
			}
		},
		armor_modifier_near = {
			attack = {
				1,
				1,
				2.5,
				1,
				0.75,
				0.7
			},
			impact = {
				1,
				1.2,
				1,
				1,
				1,
				1
			}
		},
		armor_modifier_far = {
			attack = {
				1,
				1,
				2.5,
				1,
				0.75,
				0.7
			},
			impact = {
				1,
				1,
				1,
				1,
				1,
				0.75
			}
		},
		cleave_distribution = {
			attack = 0.35,
			impact = 0.3
		},
		default_target = {
			boost_curve_coefficient_headshot = 1,
			impact_player_target_power_modifier = 1.5,
			boost_curve_coefficient = 1,
			attack_template = "shot_sniper",
			attack_player_target_power_modifier = 0.5,
			boost_curve_type = "smiter_curve",
			headshot_boost_boss = 0.5,
			power_distribution_near = {
				attack = 1,
				impact = 0.6
			},
			power_distribution_far = {
				attack = 1,
				impact = 0.5
			},
			range_modifier_settings = sniper_dropoff_ranges
		}
	}
}

return damage_templates