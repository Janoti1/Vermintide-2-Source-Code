local settings = DLCSettings.carousel
local UNASSIGNED_KEY = UNASSIGNED_KEY or "unassigned_keymap"

settings.ui_views = {
	{
		file = "scripts/ui/views/versus_menu/base_view"
	},
	{
		name = "versus_party_char_selection_view",
		class_name = "VersusPartyCharSelectionView",
		file = "scripts/ui/views/versus_menu/versus_party_char_selection_view",
		only_in_game = true,
		only_in_inn = false,
		mechanism_filter = {
			versus = true
		},
		transitions = {
			versus_party_char_selection_view = function (self)
				self.current_view = "versus_party_char_selection_view"
			end,
			versus_party_char_view_from_character_selection = function (self)
				self.current_view = "versus_party_char_selection_view"
				self.views[self.current_view].new_character = true
			end
		}
	},
	{
		name = "versus_team_parading_view",
		class_name = "VersusTeamParadingViewV2",
		file = "scripts/ui/views/versus_menu/versus_team_parading_view_v2",
		only_in_game = true,
		only_in_inn = false,
		mechanism_filter = {
			versus = true
		},
		transitions = {
			versus_team_parading_view = function (self)
				self.current_view = "versus_team_parading_view"
			end
		}
	}
}
settings.ui_world_marker_templates = {
	"scripts/ui/hud_ui/world_marker_templates/world_marker_template_versus_hero_status",
	"scripts/ui/hud_ui/world_marker_templates/world_marker_template_versus_objective",
	"scripts/ui/hud_ui/world_marker_templates/world_marker_template_versus_climbing",
	"scripts/ui/hud_ui/world_marker_templates/world_marker_template_versus_crawl_tunneling",
	"scripts/ui/hud_ui/world_marker_templates/world_marker_template_versus_crawl_spawning",
	"scripts/ui/hud_ui/world_marker_templates/world_marker_template_versus_pactsworn_ghostmode"
}
settings.ui_end_screens = {
	carousel_round_end = {
		file_name = "scripts/ui/views/end_screens/versus_round_end_screen_ui",
		class_name = "VersusRoundEndScreenUI"
	},
	carousel_draw = {
		file_name = "scripts/ui/views/end_screens/versus_draw_end_screen_ui",
		class_name = "VersusDrawEndScreenUI"
	}
}
settings.ui_materials = {
	"materials/ui/ui_1080p_carousel_atlas"
}
settings.ui_texture_settings = {
	filenames = {
		"scripts/ui/atlas_settings/gui_carousel_atlas"
	},
	atlas_settings = {
		carousel_atlas = {
			offscreen_material_name = "gui_carousel_atlas_offscreen",
			masked_point_sample_material_name = "gui_carousel_atlas_point_sample_masked",
			masked_offscreen_material_name = "gui_carousel_atlas_masked_offscreen",
			point_sample_offscreen_material_name = "gui_carousel_atlas_point_sample_offscreen",
			saturated_material_name = "gui_carousel_atlas_saturated",
			masked_material_name = "gui_carousel_atlas_masked",
			point_sample_material_name = "gui_carousel_atlas_point_sample",
			masked_saturated_material_name = "gui_carousel_atlas_masked_saturated",
			saturated_offscreen_material_name = "gui_carousel_atlas_saturated",
			masked_point_sample_offscreen_material_name = "gui_carousel_atlas_point_sample_masked_offscreen",
			material_name = "gui_carousel_atlas"
		}
	},
	single_textures = {
		"unit_frame_portrait_vs_corruptor",
		"unit_frame_portrait_vs_corruptor_twitch",
		"unit_frame_portrait_vs_corruptor_masked",
		"unit_frame_portrait_vs_corruptor_twitch_icon",
		"unit_frame_portrait_vs_corruptor_saturated",
		"unit_frame_portrait_vs_packmaster",
		"unit_frame_portrait_vs_packmaster_twitch",
		"unit_frame_portrait_vs_packmaster_masked",
		"unit_frame_portrait_vs_packmaster_twitch_icon",
		"unit_frame_portrait_vs_packmaster_saturated",
		"unit_frame_portrait_vs_gutter_runner",
		"unit_frame_portrait_vs_gutter_runner_twitch",
		"unit_frame_portrait_vs_gutter_runner_masked",
		"unit_frame_portrait_vs_gutter_runner_twitch_icon",
		"unit_frame_portrait_vs_gutter_runner_saturated",
		"unit_frame_portrait_vs_poison_wind_globadier",
		"unit_frame_portrait_vs_poison_wind_globadier_twitch",
		"unit_frame_portrait_vs_poison_wind_globadier_masked",
		"unit_frame_portrait_vs_poison_wind_globadier_twitch_icon",
		"unit_frame_portrait_vs_poison_wind_globadier_saturated",
		"unit_frame_portrait_vs_warpfire_thrower",
		"unit_frame_portrait_vs_warpfire_thrower_twitch",
		"unit_frame_portrait_vs_warpfire_thrower_masked",
		"unit_frame_portrait_vs_warpfire_thrower_twitch_icon",
		"unit_frame_portrait_vs_warpfire_thrower_saturated",
		"unit_frame_portrait_vs_vortex_sorcerer",
		"unit_frame_portrait_vs_vortex_sorcerer_twitch",
		"unit_frame_portrait_vs_vortex_sorcerer_masked",
		"unit_frame_portrait_vs_vortex_sorcerer_twitch_icon",
		"unit_frame_portrait_vs_vortex_sorcerer_saturated",
		"unit_frame_portrait_vs_ratling_gunner",
		"unit_frame_portrait_vs_ratling_gunner_twitch",
		"unit_frame_portrait_vs_ratling_gunner_masked",
		"unit_frame_portrait_vs_ratling_gunner_twitch_icon",
		"unit_frame_portrait_vs_ratling_gunner_saturated",
		"vs_info_ghost_spawn",
		"vs_info_ghost_cantspawn",
		"vs_info_ghost_catchup"
	}
}
settings.start_game_windows = {
	"scripts/ui/dlc_versus/views/start_game_view/windows/start_game_window_versus_panel",
	"scripts/ui/dlc_versus/views/start_game_view/windows/start_game_window_versus_background",
	"scripts/ui/dlc_versus/views/start_game_view/windows/start_game_window_versus_quickplay"
}
settings.start_game_layout_console_generic_inputs = {
	versus_default = {
		ignore_generic_actions = true,
		actions = {
			{
				input_action = "d_pad",
				priority = 1,
				description_text = "input_description_navigate",
				ignore_keybinding = true
			},
			{
				input_action = "back",
				priority = 3,
				description_text = "input_description_close"
			}
		}
	},
	versus_default_play = {
		ignore_generic_actions = true,
		actions = {
			{
				input_action = "d_pad",
				priority = 1,
				description_text = "input_description_navigate",
				ignore_keybinding = true
			},
			{
				input_action = "refresh",
				priority = 2,
				description_text = "input_description_play"
			},
			{
				input_action = "back",
				priority = 3,
				description_text = "input_description_close"
			}
		}
	},
	versus_quickplay_default = {
		ignore_generic_actions = true,
		actions = {
			{
				input_action = "d_pad",
				priority = 1,
				description_text = "input_description_navigate",
				ignore_keybinding = true
			},
			{
				input_action = "right_stick_press",
				priority = 2,
				description_text = "input_description_additional_options"
			},
			{
				input_action = "back",
				priority = 3,
				description_text = "input_description_close"
			}
		}
	},
	versus_quickplay_play = {
		ignore_generic_actions = true,
		actions = {
			{
				input_action = "d_pad",
				priority = 1,
				description_text = "input_description_navigate",
				ignore_keybinding = true
			},
			{
				input_action = "right_stick_press",
				priority = 2,
				description_text = "input_description_additional_options"
			},
			{
				input_action = "refresh",
				priority = 3,
				description_text = "input_description_play"
			},
			{
				input_action = "back",
				priority = 4,
				description_text = "input_description_close"
			}
		}
	}
}
settings.start_game_save_data_table_map = {
	versus = {
		custom = "versus_custom",
		quickplay = "versus_quickplay"
	}
}

