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

local function num_alive_standards()
	local alive_standards = Managers.state.conflict:alive_standards()

	return #alive_standards
end

local weighted_random_terror_events = {
	forest_end = {
		"forest_end_event_a",
		5,
		"forest_end_event_b",
		5,
		"forest_end_event_c",
		3
	},
	forest_skaven_camp = {
		"forest_skaven_camp_a",
		1,
		"forest_skaven_camp_b",
		1,
		"forest_skaven_camp_c",
		1
	}
}
local HARDER = 4
local HARDEST = 5
local terror_event_blueprints = {
	forest_ambush_pvp_pacing_off = {
		{
			"control_hordes",
			enable = false
		},
		{
			"control_pacing",
			enable = false
		}
	},
	forest_ambush_pvp_pacing_on = {
		{
			"control_hordes",
			enable = true
		},
		{
			"control_pacing",
			enable = true
		}
	},
	forest_end_event_start = {
		{
			"control_pacing",
			enable = false
		},
		{
			"control_hordes",
			enable = false
		},
		{
			"flow_event",
			flow_event_name = "forest_end_event_start_debug"
		},
		{
			"disable_kick"
		}
	},
	forest_skaven_icon_guards_01 = {
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"delay",
			duration = 1
		},
		{
			"spawn_at_raw",
			spawner_id = "forest_skaven_icon_guards_spawn_01",
			breed_name = "skaven_storm_vermin_commander"
		},
		{
			"delay",
			duration = 1
		},
		{
			"spawn_at_raw",
			spawner_id = "forest_skaven_icon_guards_spawn_05a",
			breed_name = "skaven_slave"
		},
		{
			"spawn_at_raw",
			spawner_id = "forest_skaven_icon_guards_spawn_05b",
			breed_name = "skaven_storm_vermin_commander"
		},
		{
			"spawn_at_raw",
			spawner_id = "forest_skaven_icon_guards_spawn_05c",
			breed_name = "skaven_slave"
		},
		{
			"delay",
			duration = 10
		},
		{
			"flow_event",
			flow_event_name = "forest_skaven_icon_guards_01_done"
		}
	},
	forest_skaven_icon_guards_02 = {
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"spawn_at_raw",
			spawner_id = "forest_skaven_icon_guards_spawn_03",
			breed_name = "skaven_clan_rat"
		},
		{
			"delay",
			duration = 1
		},
		{
			"spawn_at_raw",
			spawner_id = "forest_skaven_icon_guards_spawn_02a",
			breed_name = "skaven_storm_vermin_with_shield"
		},
		{
			"spawn_at_raw",
			spawner_id = "forest_skaven_icon_guards_spawn_02b",
			breed_name = "skaven_storm_vermin_with_shield"
		},
		{
			"delay",
			duration = 1
		},
		{
			"spawn_at_raw",
			spawner_id = "forest_skaven_icon_guards_spawn_04a",
			breed_name = "skaven_plague_monk"
		},
		{
			"spawn_at_raw",
			spawner_id = "forest_skaven_icon_guards_spawn_04b",
			breed_name = "skaven_plague_monk"
		},
		{
			"delay",
			duration = 10
		},
		{
			"flow_event",
			flow_event_name = "forest_skaven_icon_guards_02_done"
		}
	},
	forest_black_crone_fen_event = {
		{
			"set_master_event_running",
			name = "forest_black_crone_fen_event"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			spawner_id = "black_crone_fen_event_spawner",
			composition_type = "event_small"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			spawner_id = "black_crone_fen_event_spawner",
			composition_type = "event_extra_spice_small"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			spawner_id = "black_crone_fen_event_spawner",
			composition_type = "plague_monks_small"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 90,
			condition = function (t)
				return count_event_breed("skaven_slave") < 2 and count_event_breed("skaven_clan_rat") < 3 and count_event_breed("skaven_clan_rat_with_shield") < 3 and count_event_breed("skaven_storm_vermin_commander") < 2 and count_event_breed("skaven_plague_monk") < 1
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"flow_event",
			flow_event_name = "forest_black_crone_fen_event_done"
		}
	},
	watch_tower_guards_01 = {
		{
			"play_stinger",
			stinger_name = "enemy_horde_beastmen_stinger"
		},
		{
			"spawn_at_raw",
			spawner_id = "watch_tower_guards_spawn_01",
			breed_name = "beastmen_bestigor"
		},
		{
			"delay",
			duration = 1
		},
		{
			"spawn_at_raw",
			spawner_id = "watch_tower_guards_spawn_02",
			breed_name = "beastmen_ungor_archer"
		},
		{
			"delay",
			duration = 1
		},
		{
			"spawn_at_raw",
			spawner_id = "watch_tower_guards_spawn_03",
			breed_name = "beastmen_ungor_archer"
		},
		{
			"delay",
			duration = 1
		},
		{
			"spawn_at_raw",
			spawner_id = "watch_tower_guards_spawn_04",
			breed_name = "beastmen_ungor_archer"
		},
		{
			"delay",
			duration = 1
		},
		{
			"spawn_at_raw",
			spawner_id = "watch_tower_guards_spawn_05",
			breed_name = "beastmen_ungor_archer"
		},
		{
			"delay",
			duration = 10
		},
		{
			"flow_event",
			flow_event_name = "watch_tower_guards_01_done"
		}
	},
	watch_tower_attack_loop = {
		{
			"set_freeze_condition",
			max_active_enemies = 80
		},
		{
			"set_master_event_running",
			name = "watch_tower_attack_loop"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_beastmen_stinger"
		},
		{
			"event_horde",
			limit_spawners = 8,
			spawner_id = "watch_tower_intro_wave_spawn",
			composition_type = "event_small_beastmen"
		},
		{
			"delay",
			duration = 5
		},
		{
			"spawn_at_raw",
			spawner_id = "watch_tower_event_01_banners",
			breed_name = "beastmen_standard_bearer"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return count_event_breed("beastmen_gor") < 3 and count_event_breed("beastmen_ungor") < 3
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"flow_event",
			flow_event_name = "watch_tower_attack_loop_done"
		}
	},
	watch_tower_event_wave_01 = {
		{
			"set_freeze_condition",
			max_active_enemies = 80
		},
		{
			"set_master_event_running",
			name = "watch_tower_event_wave_01"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_beastmen_stinger"
		},
		{
			"event_horde",
			limit_spawners = 8,
			spawner_id = "watch_tower_event_wave_01_spawn",
			composition_type = "event_small_beastmen"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return count_event_breed("beastmen_gor") < 3 and count_event_breed("beastmen_ungor") < 3
			end
		},
		{
			"delay",
			duration = 10
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "beastmen_bestigor_spawn",
			composition_type = "bestigors"
		},
		{
			"delay",
			duration = 3
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "watch_tower_event_wave_01_spawn",
			composition_type = "ungor_archers"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return count_event_breed("beastmen_bestigor") < 2 and count_event_breed("beastmen_ungor_archer") < 2
			end
		},
		{
			"delay",
			duration = 10
		},
		{
			"flow_event",
			flow_event_name = "watch_tower_event_wave_01_done"
		}
	},
	watch_tower_event_wave_02 = {
		{
			"set_freeze_condition",
			max_active_enemies = 80
		},
		{
			"set_master_event_running",
			name = "watch_tower_event_wave_02"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_beastmen_stinger"
		},
		{
			"event_horde",
			limit_spawners = 8,
			spawner_id = "watch_tower_event_wave_02_spawn",
			composition_type = "event_small_beastmen"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return count_event_breed("beastmen_gor") < 2 and count_event_breed("beastmen_ungor") < 2
			end
		},
		{
			"flow_event",
			flow_event_name = "watch_tower_event_wave_02_done"
		}
	},
	forest_chaos_prisoners_guards_01 = {
		{
			"delay",
			duration = 1
		},
		{
			"spawn_at_raw",
			spawner_id = "forest_chaos_prisoners_guards_spawn_01",
			breed_name = "chaos_warrior"
		},
		{
			"delay",
			duration = 1
		},
		{
			"spawn_at_raw",
			spawner_id = "forest_chaos_prisoners_guards_spawn_02",
			breed_name = "chaos_raider"
		},
		{
			"delay",
			duration = 1
		},
		{
			"spawn_at_raw",
			spawner_id = "forest_chaos_prisoners_guards_spawn_03",
			breed_name = "chaos_warrior"
		},
		{
			"delay",
			duration = 1
		},
		{
			"spawn_at_raw",
			spawner_id = "forest_chaos_prisoners_guards_spawn_05",
			breed_name = "chaos_marauder"
		},
		{
			"delay",
			duration = 10
		},
		{
			"flow_event",
			flow_event_name = "forest_chaos_prisoners_guards_01_done"
		}
	},
	forest_chaos_prisoners_guards_02 = {
		{
			"delay",
			duration = 1
		},
		{
			"spawn_at_raw",
			spawner_id = "forest_chaos_prisoners_guards_spawn_04a",
			breed_name = "chaos_marauder"
		},
		{
			"spawn_at_raw",
			spawner_id = "forest_chaos_prisoners_guards_spawn_04b",
			breed_name = "chaos_marauder"
		},
		{
			"delay",
			duration = 10
		},
		{
			"flow_event",
			flow_event_name = "forest_chaos_prisoners_guards_02_done"
		}
	},
	forest_skaven_camp_guards_01 = {
		{
			"spawn_at_raw",
			spawner_id = "forest_skaven_camp_guards_01a",
			breed_name = "skaven_storm_vermin_commander"
		},
		{
			"spawn_at_raw",
			spawner_id = "forest_skaven_camp_guards_01b",
			breed_name = "skaven_storm_vermin_commander"
		},
		{
			"spawn_at_raw",
			spawner_id = "forest_skaven_camp_guards_01c",
			breed_name = "skaven_storm_vermin_with_shield"
		}
	},
	forest_skaven_camp_guards_02 = {
		{
			"spawn_at_raw",
			spawner_id = "forest_skaven_camp_guards_02a",
			breed_name = "skaven_storm_vermin_commander"
		},
		{
			"spawn_at_raw",
			spawner_id = "forest_skaven_camp_guards_02b",
			breed_name = "skaven_storm_vermin_with_shield"
		},
		{
			"spawn_at_raw",
			spawner_id = "forest_skaven_camp_guards_02c",
			breed_name = "skaven_storm_vermin_commander"
		}
	},
	forest_skaven_camp_guards_03 = {
		{
			"spawn_at_raw",
			spawner_id = "forest_skaven_camp_guards_03a",
			breed_name = "skaven_storm_vermin_with_shield"
		},
		{
			"spawn_at_raw",
			spawner_id = "forest_skaven_camp_guards_03b",
			breed_name = "skaven_storm_vermin_commander"
		},
		{
			"spawn_at_raw",
			spawner_id = "forest_skaven_camp_guards_03c",
			breed_name = "skaven_storm_vermin_commander"
		}
	},
	forest_skaven_camp_loop = {
		{
			"enable_bots_in_carry_event"
		},
		{
			"set_master_event_running",
			name = "forest_camp"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 8,
			spawner_id = "skaven_camp_loop",
			composition_type = "event_small"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 30,
			condition = function (t)
				return count_event_breed("skaven_slave") < 4 and count_event_breed("skaven_clan_rat") < 4
			end
		},
		{
			"delay",
			duration = 10
		},
		{
			"flow_event",
			flow_event_name = "forest_skaven_camp_loop_restart"
		}
	},
	forest_skaven_camp_resistance_loop = {
		{
			"enable_bots_in_carry_event"
		},
		{
			"set_master_event_running",
			name = "forest_camp"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 8,
			spawner_id = "skaven_camp_loop",
			composition_type = "event_smaller"
		},
		{
			"continue_when",
			duration = 120,
			condition = function (t)
				return count_event_breed("skaven_slave") < 4 and count_event_breed("skaven_clan_rat") < 4
			end
		},
		{
			"delay",
			duration = 10
		},
		{
			"flow_event",
			flow_event_name = "forest_skaven_camp_resistance_loop_restart"
		}
	},
	forest_skaven_camp_a = {
		{
			"enable_bots_in_carry_event"
		},
		{
			"set_master_event_running",
			name = "forest_camp"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			spawner_id = "forest_skaven_camp",
			composition_type = "event_smaller"
		},
		{
			"continue_when",
			duration = 120,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 4 and count_event_breed("skaven_slave") < 4
			end
		},
		{
			"delay",
			duration = 15
		},
		{
			"event_horde",
			spawner_id = "forest_skaven_camp",
			composition_type = "event_smaller"
		},
		{
			"continue_when",
			duration = 120,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 4 and count_event_breed("skaven_slave") < 4
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"flow_event",
			flow_event_name = "forest_skaven_camp_a_done"
		}
	},
	forest_skaven_camp_b = {
		{
			"enable_bots_in_carry_event"
		},
		{
			"set_master_event_running",
			name = "forest_camp"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			spawner_id = "forest_skaven_camp",
			composition_type = "event_smaller"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			spawner_id = "forest_skaven_camp",
			composition_type = "plague_monks_small"
		},
		{
			"continue_when",
			duration = 120,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 4 and count_event_breed("skaven_slave") < 4 and count_event_breed("skaven_plague_monk") < 1
			end
		},
		{
			"delay",
			duration = 15
		},
		{
			"flow_event",
			flow_event_name = "forest_skaven_camp_b_done"
		}
	},
	forest_skaven_camp_c = {
		{
			"enable_bots_in_carry_event"
		},
		{
			"set_master_event_running",
			name = "forest_camp"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			spawner_id = "forest_skaven_camp",
			composition_type = "event_smaller"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 120,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 4 and count_event_breed("skaven_slave") < 4
			end
		},
		{
			"delay",
			duration = 15
		},
		{
			"event_horde",
			spawner_id = "forest_skaven_camp",
			composition_type = "event_smaller"
		},
		{
			"continue_when",
			duration = 120,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 4 and count_event_breed("skaven_slave") < 4
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"flow_event",
			flow_event_name = "forest_skaven_camp_c_done"
		}
	},
	forest_end_event_a = {
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"set_master_event_running",
			name = "forest_finale"
		},
		{
			"disable_kick"
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			spawner_id = "forest_end_event_a_skaven",
			composition_type = "event_small"
		},
		{
			"delay",
			duration = 10
		},
		{
			"event_horde",
			spawner_id = "forest_end_event_a_skaven",
			composition_type = "storm_vermin_shields_small"
		},
		{
			"event_horde",
			spawner_id = "forest_end_event_a_skaven",
			composition_type = "plague_monks_small"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 120,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 5 and count_event_breed("skaven_slave") < 5 and count_event_breed("skaven_plague_monk") < 5
			end
		},
		{
			"delay",
			duration = 10
		},
		{
			"flow_event",
			flow_event_name = "forest_end_event_restart"
		}
	},
	forest_end_event_b = {
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"set_master_event_running",
			name = "forest_finale"
		},
		{
			"disable_kick"
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			spawner_id = "forest_end_event_chaos",
			composition_type = "event_small_chaos"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 120,
			condition = function (t)
				return count_event_breed("chaos_marauder") < 4 and count_event_breed("chaos_fanatic") < 4
			end
		},
		{
			"event_horde",
			spawner_id = "forest_end_event_chaos",
			composition_type = "event_chaos_extra_spice_small"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 120,
			condition = function (t)
				return count_event_breed("chaos_marauder") < 3 and count_event_breed("chaos_fanatic") < 3 and count_event_breed("chaos_raider") < 2
			end
		},
		{
			"delay",
			duration = 10
		},
		{
			"flow_event",
			flow_event_name = "forest_end_event_restart"
		}
	},
	forest_end_event_c = {
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"set_master_event_running",
			name = "forest_finale"
		},
		{
			"disable_kick"
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			spawner_id = "forest_end_event_c_skaven",
			composition_type = "event_small"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			spawner_id = "forest_end_event_c_skaven",
			composition_type = "storm_vermin_small"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 120,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 5 and count_event_breed("skaven_slave") < 5 and count_event_breed("skaven_storm_vermin") < 2
			end
		},
		{
			"delay",
			duration = {
				3,
				7
			}
		},
		{
			"flow_event",
			flow_event_name = "forest_end_event_restart"
		}
	},
	forest_end_finale = {
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"set_master_event_running",
			name = "forest_finale"
		},
		{
			"disable_kick"
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			spawner_id = "forest_end_event_finale",
			composition_type = "event_small"
		},
		{
			"event_horde",
			spawner_id = "forest_end_event_chaos",
			composition_type = "chaos_warriors"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 120,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 5 and count_event_breed("skaven_slave") < 5
			end
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 120,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 5 and count_event_breed("skaven_slave") < 5 and count_event_breed("chaos_warrior") < 2
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"flow_event",
			flow_event_name = "forest_end_event_restart"
		}
	},
	forest_end_event_loop = {
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"set_master_event_running",
			name = "forest_finale"
		},
		{
			"event_horde",
			limit_spawners = 2,
			spawner_id = "forest_end_event",
			composition_type = "event_extra_spice_small"
		},
		{
			"delay",
			duration = 7
		},
		{
			"continue_when",
			duration = 45,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 3 and count_event_breed("skaven_slave") < 3 and count_event_breed("skaven_storm_vermin_commander") < 2
			end
		},
		{
			"delay",
			duration = 4
		},
		{
			"flow_event",
			flow_event_name = "forest_end_event_loop_restart"
		}
	}
}

return terror_event_blueprints, weighted_random_terror_events
