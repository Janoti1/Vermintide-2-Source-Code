local damage_templates = {
	armor_breaker = {
		charge_value = "light_attack",
		no_stagger_damage_reduction_ranged = true,
		no_stagger = true,
		cleave_distribution = {
			attack = 0.25,
			impact = 0.25
		},
		armor_modifier = {
			attack = {
				1,
				0.5,
				1,
				1,
				0.5,
				0
			},
			impact = {
				1,
				0.5,
				1,
				1,
				0.5,
				0
			}
		},
		default_target = {
			damage_type = "blunt",
			attack_template = "armor_breaker"
		}
	},
	curse_mark_of_nurgle_dot = {
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
				1.25,
				1,
				3,
				1,
				0.5,
				0.2
			},
			impact = {
				1,
				1,
				3,
				1,
				0.5,
				0
			}
		},
		default_target = {
			attack_template = "arrow_poison_aoe",
			damage_type = "arrow_poison_dot",
			power_distribution = {
				attack = 0.035,
				impact = 0
			}
		}
	},
	we_deus_01_fast = {
		charge_value = "projectile",
		allow_dot_finesse_hit = true,
		no_stagger_damage_reduction_ranged = true,
		require_damage_for_dot = true,
		ignore_stagger_reduction = true,
		critical_strike = {
			attack_armor_power_modifer = {
				0.8,
				0.7,
				1,
				0.75,
				1,
				0.25
			},
			impact_armor_power_modifer = {
				1,
				0.7,
				1,
				0.75,
				1,
				0.25
			}
		},
		armor_modifier = {
			attack = {
				0.6,
				0.4,
				0.75,
				0.5,
				0.75,
				0.25
			},
			impact = {
				1,
				0.5,
				1,
				0.5,
				0.75,
				0.25
			}
		},
		armor_modifier_far = {
			attack = {
				0.6,
				0.4,
				0.75,
				0.5,
				0.75,
				0.25
			},
			impact = {
				1,
				0.5,
				1,
				0.75,
				0.75,
				0.25
			}
		},
		cleave_distribution = {
			attack = 0.15,
			impact = 0.15
		},
		default_target = {
			boost_curve_coefficient_headshot = 1,
			dot_template_name = "we_deus_01_dot_fast",
			boost_curve_type = "ninja_curve",
			boost_curve_coefficient = 0.75,
			attack_template = "elven_magic_arrow_carbine",
			power_distribution_near = {
				attack = 0.41,
				impact = 0.3
			},
			power_distribution_far = {
				attack = 0.3,
				impact = 0.25
			},
			range_modifier_settings = carbine_dropoff_ranges
		}
	},
	we_deus_01_dot = {
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
				1.5,
				1.2,
				1.5,
				1.2,
				0.75,
				0.2
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
		default_target = {
			damage_type = "burninating",
			boost_curve_type = "tank_curve",
			boost_curve_coefficient = 0.2,
			attack_template = "light_blunt_tank",
			power_distribution = {
				attack = 0.07,
				impact = 0.05
			}
		}
	},
	we_deus_01_small_explosion = {
		charge_value = "aoe",
		no_stagger_damage_reduction_ranged = true,
		armor_modifier = {
			attack = {
				1,
				0,
				1.5,
				1,
				0.75,
				0
			},
			impact = {
				1,
				0,
				1,
				1,
				0.75,
				0
			}
		},
		default_target = {
			attack_template = "burning",
			dot_template_name = "we_deus_01_dot",
			damage_type = "burn",
			power_distribution = {
				attack = 0.1,
				impact = 0.2
			}
		}
	},
	we_deus_01_small_explosion_glance = {
		charge_value = "aoe",
		no_stagger_damage_reduction_ranged = true,
		armor_modifier = {
			attack = {
				1,
				0,
				1.5,
				1,
				0.75,
				0
			},
			impact = {
				1,
				0,
				1,
				1,
				0.75,
				0
			}
		},
		default_target = {
			attack_template = "burning",
			dot_template_name = "we_deus_01_dot",
			damage_type = "burn",
			power_distribution = {
				attack = 0.1,
				impact = 0.2
			}
		}
	},
	we_deus_01_large_explosion = {
		charge_value = "aoe",
		no_stagger_damage_reduction_ranged = true,
		armor_modifier = {
			attack = {
				1,
				0.25,
				1.5,
				1,
				0.75,
				0
			},
			impact = {
				1,
				0.5,
				1,
				1,
				0.75,
				0
			}
		},
		default_target = {
			attack_template = "burning",
			dot_template_name = "we_deus_01_dot",
			damage_type = "burn",
			power_distribution = {
				attack = 0.25,
				impact = 0.5
			}
		}
	},
	we_deus_01_large_explosion_glance = {
		charge_value = "aoe",
		no_stagger_damage_reduction_ranged = true,
		armor_modifier = {
			attack = {
				1,
				0.25,
				1.5,
				1,
				0.75,
				0
			},
			impact = {
				1,
				0.5,
				1,
				1,
				0.75,
				0
			}
		},
		default_target = {
			attack_template = "burning",
			dot_template_name = "we_deus_01_dot",
			damage_type = "burn",
			power_distribution = {
				attack = 0.25,
				impact = 0.5
			}
		}
	},
	staff_magma = {
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
				0.2,
				0.4,
				0.75,
				1,
				0
			},
			impact = {
				1,
				0.75,
				3,
				0,
				1,
				0.75
			}
		},
		armor_modifier_far = {
			attack = {
				1,
				0,
				0.25,
				0.75,
				1,
				0
			},
			impact = {
				1,
				0.5,
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
			attack_template = "staff_magma",
			power_distribution_near = {
				attack = 0.16,
				impact = 0.2
			},
			power_distribution_far = {
				attack = 0.07,
				impact = 0.07
			},
			range_modifier_settings = {
				dropoff_start = 8,
				dropoff_end = 15
			}
		}
	},
	geiser_magma = {
		charge_value = "aoe",
		dot_balefire_variant = true,
		no_stagger = true,
		no_stagger_damage_reduction_ranged = true,
		attack_template = "wizard_staff_geiser_magma",
		critical_strike = {
			attack_armor_power_modifer = {
				1,
				0.5,
				1,
				1,
				1,
				0.25
			},
			impact_armor_power_modifer = {
				1,
				1.5,
				1,
				1,
				1,
				0.5
			}
		},
		armor_modifier = {
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
				1.5,
				1,
				1,
				1,
				0.5
			}
		},
		cleave_distribution = {
			attack = 0.2,
			impact = 0.2
		},
		target_radius = {
			0.3,
			0.8
		},
		default_target = {
			boost_curve_type = "ninja_curve",
			boost_curve_coefficient = 1,
			attack_template = "wizard_staff_geiser_magma",
			power_distribution = {
				attack = 0.05,
				impact = 0.175
			}
		},
		targets = {
			{
				boost_curve_type = "ninja_curve",
				boost_curve_coefficient = 1,
				attack_template = "wizard_staff_geiser_magma",
				power_distribution = {
					attack = 0.3,
					impact = 0.7
				}
			},
			{
				boost_curve_type = "ninja_curve",
				boost_curve_coefficient = 1,
				attack_template = "wizard_staff_geiser_magma",
				power_distribution = {
					attack = 0.125,
					impact = 0.35
				}
			}
		}
	},
	holy_hand_grenade = {
		charge_value = "grenade",
		is_explosion = true,
		no_stagger_damage_reduction_ranged = true,
		armor_modifier = {
			attack = {
				1,
				1,
				10,
				0,
				1
			},
			impact = {
				1,
				1,
				100,
				0,
				1
			}
		},
		default_target = {
			damage_type = "grenade",
			attack_template = "drakegun",
			power_distribution = {
				attack = 2.5,
				impact = 3.5
			}
		}
	},
	shot_duckfoot = {
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
				0.2,
				0.4,
				0.75,
				1,
				0
			},
			impact = {
				1,
				0.75,
				3,
				0,
				1,
				0.75
			}
		},
		armor_modifier_far = {
			attack = {
				1,
				0,
				0.25,
				0.75,
				1,
				0
			},
			impact = {
				1,
				0.5,
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
			attack_template = "shot_shotgun",
			power_distribution_near = {
				attack = 0.125,
				impact = 0.15
			},
			power_distribution_far = {
				attack = 0.075,
				impact = 0.075
			},
			range_modifier_settings = machinegun_dropoff_ranges
		}
	},
	blood_storm = {
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
				1,
				0.5,
				1,
				1,
				0.5,
				0
			},
			impact = {
				1,
				0.5,
				1,
				1,
				0.5,
				0
			}
		},
		default_target = {
			damage_type = "blood_storm",
			boost_curve_type = "tank_curve",
			boost_curve_coefficient = 0.2,
			attack_template = "light_blunt_tank",
			power_distribution = {
				attack = 1,
				impact = 0
			}
		}
	},
	blood_storm_bots = {
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
				1,
				0.5,
				1,
				0.3,
				0.5,
				0
			},
			impact = {
				1,
				0.5,
				1,
				0.3,
				0.5,
				0
			}
		},
		default_target = {
			damage_type = "blood_storm",
			boost_curve_type = "tank_curve",
			boost_curve_coefficient = 0.2,
			attack_template = "light_blunt_tank",
			power_distribution = {
				attack = 1,
				impact = 0
			}
		}
	},
	curse_skulls_of_fury_explosion = {
		charge_value = "grenade",
		is_explosion = true,
		no_stagger_damage_reduction_ranged = true,
		armor_modifier = {
			attack = {
				1,
				0.5,
				3,
				1,
				1
			},
			impact = {
				1,
				0.5,
				100,
				1,
				1
			}
		},
		default_target = {
			damage_type = "skulls_of_fury",
			attack_template = "skulls_of_fury",
			power_distribution = {
				attack = 1.5,
				impact = 2
			}
		}
	},
	curse_skulls_of_fury_explosion_glance = {
		charge_value = "grenade",
		is_explosion = true,
		no_stagger_damage_reduction_ranged = true,
		armor_modifier = {
			attack = {
				1,
				0.5,
				3,
				1,
				1
			},
			impact = {
				1,
				0.5,
				100,
				1,
				1
			}
		},
		default_target = {
			damage_type = "skulls_of_fury",
			attack_template = "skulls_of_fury",
			power_distribution = {
				attack = 0.5,
				impact = 1.5
			}
		}
	},
	bolt_of_change = {
		charge_value = "grenade",
		is_explosion = true,
		no_stagger_damage_reduction_ranged = true,
		armor_modifier = {
			attack = {
				1,
				0.5,
				3,
				3,
				1
			},
			impact = {
				1,
				0.5,
				100,
				1,
				1
			}
		},
		default_target = {
			damage_type = "bolt_of_change",
			attack_template = "drakegun",
			power_distribution = {
				attack = 0.5,
				impact = 2
			}
		}
	},
	thorn_skin = {
		charge_value = "light_attack",
		no_stagger_damage_reduction_ranged = true,
		no_stagger = true,
		cleave_distribution = {
			attack = 0.25,
			impact = 0.25
		},
		armor_modifier = {
			attack = {
				1,
				0.5,
				1,
				1,
				0.5,
				0
			},
			impact = {
				1,
				0.5,
				1,
				1,
				0.5,
				0
			}
		},
		default_target = {
			damage_type = "cutting",
			attack_template = "armor_breaker"
		}
	},
	static_charge = {
		charge_value = "aoe",
		is_explosion = true,
		ignore_stagger_reduction = true,
		no_stagger_damage_reduction_ranged = true,
		armor_modifier = {
			attack = {
				1,
				0,
				1.5,
				1,
				0.75,
				0
			},
			impact = {
				0.3,
				0.3,
				6,
				1,
				0.3,
				0
			}
		},
		default_target = {
			attack_template = "armor_breaker",
			damage_type = "cutting",
			power_distribution = {
				attack = 0.1,
				impact = 0.7
			}
		}
	},
	homing_skull_explosion = {
		charge_value = "aoe",
		is_explosion = true,
		stagger_distance_modifier = 0.2,
		ignore_stagger_reduction = true,
		no_stagger_damage_reduction_ranged = true,
		always_stagger_ai = true,
		armor_modifier = {
			attack = {
				1,
				0,
				1.5,
				1,
				0.75,
				0
			},
			impact = {
				0.3,
				0.3,
				6,
				1,
				0.3,
				0
			}
		},
		default_target = {
			attack_template = "armor_breaker",
			damage_type = "cutting",
			power_distribution = {
				attack = 0.1,
				impact = 0.7
			}
		}
	},
	static_blade = {
		charge_value = "light_attack",
		no_stagger_damage_reduction_ranged = true,
		no_stagger = true,
		cleave_distribution = {
			attack = 0.25,
			impact = 0.25
		},
		armor_modifier = {
			attack = {
				0.45,
				0.45,
				0.45,
				0.45,
				0.45,
				0.45
			},
			impact = {
				0.45,
				0.45,
				0.45,
				0.45,
				0.45,
				0.45
			}
		},
		default_target = {
			damage_type = "buff",
			attack_template = "armor_breaker"
		}
	},
	belakor_arena_finish = {
		instant_death = true,
		charge_value = "aoe",
		is_explosion = true,
		no_stagger_damage_reduction_ranged = true,
		armor_modifier = {
			attack = {
				1,
				0.5,
				100,
				1,
				1
			},
			impact = {
				1,
				0.5,
				1.5,
				1,
				1
			}
		},
		default_target = {
			attack_template = "belakor_arena_finish",
			damage_type = "belakor_arena_finish",
			power_distribution = {
				attack = 5,
				impact = 0.5
			}
		}
	},
	deus_damage_drone = {
		charge_value = "projectile",
		no_stagger_damage_reduction_ranged = true,
		armor_modifier = {
			attack = {
				0.2,
				0.1,
				0.4,
				0.2,
				0.4,
				0.05
			},
			impact = {
				0,
				0,
				0,
				0,
				0
			}
		},
		default_target = {
			boost_curve_type = "smiter_curve",
			boost_curve_coefficient = 1,
			attack_template = "bolt_sniper",
			power_distribution = {
				attack = 0.3,
				impact = 0
			}
		}
	},
	boon_career_ability_lightning_aoe = {
		charge_value = "light_attack",
		no_stagger_damage_reduction_ranged = true,
		no_stagger = true,
		cleave_distribution = {
			attack = 0.25,
			impact = 0.25
		},
		armor_modifier = {
			attack = {
				0.45,
				0.45,
				0.45,
				0.45,
				0.45,
				0.45
			},
			impact = {
				0.45,
				0.45,
				0.45,
				0.45,
				0.45,
				0.45
			}
		},
		default_target = {
			damage_type = "buff",
			attack_template = "armor_breaker"
		}
	},
	periodic_aoe_stagger = {
		is_explosion = true,
		charge_value = "ability",
		cleave_distribution = "cleave_distribution_push_default",
		default_target = "target_push_Ability",
		no_friendly_fire = true,
		no_damage = true,
		armor_modifier = {
			attack = {
				0,
				0,
				0,
				0,
				0,
				0
			},
			impact = {
				0.07,
				0.5,
				2,
				0.3,
				1,
				1
			}
		}
	},
	boon_skulls_03 = {
		is_explosion = true,
		charge_value = "ability",
		default_target = "target_push_Ability",
		no_friendly_fire = true,
		no_damage = true,
		armor_modifier = {
			attack = {
				0,
				0,
				0,
				0,
				0,
				0
			},
			impact = {
				1,
				1,
				15,
				1,
				1,
				1
			}
		},
		cleave_distribution = {
			impact = 2,
			atack = 0
		}
	}
}

