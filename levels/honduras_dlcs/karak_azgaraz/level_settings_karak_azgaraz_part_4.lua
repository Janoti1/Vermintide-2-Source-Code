LevelSettings.dlc_dwarf_whaling = {
	act_unlock_order = 3,
	ambient_sound_event = "silent_default_world_sound",
	player_aux_bus_name = "environment_reverb_outside",
	environment_state = "exterior",
	display_name = "dwarf_whaling",
	knocked_down_setting = "knocked_down",
	act = "act_karak_azgaraz",
	small_level_image = "dlc_whaling_village_small_image",
	dlc_name = "karak_azgaraz_part_4",
	use_mini_patrols = true,
	description_text = "nik_dlc_dwarf_whaling_loading_screen_01",
	unlockable = true,
	boss_spawning_method = "hand_placed",
	no_terror_events = false,
	level_image = "dlc_whaling_village",
	act_presentation_order = 4,
	loading_ui_package_name = "loading_screen_dwarf_4",
	level_name = "levels/honduras_dlcs/karak_azgaraz/dwarf_whaling/world",
	source_aux_bus_name = "environment_reverb_outside_source",
	packages = {
		"resource_packages/levels/dlcs/karak_azgaraz/dlc_dwarf_whaling"
	},
	level_particle_effects = {},
	level_screen_effects = {},
	locations = {
		"dlc_1_5_location_whaling_shipwreck",
		"dlc_1_5_location_whaling_skaven",
		"dlc_1_5_location_whaling_harbor",
		"dlc_1_5_location_whaling_lower",
		"dlc_1_5_location_whaling_upper",
		"dlc_1_5_location_whaling_event",
		"dlc_1_5_location_whaling_slope"
	},
	pickup_settings = {
		default = {
			primary = {
				ammo = 8,
				painting_scrap = 3,
				potions = 4,
				grenades = 6,
				healing = {
					first_aid_kit = 6,
					healing_draught = 8
				},
				level_events = {
					explosive_barrel = 2,
					lamp_oil = 0
				}
			},
			secondary = {
				ammo = 10,
				grenades = 8,
				healing = 10,
				potions = 8
			}
		},
		normal = {
			primary = {
				ammo = 10,
				painting_scrap = 3,
				potions = 6,
				grenades = 8,
				healing = {
					first_aid_kit = 8,
					healing_draught = 10
				},
				level_events = {
					explosive_barrel = 2,
					lamp_oil = 0
				}
			},
			secondary = {
				ammo = 10,
				grenades = 8,
				healing = 12,
				potions = 10
			}
		}
	},
	loading_screen_wwise_events = {
		"pes_village_00_loading_screen_a_01",
		"pes_village_00_loading_screen_a_02"
	}
}
