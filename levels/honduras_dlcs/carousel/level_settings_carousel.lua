local settings = DLCSettings.carousel

settings.missions = {
	bell_pvp_barrels = {
		text = "bell_pvp_barrels",
		mission_template_name = "collect",
		collect_amount = 3
	},
	military_pvp_barrels = {
		text = "military_pvp_barrels",
		mission_template_name = "collect",
		collect_amount = 2
	},
	versus_mission_survive_courtyard_01 = {
		mission_template_name = "goal",
		text = "level_objective_description_military_05"
	},
	versus_mission_survive_courtyard_02 = {
		mission_template_name = "goal",
		text = "level_objective_description_military_05"
	},
	versus_mission_survive_courtyard_03 = {
		mission_template_name = "goal",
		text = "level_objective_description_military_05"
	},
	versus_mission_survive_courtyard_04 = {
		mission_template_name = "goal",
		text = "level_objective_description_military_05"
	},
	versus_mission_survive_temple_01 = {
		mission_template_name = "goal",
		text = "level_objective_description_military_20"
	},
	versus_mission_survive_temple_02 = {
		mission_template_name = "goal",
		text = "level_objective_description_military_20"
	},
	versus_mission_survive_temple_02_B = {
		mission_template_name = "goal",
		text = "level_objective_description_military_20"
	},
	versus_mission_survive_temple_03 = {
		mission_template_name = "goal",
		text = "level_objective_description_military_20"
	},
	versus_mission_survive_temple_04 = {
		mission_template_name = "goal",
		text = "level_objective_description_military_20"
	},
	versus_mission_survive_temple_05 = {
		mission_template_name = "goal",
		text = "level_objective_description_military_20"
	},
	versus_mission_survive_temple_06 = {
		mission_template_name = "goal",
		text = "level_objective_description_military_20"
	},
	versus_mission_survive_temple_07 = {
		mission_template_name = "goal",
		text = "level_objective_description_military_20"
	},
	versus_mission_survive_temple_08 = {
		mission_template_name = "goal",
		text = "level_objective_description_military_20"
	},
	versus_mission_objective_barricade_sockets = {
		mission_template_name = "goal",
		text = "level_objective_description_military_02"
	},
	versus_mission_farmlands_key = {
		mission_template_name = "goal",
		text = "level_objective_description_farmlands_07"
	},
	versus_mission_objective_barn = {
		mission_template_name = "goal",
		text = "level_objective_description_farmlands_08"
	},
	versus_mission_monster = {
		mission_template_name = "goal",
		text = "level_objective_description_farmlands_09"
	},
	mission_fort_bonfire_001 = {
		mission_template_name = "goal",
		text = "level_objective_description_fort_09"
	},
	mission_fort_bonfire_002 = {
		mission_template_name = "goal",
		text = "level_objective_description_fort_09"
	},
	mission_fort_bonfire_003 = {
		mission_template_name = "goal",
		text = "level_objective_description_fort_09"
	},
	mission_fort_bonfire_004 = {
		mission_template_name = "goal",
		text = "level_objective_description_fort_09"
	},
	mission_fort_bonfire_005 = {
		mission_template_name = "goal",
		text = "level_objective_description_fort_09"
	},
	mission_fort_breach_wall = {
		mission_template_name = "goal",
		text = "level_objective_description_fort_16"
	},
	versus_fort_cannon_balls = {
		mission_template_name = "goal",
		text = "level_objective_description_fort_16"
	},
	versus_fort_secret_elevator = {
		mission_template_name = "goal",
		text = "level_objective_description_fort_17"
	},
	versus_fort_open_portcullis = {
		mission_template_name = "goal",
		text = "level_objective_description_fort_20"
	}
}
LevelSettings.carousel_hub = {
	no_bots_allowed = true,
	player_aux_bus_name = "environment_reverb_outside",
	display_name = "level_name_carousel_hub",
	environment_state = "exterior",
	mechanism = "versus",
	level_image = "level_icon_inn_level",
	loading_ui_package_name = "loading_screen_carousel",
	dlc_name = "carousel",
	skip_generate_spawns = true,
	knocked_down_setting = "knocked_down",
	hub_level = true,
	ambient_sound_event = "silent_default_world_sound",
	load_no_enemies = false,
	game_mode = "inn_vs",
	no_terror_events = true,
	has_multiple_loading_images = true,
	default_surface_material = "dirt",
	conflict_settings = "inn_level",
	level_name = "levels/honduras_dlcs/carousel/carousel_hub/world",
	no_nav_mesh = false,
	source_aux_bus_name = "environment_reverb_outside_source",
	packages = {
		"resource_packages/levels/dlcs/carousel/carousel_hub",
		"resource_packages/levels/inn_dependencies"
	},
	level_particle_effects = {},
	level_screen_effects = {},
	breed_categories = {
		{
			id = "keep_rats",
			dynamic_loading = false,
			breeds = {
				"critter_rat"
			}
		}
	},
	locations = {},
	loot_objectives = {},
	pickup_settings = {
		{
			primary = {
				grenades = 5,
				ammo = 2,
				level_events = {
					explosive_barrel = 4,
					lamp_oil = 4
				}
			}
		}
	},
	supported_game_modes = {
		versus = true
	}
}
LevelSettings.farmlands_pvp = {
	description_text = "nik_loading_screen_farmland_01",
	level_name = "levels/honduras_dlcs/carousel/farmlands_pvp/world",
	ambient_sound_event = "silent_default_world_sound",
	environment_state = "exterior",
	mechanism = "versus",
	display_name = "level_name_farmlands",
	knocked_down_setting = "knocked_down",
	loading_ui_package_name = "loading_screen_7",
	unlockable = true,
	main_game_level = false,
	player_aux_bus_name = "environment_reverb_outside",
	level_image = "level_icon_09",
	game_mode = "versus",
	use_mini_patrols = false,
	boss_spawning_method = "hand_placed",
	default_surface_material = "dirt",
	dlc_name = "carousel",
	override_map_start_section = true,
	source_aux_bus_name = "environment_reverb_outside_source",
	packages = {
		"resource_packages/levels/honduras/farmlands_common",
		"resource_packages/levels/honduras/farmlands",
		"resource_packages/levels/dlcs/carousel/farmlands_pvp_meta",
		"resource_packages/levels/dlcs/carousel/versus_dependencies"
	},
	level_particle_effects = {},
	level_screen_effects = {},
	loading_screen_wwise_events = {
		"nik_loading_screen_farmland_01",
		"nik_loading_screen_farmland_02"
	},
	locations = {
		"location_farmlands_pvp_farmlands",
		"location_farmlands_pvp_wet_field",
		"location_farmlands_pvp_oak_hill",
		"location_farmlands_pvp_farmstead_01",
		"location_farmlands_pvp_farmstead_02",
		"location_farmlands_pvp_farmstead_03"
	},
	supported_game_modes = {
		versus = true
	}
}
LevelSettings.bell_pvp = {
	description_text = "nik_loading_screen_bell_01",
	level_name = "levels/honduras_dlcs/carousel/bell_pvp/world",
	ambient_sound_event = "silent_default_world_sound",
	environment_state = "exterior",
	mechanism = "versus",
	display_name = "level_name_bell",
	knocked_down_setting = "knocked_down",
	loading_ui_package_name = "loading_screen_1",
	unlockable = true,
	main_game_level = false,
	player_aux_bus_name = "environment_reverb_outside",
	level_image = "level_icon_07",
	game_mode = "versus",
	use_mini_patrols = false,
	boss_spawning_method = "hand_placed",
	default_surface_material = "stone_wet",
	dlc_name = "carousel",
	override_map_start_section = true,
	source_aux_bus_name = "environment_reverb_outside_source",
	packages = {
		"resource_packages/levels/honduras/bell_common",
		"resource_packages/levels/honduras/bell",
		"resource_packages/levels/dlcs/carousel/bell_pvp_meta",
		"resource_packages/levels/dlcs/carousel/versus_dependencies"
	},
	level_particle_effects = {},
	level_screen_effects = {},
	loading_screen_wwise_events = {
		"nik_loading_screen_bell_01",
		"nik_loading_screen_bell_02"
	},
	locations = {
		"location_bell_pvp_winery",
		"location_bell_pvp_boulevard",
		"location_bell_pvp_south",
		"location_bell_pvp_slums",
		"location_bell_pvp_market_alley",
		"location_bell_pvp_market",
		"location_bell_pvp_hill_street",
		"location_bell_pvp_hill_street_junction",
		"location_bell_pvp_hill_park",
		"location_bell_pvp_serpentine",
		"location_bell_pvp_mountain",
		"location_bell_pvp_northside",
		"location_bell_pvp_platz"
	},
	supported_game_modes = {
		versus = true
	},
	round_end_camera_events = {
		[1] = "round_cam_bell_vs_round_1",
		[2] = "round_cam_bell_vs_round_2"
	}
}
LevelSettings.military_pvp = {
	description_text = "nik_loading_screen_helmgart_military_01",
	level_name = "levels/honduras_dlcs/carousel/military_pvp/world",
	ambient_sound_event = "silent_default_world_sound",
	environment_state = "exterior",
	mechanism = "versus",
	display_name = "level_name_military",
	level_image = "level_icon_01",
	loading_ui_package_name = "loading_screen_13",
	unlockable = true,
	main_game_level = false,
	player_aux_bus_name = "environment_reverb_outside",
	game_mode = "versus",
	boss_spawning_method = "hand_placed",
	use_mini_patrols = false,
	default_surface_material = "stone",
	knocked_down_setting = "knocked_down",
	dlc_name = "carousel",
	override_map_start_section = true,
	source_aux_bus_name = "environment_reverb_outside_source",
	packages = {
		"resource_packages/levels/honduras/military_common",
		"resource_packages/levels/honduras/military",
		"resource_packages/levels/dlcs/carousel/military_pvp_meta",
		"resource_packages/levels/dlcs/carousel/versus_dependencies"
	},
	level_particle_effects = {},
	level_screen_effects = {},
	loading_screen_wwise_events = {
		"nik_loading_screen_helmgart_military_01",
		"nik_loading_screen_helmgart_military_02"
	},
	locations = {
		"location_military_pvp_streets_01",
		"location_military_pvp_streets_02",
		"location_military_pvp_streets_03",
		"location_military_pvp_streets_04",
		"location_military_pvp_fort",
		"location_military_pvp_tower",
		"location_military_pvp_interior",
		"location_military_pvp_wall_01",
		"location_military_pvp_wall_event",
		"location_military_pvp_wall_02",
		"location_military_pvp_wall_03",
		"location_military_pvp_road_to_temple",
		"location_military_pvp_temple"
	},
	supported_game_modes = {
		versus = true
	}
}
