require("scripts/settings/breeds")

local player = StatisticsDefinitions.player

player.vs_damage_dealt_to_pactsworn = {
	value = 0,
	sync_on_hot_join = true
}
player.vs_disables_per_breed = {}
player.vs_knockdowns_per_breed = {}
player.vs_badge_knocked_down_target_per_breed = {}
player.vs_badge_escaped_death_per_breed = {}
player.vs_badge_double_kill_per_breed = {}
player.vs_badge_triple_kill_per_breed = {}
player.vs_badge_quadra_kill_per_breed = {}
player.vs_badge_damage_invisible_per_breed = {}
player.vs_badge_interrupt_hero_per_breed = {}
player.vs_badge_flame_a_hoisted_hero_per_breed = {}
player.vs_badge_ratling_hit_all_heroes_per_breed = {}
player.vs_badge_warpfire_hit_all_heroes_per_breed = {}
player.vs_badge_globadier_hit_all_heroes_per_breed = {}
player.vs_badge_ratling_damage_in_one_clip_per_breed = {}
player.vs_badge_warpfire_damage_in_one_clip_per_breed = {}
player.vs_badge_survive_grenade_per_breed = {}
player.vs_badge_attack_healing_hero_per_breed = {}
player.vs_badge_grab_a_hero_per_breed = {}
player.vs_badge_grab_two_heroes_per_breed = {}
player.vs_badge_long_haul_per_breed = {}
player.vs_badge_hit_dodging_hero_per_breed = {}
player.vs_badge_hoist_hero_per_breed = {}
player.vs_badge_hit_while_reloading_per_breed = {}
player.vs_badge_first_hit_per_breed = {}
player.vs_badge_pounce_hero_per_breed = {}
player.vs_badge_long_pounce_per_breed = {}
player.vs_badge_multiple_pounces_per_breed = {}
player.vs_badge_globe_impact_per_breed = {}
player.vs_badge_globe_impact_2_per_breed = {}
player.vs_badge_globe_impact_3_per_breed = {}
player.vs_badge_globe_impact_4_per_breed = {}
player.vs_badge_knock_down_dragged_hero_per_breed = {}
player.vs_badge_push_off_per_breed = {}
player.vs_badge_stabbing_frenzy_per_breed = {}
player.vs_badge_impact_revive_per_breed = {}
player.vs_badge_two_downs_one_clip_per_breed = {}
player.vs_badge_moving_target_per_breed = {}
player.vs_badge_long_impact_per_breed = {}
player.vs_badge_stealth_pounce_per_breed = {}
player.vs_badge_mob_damage_per_breed = {}
player.vs_badge_warpfire_ambush_per_breed = {}
player.state_damage_dealt_as_pactsworn_breed = {}

