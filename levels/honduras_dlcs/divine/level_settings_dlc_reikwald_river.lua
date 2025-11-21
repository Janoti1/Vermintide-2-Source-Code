LevelSettings.dlc_reikwald_river = {
	act_unlock_order = 0,
	ambient_sound_event = "silent_default_world_sound",
	environment_state = "exterior",
	player_aux_bus_name = "environment_reverb_outside",
	display_name = "level_name_dlc_reikwald_river",
	act = "act_divine",
	loading_ui_package_name = "loading_screen_divine_1",
	small_level_image = "dlc_reikwald_river_small_image",
	use_mini_patrols = false,
	unlockable = true,
	act_presentation_order = 1,
	boss_spawning_method = "hand_placed",
	description_text = "nik_dlc_reikwald_river_loading_screen_01",
	default_surface_material = "stone",
	dlc_name = "divine",
	knocked_down_setting = "knocked_down",
	level_image = "level_image_dlc_reikwald_river",
	level_name = "levels/honduras_dlcs/divine/dlc_reikwald_river/world",
	source_aux_bus_name = "environment_reverb_outside_source",
	packages = {
		"resource_packages/levels/dlcs/divine/divine"
	},
	level_particle_effects = {},
	level_screen_effects = {},
	pickup_settings = {
		{
			ammo = 8,
			lorebook_pages = 3,
			potions = 10,
			grenades = 9,
			healing = 16
		},
		{
			ammo = 8,
			lorebook_pages = 3,
			potions = 10,
			grenades = 9,
			healing = 17
		},
		{
			ammo = 8,
			lorebook_pages = 3,
			potions = 10,
			grenades = 9,
			healing = 12
		},
		{
			ammo = 8,
			lorebook_pages = 3,
			potions = 10,
			grenades = 9,
			healing = 12
		},
		{
			ammo = 8,
			lorebook_pages = 3,
			potions = 10,
			grenades = 9,
			healing = 12
		}
	},
	loading_screen_wwise_events = {
		"pes_gk_reik2_loading_screen_a_01",
		"pes_gk_reik2_loading_screen_a_02",
		bw_necromancer = {
			"pbw_nm_reik2_loading_screen_a_01",
			"pbw_nm_reik2_loading_screen_a_02"
		},
		dr_engineer = {
			"pdr_de_reik2_loading_screen_a_01",
			"pdr_de_reik2_loading_screen_a_02"
		},
		es_questingknight = {
			"pes_gk_reik2_loading_screen_a_01",
			"pes_gk_reik2_loading_screen_a_02"
		},
		we_thornsister = {
			"pwe_st_reik2_loading_screen_a_01",
			"pwe_st_reik2_loading_screen_a_02"
		},
		wh_priest = {
			"pwh_wp_reik2_loading_screen_a_01",
			"pwh_wp_reik2_loading_screen_a_02"
		}
	},
	locations = {
		"river_reik_location_campsite",
		"river_reik_location_cave",
		"river_reik_location_cellar",
		"river_reik_location_coaching_inn",
		"river_reik_location_cottage",
		"river_reik_location_cove",
		"river_reik_location_dawnrunner",
		"river_reik_location_flats",
		"river_reik_location_mud_mine",
		"river_reik_location_river",
		"river_reik_location_river_boat",
		"river_reik_location_swamp",
		"river_reik_location_tributary"
	},
	mission_selection_offset = {
		-246,
		0,
		0
	},
	mission_givers = {
		{
			dialogue_profile = "npc_empire_soldier",
			faction = "player"
		}
	}
}
