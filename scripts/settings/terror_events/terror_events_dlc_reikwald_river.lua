local TerrorEventUtils = require("scripts/settings/terror_events/terror_event_utils")

local function count_event_breed(breed_name)
	return Managers.state.conflict:count_units_by_breed_during_event(breed_name)
end

local function count_breed(breed_name)
	return Managers.state.conflict:count_units_by_breed(breed_name)
end

local function num_spawned_enemies()
	local spawned_enemies = Managers.state.conflict:spawned_enemies()

	return #spawned_enemies
end

local NORMAL = 1
local HARD = 2
local HARDER = 3
local HARDEST = 4
local CATACLYSM = 5
local terror_event_blueprints = {
	reikwald_river_pacing_off = {
		{
			"control_pacing",
			enable = false
		},
		{
			"control_specials",
			enable = false
		},
		{
			"control_hordes",
			enable = true
		}
	},
	reikwald_river_pacing_on = {
		{
			"control_pacing",
			enable = true
		},
		{
			"control_specials",
			enable = true
		},
		{
			"control_hordes",
			enable = true
		}
	},
	reikwald_river_enable_special_pacing = {
		{
			"control_specials",
			enable = true
		}
	},
	reikwald_river_disable_special_pacing = {
		{
			"control_specials",
			enable = false
		}
	},
	reikwald_river_enable_hordes_pacing = {
		{
			"control_hordes",
			enable = true
		}
	},
	reikwald_river_disable_hordes_pacing = {
		{
			"control_hordes",
			enable = false
		}
	},
	reikwald_river_plaza_01 = {
		{
			"delay",
			duration = 5
		}
	},
	reikwald_river_troll = {
		{
			"set_master_event_running",
			name = "river_troll"
		},
		{
			"spawn_at_raw",
			spawner_id = "troll_boss",
			breed_name = "chaos_troll"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			condition = function (t)
				return count_breed("chaos_troll") < 1
			end
		},
		{
			"flow_event",
			flow_event_name = "reikwald_river_troll_done"
		}
	},
	reikwald_river_troll_flush = {
		{
			"set_master_event_running",
			name = "river_troll_flush"
		},
		{
			"event_horde",
			spawner_id = "troll_cave_flush",
			composition_type = "plaza_wave_2_04"
		},
		{
			"flow_event",
			flow_event_name = "reikwald_river_troll_flush_done"
		}
	},
	reikwald_river_barrel_ambush_01 = {
		{
			"set_master_event_running",
			name = "barrel_ambush"
		},
		{
			"event_horde",
			spawner_id = "rescue_ship_ambush",
			composition_type = "event_extra_spice_small"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			spawner_id = "rescue_ship_ambush",
			composition_type = "event_extra_spice_small"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			spawner_id = "rescue_ship_ambush",
			composition_type = "event_extra_spice_small"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 30,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 5 and count_event_breed("skaven_slave") < 5
			end
		},
		{
			"flow_event",
			flow_event_name = "barrel_ambush_done"
		}
	},
	reikwald_river_swamp = {
		{
			"set_master_event_running",
			name = "warcamp_swamp"
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "warcamp_swamp_event_l",
			composition_type = "event_medium_chaos"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "warcamp_swamp_event_l",
			composition_type = "chaos_shields"
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = {
				"chaos_corruptor_sorcerer",
				"chaos_vortex_sorcerer"
			},
			difficulty_requirement = HARDER
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 40,
			condition = function (t)
				return count_event_breed("chaos_berzerker") < 3 and count_event_breed("chaos_raider") < 3 and count_event_breed("chaos_marauder") < 3 and count_event_breed("chaos_marauder_with_shield") < 2
			end
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "warcamp_swamp_event_r",
			composition_type = "chaos_berzerkers_small"
		},
		{
			"delay",
			duration = 10,
			difficulty_requirement = HARDER
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = {
				"chaos_corruptor_sorcerer",
				"chaos_vortex_sorcerer",
				"skaven_gutter_runner"
			},
			difficulty_requirement = HARDEST
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "warcamp_swamp_event_l",
			composition_type = "event_chaos_extra_spice_small",
			difficulty_requirement = HARDER
		},
		{
			"delay",
			duration = 5
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = {
				"skaven_pack_master",
				"skaven_ratling_gunner",
				"skaven_poison_wind_globadier"
			},
			difficulty_requirement = HARDER
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = {
				"chaos_corruptor_sorcerer",
				"chaos_vortex_sorcerer",
				"skaven_gutter_runner"
			},
			difficulty_requirement = HARDEST
		},
		{
			"continue_when",
			duration = 40,
			condition = function (t)
				return count_event_breed("chaos_berzerker") < 2 and count_event_breed("chaos_raider") < 3 and count_event_breed("chaos_marauder") < 3 and count_event_breed("chaos_marauder_with_shield") < 2
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "warcamp_swamp_event_l",
			composition_type = "event_small_chaos"
		},
		{
			"delay",
			duration = 5
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = {
				"skaven_pack_master",
				"skaven_gutter_runner"
			},
			difficulty_requirement = HARDEST
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "warcamp_swamp_event_l",
			composition_type = "event_chaos_extra_spice_small",
			difficulty_requirement = HARDER
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "warcamp_swamp_event_r",
			composition_type = "event_small_chaos"
		},
		{
			"delay",
			duration = 10
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = "skaven_poison_wind_globadier"
		},
		{
			"spawn_special",
			amount = 1,
			breed_name = {
				"chaos_corruptor_sorcerer",
				"chaos_vortex_sorcerer",
				"skaven_gutter_runner"
			},
			difficulty_requirement = HARDEST
		},
		{
			"continue_when",
			duration = 40,
			condition = function (t)
				return count_event_breed("chaos_berzerker") < 3 and count_event_breed("chaos_raider") < 3 and count_event_breed("chaos_marauder") < 3 and count_event_breed("chaos_marauder_with_shield") < 2
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "warcamp_swamp_event_l",
			composition_type = "event_large_chaos"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "warcamp_swamp_event_r",
			composition_type = "event_chaos_extra_spice_small",
			difficulty_requirement = HARDER
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 40,
			condition = function (t)
				return count_event_breed("chaos_berzerker") < 3 and count_event_breed("chaos_raider") < 3 and count_event_breed("chaos_marauder") < 3 and count_event_breed("chaos_marauder_with_shield") < 2
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "warcamp_swamp_event_r",
			composition_type = "event_small_chaos"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "warcamp_swamp_event_r",
			composition_type = "chaos_shields"
		},
		{
			"continue_when",
			duration = 40,
			condition = function (t)
				return count_event_breed("chaos_berzerker") < 3 and count_event_breed("chaos_raider") < 3 and count_event_breed("chaos_marauder") < 3 and count_event_breed("chaos_marauder_with_shield") < 2
			end
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "warcamp_swamp_event_r",
			composition_type = "event_small_chaos"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "warcamp_swamp_event_l",
			composition_type = "chaos_shields"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 40,
			condition = function (t)
				return count_event_breed("chaos_berzerker") < 3 and count_event_breed("chaos_raider") < 3 and count_event_breed("chaos_marauder") < 3 and count_event_breed("chaos_marauder_with_shield") < 2
			end
		},
		{
			"flow_event",
			flow_event_name = "reikwald_river_swamp_done"
		}
	},
	reikwald_river_sea_battle_chaos_01 = {
		{
			"set_master_event_running",
			name = "chaos_ship_1"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"spawn_at_raw",
			breed_name = "chaos_bulwark",
			spawner_id = "chaos_ship_01",
			difficulty_requirement = HARDEST
		},
		{
			"event_horde",
			spawner_id = "chaos_ship_01",
			composition_type = "event_large_chaos"
		},
		{
			"delay",
			duration = 3,
			difficulty_requirement = HARDER
		},
		{
			"event_horde",
			spawner_id = "chaos_ship_01",
			composition_type = "event_small_chaos"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 90,
			condition = function (t)
				return count_event_breed("chaos_berzerker") < 3 and count_event_breed("chaos_raider") < 3 and count_event_breed("chaos_marauder") < 3 and count_event_breed("chaos_marauder_with_shield") < 2 and count_event_breed("chaos_fanatic") < 4
			end
		},
		{
			"delay",
			duration = 4
		},
		{
			"flow_event",
			flow_event_name = "reikwald_river_sea_battle_chaos_01_done"
		}
	},
	reikwald_river_sea_battle_landside_01 = {
		{
			"control_pacing",
			enable = false
		},
		{
			"control_specials",
			enable = false
		},
		{
			"spawn_at_raw",
			spawner_id = "sea_battle_landside_raw_01",
			breed_name = "skaven_ratling_gunner"
		},
		{
			"spawn_at_raw",
			spawner_id = "sea_battle_landside_raw_01",
			breed_name = "skaven_ratling_gunner"
		},
		{
			"spawn_at_raw",
			spawner_id = "sea_battle_landside_raw_01",
			breed_name = "skaven_poison_wind_globadier"
		},
		{
			"spawn_at_raw",
			spawner_id = "sea_battle_landside_raw_01",
			breed_name = "skaven_poison_wind_globadier"
		}
	},
	reikwald_river_sea_battle_right_01 = {
		{
			"event_horde",
			spawner_id = "sea_battle_right_01",
			composition_type = "event_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 4 and count_event_breed("skaven_slave") < 4
			end
		},
		{
			"event_horde",
			spawner_id = "sea_battle_right_01",
			composition_type = "event_large"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 2 and count_event_breed("skaven_slave") < 2
			end
		},
		{
			"flow_event",
			flow_event_name = "reikwald_river_sea_battle_right_01_done"
		}
	},
	reikwald_river_sea_battle_left_01 = {
		{
			"event_horde",
			spawner_id = "sea_battle_left_01",
			composition_type = "event_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 4 and count_event_breed("skaven_slave") < 4
			end
		},
		{
			"event_horde",
			spawner_id = "sea_battle_left_01",
			composition_type = "event_large"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 2 and count_event_breed("skaven_slave") < 2
			end
		},
		{
			"flow_event",
			flow_event_name = "reikwald_river_sea_battle_left_01_done"
		}
	},
	reikwald_river_sea_battle_right_02 = {
		{
			"event_horde",
			spawner_id = "sea_battle_right_02",
			composition_type = "event_extra_spice_small"
		},
		{
			"event_horde",
			spawner_id = "sea_battle_right_02",
			composition_type = "event_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 4 and count_event_breed("skaven_slave") < 4 and count_event_breed("skaven_storm_vermin_commander") < 10
			end
		},
		{
			"event_horde",
			spawner_id = "sea_battle_right_02",
			composition_type = "event_large"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 4 and count_event_breed("skaven_slave") < 4 and count_event_breed("skaven_storm_vermin_commander") < 10
			end
		},
		{
			"flow_event",
			flow_event_name = "reikwald_river_sea_battle_right_02_done"
		}
	},
	reikwald_river_sea_battle_left_02 = {
		{
			"event_horde",
			spawner_id = "sea_battle_left_02",
			composition_type = "event_extra_spice_small"
		},
		{
			"event_horde",
			spawner_id = "sea_battle_left_02",
			composition_type = "event_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 4 and count_event_breed("skaven_slave") < 4 and count_event_breed("skaven_storm_vermin_commander") < 10
			end
		},
		{
			"event_horde",
			spawner_id = "sea_battle_left_02",
			composition_type = "event_large"
		},
		{
			"flow_event",
			flow_event_name = "reikwald_river_sea_battle_left_02_done"
		}
	},
	reikwald_river_sea_battle_right_03 = {
		{
			"event_horde",
			spawner_id = "sea_battle_right_03",
			composition_type = "event_extra_spice_small"
		},
		{
			"event_horde",
			spawner_id = "sea_battle_right_03",
			composition_type = "event_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_storm_vermin_commander") < 10
			end
		},
		{
			"event_horde",
			spawner_id = "sea_battle_right_03",
			composition_type = "event_extra_spice_small"
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 4 and count_event_breed("skaven_slave") < 4 and count_event_breed("skaven_storm_vermin_commander") < 10
			end
		},
		{
			"event_horde",
			spawner_id = "sea_battle_right_03",
			composition_type = "event_large"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 4 and count_event_breed("skaven_slave") < 4 and count_event_breed("skaven_storm_vermin_commander") < 10
			end
		},
		{
			"flow_event",
			flow_event_name = "reikwald_river_sea_battle_right_03_done"
		}
	},
	reikwald_river_sea_battle_left_03 = {
		{
			"event_horde",
			spawner_id = "sea_battle_left_03",
			composition_type = "event_extra_spice_small"
		},
		{
			"event_horde",
			spawner_id = "sea_battle_left_03",
			composition_type = "event_large"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_storm_vermin_commander") < 10
			end
		},
		{
			"event_horde",
			spawner_id = "sea_battle_left_03",
			composition_type = "event_extra_spice_small"
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 4 and count_event_breed("skaven_slave") < 4 and count_event_breed("skaven_storm_vermin_commander") < 10
			end
		},
		{
			"event_horde",
			spawner_id = "sea_battle_left_03",
			composition_type = "event_large"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 4 and count_event_breed("skaven_slave") < 4 and count_event_breed("skaven_storm_vermin_commander") < 10
			end
		},
		{
			"flow_event",
			flow_event_name = "reikwald_river_sea_battle_left_03_done"
		}
	},
	reikwald_river_sea_battle_front_03 = {
		{
			"event_horde",
			spawner_id = "sea_battle_front_03",
			composition_type = "event_large"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 2 and count_event_breed("skaven_slave") < 2
			end
		},
		{
			"event_horde",
			spawner_id = "sea_battle_front_03",
			composition_type = "event_large"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 4 and count_event_breed("skaven_slave") < 4
			end
		},
		{
			"flow_event",
			flow_event_name = "reikwald_river_sea_battle_front_03_done"
		}
	},
	reikwald_river_sea_battle_replace_left_01 = {
		{
			"spawn_at_raw",
			spawner_id = "raw_skaven_ship_left_01_clan_01",
			breed_name = "skaven_clan_rat"
		},
		{
			"spawn_at_raw",
			spawner_id = "raw_skaven_ship_left_01_clan_02",
			breed_name = "skaven_clan_rat"
		},
		{
			"spawn_at_raw",
			spawner_id = "raw_skaven_ship_left_01_clan_03",
			breed_name = "skaven_clan_rat"
		},
		{
			"spawn_at_raw",
			spawner_id = "raw_skaven_ship_left_01_clan_04",
			breed_name = "skaven_clan_rat"
		},
		{
			"spawn_at_raw",
			spawner_id = "raw_skaven_ship_left_01_captain",
			breed_name = "skaven_storm_vermin_commander"
		}
	},
	reikwald_river_sea_battle_replace_right_01 = {
		{
			"spawn_at_raw",
			spawner_id = "raw_skaven_ship_right_01_clan_01",
			breed_name = "skaven_clan_rat"
		},
		{
			"spawn_at_raw",
			spawner_id = "raw_skaven_ship_right_01_clan_02",
			breed_name = "skaven_clan_rat"
		},
		{
			"spawn_at_raw",
			spawner_id = "raw_skaven_ship_right_01_clan_03",
			breed_name = "skaven_clan_rat"
		},
		{
			"spawn_at_raw",
			spawner_id = "raw_skaven_ship_right_01_clan_04",
			breed_name = "skaven_clan_rat"
		},
		{
			"spawn_at_raw",
			spawner_id = "raw_skaven_ship_right_01_captain",
			breed_name = "skaven_storm_vermin_commander"
		}
	},
	reikwald_river_sea_battle_replace_left_02 = {
		{
			"spawn_at_raw",
			spawner_id = "raw_skaven_ship_left_02_clan_01",
			breed_name = "skaven_clan_rat"
		},
		{
			"spawn_at_raw",
			spawner_id = "raw_skaven_ship_left_02_clan_02",
			breed_name = "skaven_clan_rat"
		},
		{
			"spawn_at_raw",
			spawner_id = "raw_skaven_ship_left_02_clan_03",
			breed_name = "skaven_clan_rat"
		},
		{
			"spawn_at_raw",
			spawner_id = "raw_skaven_ship_left_02_clan_04",
			breed_name = "skaven_clan_rat"
		},
		{
			"spawn_at_raw",
			spawner_id = "raw_skaven_ship_left_02_captain",
			breed_name = "skaven_storm_vermin_commander"
		}
	},
	reikwald_river_sea_battle_replace_right_02 = {
		{
			"spawn_at_raw",
			spawner_id = "raw_skaven_ship_right_02_clan_01",
			breed_name = "skaven_clan_rat"
		},
		{
			"spawn_at_raw",
			spawner_id = "raw_skaven_ship_right_02_clan_02",
			breed_name = "skaven_clan_rat"
		},
		{
			"spawn_at_raw",
			spawner_id = "raw_skaven_ship_right_02_clan_03",
			breed_name = "skaven_clan_rat"
		},
		{
			"spawn_at_raw",
			spawner_id = "raw_skaven_ship_right_02_clan_04",
			breed_name = "skaven_clan_rat"
		},
		{
			"spawn_at_raw",
			spawner_id = "raw_skaven_ship_right_02_captain",
			breed_name = "skaven_storm_vermin_commander"
		}
	},
	reikwald_river_sea_battle_replace_left_03 = {
		{
			"spawn_at_raw",
			spawner_id = "raw_skaven_ship_left_03_clan_01",
			breed_name = "skaven_clan_rat"
		},
		{
			"spawn_at_raw",
			spawner_id = "raw_skaven_ship_left_03_clan_02",
			breed_name = "skaven_clan_rat"
		},
		{
			"spawn_at_raw",
			spawner_id = "raw_skaven_ship_left_03_clan_03",
			breed_name = "skaven_clan_rat"
		},
		{
			"spawn_at_raw",
			spawner_id = "raw_skaven_ship_left_03_clan_04",
			breed_name = "skaven_clan_rat"
		},
		{
			"spawn_at_raw",
			spawner_id = "raw_skaven_ship_left_03_captain",
			breed_name = "skaven_storm_vermin_commander"
		}
	},
	reikwald_river_sea_battle_replace_right_03 = {
		{
			"spawn_at_raw",
			spawner_id = "raw_skaven_ship_right_03_clan_01",
			breed_name = "skaven_clan_rat"
		},
		{
			"spawn_at_raw",
			spawner_id = "raw_skaven_ship_right_03_clan_02",
			breed_name = "skaven_clan_rat"
		},
		{
			"spawn_at_raw",
			spawner_id = "raw_skaven_ship_right_03_clan_03",
			breed_name = "skaven_clan_rat"
		},
		{
			"spawn_at_raw",
			spawner_id = "raw_skaven_ship_right_03_clan_04",
			breed_name = "skaven_clan_rat"
		},
		{
			"spawn_at_raw",
			spawner_id = "raw_skaven_ship_right_03_captain",
			breed_name = "skaven_storm_vermin_commander"
		}
	},
	reikwald_river_chaos_sword_01 = {
		{
			"set_master_event_running",
			name = "chaos_sword"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 50
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			spawner_id = "chaos_sword",
			composition_type = "event_small_chaos"
		},
		{
			"delay",
			duration = 3,
			difficulty_requirement = HARDER
		},
		{
			"event_horde",
			spawner_id = "chaos_sword",
			composition_type = "chaos_warriors",
			difficulty_requirement = HARDER
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 30,
			condition = function (t)
				return count_event_breed("chaos_berzerker") < 3 and count_event_breed("chaos_raider") < 3 and count_event_breed("chaos_marauder") < 3 and count_event_breed("chaos_marauder_with_shield") < 2 and count_event_breed("chaos_fanatic") < 4
			end
		},
		{
			"delay",
			duration = 10
		},
		{
			"flow_event",
			flow_event_name = "reikwald_river_chaos_sword_done"
		}
	},
	reikwald_river_shore_crash_01 = {
		{
			"set_master_event_running",
			name = "survive_beach_end_event"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			spawner_id = "shore_crash_01",
			composition_type = "event_extra_spice_small"
		},
		{
			"event_horde",
			spawner_id = "shore_crash_01",
			composition_type = "event_large"
		}
	},
	reikwald_river_gauntlet_01 = {
		{
			"set_master_event_running",
			name = "survive_beach_end_event"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			spawner_id = "gauntlet_01_front",
			composition_type = "event_extra_spice_small"
		},
		{
			"event_horde",
			spawner_id = "gauntlet_01",
			composition_type = "event_extra_spice_small"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 30,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 5 and count_event_breed("skaven_slave") < 5
			end
		},
		{
			"event_horde",
			spawner_id = "gauntlet_01",
			composition_type = "event_extra_spice_small"
		}
	},
	reikwald_river_gauntlet_02 = {
		{
			"set_master_event_running",
			name = "survive_beach_end_event"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"delay",
			duration = 1
		},
		{
			"event_horde",
			spawner_id = "gauntlet_02",
			composition_type = "event_extra_spice_small"
		},
		{
			"event_horde",
			spawner_id = "gauntlet_02",
			composition_type = "event_large"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 30,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 5 and count_event_breed("skaven_slave") < 5
			end
		},
		{
			"event_horde",
			spawner_id = "gauntlet_02",
			composition_type = "event_extra_spice_small"
		}
	},
	reikwald_river_gauntlet_03 = {
		{
			"set_master_event_running",
			name = "survive_beach_end_event"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"delay",
			duration = 1
		},
		{
			"event_horde",
			spawner_id = "gauntlet_03",
			composition_type = "event_extra_spice_small"
		},
		{
			"event_horde",
			spawner_id = "gauntlet_03",
			composition_type = "event_large"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 30,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 5 and count_event_breed("skaven_slave") < 5
			end
		},
		{
			"event_horde",
			spawner_id = "gauntlet_03",
			composition_type = "event_extra_spice_small"
		}
	},
	reikwald_river_survive_beach_01 = {
		{
			"control_pacing",
			enable = false
		},
		{
			"control_specials",
			enable = false
		},
		{
			"set_master_event_running",
			name = "survive_beach_end_event"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"flow_event",
			flow_event_name = "survive_beach_crescendo_starting"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "survive_beach_01",
			composition_type = "event_large"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "survive_beach_01",
			composition_type = "event_extra_spice_medium"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 10 and count_event_breed("skaven_storm_vermin_commander") < 4
			end
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "survive_beach_01",
			composition_type = "event_extra_spice_large"
		},
		{
			"disable_kick"
		},
		{
			"delay",
			duration = 3
		},
		{
			"spawn_special",
			breed_name = {
				"skaven_ratling_gunner",
				"skaven_warpfire_thrower"
			},
			difficulty_requirement = HARDER
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "survive_beach_01",
			composition_type = "event_small"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 10 and count_event_breed("skaven_storm_vermin_commander") < 4
			end
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			spawner_id = "survive_beach_01",
			composition_type = "event_medium"
		},
		{
			"delay",
			duration = 3
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "survive_beach_01",
			composition_type = "storm_vermin_shields_small"
		},
		{
			"delay",
			duration = 4
		},
		{
			"spawn_special",
			amount = 2,
			breed_name = {
				"skaven_poison_wind_globadier",
				"skaven_ratling_gunner"
			},
			difficulty_requirement = HARDEST
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "survive_beach_01",
			composition_type = "event_extra_spice_large"
		},
		{
			"delay",
			duration = 3
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "survive_beach_01",
			composition_type = "event_small"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 1,
			spawner_id = "survive_beach_01",
			composition_type = "plague_monks_medium",
			difficulty_requirement = HARDEST
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 10 and count_event_breed("skaven_storm_vermin_commander") < 4
			end
		},
		{
			"control_specials",
			enable = true
		},
		{
			"spawn_special",
			breed_name = {
				"skaven_gutter_runner",
				"skaven_pack_master"
			},
			difficulty_requirement = HARDER
		},
		{
			"spawn_special",
			breed_name = {
				"skaven_gutter_runner",
				"skaven_pack_master"
			},
			difficulty_requirement = HARDEST
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "survive_beach_01",
			composition_type = "event_medium"
		},
		{
			"delay",
			duration = 2
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "survive_beach_01",
			composition_type = "event_extra_spice_large"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "survive_beach_01",
			composition_type = "event_small"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 7 and count_event_breed("skaven_storm_vermin_commander") < 4
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "survive_beach_01",
			composition_type = "event_extra_spice_large"
		},
		{
			"spawn_special",
			breed_name = {
				"skaven_ratling_gunner",
				"skaven_poison_wind_globadier"
			},
			difficulty_requirement = HARDER
		},
		{
			"delay",
			duration = 3
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "survive_beach_01",
			composition_type = "event_small"
		},
		{
			"delay",
			duration = 3
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "survive_beach_01",
			composition_type = "plague_monks_medium",
			difficulty_requirement = HARDEST
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 10 and count_event_breed("skaven_storm_vermin_commander") < 4 and count_event_breed("skaven_plague_monk") < 2
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			spawner_id = "survive_beach_01",
			composition_type = "event_large"
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "survive_beach_01",
			composition_type = "event_extra_spice_large"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return count_event_breed("skaven_slave") < 10
			end
		},
		{
			"flow_event",
			flow_event_name = "survive_beach_event_done"
		},
		{
			"delay",
			duration = 5
		},
		{
			"control_pacing",
			enable = true
		}
	},
	reikwald_river_survive_chaos_01 = {
		{
			"set_master_event_running",
			name = "chaos_beach_1"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 50
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			spawner_id = "beach_chaos",
			composition_type = "event_large_chaos"
		},
		{
			"delay",
			duration = 3,
			difficulty_requirement = HARDER
		},
		{
			"event_horde",
			spawner_id = "beach_chaos",
			composition_type = "chaos_warriors"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 30,
			condition = function (t)
				return count_event_breed("chaos_berzerker") < 3 and count_event_breed("chaos_raider") < 3 and count_event_breed("chaos_marauder") < 3 and count_event_breed("chaos_marauder_with_shield") < 2 and count_event_breed("chaos_fanatic") < 4
			end
		},
		{
			"delay",
			duration = 10
		},
		{
			"event_horde",
			spawner_id = "beach_chaos",
			composition_type = "event_small_fanatics"
		},
		{
			"delay",
			duration = 10
		},
		{
			"flow_event",
			flow_event_name = "reikwald_river_beach_chaos_01_done"
		}
	},
	reikwald_river_survive_chaos_spice_01 = {
		{
			"set_master_event_running",
			name = "chaos_beach_spice_1"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 50
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			spawner_id = "beach_chaos",
			composition_type = "event_chaos_extra_spice_medium"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			spawner_id = "beach_chaos",
			composition_type = "chaos_warriors_small"
		},
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return count_event_breed("chaos_raider") < 2 and count_event_breed("chaos_marauder") < 2 and count_event_breed("chaos_warrior") < 1
			end
		},
		{
			"delay",
			duration = 10
		},
		{
			"flow_event",
			flow_event_name = "reikwald_river_beach_chaos_spice_01_done"
		}
	},
	reikwald_river_survive_ambush_01 = {
		{
			"set_master_event_running",
			name = "survive_ambush"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 50
		},
		{
			"event_horde",
			spawner_id = "rescue_ship_ambush",
			composition_type = "event_extra_spice_small"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			spawner_id = "rescue_ship_ambush",
			composition_type = "event_extra_spice_small"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			spawner_id = "rescue_ship_ambush",
			composition_type = "event_extra_spice_small"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 30,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 5 and count_event_breed("skaven_slave") < 5
			end
		},
		{
			"delay",
			duration = 10
		},
		{
			"flow_event",
			flow_event_name = "survive_ambush_done"
		}
	},
	reikwald_river_doombringer_01 = {
		{
			"set_master_event_running",
			name = "reikwald_river_doombringer_01"
		},
		{
			"event_horde",
			spawner_id = "finale_floor",
			composition_type = "event_extra_spice_small"
		},
		{
			"event_horde",
			spawner_id = "finale_floor",
			composition_type = "event_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_storm_vermin_commander") < 10
			end
		},
		{
			"event_horde",
			spawner_id = "doombringer_wreck",
			composition_type = "event_extra_spice_small"
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 4 and count_event_breed("skaven_slave") < 4 and count_event_breed("skaven_storm_vermin_commander") < 10
			end
		},
		{
			"event_horde",
			spawner_id = "finale_floor",
			composition_type = "event_large"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 4 and count_event_breed("skaven_slave") < 4 and count_event_breed("skaven_storm_vermin_commander") < 10
			end
		},
		{
			"flow_event",
			flow_event_name = "reikwald_river_doombringer_01_done"
		}
	},
	reikwald_river_doombringer_02 = {
		{
			"set_master_event_running",
			name = "reikwald_river_doombringer_02"
		},
		{
			"event_horde",
			spawner_id = "finale_floor",
			composition_type = "event_extra_spice_small"
		},
		{
			"event_horde",
			spawner_id = "finale_floor",
			composition_type = "event_large"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_storm_vermin_commander") < 10
			end
		},
		{
			"event_horde",
			spawner_id = "doombringer_wreck",
			composition_type = "event_extra_spice_small"
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 4 and count_event_breed("skaven_slave") < 4 and count_event_breed("skaven_storm_vermin_commander") < 10
			end
		},
		{
			"event_horde",
			spawner_id = "finale_floor",
			composition_type = "event_large"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 4 and count_event_breed("skaven_slave") < 4 and count_event_breed("skaven_storm_vermin_commander") < 10
			end
		},
		{
			"flow_event",
			flow_event_name = "reikwald_river_doombringer_02_done"
		}
	},
	reikwald_river_doombringer_03 = {
		{
			"set_master_event_running",
			name = "reikwald_river_doombringer_03"
		},
		{
			"event_horde",
			spawner_id = "finale_floor",
			composition_type = "event_large"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 2 and count_event_breed("skaven_slave") < 2
			end
		},
		{
			"event_horde",
			spawner_id = "doombringer_wreck",
			composition_type = "event_large"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 4 and count_event_breed("skaven_slave") < 4
			end
		},
		{
			"flow_event",
			flow_event_name = "reikwald_river_doombringer_03_done"
		}
	},
	reikwald_river_hooks = {
		{
			"set_master_event_running",
			name = "reikwald_river_hooks"
		},
		{
			"event_horde",
			spawner_id = "ship_sides",
			composition_type = "event_large"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 2 and count_event_breed("skaven_slave") < 2
			end
		},
		{
			"event_horde",
			spawner_id = "ship_sides",
			composition_type = "event_large"
		},
		{
			"delay",
			duration = 10
		},
		{
			"event_horde",
			spawner_id = "doombringer_specials",
			composition_type = "crater_detour"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 80,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 4 and count_event_breed("skaven_slave") < 4
			end
		},
		{
			"flow_event",
			flow_event_name = "reikwald_river_hooks_done"
		}
	}
}

return {
	terror_event_blueprints
}