for breed_name, breed in pairs(PlayerBreeds) do
	player.vs_disables_per_breed[breed_name] = {
		value = 0,
		sync_on_hot_join = true,
		name = breed_name
	}
	player.vs_knockdowns_per_breed[breed_name] = {
		value = 0,
		sync_on_hot_join = true,
		name = breed_name
	}

	local db_kills_per_breed_name = "vs_kills_per_breed_" .. breed_name
	local db_knocked_down_name = "vs_badge_knocked_down_target_per_breed" .. breed_name

	player.vs_badge_knocked_down_target_per_breed[breed_name] = {
		value = 0,
		source = "player_data",
		name = breed_name,
		database_name = db_knocked_down_name
	}

	local db_double_kill_per_breed_name = "vs_badge_double_kill_per_breed_" .. breed_name

	player.vs_badge_double_kill_per_breed[breed_name] = {
		value = 0,
		source = "player_data",
		name = breed_name,
		database_name = db_double_kill_per_breed_name
	}

	local db_triple_kill_per_breed_name = "vs_badge_triple_kill_per_breed_" .. breed_name

	player.vs_badge_triple_kill_per_breed[breed_name] = {
		value = 0,
		source = "player_data",
		name = breed_name,
		database_name = db_triple_kill_per_breed_name
	}

	local db_quadra_kill_per_breed_name = "vs_badge_quadra_kill_per_breed_" .. breed_name

	player.vs_badge_quadra_kill_per_breed[breed_name] = {
		value = 0,
		source = "player_data",
		name = breed_name,
		database_name = db_quadra_kill_per_breed_name
	}

	local db_vs_badge_escaped_death_per_breed_name = "vs_badge_escaped_death_per_breed_" .. breed_name

	player.vs_badge_escaped_death_per_breed[breed_name] = {
		value = 0,
		source = "player_data",
		name = breed_name,
		database_name = db_vs_badge_escaped_death_per_breed_name
	}

	local db_vs_badge_damage_invisible_per_breed_name = "vs_badge_damage_invisible_per_breed_" .. breed_name

	player.vs_badge_damage_invisible_per_breed[breed_name] = {
		value = 0,
		source = "player_data",
		name = breed_name,
		database_name = db_vs_badge_damage_invisible_per_breed_name
	}

	local db_vs_badge_interrupt_hero_per_breed_name = "vs_badge_interrupt_hero_per_breed_" .. breed_name

	player.vs_badge_interrupt_hero_per_breed[breed_name] = {
		value = 0,
		source = "player_data",
		name = breed_name,
		database_name = db_vs_badge_interrupt_hero_per_breed_name
	}

	local db_vs_badge_flame_a_hoisted_hero_name = "vs_badge_flame_a_hoisted_hero_per_breed_" .. breed_name

	player.vs_badge_flame_a_hoisted_hero_per_breed[breed_name] = {
		value = 0,
		source = "player_data",
		name = breed_name,
		database_name = db_vs_badge_flame_a_hoisted_hero_name
	}

	local db_vs_badge_ratling_hit_all_heroes_name = "vs_badge_ratling_hit_all_heroes_per_breed_" .. breed_name

	player.vs_badge_ratling_hit_all_heroes_per_breed[breed_name] = {
		value = 0,
		source = "player_data",
		name = breed_name,
		database_name = db_vs_badge_ratling_hit_all_heroes_name
	}

	local db_vs_badge_warpfire_hit_all_heroes_name = "vs_badge_warpfire_hit_all_heroes_per_breed_" .. breed_name

	player.vs_badge_warpfire_hit_all_heroes_per_breed[breed_name] = {
		value = 0,
		source = "player_data",
		name = breed_name,
		database_name = db_vs_badge_warpfire_hit_all_heroes_name
	}

	local db_vs_badge_gloabadier_hit_all_heroes_name = "vs_badge_globadier_hit_all_heroes_per_breed_" .. breed_name

	player.vs_badge_globadier_hit_all_heroes_per_breed[breed_name] = {
		value = 0,
		source = "player_data",
		name = breed_name,
		database_name = db_vs_badge_globadier_hit_all_heroes_name
	}

	local db_vs_badge_ratling_damage_in_one_clip_name = "vs_badge_ratling_damage_in_one_clip_per_breed_" .. breed_name

	player.vs_badge_ratling_damage_in_one_clip_per_breed[breed_name] = {
		value = 0,
		source = "player_data",
		name = breed_name,
		database_name = db_vs_badge_ratling_damage_in_one_clip_name
	}

	local db_vs_badge_warpfire_damage_in_one_clip_name = "vs_badge_warpfire_damage_in_one_clip_per_breed_" .. breed_name

	player.vs_badge_warpfire_damage_in_one_clip_per_breed[breed_name] = {
		value = 0,
		source = "player_data",
		name = breed_name,
		database_name = db_vs_badge_warpfire_damage_in_one_clip_name
	}

	local db_vs_badge_survive_grenade_per_breed_name = "vs_badge_survive_grenade_per_breed_" .. breed_name

	player.vs_badge_survive_grenade_per_breed[breed_name] = {
		value = 0,
		source = "player_data",
		name = breed_name,
		database_name = db_vs_badge_survive_grenade_per_breed_name
	}

	local db_vs_badge_attack_healing_hero_per_breed_name = "vs_badge_attack_healing_hero_per_breed_" .. breed_name

	player.vs_badge_attack_healing_hero_per_breed[breed_name] = {
		value = 0,
		source = "player_data",
		name = breed_name,
		database_name = db_vs_badge_attack_healing_hero_per_breed_name
	}

	local db_vs_badge_grab_a_hero_per_breed_name = "vs_badge_grab_a_hero_per_breed_" .. breed_name

	player.vs_badge_grab_a_hero_per_breed[breed_name] = {
		value = 0,
		source = "player_data",
		name = breed_name,
		database_name = db_vs_badge_grab_a_hero_per_breed_name
	}

	local db_vs_badge_grab_two_heroes_per_breed_name = "vs_badge_grab_two_heroes_per_breed_" .. breed_name

	player.vs_badge_grab_two_heroes_per_breed[breed_name] = {
		value = 0,
		source = "player_data",
		name = breed_name,
		database_name = db_vs_badge_grab_two_heroes_per_breed_name
	}

	local db_vs_badge_long_haul_per_breed_name = "vs_badge_long_haul_per_breed_" .. breed_name

	player.vs_badge_long_haul_per_breed[breed_name] = {
		value = 0,
		source = "player_data",
		name = breed_name,
		database_name = db_vs_badge_long_haul_per_breed_name
	}

	local db_vs_badge_hit_dodging_hero_per_breed_name = "vs_badge_hit_dodging_hero_per_breed_" .. breed_name

	player.vs_badge_hit_dodging_hero_per_breed[breed_name] = {
		value = 0,
		source = "player_data",
		name = breed_name,
		database_name = db_vs_badge_hit_dodging_hero_per_breed_name
	}

	local db_vs_badge_hoist_hero_per_breed_name = "vs_badge_hoist_hero_per_breed_" .. breed_name

	player.vs_badge_hoist_hero_per_breed[breed_name] = {
		value = 0,
		source = "player_data",
		name = breed_name,
		database_name = db_vs_badge_hoist_hero_per_breed_name
	}

	local db_vs_badge_hit_while_reloading_per_breed_name = "vs_badge_hit_while_reloading_per_breed_" .. breed_name

	player.vs_badge_hit_while_reloading_per_breed[breed_name] = {
		value = 0,
		source = "player_data",
		name = breed_name,
		database_name = db_vs_badge_hit_while_reloading_per_breed_name
	}

	local db_vs_badge_first_hit_per_breed_name = "vs_badge_first_hit_per_breed_" .. breed_name

	player.vs_badge_first_hit_per_breed[breed_name] = {
		value = 0,
		source = "player_data",
		name = breed_name,
		database_name = db_vs_badge_first_hit_per_breed_name
	}

	local db_vs_badge_pounce_hero_per_breed_name = "vs_badge_pounce_hero_per_breed_" .. breed_name

	player.vs_badge_pounce_hero_per_breed[breed_name] = {
		value = 0,
		source = "player_data",
		name = breed_name,
		database_name = db_vs_badge_pounce_hero_per_breed_name
	}

	local db_vs_badge_long_pounce_per_breed_name = "vs_badge_long_pounce_per_breed_" .. breed_name

	player.vs_badge_long_pounce_per_breed[breed_name] = {
		value = 0,
		source = "player_data",
		name = breed_name,
		database_name = db_vs_badge_long_pounce_per_breed_name
	}

	local db_vs_badge_multiple_pounces_per_breed_name = "vs_badge_multiple_pounces_per_breed_" .. breed_name

	player.vs_badge_multiple_pounces_per_breed[breed_name] = {
		value = 0,
		source = "player_data",
		name = breed_name,
		database_name = db_vs_badge_multiple_pounces_per_breed_name
	}

	local db_vs_badge_globe_impact_per_breed_name = "vs_badge_globe_impact_per_breed_" .. breed_name

	player.vs_badge_globe_impact_per_breed[breed_name] = {
		value = 0,
		source = "player_data",
		name = breed_name,
		database_name = db_vs_badge_globe_impact_per_breed_name
	}

	local db_vs_badge_globe_impact_2_per_breed_name = "vs_badge_globe_impact_2_per_breed_" .. breed_name

	player.vs_badge_globe_impact_2_per_breed[breed_name] = {
		value = 0,
		source = "player_data",
		name = breed_name,
		database_name = db_vs_badge_globe_impact_2_per_breed_name
	}

	local db_vs_badge_globe_impact_3_per_breed_name = "vs_badge_globe_impact_3_per_breed_" .. breed_name

	player.vs_badge_globe_impact_3_per_breed[breed_name] = {
		value = 0,
		source = "player_data",
		name = breed_name,
		database_name = db_vs_badge_globe_impact_3_per_breed_name
	}

	local db_vs_badge_globe_impact_4_per_breed_name = "vs_badge_globe_impact_4_per_breed_" .. breed_name

	player.vs_badge_globe_impact_4_per_breed[breed_name] = {
		value = 0,
		source = "player_data",
		name = breed_name,
		database_name = db_vs_badge_globe_impact_4_per_breed_name
	}

	local db_vs_badge_knock_down_dragged_hero_per_breed_name = "vs_badge_knock_down_dragged_hero_per_breed_" .. breed_name

	player.vs_badge_knock_down_dragged_hero_per_breed[breed_name] = {
		value = 0,
		source = "player_data",
		name = breed_name,
		database_name = db_vs_badge_knock_down_dragged_hero_per_breed_name
	}

	local db_vs_badge_push_off_per_breed_name = "vs_badge_push_off_per_breed_" .. breed_name

	player.vs_badge_push_off_per_breed[breed_name] = {
		value = 0,
		source = "player_data",
		name = breed_name,
		database_name = db_vs_badge_push_off_per_breed_name
	}

	local db_vs_badge_stabbing_frenzy_per_breed_name = "vs_badge_stabbing_frenzy_per_breed_" .. breed_name

	player.vs_badge_stabbing_frenzy_per_breed[breed_name] = {
		value = 0,
		source = "player_data",
		name = breed_name,
		database_name = db_vs_badge_stabbing_frenzy_per_breed_name
	}

	local db_vs_badge_impact_revive_per_breed_name = "vs_badge_impact_revive_per_breed_" .. breed_name

	player.vs_badge_impact_revive_per_breed[breed_name] = {
		value = 0,
		source = "player_data",
		name = breed_name,
		database_name = db_vs_badge_impact_revive_per_breed_name
	}

	local db_vs_badge_two_downs_one_clip_per_breed_name = "vs_badge_two_downs_one_clip_per_breed_" .. breed_name

	player.vs_badge_two_downs_one_clip_per_breed[breed_name] = {
		value = 0,
		source = "player_data",
		name = breed_name,
		database_name = db_vs_badge_two_downs_one_clip_per_breed_name
	}

	local db_vs_badge_moving_target_per_breed_name = "vs_badge_moving_target_per_breed_" .. breed_name

	player.vs_badge_moving_target_per_breed[breed_name] = {
		value = 0,
		source = "player_data",
		name = breed_name,
		database_name = db_vs_badge_moving_target_per_breed_name
	}

	local db_vs_badge_long_impact_per_breed_name = "vs_badge_long_impact_per_breed_" .. breed_name

	player.vs_badge_long_impact_per_breed[breed_name] = {
		value = 0,
		source = "player_data",
		name = breed_name,
		database_name = db_vs_badge_long_impact_per_breed_name
	}

	local db_vs_badge_stealth_pounce_per_breed_name = "vs_badge_stealth_pounce_per_breed_" .. breed_name

	player.vs_badge_stealth_pounce_per_breed[breed_name] = {
		value = 0,
		source = "player_data",
		name = breed_name,
		database_name = db_vs_badge_stealth_pounce_per_breed_name
	}

	local db_vs_badge_mob_damage_per_breed_name = "vs_badge_mob_damage_per_breed_" .. breed_name

	player.vs_badge_mob_damage_per_breed[breed_name] = {
		value = 0,
		source = "player_data",
		name = breed_name,
		database_name = db_vs_badge_mob_damage_per_breed_name
	}

	local db_vs_badge_warpfire_ambush_per_breed_name = "vs_badge_warpfire_ambush_per_breed_" .. breed_name

	player.vs_badge_warpfire_ambush_per_breed[breed_name] = {
		value = 0,
		source = "player_data",
		name = breed_name,
		database_name = db_vs_badge_warpfire_ambush_per_breed_name
	}