local versus_save_data_table_map = settings.start_game_save_data_table_map.versus

settings.start_game_save_data_table_map_console = table.clone(settings.start_game_save_data_table_map)

local versus_save_data_table_map_console = settings.start_game_save_data_table_map_console.versus

settings.start_game_window_layout_console = {
	windows = {
		versus_panel = {
			ignore_alignment = true,
			name = "versus_panel",
			class_name = "StartGameWindowVersusPanel"
		},
		versus_background = {
			ignore_alignment = true,
			name = "versus_background",
			class_name = "StartGameWindowVersusBackground"
		},
		versus_quickplay = {
			ignore_alignment = true,
			name = "versus_quickplay",
			class_name = "StartGameWindowVersusQuickplay"
		}
	},
	window_layouts = {
		{
			sound_event_enter = "hud_morris_start_menu_category",
			display_name = "start_game_window_adventure_title",
			game_mode_option = true,
			name = "versus_quickplay",
			disable_function_name = "_versus_quickplay_disable_function",
			panel_sorting = 10,
			background_object_set = "quick_play_chaos_wastes",
			input_focus_window = "versus_quickplay",
			close_on_exit = true,
			background_flow_event = "quick_play_chaos_wastes",
			windows = {
				versus_panel = 1,
				versus_quickplay = 3,
				versus_background = 2
			},
			can_add_function = function (overview)
				return overview:is_in_mechanism("versus")
			end,
			save_data_table = versus_save_data_table_map_console.quickplay
		}
	},
	mechanism_quickplay_settings = {
		mechanism_name = "versus",
		game_mode_type = "versus_quickplay",
		layout_name = "area_selection"
	},
	mechanism_custom_game = {
		mechanism_name = "versus",
		game_mode_type = "versus_custom",
		difficulty_index_getter_name = "completed_level_difficulty_index",
		layout_name = "area_selection"
	}
}
settings.controller_settings = {
	PlayerControllerKeymaps = {
		win32 = {
			ping_only_enemy = {
				"keyboard",
				UNASSIGNED_KEY,
				"pressed"
			},
			ping_only_movement = {
				"keyboard",
				UNASSIGNED_KEY,
				"pressed"
			},
			ping_only_item = {
				"keyboard",
				UNASSIGNED_KEY,
				"pressed"
			}
		}
	}
}
settings.hud_component_list_path = "scripts/ui/hud_ui/component_list_definitions/hud_component_list_versus"
settings.teams_ui_assets = {
	undecided = {
		display_name = "versus_team_name_undecided",
		team_icon = "icons_placeholder",
		background_frame = "team_icon_bg_frame",
		icon = "icons_placeholder",
		background_texture = "team_icon_background"
	},
	team_hammers = {
		opponent_flag_texture = "banner_hammers_opponent",
		local_flag_long_texture = "banner_hammers_local_long",
		display_name = "versus_team_name_hammers",
		background_frame = "team_icon_bg_frame",
		team_icon = "team_icon_hammers",
		local_flag_texture = "banner_hammers_local",
		opponent_flag_long_texture = "banner_hammers_opponent_long",
		icon = "team_one_banner",
		background_texture = "team_icon_background"
	},
	team_skulls = {
		opponent_flag_texture = "banner_skulls_opponent",
		local_flag_long_texture = "banner_skulls_local_long",
		display_name = "versus_team_name_skulls",
		background_frame = "team_icon_bg_frame",
		team_icon = "team_icon_skulls",
		local_flag_texture = "banner_skulls_local",
		opponent_flag_long_texture = "banner_skulls_opponent_long",
		icon = "team_two_banner",
		background_texture = "team_icon_background"
	}
}
settings.ui_settings = {
	teams_ui_assets = settings.teams_ui_assets
}
settings.sides_localization_lookup = {
	heroes = "vs_lobby_hero_team_name",
	spectator = "not_assigned",
	dark_pact = "vs_lobby_dark_pact_team_name"
}