damage_templates.we_deus_01_special_charged = table.clone(damage_templates.we_deus_01_fast)
damage_templates.we_deus_01_special_charged.default_target.dot_template_name = "we_deus_01_dot_special_charged"
damage_templates.we_deus_01_charged = table.clone(damage_templates.we_deus_01_fast)
damage_templates.we_deus_01_charged.default_target.dot_template_name = "we_deus_01_dot_charged"
DamageProfileTemplates.dr_deus_01 = {
	charge_value = "projectile",
	no_stagger_damage_reduction_ranged = true,
	shield_break = true,
	critical_strike = {
		attack_armor_power_modifer = {
			1,
			1,
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
			3,
			1,
			1,
			1
		},
		impact = {
			1,
			1,
			1,
			1,
			1,
			1
		}
	},
	armor_modifier_far = {
		attack = {
			1,
			0.75,
			2,
			1,
			0.75,
			0.8
		},
		impact = {
			1,
			1,
			1,
			1,
			1,
			0.8
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
			attack = 0.7,
			impact = 0.4
		},
		power_distribution_far = {
			attack = 0.6,
			impact = 0.3
		},
		range_modifier_settings = sniper_dropoff_ranges
	}
}
DamageProfileTemplates.dr_deus_01_explosion = {
	charge_value = "projectile",
	is_explosion = true,
	no_stagger_damage_reduction_ranged = true,
	armor_modifier = {
		attack = {
			1,
			1,
			3,
			1,
			0.5
		},
		impact = {
			1,
			1,
			100,
			1,
			0.5
		}
	},
	default_target = {
		damage_type = "drakegun",
		attack_template = "drakegun",
		power_distribution = {
			attack = 1,
			impact = 2
		}
	}
}
DamageProfileTemplates.dr_deus_01_glance = table.clone(DamageProfileTemplates.dr_deus_01_explosion)
DamageProfileTemplates.dr_deus_01_glance.default_target.power_distribution.attack = 0.5
DamageProfileTemplates.dr_deus_01_glance.default_target.power_distribution.impact = 1
DamageProfileTemplates.dr_deus_01_glance.default_target.attack_template = "drakegun_glance"
DamageProfileTemplates.dr_deus_01_glance.default_target.damage_type = "grenade_glance"
DamageProfileTemplates.deus_relic_small_explosion = table.clone(damage_templates.we_deus_01_small_explosion)
DamageProfileTemplates.deus_relic_small_explosion.default_target.dot_template_name = nil
DamageProfileTemplates.deus_relic_small_explosion_glance = table.clone(damage_templates.we_deus_01_small_explosion_glance)
DamageProfileTemplates.deus_relic_small_explosion_glance.default_target.dot_template_name = nil
DamageProfileTemplates.deus_relic_large_explosion = table.clone(damage_templates.we_deus_01_large_explosion)
DamageProfileTemplates.deus_relic_large_explosion.default_target.dot_template_name = nil
DamageProfileTemplates.deus_relic_large_explosion_glance = table.clone(damage_templates.we_deus_01_large_explosion_glance)
DamageProfileTemplates.deus_relic_large_explosion_glance.default_target.dot_template_name = nil