end

player.vs_game_won = {
	value = 0,
	database_name = "vs_game_won",
	source = "player_data"
}
player.vs_game_lost = {
	value = 0,
	database_name = "vs_game_lost",
	source = "player_data"
}
player.vs_hero_monster_kill = {
	value = 0,
	database_name = "vs_hero_monster_kill",
	source = "player_data"
}
player.vs_hero_revive = {
	value = 0,
	database_name = "vs_hero_revive",
	source = "player_data"
}
player.vs_clutch_revive = {
	value = 0,
	database_name = "vs_clutch_revive",
	source = "player_data"
}
player.vs_air_gutter_runner = {
	value = 0,
	database_name = "vs_air_gutter_runner",
	source = "player_data"
}
player.vs_gas_combo = {
	value = 0,
	database_name = "vs_gas_combo",
	source = "player_data"
}
player.vs_globe_damage = {
	value = 0,
	database_name = "vs_globe_damage",
	source = "player_data"
}
player.vs_bile_troll_vomit = {
	value = 0,
	database_name = "vs_bile_troll_vomit",
	source = "player_data"
}
player.vs_kill_ko_hero = {
	value = 0,
	database_name = "vs_kill_ko_hero",
	source = "player_data"
}
player.vs_kill_hoisted_hero = {
	value = 0,
	database_name = "vs_kill_hoisted_hero",
	source = "player_data"
}
player.vs_pounce_heroes = {
	value = 0,
	database_name = "vs_pounce_heroes",
	source = "player_data"
}
player.vs_hoist_heroes = {
	value = 0,
	database_name = "vs_hoist_heroes",
	source = "player_data"
}
player.vs_gas_combo_pounce = {
	value = 0,
	database_name = "vs_gas_combo_pounce",
	source = "player_data"
}
player.vs_break_hero_shield = {
	value = 0,
	database_name = "vs_break_hero_shield",
	source = "player_data"
}
player.vs_hero_obj_reach = {
	value = 0,
	database_name = "vs_hero_obj_reach",
	source = "player_data"
}
player.vs_hero_obj_capture = {
	value = 0,
	database_name = "vs_hero_obj_capture",
	source = "player_data"
}
player.vs_hero_obj_safezone = {
	value = 0,
	database_name = "vs_hero_obj_safezone",
	source = "player_data"
}
player.vs_hero_obj_barrels = {
	value = 0,
	database_name = "vs_hero_obj_barrels",
	source = "player_data"
}
player.vs_hero_obj_chains = {
	value = 0,
	database_name = "vs_hero_obj_chains",
	source = "player_data"
}
player.vs_drag_heroes = {
	value = 0,
	database_name = "vs_drag_heroes",
	source = "player_data"
}
player.vs_disable_reviving_hero = {
	value = 0,
	database_name = "vs_disable_reviving_hero",
	source = "player_data"
}
player.vs_kill_invisible_hero = {
	value = 0,
	database_name = "vs_kill_invisible_hero",
	source = "player_data"
}
player.vs_hero_rescue = {
	value = 0,
	database_name = "vs_hero_rescue",
	source = "player_data"
}
player.vs_push_hero_off_map = {
	value = 0,
	database_name = "vs_push_hero_off_map",
	source = "player_data"
}
player.vs_rat_ogre_hit_heroes_heavy = {
	value = 0,
	database_name = "vs_rat_ogre_hit_heroes_heavy",
	source = "player_data"
}
player.vs_rat_ogre_hit_leap = {
	value = 0,
	database_name = "vs_rat_ogre_hit_leap",
	source = "player_data"
}

