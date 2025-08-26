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

local function add_grudgemark(optional_data)
	local grudge_mark = optional_data.enhancements[1]
	local list = optional_data.enhancements or {}

	optional_data.enhancements = list

	return optional_data
end

local terror_event_blueprints = {
	dwarf_fest_load_bosses = {
		{
			"force_load_breed_package",
			breed_name = "skaven_rat_ogre"
		},
		{
			"force_load_breed_package",
			breed_name = "skaven_stormfiend"
		},
		{
			"force_load_breed_package",
			breed_name = "chaos_spawn"
		},
		{
			"force_load_breed_package",
			breed_name = "chaos_troll"
		}
	},
	dwarf_fest_disable_pacing = {
		{
			"control_pacing",
			enable = false
		},
		{
			"control_specials",
			enable = false
		}
	},
	dwarf_fest_enable_pacing = {
		{
			"control_pacing",
			enable = true
		},
		{
			"control_specials",
			enable = true
		}
	},
	dwarf_fest_troll_intro = {
		{
			"spawn_at_raw",
			spawner_id = "troll_intro",
			breed_name = "chaos_troll"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			condition = function (t)
				return count_breed("chaos_troll") < 1
			end
		},
		{
			"flow_event",
			flow_event_name = "dwarf_fest_troll_intro_done"
		}
	},
	dwarf_fest_troll_second = {
		{
			"set_master_event_running",
			name = "dwarf_fest_troll_second"
		},
		{
			"spawn_at_raw",
			spawner_id = "troll_second",
			breed_name = "chaos_troll"
		},
		{
			"delay",
			duration = {
				5,
				10
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "troll_second",
			breed_name = "chaos_troll"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			condition = function (t)
				return count_breed("chaos_troll") < 2
			end
		},
		{
			"flow_event",
			flow_event_name = "dwarf_fest_troll_second_almost_done"
		},
		{
			"continue_when",
			condition = function (t)
				return count_breed("chaos_troll") < 1
			end
		},
		{
			"flow_event",
			flow_event_name = "dwarf_fest_troll_second_done"
		}
	},
	dwarf_fest_troll_second_escape_horde = {
		{
			"event_horde",
			spawner_id = "2nd_troll_ladder_horde",
			composition_type = "event_extra_spice_small"
		}
	},
	dwarf_fest_troll_waterflow = {
		{
			"spawn_at_raw",
			breed_name = "chaos_troll",
			spawner_id = "troll_waterflow",
			pre_spawn_func = add_grudgemark,
			optional_data = {
				enhancements = {
					BreedEnhancements.dwarf_fest_chaos_troll_waterflow_1,
					BreedEnhancements.dwarf_fest_chaos_troll_waterflow_2
				}
			}
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			condition = function (t)
				return count_breed("chaos_troll") < 1
			end
		},
		{
			"flow_event",
			flow_event_name = "dwarf_fest_troll_waterflow_done"
		}
	},
	dwarf_fest_troll_horde_waterflow_01 = {
		{
			"event_horde",
			spawner_id = "waterflow_troll_horde_01",
			composition_type = "event_medium_chaos"
		}
	},
	dwarf_fest_troll_waterwheel = {
		{
			"spawn_at_raw",
			breed_name = "chaos_troll",
			spawner_id = "troll_waterwheel",
			pre_spawn_func = add_grudgemark,
			optional_data = {
				enhancements = {
					BreedEnhancements.dwarf_fest_chaos_troll_waterwheel_1,
					BreedEnhancements.dwarf_fest_chaos_troll_waterwheel_2
				}
			}
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			condition = function (t)
				return count_breed("chaos_troll") < 1
			end
		},
		{
			"flow_event",
			flow_event_name = "dwarf_fest_troll_waterwheel_done"
		}
	},
	dwarf_fest_troll_horde_waterwheel_01 = {
		{
			"event_horde",
			spawner_id = "waterwheel_troll_horde_01",
			composition_type = "event_medium_chaos"
		}
	},
	dwarf_fest_troll_cog = {
		{
			"spawn_at_raw",
			breed_name = "chaos_troll",
			spawner_id = "troll_cog",
			pre_spawn_func = add_grudgemark,
			optional_data = {
				enhancements = {
					BreedEnhancements.dwarf_fest_chaos_troll_cog_1,
					BreedEnhancements.dwarf_fest_chaos_troll_cog_2
				}
			}
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			condition = function (t)
				return count_breed("chaos_troll") < 1
			end
		},
		{
			"flow_event",
			flow_event_name = "dwarf_fest_troll_cog_done"
		}
	},
	dwarf_fest_troll_horde_cog_01 = {
		{
			"event_horde",
			spawner_id = "cog_troll_horde_01",
			composition_type = "event_medium_chaos"
		}
	},
	dwarf_fest_waterflow_manuals_cave_01 = {
		{
			"spawn_at_raw",
			spawner_id = "waterflow_cave_guard_01",
			breed_name = "skaven_storm_vermin"
		},
		{
			"spawn_at_raw",
			spawner_id = "waterflow_cave_guard_02",
			breed_name = "skaven_storm_vermin"
		},
		{
			"spawn_at_raw",
			spawner_id = "waterflow_cave_guard_03",
			breed_name = "skaven_storm_vermin"
		},
		{
			"spawn_at_raw",
			spawner_id = "waterflow_cave_guard_04",
			breed_name = "skaven_storm_vermin"
		},
		{
			"spawn_at_raw",
			spawner_id = "waterflow_cave_guard_05",
			breed_name = "skaven_storm_vermin"
		},
		{
			"delay",
			duration = {
				1,
				3
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "waterflow_cave_manual_02",
			amount = 1,
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_pack_master"
			}
		},
		{
			"delay",
			duration = {
				3,
				5
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "waterflow_cave_manual_01",
			amount = 1,
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_pack_master"
			}
		}
	},
	dwarf_fest_waterflow_manuals_cave_02 = {
		{
			"delay",
			duration = {
				1,
				3
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "waterflow_cave_manual_01",
			amount = 1,
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_pack_master"
			}
		},
		{
			"delay",
			duration = {
				3,
				5
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "waterflow_cave_manual_02",
			amount = 1,
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_pack_master"
			}
		}
	},
	dwarf_fest_waterflow_manuals_cave_03 = {
		{
			"spawn_at_raw",
			spawner_id = "waterflow_cave_guard_06",
			breed_name = "skaven_storm_vermin"
		},
		{
			"spawn_at_raw",
			spawner_id = "waterflow_cave_guard_07",
			breed_name = "skaven_storm_vermin"
		},
		{
			"spawn_at_raw",
			spawner_id = "waterflow_cave_manual_02",
			breed_name = "skaven_gutter_runner"
		},
		{
			"event_horde",
			spawner_id = "waterflow_cave_horde_03",
			composition_type = "event_small"
		},
		{
			"delay",
			duration = {
				2,
				5
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "waterflow_cave_manual_03",
			amount = 1,
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_pack_master"
			}
		},
		{
			"delay",
			duration = {
				2,
				5
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "waterflow_cave_manual_03",
			breed_name = "skaven_gutter_runner"
		}
	},
	dwarf_fest_waterflow_manuals_sluice_01 = {
		{
			"spawn_at_raw",
			spawner_id = "waterflow_sluice_manual_01",
			breed_name = "skaven_gutter_runner"
		},
		{
			"delay",
			duration = {
				2,
				5
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "waterflow_sluice_manual_01",
			breed_name = "skaven_ratling_gunner"
		},
		{
			"delay",
			duration = {
				2,
				5
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "waterflow_sluice_manual_01",
			breed_name = "skaven_gutter_runner"
		}
	},
	dwarf_fest_waterflow_horde_sluice_01 = {
		{
			"event_horde",
			spawner_id = "waterflow_sluice_horde_01",
			composition_type = "event_extra_spice_small"
		}
	},
	dwarf_fest_waterflow_horde_cave_01 = {
		{
			"event_horde",
			spawner_id = "waterflow_cave_horde_03",
			composition_type = "event_extra_spice_small"
		},
		{
			"delay",
			duration = {
				2,
				5
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "waterflow_cave_manual_02",
			amount = 1,
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_pack_master"
			}
		},
		{
			"event_horde",
			spawner_id = "waterflow_cave_horde_02",
			composition_type = "event_small"
		},
		{
			"delay",
			duration = 3
		},
		{
			"continue_when",
			duration = 30,
			condition = function (t)
				return count_breed("skaven_clan_rat") < 2 and count_breed("skaven_slave") < 2 and count_breed("skaven_warpfire_thrower") < 1 and count_breed("skaven_pack_master") < 1
			end
		},
		{
			"flow_event",
			flow_event_name = "dwarf_fest_waterflow_horde_cave_01_done"
		}
	},
	dwarf_fest_waterflow_horde_cave_02 = {
		{
			"event_horde",
			spawner_id = "waterflow_cave_horde_01",
			composition_type = "event_medium"
		},
		{
			"spawn_at_raw",
			spawner_id = "waterflow_cave_manual_01",
			amount = 1,
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_pack_master"
			}
		},
		{
			"delay",
			duration = {
				2,
				5
			}
		},
		{
			"event_horde",
			spawner_id = "waterflow_cave_horde_01",
			composition_type = "event_extra_spice_small"
		},
		{
			"delay",
			duration = 3
		},
		{
			"continue_when",
			duration = 30,
			condition = function (t)
				return count_breed("skaven_clan_rat") < 2 and count_breed("skaven_slave") < 2 and count_breed("skaven_warpfire_thrower") < 1 and count_breed("skaven_pack_master") < 1
			end
		},
		{
			"flow_event",
			flow_event_name = "dwarf_fest_waterflow_horde_cave_02_done"
		}
	},
	dwarf_fest_waterwheel_horde_extra = {
		{
			"event_horde",
			spawner_id = "waterwheel_cave",
			composition_type = "event_extra_spice_small"
		}
	},
	dwarf_fest_waterwheel_manual_gate = {
		{
			"spawn_at_raw",
			spawner_id = "waterwheel_gate_manual",
			breed_name = "skaven_ratling_gunner"
		}
	},
	dwarf_fest_waterwheel_horde_vista = {
		{
			"event_horde",
			spawner_id = "waterwheel_entrance",
			composition_type = "event_extra_spice_small"
		},
		{
			"delay",
			duration = {
				2,
				5
			}
		},
		{
			"event_horde",
			spawner_id = "waterwheel_hall",
			composition_type = "event_extra_spice_small"
		},
		{
			"delay",
			duration = {
				2,
				5
			}
		},
		{
			"event_horde",
			spawner_id = "waterwheel_cave",
			composition_type = "event_extra_spice_small"
		},
		{
			"continue_when",
			duration = 30,
			condition = function (t)
				return count_breed("skaven_clan_rat") < 2 and count_breed("skaven_slave") < 2
			end
		},
		{
			"flow_event",
			flow_event_name = "dwarf_fest_waterwheel_horde_vista_done"
		}
	},
	dwarf_fest_waterwheel_horde_bridge = {
		{
			"spawn_at_raw",
			spawner_id = "waterwheel_gate_manual",
			amount = 1,
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier"
			}
		},
		{
			"event_horde",
			spawner_id = "waterwheel_hall",
			composition_type = "event_small"
		},
		{
			"delay",
			duration = {
				2,
				5
			}
		},
		{
			"event_horde",
			spawner_id = "waterwheel_entrance",
			composition_type = "event_extra_spice_small"
		},
		{
			"delay",
			duration = {
				2,
				5
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "waterwheel_hall_manual_01",
			amount = 1,
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_poison_wind_globadier"
			}
		},
		{
			"event_horde",
			spawner_id = "waterwheel_hall",
			composition_type = "event_extra_spice_small"
		},
		{
			"continue_when",
			duration = 30,
			condition = function (t)
				return count_breed("skaven_clan_rat") < 2 and count_breed("skaven_slave") < 2
			end
		},
		{
			"flow_event",
			flow_event_name = "dwarf_fest_waterwheel_horde_bridge_done"
		}
	},
	dwarf_fest_waterwheel_manuals_bridge = {
		{
			"spawn_at_raw",
			spawner_id = "waterwheel_gate_manual_02",
			breed_name = "skaven_ratling_gunner"
		},
		{
			"delay",
			duration = {
				2,
				5
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "waterwheel_gate_manual_02",
			breed_name = "skaven_poison_wind_globadier"
		}
	},
	dwarf_fest_waterwheel_horde_troll_exit = {
		{
			"event_horde",
			spawner_id = "waterwheel_hall",
			composition_type = "event_medium_chaos"
		},
		{
			"delay",
			duration = {
				2,
				5
			}
		},
		{
			"event_horde",
			spawner_id = "waterwheel_hall",
			composition_type = "event_chaos_extra_spice_small"
		}
	},
	dwarf_fest_cog_manuals_entrance = {
		{
			"delay",
			duration = {
				1,
				3
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "cog_bridge_manual_01",
			breed_name = "skaven_gutter_runner"
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "cog_bridge_manual_01",
			amount = 1,
			breed_name = {
				"chaos_vortex_sorcerer",
				"chaos_corruptor_sorcerer",
				"skaven_poison_wind_globadier"
			}
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_gutter_runner",
			spawner_id = "cog_bridge_manual_02",
			difficulty_requirement = HARD
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "cog_bridge_manual_03",
			breed_name = "skaven_gutter_runner"
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_gutter_runner",
			spawner_id = "cog_bridge_manual_03",
			difficulty_requirement = HARDER
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_gutter_runner",
			spawner_id = "cog_bridge_manual_02",
			difficulty_requirement = HARDEST
		}
	},
	dwarf_fest_cog_manuals_bridge = {
		{
			"delay",
			duration = {
				1,
				3
			}
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_gutter_runner",
			spawner_id = "cog_canyon_manual_01",
			difficulty_requirement = HARD
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "cog_bridge_manual_02",
			amount = 1,
			breed_name = {
				"chaos_vortex_sorcerer",
				"skaven_poison_wind_globadier"
			}
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_gutter_runner",
			spawner_id = "cog_bridge_manual_03",
			difficulty_requirement = HARD
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_gutter_runner",
			spawner_id = "cog_bridge_manual_03",
			difficulty_requirement = HARDER
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "cog_canyon_manual_01",
			breed_name = "skaven_gutter_runner"
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_gutter_runner",
			spawner_id = "cog_bridge_manual_03",
			difficulty_requirement = HARDEST
		}
	},
	dwarf_fest_cog_manuals_canyon = {
		{
			"delay",
			duration = {
				1,
				3
			}
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_gutter_runner",
			spawner_id = "cog_canyon_manual_01",
			difficulty_requirement = HARD
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "cog_bridge_manual_02",
			amount = 1,
			breed_name = {
				"chaos_vortex_sorcerer",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_gutter_runner",
			spawner_id = "cog_bridge_manual_03",
			difficulty_requirement = HARD
		},
		{
			"delay",
			duration = {
				5,
				7
			}
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_gutter_runner",
			spawner_id = "cog_canyon_manual_01",
			difficulty_requirement = HARDEST
		}
	},
	dwarf_fest_cog_horde_event_01 = {
		{
			"spawn_at_raw",
			spawner_id = "cog_canyon_manual_01",
			amount = 1,
			breed_name = {
				"chaos_vortex_sorcerer",
				"skaven_poison_wind_globadier"
			}
		},
		{
			"event_horde",
			spawner_id = "cog_bridge_horde_03",
			composition_type = "event_extra_spice_small"
		},
		{
			"delay",
			duration = {
				5,
				8
			}
		},
		{
			"event_horde",
			spawner_id = "cog_bridge_horde_02",
			composition_type = "event_extra_spice_small"
		},
		{
			"delay",
			duration = {
				5,
				8
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "cog_canyon_manual_01",
			amount = 1,
			breed_name = {
				"skaven_warpfire_thrower",
				"chaos_corruptor_sorcerer"
			}
		},
		{
			"event_horde",
			spawner_id = "cog_bridge_horde_01",
			composition_type = "event_extra_spice_small"
		},
		{
			"flow_event",
			flow_event_name = "dwarf_fest_cog_horde_event_01_done"
		}
	},
	dwarf_fest_cog_horde_event_02a = {
		{
			"spawn_at_raw",
			spawner_id = "cog_escape_manual",
			amount = 1,
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_gutter_runner",
				"skaven_pack_master"
			}
		},
		{
			"event_horde",
			spawner_id = "cog_bridge_horde_01",
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
				return count_breed("skaven_clan_rat") < 2 and count_breed("skaven_slave") < 2
			end
		},
		{
			"flow_event",
			flow_event_name = "dwarf_fest_cog_horde_event_02_done"
		}
	},
	dwarf_fest_cog_horde_event_02b = {
		{
			"event_horde",
			spawner_id = "cog_bridge_horde_01",
			composition_type = "event_small"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 30,
			condition = function (t)
				return count_breed("skaven_clan_rat") < 2 and count_breed("skaven_slave") < 2
			end
		},
		{
			"flow_event",
			flow_event_name = "dwarf_fest_cog_horde_event_02_done"
		}
	},
	dwarf_fest_cog_horde_event_02c = {
		{
			"event_horde",
			spawner_id = "cog_bridge_horde_01",
			composition_type = "event_small_chaos"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 30,
			condition = function (t)
				return count_breed("chaos_fanatic") < 2 and count_event_breed("chaos_raider") < 3 and count_event_breed("chaos_marauder") < 3 and count_event_breed("chaos_marauder_with_shield") < 2
			end
		},
		{
			"flow_event",
			flow_event_name = "dwarf_fest_cog_horde_event_02_done"
		}
	},
	dwarf_fest_cog_event_manual_01 = {
		{
			"spawn_at_raw",
			spawner_id = "cog_escape_manual",
			amount = 1,
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer"
			},
			difficulty_requirement = HARDER
		}
	},
	dwarf_fest_cog_event_manual_02 = {
		{
			"spawn_at_raw",
			spawner_id = "cog_escape_manual",
			amount = 1,
			breed_name = {
				"skaven_warpfire_thrower",
				"skaven_gutter_runner",
				"chaos_corruptor_sorcerer"
			},
			difficulty_requirement = HARDEST
		}
	},
	dwarf_fest_troll_horde_01 = {
		{
			"spawn_at_raw",
			spawner_id = "dwarf_fest_troll_spawner_01",
			breed_name = "chaos_troll"
		},
		{
			"delay",
			duration = {
				5,
				8
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "dwarf_fest_troll_spawner_02",
			breed_name = "chaos_troll"
		}
	},
	dwarf_fest_troll_horde_02 = {
		{
			"spawn_at_raw",
			spawner_id = "dwarf_fest_troll_spawner_03",
			breed_name = "chaos_troll"
		},
		{
			"delay",
			duration = {
				5,
				8
			}
		},
		{
			"spawn_at_raw",
			spawner_id = "dwarf_fest_troll_spawner_04",
			breed_name = "chaos_troll"
		}
	},
	dwarf_fest_troll_boss = {
		{
			"spawn_at_raw",
			spawner_id = "troll_boss",
			breed_name = "chaos_troll_chief"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			condition = function (t)
				return count_breed("chaos_troll_chief") < 1
			end
		},
		{
			"flow_event",
			flow_event_name = "dwarf_fest_troll_boss_done"
		}
	},
	dwarf_fest_troll_boss_extra_01 = {},
	dwarf_fest_troll_boss_extra_02 = {}
}

return {
	terror_event_blueprints
}
