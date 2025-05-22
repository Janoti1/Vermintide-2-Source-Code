local TerrorEventUtils = require("scripts/settings/terror_events/terror_event_utils")
local count_event_breed = TerrorEventUtils.count_event_breed
local num_spawned_enemies = TerrorEventUtils.num_spawned_enemies
local HARD = TerrorEventUtils.HARD
local HARDER = TerrorEventUtils.HARDER
local HARDEST = TerrorEventUtils.HARDEST

local function setup_grudgemarked_stormfiend(optional_data, difficulty, breed_name, event, difficulty_tweak, enhancement_list)
	local base_grudgemark_name = "termite_base"
	local list = optional_data.enhancements or {}

	list[#list + 1] = BreedEnhancements[base_grudgemark_name]
	optional_data.enhancements = list

	return optional_data
end

local terror_event_blueprints = {
	pacing_off = {
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
			enable = false
		}
	},
	pacing_on = {
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
	pacing_only_specials = {
		{
			"control_pacing",
			enable = false
		},
		{
			"control_specials",
			enable = true
		}
	},
	enable_special_pacing = {
		{
			"control_specials",
			enable = true
		}
	},
	disable_special_pacing = {
		{
			"control_specials",
			enable = false
		}
	},
	enable_hordes_pacing = {
		{
			"control_hordes",
			enable = true
		}
	},
	disable_hordes_pacing = {
		{
			"control_hordes",
			enable = false
		}
	},
	termite_lvl3_guards_start = {
		{
			"spawn_at_raw",
			spawner_id = "start_guards_1",
			breed_name = "skaven_storm_vermin_commander"
		}
	},
	spotlight_triggered_broken = {
		{
			"set_master_event_running",
			name = "spotlight_triggered_broken"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"spawn_patrol",
			spline_type = "event",
			patrol_template = "spline_patrol",
			formations = {
				"storm_vermin_two_column"
			},
			splines = {
				"event_1"
			}
		},
		{
			"delay",
			duration = 5
		},
		{
			"spawn_special",
			spawner_id = "broken_spotlight",
			breed_name = {
				"skaven_ratling_gunner",
				"skaven_gutter_runner"
			},
			amount = {
				1,
				2
			}
		},
		{
			"delay",
			duration = 3
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_storm_vermin_commander",
			spawner_id = "broken_spotlight",
			difficulty_requirement = HARD
		},
		{
			"delay",
			duration = 2
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_pack_master",
			spawner_id = "broken_spotlight",
			difficulty_requirement = HARDER
		},
		{
			"delay",
			duration = 2
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_poison_wind_globadier",
			spawner_id = "broken_spotlight",
			difficulty_requirement = HARDEST
		},
		{
			"delay",
			duration = 2
		},
		{
			"delay",
			duration = 5
		},
		{
			"control_specials",
			enable = true
		},
		{
			"continue_when",
			duration = 90,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 5 and count_event_breed("skaven_slave") < 5 and count_event_breed("skaven_storm_vermin") < 1 and count_event_breed("skaven_storm_vermin_with_shield") < 1
			end
		},
		{
			"delay",
			duration = 30
		},
		{
			"flow_event",
			flow_event_name = "spotlight_broken_done"
		}
	},
	spotlight_triggered_spot_1 = {
		{
			"set_master_event_running",
			name = "spotlight_triggered_spot_1"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"spawn_patrol",
			spline_type = "event",
			patrol_template = "spline_patrol",
			formations = {
				"storm_vermin_two_column"
			},
			splines = {
				"event_2"
			}
		},
		{
			"delay",
			duration = 5
		},
		{
			"spawn_special",
			spawner_id = "first_spotlight",
			breed_name = {
				"skaven_ratling_gunner",
				"skaven_gutter_runner"
			},
			amount = {
				1,
				2
			}
		},
		{
			"delay",
			duration = 3
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_storm_vermin_commander",
			spawner_id = "first_spotlight",
			difficulty_requirement = HARD
		},
		{
			"delay",
			duration = 2
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_pack_master",
			spawner_id = "first_spotlight",
			difficulty_requirement = HARDER
		},
		{
			"delay",
			duration = 2
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_poison_wind_globadier",
			spawner_id = "first_spotlight",
			difficulty_requirement = HARDEST
		},
		{
			"delay",
			duration = 2
		},
		{
			"delay",
			duration = 5
		},
		{
			"control_specials",
			enable = true
		},
		{
			"continue_when",
			duration = 90,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 5 and count_event_breed("skaven_slave") < 5 and count_event_breed("skaven_storm_vermin") < 1 and count_event_breed("skaven_storm_vermin_with_shield") < 1
			end
		},
		{
			"delay",
			duration = 30
		},
		{
			"flow_event",
			flow_event_name = "spotlight_spot_2_done"
		}
	},
	spotlight_triggered_spot_2 = {
		{
			"set_master_event_running",
			name = "spotlight_triggered_spot_2"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"spawn_patrol",
			spline_type = "event",
			patrol_template = "spline_patrol",
			formations = {
				"storm_vermin_two_column"
			},
			splines = {
				"event_3"
			}
		},
		{
			"delay",
			duration = 5
		},
		{
			"spawn_special",
			spawner_id = "second_spotlight",
			breed_name = {
				"skaven_ratling_gunner",
				"skaven_gutter_runner"
			},
			amount = {
				1,
				2
			}
		},
		{
			"delay",
			duration = 3
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_storm_vermin_commander",
			spawner_id = "second_spotlight",
			difficulty_requirement = HARD
		},
		{
			"delay",
			duration = 2
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_pack_master",
			spawner_id = "second_spotlight",
			difficulty_requirement = HARDER
		},
		{
			"delay",
			duration = 2
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_poison_wind_globadier",
			spawner_id = "second_spotlight",
			difficulty_requirement = HARDEST
		},
		{
			"delay",
			duration = 2
		},
		{
			"delay",
			duration = 5
		},
		{
			"control_specials",
			enable = true
		},
		{
			"continue_when",
			duration = 90,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 5 and count_event_breed("skaven_slave") < 5 and count_event_breed("skaven_storm_vermin") < 1 and count_event_breed("skaven_storm_vermin_with_shield") < 1
			end
		},
		{
			"delay",
			duration = 30
		},
		{
			"flow_event",
			flow_event_name = "spotlight_spot_3_done"
		}
	},
	spotlight_ratlings = {
		{
			"set_master_event_running",
			name = "spotlight_ratlings"
		},
		{
			"delay",
			duration = 1
		},
		{
			"spawn_at_raw",
			spawner_id = "second_ratling_1",
			breed_name = "skaven_ratling_gunner"
		},
		{
			"delay",
			duration = 1
		},
		{
			"spawn_at_raw",
			spawner_id = "second_ratling_2",
			breed_name = "skaven_ratling_gunner"
		},
		{
			"continue_when",
			condition = function (t)
				return count_event_breed("skaven_ratling_gunner") < 2
			end
		},
		{
			"flow_event",
			flow_event_name = "second_ratling_done"
		}
	},
	spotlight_triggered_spot_3 = {
		{
			"set_master_event_running",
			name = "spotlight_triggered_spot_3"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"spawn_patrol",
			spline_type = "event",
			patrol_template = "spline_patrol",
			formations = {
				"storm_vermin_two_column"
			},
			splines = {
				"event_4"
			}
		},
		{
			"delay",
			duration = 5
		},
		{
			"spawn_special",
			spawner_id = "third_spotlight",
			breed_name = {
				"skaven_ratling_gunner",
				"skaven_gutter_runner"
			},
			amount = {
				1,
				2
			}
		},
		{
			"delay",
			duration = 3
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_storm_vermin_commander",
			spawner_id = "third_spotlight",
			difficulty_requirement = HARD
		},
		{
			"delay",
			duration = 2
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_pack_master",
			spawner_id = "third_spotlight",
			difficulty_requirement = HARDER
		},
		{
			"delay",
			duration = 2
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_poison_wind_globadier",
			spawner_id = "third_spotlight",
			difficulty_requirement = HARDEST
		},
		{
			"delay",
			duration = 2
		},
		{
			"delay",
			duration = 5
		},
		{
			"control_specials",
			enable = true
		},
		{
			"continue_when",
			duration = 90,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 5 and count_event_breed("skaven_slave") < 5 and count_event_breed("skaven_storm_vermin") < 1 and count_event_breed("skaven_storm_vermin_with_shield") < 1
			end
		},
		{
			"delay",
			duration = 30
		},
		{
			"flow_event",
			flow_event_name = "spotlight_spot_4_done"
		}
	},
	monks_random_statues = {
		{
			"set_master_event_running",
			name = "monks_random_statues"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "monks_statues",
			composition_type = "plague_monks_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"flow_event",
			flow_event_name = "monks_random_statues_done"
		}
	},
	monks_random = {
		{
			"set_master_event_running",
			name = "monks_random"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "plague_monks",
			composition_type = "plague_monks_medium"
		},
		{
			"delay",
			duration = 10
		},
		{
			"flow_event",
			flow_event_name = "monks_random_done"
		}
	},
	portal_view_linger = {
		{
			"set_master_event_running",
			name = "portal_view_linger"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"spawn_patrol",
			spline_type = "event",
			patrol_template = "spline_patrol",
			formations = {
				"storm_vermin_two_column"
			},
			splines = {
				"event_5"
			}
		},
		{
			"flow_event",
			flow_event_name = "portal_view_linger_done"
		}
	},
	termite_lvl3_stormfiend_extra_a = {
		{
			"spawn_at_raw",
			spawner_id = "final_arena_first",
			breed_name = "skaven_storm_vermin_commander"
		},
		{
			"spawn_at_raw",
			spawner_id = "final_arena_first",
			breed_name = "skaven_storm_vermin_commander"
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_storm_vermin_commander",
			spawner_id = "final_arena_first",
			difficulty_requirement = HARD
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_storm_vermin_commander",
			spawner_id = "final_arena_first",
			difficulty_requirement = HARDER
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_storm_vermin_commander",
			spawner_id = "final_arena_first",
			difficulty_requirement = HARDEST
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_storm_vermin_commander",
			spawner_id = "final_arena_first",
			difficulty_requirement = HARDEST
		}
	},
	termite_lvl3_stormfiend_extra_b = {
		{
			"spawn_at_raw",
			spawner_id = "final_arena_first",
			breed_name = "skaven_pack_master"
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_ratling_gunner",
			spawner_id = "final_arena_first",
			difficulty_requirement = HARD
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_gutter_runner",
			spawner_id = "final_arena_first",
			difficulty_requirement = HARDER
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_pack_master",
			spawner_id = "final_arena_first",
			difficulty_requirement = HARDEST
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_ratling_gunner",
			spawner_id = "final_arena_first",
			difficulty_requirement = HARDEST
		}
	},
	termite_lvl3_stormfiend_extra_c = {
		{
			"spawn_at_raw",
			spawner_id = "final_arena_first",
			breed_name = "skaven_gutter_runner"
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_gutter_runner",
			spawner_id = "final_arena_first",
			difficulty_requirement = HARD
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_gutter_runner",
			spawner_id = "final_arena_first",
			difficulty_requirement = HARDER
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_pack_master",
			spawner_id = "final_arena_first",
			difficulty_requirement = HARDEST
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_poison_wind_globadier",
			spawner_id = "final_arena_first",
			difficulty_requirement = HARDEST
		}
	},
	termite_3_spawn_stormfiends = {
		{
			"set_master_event_running",
			name = "termite_3_stormfiends"
		},
		{
			"spawn_at_raw",
			{
				1,
				1
			},
			breed_name = "skaven_stormfiend",
			spawner_id = "spawner_stormvermin_normal",
			optional_data = {
				force_boss_health_ui = true,
				spawn_chance = 1
			}
		},
		{
			"delay",
			duration = 5
		},
		{
			"spawn_at_raw",
			{
				1,
				1
			},
			breed_name = "skaven_rat_ogre",
			spawner_id = "spawner_stormvermin_new",
			optional_data = {
				force_boss_health_ui = true,
				spawn_chance = 1
			}
		},
		{
			"continue_when",
			condition = function (t)
				return count_event_breed("skaven_stormfiend") < 1 or count_event_breed("skaven_rat_ogre") < 1
			end
		},
		{
			"flow_event",
			flow_event_name = "termite_3_spawn_end_event_extras"
		},
		{
			"continue_when",
			condition = function (t)
				return count_event_breed("skaven_stormfiend") < 1 and count_event_breed("skaven_rat_ogre") < 1
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"flow_event",
			flow_event_name = "termite_3_spawn_stormfiends_done"
		}
	},
	termite_3_end_event_1 = {
		{
			"set_master_event_running",
			name = "termite_3_end_event_1"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"disable_kick"
		},
		{
			"event_horde",
			spawner_id = "final_arena_first",
			composition_type = "event_small"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			spawner_id = "final_arena_first",
			composition_type = "event_medium"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 120,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 5 and count_event_breed("skaven_slave") < 5
			end
		},
		{
			"flow_event",
			flow_event_name = "termite_03_end_event_01_done"
		}
	},
	termite_3_stage_two = {
		{
			"set_master_event_running",
			name = "termite_3_stage_two"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 50
		},
		{
			"disable_kick"
		},
		{
			"delay",
			duration = 3
		},
		{
			"event_horde",
			spawner_id = "final_arena_upper",
			composition_type = "plaza_wave_4_04"
		},
		{
			"event_horde",
			spawner_id = "end_pillar_spawns",
			composition_type = "plaza_wave_4_04"
		},
		{
			"delay",
			duration = 5
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_ratling_gunner",
			spawner_id = "end_arena_lower",
			difficulty_requirement = HARDEST
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_warpfire_thrower",
			spawner_id = "final_arena_upper",
			difficulty_requirement = HARDEST
		},
		{
			"event_horde",
			spawner_id = "final_arena_upper",
			composition_type = "plaza_wave_4_04"
		},
		{
			"event_horde",
			spawner_id = "end_arena_lower",
			composition_type = "plaza_wave_4_05"
		},
		{
			"delay",
			duration = 2
		},
		{
			"continue_when",
			duration = 45,
			condition = function (t)
				return num_spawned_enemies() < 6
			end
		},
		{
			"event_horde",
			spawner_id = "end_pillar_spawns",
			composition_type = "plaza_wave_4_04"
		},
		{
			"event_horde",
			spawner_id = "end_arena_lower",
			composition_type = "plaza_wave_4_05"
		},
		{
			"delay",
			duration = 2
		},
		{
			"spawn_at_raw",
			spawner_id = "final_arena_upper",
			breed_name = "skaven_poison_wind_globadier"
		},
		{
			"delay",
			duration = 1
		},
		{
			"spawn_at_raw",
			spawner_id = "end_arena_lower",
			breed_name = "skaven_ratling_gunner"
		},
		{
			"delay",
			duration = 1,
			difficulty_requirement = HARD
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_poison_wind_globadier",
			spawner_id = "end_arena_lower",
			difficulty_requirement = HARD
		},
		{
			"delay",
			duration = 1,
			difficulty_requirement = HARD
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_warpfire_thrower",
			spawner_id = "final_arena_upper",
			difficulty_requirement = HARD
		},
		{
			"delay",
			duration = 1,
			difficulty_requirement = HARDER
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_warpfire_thrower",
			spawner_id = "end_arena_lower",
			difficulty_requirement = HARDER
		},
		{
			"continue_when",
			duration = 45,
			condition = function (t)
				return num_spawned_enemies() < 5
			end
		},
		{
			"event_horde",
			spawner_id = "final_arena_upper",
			composition_type = "plaza_wave_4_04"
		},
		{
			"event_horde",
			spawner_id = "end_pillar_spawns",
			composition_type = "plaza_wave_4_04"
		},
		{
			"delay",
			duration = 2
		},
		{
			"spawn_at_raw",
			spawner_id = "final_arena_upper",
			breed_name = "skaven_ratling_gunner"
		},
		{
			"delay",
			duration = 1
		},
		{
			"spawn_at_raw",
			spawner_id = "final_arena_upper",
			breed_name = "skaven_warpfire_thrower"
		},
		{
			"delay",
			duration = 1
		},
		{
			"spawn_at_raw",
			spawner_id = "end_arena_lower",
			breed_name = "skaven_ratling_gunner"
		},
		{
			"delay",
			duration = 1,
			difficulty_requirement = HARD
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_warpfire_thrower",
			spawner_id = "final_arena_upper",
			difficulty_requirement = HARD
		},
		{
			"delay",
			duration = 1,
			difficulty_requirement = HARD
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_ratling_gunner",
			spawner_id = "end_arena_lower",
			difficulty_requirement = HARD
		},
		{
			"delay",
			duration = 2
		},
		{
			"continue_when",
			duration = 45,
			condition = function (t)
				return num_spawned_enemies() < 6
			end
		},
		{
			"event_horde",
			spawner_id = "final_arena_upper",
			composition_type = "plaza_wave_4_05"
		},
		{
			"event_horde",
			spawner_id = "end_arena_lower",
			composition_type = "plaza_wave_4_05"
		},
		{
			"event_horde",
			spawner_id = "end_pillar_spawns",
			composition_type = "plaza_wave_4_04"
		},
		{
			"delay",
			duration = 4
		},
		{
			"spawn_at_raw",
			spawner_id = "end_arena_lower",
			breed_name = "skaven_gutter_runner"
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_ratling_gunner",
			spawner_id = "final_arena_upper",
			difficulty_requirement = HARD
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_warpfire_thrower",
			spawner_id = "end_arena_lower",
			difficulty_requirement = HARDEST
		},
		{
			"continue_when",
			duration = 45,
			condition = function (t)
				return num_spawned_enemies() < 5
			end
		},
		{
			"flow_event",
			flow_event_name = "termite_03_stage_two_done"
		}
	},
	termite_3_pillar_spawns = {
		{
			"event_horde",
			limit_spawners = 5,
			spawner_id = "end_pillar_spawns",
			composition_type = "event_medium"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 120,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 5 and count_event_breed("skaven_slave") < 5
			end
		},
		{
			"flow_event",
			flow_event_name = "termite_03_pillar_spawns_done"
		}
	},
	termite_lvl3_portal_guards = {
		{
			"spawn_at_raw",
			spawner_id = "end_event_guards_1",
			breed_name = "skaven_storm_vermin_commander"
		},
		{
			"spawn_at_raw",
			spawner_id = "end_event_guards_2",
			breed_name = "skaven_storm_vermin_commander"
		},
		{
			"spawn_at_raw",
			spawner_id = "end_event_guards_3",
			breed_name = "skaven_storm_vermin_commander"
		},
		{
			"spawn_at_raw",
			spawner_id = "end_event_guards_4",
			breed_name = "skaven_storm_vermin_commander"
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_storm_vermin_commander",
			spawner_id = "end_event_guards_5",
			difficulty_requirement = HARD
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_storm_vermin_commander",
			spawner_id = "end_event_guards_6",
			difficulty_requirement = HARD
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_storm_vermin_commander",
			spawner_id = "end_event_guards_7",
			difficulty_requirement = HARDER
		},
		{
			"spawn_at_raw",
			breed_name = "skaven_storm_vermin_commander",
			spawner_id = "end_event_guards_8",
			difficulty_requirement = HARDER
		}
	},
	termite_lvl3_shield_guards = {
		{
			"spawn_at_raw",
			spawner_id = "end_event_guard_shield_1",
			breed_name = "skaven_storm_vermin_commander"
		},
		{
			"spawn_at_raw",
			spawner_id = "end_event_guard_shield_1",
			breed_name = "skaven_storm_vermin_with_shield"
		},
		{
			"spawn_at_raw",
			spawner_id = "end_event_guard_shield_2",
			breed_name = "skaven_storm_vermin_commander"
		},
		{
			"spawn_at_raw",
			spawner_id = "end_event_guard_shield_2",
			breed_name = "skaven_storm_vermin_with_shield"
		},
		{
			"spawn_at_raw",
			spawner_id = "end_event_guard_shield_3",
			breed_name = "skaven_storm_vermin_commander"
		},
		{
			"spawn_at_raw",
			spawner_id = "end_event_guard_shield_3",
			breed_name = "skaven_storm_vermin_with_shield"
		}
	},
	termite_3_escape_one = {
		{
			"set_master_event_running",
			name = "termite_3_escape_one"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"disable_kick"
		},
		{
			"event_horde",
			spawner_id = "escape_one",
			composition_type = "event_small"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 20,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 5 and count_event_breed("skaven_slave") < 5
			end
		},
		{
			"flow_event",
			flow_event_name = "termite_3_escape_one_done"
		}
	},
	termite_3_escape_two = {
		{
			"set_master_event_running",
			name = "termite_3_escape_two"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"disable_kick"
		},
		{
			"event_horde",
			spawner_id = "escape_two",
			composition_type = "event_small"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "escape_climb",
			composition_type = "plaza_wave_4_04"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 20,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 5 and count_event_breed("skaven_slave") < 5
			end
		},
		{
			"flow_event",
			flow_event_name = "termite_3_escape_two_done"
		}
	},
	termite_3_escape_ratapult = {
		{
			"set_master_event_running",
			name = "termite_3_escape_ratapult"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"disable_kick"
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "escape_climb_ratapult",
			composition_type = "plaza_wave_4_04"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			spawner_id = "escape_ratapult",
			composition_type = "event_small"
		},
		{
			"continue_when",
			duration = 20,
			condition = function (t)
				return count_event_breed("skaven_clan_rat") < 5 and count_event_breed("skaven_slave") < 5
			end
		},
		{
			"flow_event",
			flow_event_name = "termite_3_escape_ratapult_done"
		}
	}
}

return {
	terror_event_blueprints
}