local kruber_bonus = 1.35

DamageProfileTemplates.medium_slashing_tank_es_01 = {
	stagger_duration_modifier = 1.5,
	charge_value = "heavy_attack",
	targets = {
		{
			attack_template = "slashing_tank",
			boost_curve_type = "tank_curve",
			boost_curve_coefficient_headshot = 1,
			power_distribution = {
				attack = 0.3 * kruber_bonus,
				impact = 0.2 * kruber_bonus
			},
			armor_modifier = {
				attack = {
					1,
					0.5,
					1,
					1,
					0.75
				},
				impact = {
					1,
					1,
					0.5,
					1,
					0.75
				}
			}
		},
		{
			boost_curve_type = "tank_curve",
			attack_template = "slashing_tank",
			power_distribution = {
				attack = 0.1 * kruber_bonus,
				impact = 0.15 * kruber_bonus
			}
		},
		{
			boost_curve_type = "tank_curve",
			attack_template = "light_slashing_tank",
			power_distribution = {
				attack = 0.075 * kruber_bonus,
				impact = 0.1 * kruber_bonus
			}
		}
	},
	armor_modifier = {
		impact = {
			1,
			1,
			0.5,
			1,
			0.75
		},
		attack = {
			1,
			0.35,
			1,
			1,
			0.75
		}
	},
	default_target = {
		boost_curve_type = "tank_curve",
		attack_template = "light_slashing_tank",
		power_distribution = {
			attack = 0.05 * kruber_bonus,
			impact = 0.05 * kruber_bonus
		}
	},
	cleave_distribution = {
		impact = 0.8,
		attack = 0.3
	},
	critical_strike = {
		attack_armor_power_modifer = {
			1,
			0.5,
			1,
			1,
			1
		},
		impact_armor_power_modifer = {
			1,
			1,
			0.5,
			1,
			1
		}
	}
}
DamageProfileTemplates.medium_stab_es_01 = {
	charge_value = "heavy_attack",
	targets = {},
	armor_modifier = {
		impact = {
			1,
			1,
			1,
			1,
			0.75
		},
		attack = {
			1,
			0.75,
			2.25,
			1,
			0.75
		}
	},
	cleave_distribution = {
		impact = 0.075,
		attack = 0.075
	},
	critical_strike = {
		attack_armor_power_modifer = {
			1,
			1,
			2.5,
			1,
			1
		},
		impact_armor_power_modifer = {
			1,
			1,
			1,
			1,
			1
		}
	},
	default_target = {
		attack_template = "stab_smiter",
		boost_curve_type = "ninja_curve",
		boost_curve_coefficient = 1,
		boost_curve_coefficient_headshot = 2,
		power_distribution = {
			impact = 0.175 * kruber_bonus,
			attack = 0.3 * kruber_bonus
		}
	}
}
DamageProfileTemplates.light_slash_stab_es_01 = {
	charge_value = "light_attack",
	targets = {
		{
			attack_template = "stab_smiter",
			boost_curve_type = "smiter_curve",
			boost_curve_coefficient = 0.75,
			boost_curve_coefficient_headshot = 2,
			power_distribution = {
				impact = 0.1 * kruber_bonus,
				attack = 0.2 * kruber_bonus
			},
			armor_modifier = {
				impact = {
					1,
					0.5,
					1,
					1,
					0.75
				},
				attack = {
					1,
					0.5,
					1.5,
					1,
					0.75
				}
			}
		}
	},
	armor_modifier = {
		impact = {
			1,
			0.25,
			1,
			1,
			0.75
		},
		attack = {
			1,
			0.25,
			1.5,
			1,
			0.75
		}
	},
	cleave_distribution = {
		impact = 0.075,
		attack = 0.075
	},
	critical_strike = {
		attack_armor_power_modifer = {
			1,
			0.5,
			2,
			1,
			1
		},
		impact_armor_power_modifer = {
			1,
			1,
			1,
			1,
			1
		}
	},
	default_target = {
		attack_template = "stab_smiter",
		boost_curve_type = "smiter_curve",
		boost_curve_coefficient = 0.75,
		boost_curve_coefficient_headshot = 2,
		power_distribution = {
			impact = 0.075 * kruber_bonus,
			attack = 0.1 * kruber_bonus
		}
	}
}
DamageProfileTemplates.medium_slashing_linesman_spear_es_01 = {
	charge_value = "light_attack",
	default_target = {
		boost_curve_type = "linesman_curve",
		attack_template = "light_slashing_linesman",
		power_distribution = {
			impact = 0.05 * kruber_bonus,
			attack = 0.075 * kruber_bonus
		}
	},
	armor_modifier = {
		impact = {
			1,
			0.3,
			0.5,
			1,
			1
		},
		attack = {
			1,
			0,
			2,
			1,
			1
		}
	},
	targets = {
		{
			boost_curve_type = "linesman_curve",
			attack_template = "slashing_linesman",
			boost_curve_coefficient_headshot = 4,
			power_distribution = {
				impact = 0.2 * kruber_bonus,
				attack = 0.175 * kruber_bonus
			}
		},
		{
			boost_curve_type = "linesman_curve",
			attack_template = "slashing_linesman",
			boost_curve_coefficient_headshot = 3,
			power_distribution = {
				impact = 0.175 * kruber_bonus,
				attack = 0.125 * kruber_bonus
			}
		},
		{
			boost_curve_type = "linesman_curve",
			attack_template = "light_slashing_linesman",
			boost_curve_coefficient_headshot = 2.5,
			power_distribution = {
				impact = 0.1 * kruber_bonus,
				attack = 0.1 * kruber_bonus
			}
		}
	},
	critical_strike = {
		attack_armor_power_modifer = {
			1,
			0.5,
			2.5,
			1,
			1
		},
		impact_armor_power_modifer = {
			1,
			0.5,
			0.5,
			1,
			1
		}
	},
	cleave_distribution = {
		impact = 0.2,
		attack = 0.35
	}
}
DamageProfileTemplates.medium_slashing_smiter_es_01 = {
	shield_break = true,
	charge_value = "light_attack",
	targets = {},
	armor_modifier = {
		impact = {
			1,
			0.6,
			1,
			1,
			0.75
		},
		attack = {
			1,
			0.8,
			1.75,
			1,
			0.75
		}
	},
	cleave_distribution = {
		impact = 0.075,
		attack = 0.075
	},
	critical_strike = {
		attack_armor_power_modifer = {
			1,
			0.8,
			2.5,
			1,
			1
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
	default_target = {
		boost_curve_type = "smiter_curve",
		boost_curve_coefficient = 2,
		attack_template = "slashing_smiter",
		power_distribution = {
			impact = 0.25 * kruber_bonus,
			attack = 0.4 * kruber_bonus
		}
	}
}

return damage_templates