local db_vs_hero_eliminations = "vs_hero_eliminations"

player[db_vs_hero_eliminations] = {
	value = 0,
	source = "player_data",
	database_name = db_vs_hero_eliminations
}

for breed_name, breed in pairs(PlayerBreeds) do
	player.state_damage_dealt_as_pactsworn_breed[breed_name] = {
		value = 0,
		name = breed_name
	}
end

player.vs_award_mvp = {
	value = 0,
	database_name = "vs_award_mvp",
	source = "player_data"
}
player.vs_award_hero_killer = {
	value = 0,
	database_name = "vs_award_hero_killer",
	source = "player_data"
}
player.vs_award_slayer = {
	value = 0,
	database_name = "vs_award_slayer",
	source = "player_data"
}
player.vs_award_smiter = {
	value = 0,
	database_name = "vs_award_smiter",
	source = "player_data"
}
player.vs_award_damage_dealer = {
	value = 0,
	database_name = "vs_award_damage_dealer",
	source = "player_data"
}
player.vs_award_saviour = {
	value = 0,
	database_name = "vs_award_saviour",
	source = "player_data"
}
player.vs_award_hero_napper = {
	value = 0,
	database_name = "vs_award_hero_napper",
	source = "player_data"
}
player.vs_award_assassin = {
	value = 0,
	database_name = "vs_award_assassin",
	source = "player_data"
}
player.vs_award_horde_killer = {
	value = 0,
	database_name = "vs_award_horde_killer",
	source = "player_data"
}
player.vs_award_monster = {
	value = 0,
	database_name = "vs_award_monster",
	source = "player_data"
}
player.vs_award_troll = {
	value = 0,
	database_name = "vs_award_troll",
	source = "player_data"
}
player.vs_award_rat_ogre = {
	value = 0,
	database_name = "vs_award_rat_ogre",
	source = "player_data"
}
player.vs_award_monster_killer = {
	value = 0,
	database_name = "vs_award_monster_killer",
	source = "player_data"
}
