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
		"unit_frame_portrait_vs_chaos_troll",
		"unit_frame_portrait_vs_chaos_troll_twitch",
		"unit_frame_portrait_vs_chaos_troll_masked",
		"unit_frame_portrait_vs_chaos_troll_twitch_icon",
		"unit_frame_portrait_vs_chaos_troll_saturated",
		"unit_frame_portrait_vs_rat_ogre",
		"unit_frame_portrait_vs_rat_ogre_twitch",
		"unit_frame_portrait_vs_rat_ogre_masked",
		"unit_frame_portrait_vs_rat_ogre_twitch_icon",
		"unit_frame_portrait_vs_rat_ogre_saturated",
		"vs_info_ghost_spawn",
		"vs_info_ghost_cantspawn",
		"vs_info_ghost_catchup"
	}
}
settings.start_game_windows = {
	"scripts/ui/dlc_versus/views/start_game_view/windows/start_game_window_versus_panel",
	"scripts/ui/dlc_versus/views/start_game_view/windows/start_game_window_versus_background",
	"scripts/ui/dlc_versus/views/start_game_view/windows/start_game_window_versus_quickplay",
	"scripts/ui/dlc_versus/views/start_game_view/windows/start_game_window_versus_custom_game",
	"scripts/ui/dlc_versus/views/start_game_view/windows/start_game_window_versus_additional_settings",
	"scripts/ui/dlc_versus/views/start_game_view/windows/start_game_window_versus_player_hosted_lobby",
	"scripts/ui/dlc_versus/views/start_game_view/windows/start_game_window_versus_mission_selection",
	"scripts/ui/dlc_versus/views/start_game_view/windows/start_game_window_host_versus_additional_settings",
	"scripts/ui/dlc_versus/views/start_game_view/windows/start_game_window_versus_custom_game_settings",
	"scripts/ui/dlc_versus/views/start_game_view/windows/start_game_window_versus_lobby_browser"
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
				input_action = "d_vertical",
				priority = 1,
				description_text = "input_description_navigate",
				ignore_keybinding = true
			},
			{
				input_action = "confirm",
				priority = 2,
				description_text = "input_description_select"
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
	},
	versus_player_hosted_lobby = {
		ignore_generic_actions = true,
		actions = {
			{
				input_action = "d_pad",
				priority = 1,
				description_text = "input_description_navigate",
				ignore_keybinding = true
			},
			{
				input_action = "left_stick",
				priority = 2,
				description_text = "input_description_navigate",
				ignore_keybinding = true
			},
			{
				input_action = "confirm",
				priority = 4,
				description_text = "input_description_select"
			},
			{
				input_action = "right_stick_press",
				priority = 5,
				description_text = "input_description_edit_custom_settings"
			},
			{
				input_action = "refresh",
				priority = 6,
				description_text = "input_description_play"
			},
			{
				input_action = "cancel_matchmaking",
				priority = 7,
				description_text = "input_description_cancel"
			},
			{
				input_action = "back",
				priority = 8,
				description_text = "input_description_close"
			}
		}
	},
	versus_player_hosted_lobby_player_panel_focused = {
		ignore_generic_actions = true,
		actions = {
			{
				input_action = "d_horizontal",
				priority = 1,
				description_text = "input_description_navigate",
				ignore_keybinding = true
			},
			{
				input_action = "left_stick",
				priority = 2,
				description_text = "input_description_navigate",
				ignore_keybinding = true
			},
			{
				input_action = "confirm",
				priority = 3,
				description_text = "input_description_select"
			},
			{
				input_action = "back",
				priority = 4,
				description_text = "input_description_back"
			},
			{
				input_action = "toggle_menu",
				priority = 5,
				description_text = "input_description_show_profile"
			},
			{
				input_action = "refresh",
				priority = 6,
				description_text = "vs_player_hosted_lobby_kick"
			},
			{
				input_action = "special_1",
				priority = 7,
				description_text = "input_description_mute_chat"
			}
		}
	},
	versus_player_hosted_lobby_change_team = {
		ignore_generic_actions = true,
		actions = {
			{
				input_action = "d_pad",
				priority = 1,
				description_text = "input_description_navigate",
				ignore_keybinding = true
			},
			{
				input_action = "left_stick",
				priority = 2,
				description_text = "input_description_navigate",
				ignore_keybinding = true
			},
			{
				input_action = "confirm",
				priority = 4,
				description_text = "input_description_change_team"
			},
			{
				input_action = "right_stick_press",
				priority = 5,
				description_text = "input_description_edit_custom_settings"
			},
			{
				input_action = "refresh",
				priority = 6,
				description_text = "input_description_play"
			},
			{
				input_action = "cancel_matchmaking",
				priority = 7,
				description_text = "input_description_cancel"
			},
			{
				input_action = "back",
				priority = 8,
				description_text = "input_description_close"
			}
		}
	},
	versus_player_hosted_lobby_select_mission = {
		ignore_generic_actions = true,
		actions = {
			{
				input_action = "d_horizontal",
				priority = 1,
				description_text = "input_description_navigate",
				ignore_keybinding = true
			},
			{
				input_action = "left_stick",
				priority = 2,
				description_text = "input_description_navigate",
				ignore_keybinding = true
			},
			{
				input_action = "confirm",
				priority = 4,
				description_text = "input_description_select_mission_list"
			},
			{
				input_action = "right_stick_press",
				priority = 5,
				description_text = "input_description_edit_custom_settings"
			},
			{
				input_action = "refresh",
				priority = 6,
				description_text = "input_description_play"
			},
			{
				input_action = "cancel_matchmaking",
				priority = 7,
				description_text = "input_description_cancel"
			},
			{
				input_action = "back",
				priority = 8,
				description_text = "input_description_close"
			}
		}
	},
	versus_player_hosted_lobby_custom_settings = {
		ignore_generic_actions = true,
		actions = {
			{
				input_action = "d_vertical",
				priority = 1,
				description_text = "input_description_navigate",
				ignore_keybinding = true
			},
			{
				input_action = "d_horizontal",
				priority = 2,
				description_text = "input_description_change",
				ignore_keybinding = true
			},
			{
				input_action = "special_1",
				priority = 3,
				description_text = "input_description_reset"
			},
			{
				input_action = "back",
				priority = 4,
				description_text = "input_description_back"
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
		},
		versus_custom_game = {
			ignore_alignment = true,
			name = "versus_custom_game",
			class_name = "StartGameWindowVersusCustomGame"
		},
		versus_additional_quickplay_settings = {
			parent_window_name = "versus_quickplay",
			name = "versus_additional_quickplay_settings",
			class_name = "StartGameWindowVersusAdditionalSettings",
			ignore_alignment = true
		},
		versus_additional_custom_settings = {
			parent_window_name = "versus_custom_game",
			name = "versus_additional_custom_settings",
			class_name = "StartGameWindowHostVersusAdditionalSettings",
			ignore_alignment = true
		},
		versus_player_hosted_lobby = {
			ignore_alignment = true,
			name = "versus_player_hosted_lobby",
			class_name = "StartGameWindowVersusPlayerHostedLobby"
		},
		versus_mission_selection = {
			ignore_alignment = true,
			name = "versus_mission_selection",
			class_name = "StartGameWindowVersusMissionSelection"
		},
		versus_custom_game_settings = {
			ignore_alignment = true,
			name = "versus_custom_game_settings",
			class_name = "StartGameWindowVersusCustomGameSettings"
		},
		versus_lobby_browser = {
			ignore_alignment = true,
			name = "versus_lobby_browser",
			class_name = "StartGameWindowVersusLobbyBrowser"
		}
	},
	window_layouts = {
		{
			sound_event_enter = "Play_vs_hud_play_menu_category",
			display_name = "menu_store_panel_title_versus",
			game_mode_option = true,
			name = "versus_quickplay",
			disable_function_name = "_versus_quickplay_disable_function",
			panel_sorting = 10,
			background_object_set = "versus_menu",
			input_focus_window = "versus_quickplay",
			close_on_exit = true,
			background_flow_event = "versus_menu",
			windows = {
				versus_panel = 1,
				versus_quickplay = 3,
				versus_background = 2
			},
			can_add_function = function (overview)
				return overview:is_in_mechanism("versus")
			end,
			save_data_table = versus_save_data_table_map_console.quickplay
		},
		{
			sound_event_enter = "Play_vs_hud_play_menu_category",
			display_name = "start_game_window_specific_title",
			game_mode_option = true,
			name = "versus_custom_game",
			disable_function_name = "_versus_custom_disable_function",
			panel_sorting = 20,
			background_object_set = "skaven_cosmetics_view",
			input_focus_window = "versus_custom_game",
			close_on_exit = true,
			background_flow_event = "skaven_cosmetics_view",
			windows = {
				versus_additional_custom_settings = 4,
				versus_panel = 1,
				versus_background = 2,
				versus_custom_game = 3
			},
			can_add_function = function (overview)
				return overview:is_in_mechanism("versus")
			end,
			save_data_table = versus_save_data_table_map_console.custom
		},
		{
			sound_event_enter = "Play_vs_hud_play_menu_category",
			display_name = "player_hosted_title",
			name = "versus_player_hosted_lobby",
			background_object_set = "skaven_cosmetics_view",
			close_on_exit = true,
			background_flow_event = "skaven_cosmetics_view",
			windows = {
				versus_player_hosted_lobby = 3,
				versus_panel = 1,
				versus_background = 2,
				versus_custom_game_settings = 4
			},
			can_add_function = function (overview)
				return overview:is_in_mechanism("versus")
			end,
			save_data_table = versus_save_data_table_map_console.custom
		},
		{
			sound_event_enter = "play_gui_lobby_button_00_custom",
			name = "versus_mission_selection",
			input_focus_window = "versus_mission_selection",
			close_on_exit = false,
			windows = {
				panel = 1,
				background = 2,
				versus_mission_selection = 3
			},
			save_data_table = versus_save_data_table_map_console.custom
		},
		{
			sound_event_enter = "Play_vs_hud_play_menu_category",
			display_name = "start_game_window_lobby_browser",
			name = "versus_lobby_browser",
			panel_sorting = 100,
			background_object_set = "",
			close_on_exit = true,
			background_flow_event = "",
			windows = {
				versus_panel = 1,
				versus_background = 2,
				versus_lobby_browser = 3
			},
			can_add_function = function (overview)
				return overview:is_in_mechanism("versus") and not IS_XB1
			end,
			save_data_table = versus_save_data_table_map_console.lobby_browser
		}
	},
	mechanism_quickplay_settings = {
		force_area_name = "versus",
		game_mode_type = "versus_quickplay",
		mechanism_name = "versus",
		layout_name = "mission_selection"
	},
	mechanism_custom_game = {
		force_area_name = "versus",
		game_mode_type = "versus_custom",
		difficulty_index_getter_name = "completed_level_difficulty_index",
		layout_name = "versus_mission_selection",
		mechanism_name = "versus"
	}
}
settings.controller_settings = {
	PlayerControllerKeymaps = {
		win32 = {
			ping_only_movement = {
				"mouse",
				"middle",
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
settings.hero_window_mood_settings = {
	default = "default",
	pactsworn = "menu_versus"
}
settings.hero_window_pactsworn_stats_by_name = {
	vs_rat_ogre = {
		{
			"eliminations_as_breed",
			"vs_rat_ogre"
		},
		{
			"damage_dealt_as_breed",
			"vs_rat_ogre"
		}
	},
	vs_chaos_troll = {
		{
			"eliminations_as_breed",
			"vs_chaos_troll"
		},
		{
			"damage_dealt_as_breed",
			"vs_chaos_troll"
		}
	},
	vs_gutter_runner = {
		{
			"eliminations_as_breed",
			"vs_gutter_runner"
		},
		{
			"damage_dealt_as_breed",
			"vs_gutter_runner"
		}
	},
	vs_packmaster = {
		{
			"eliminations_as_breed",
			"vs_packmaster"
		},
		{
			"damage_dealt_as_breed",
			"vs_packmaster"
		}
	},
	vs_ratling_gunner = {
		{
			"eliminations_as_breed",
			"vs_ratling_gunner"
		},
		{
			"damage_dealt_as_breed",
			"vs_ratling_gunner"
		}
	},
	vs_warpfire_thrower = {
		{
			"eliminations_as_breed",
			"vs_warpfire_thrower"
		},
		{
			"damage_dealt_as_breed",
			"vs_warpfire_thrower"
		}
	},
	vs_poison_wind_globadier = {
		{
			"eliminations_as_breed",
			"vs_poison_wind_globadier"
		},
		{
			"damage_dealt_as_breed",
			"vs_poison_wind_globadier"
		}
	},
	default = {
		{
			"vs_game_won"
		},
		{
			"vs_hero_monster_kill"
		}
	}
}
settings.stats_string_lookup = {
	damage_dealt_as_breed = "inventory_screen_compare_damage_tooltip",
	vs_game_won = "not_assigned",
	vs_hero_monster_kill = "not_assigned",
	eliminations_as_breed = "vs_scoreboard_eliminations"
}
settings.item_type_store_icons = {
	weapon_pose = "store_tag_icon_pose"
}
settings.stats_icons_lookup = {
	damage_dealt_as_breed = "icon_damage",
	vs_game_won = "icons_placeholder",
	vs_hero_monster_kill = "icons_placeholder",
	eliminations_as_breed = "killfeed_icon_12"
}
settings.custom_game_settigns_values_suffix = {
	percentage = "%",
	multiplier = "x",
	distance = " m",
	time_seconds = " sec",
	time_minutes = " min"
}
settings.custom_game_ui_settings = {
	early_win_enabled = {
		widget_type = "stepper",
		localization_options = {
			[true] = "menu_settings_on",
			[false] = "menu_settings_off"
		}
	},
	hero_bots_enabled = {
		widget_type = "stepper",
		localization_options = {
			[true] = "menu_settings_on",
			[false] = "menu_settings_off"
		}
	},
	starting_as_heroes = {
		widget_type = "stepper",
		localization_options = {
			"versus_team_name_hammers",
			"versus_team_name_skulls",
			random = "inventory_screen_random_tooltip"
		}
	},
	wounds_amount = {
		widget_type = "stepper",
		localization_options = {
			unlimited = "menu_settings_unlimited"
		}
	},
	knockdown_hp = {
		widget_type = "slider"
	},
	round_time_limit = {
		setting_type = "time_minutes",
		widget_type = "slider",
		localization_options = {
			[false] = "menu_settings_off"
		}
	},
	horde_ability_recharge_rate_percent = {
		setting_type = "percentage",
		widget_type = "slider"
	},
	friendly_fire = {
		widget_type = "stepper",
		localization_options = {
			harder = "difficulty_harder",
			hardest = "difficulty_hardest",
			[false] = "menu_settings_off"
		}
	},
	pactsworn_respawn_timer = {
		setting_type = "time_seconds",
		widget_type = "slider",
		localization_options = {
			default = "menu_settings_reset_to_default"
		}
	},
	catch_up_with_heroes = {
		setting_type = "distance",
		widget_type = "slider"
	},
	hero_damage_taken = {
		setting_type = "multiplier",
		widget_type = "slider"
	},
	hero_rescues_enabled = {
		widget_type = "stepper",
		localization_options = {
			[true] = "menu_settings_on",
			[false] = "menu_settings_off"
		}
	},
	special_spawn_range_distance = {
		setting_type = "distance",
		widget_type = "slider"
	},
	boss_spawn_range_distance = {
		setting_type = "distance",
		widget_type = "slider"
	},
	pactsworn_stagger_immunity = {
		widget_type = "stepper",
		localization_options = {
			[true] = "menu_settings_on",
			[false] = "menu_settings_off"
		}
	},
	vs_ratling_gunner_spawn_chance_multiplier = {
		setting_type = "multiplier",
		widget_type = "slider"
	},
	vs_packmaster_spawn_chance_multiplier = {
		setting_type = "multiplier",
		widget_type = "slider"
	},
	vs_gutter_runner_spawn_chance_multiplier = {
		setting_type = "multiplier",
		widget_type = "slider"
	},
	vs_poison_wind_globadier_spawn_chance_multiplier = {
		setting_type = "multiplier",
		widget_type = "slider"
	},
	vs_warpfire_thrower_spawn_chance_multiplier = {
		setting_type = "multiplier",
		widget_type = "slider"
	},
	vs_chaos_troll_spawn_chance_multiplier = {
		setting_type = "multiplier",
		widget_type = "slider",
		localization_options = {
			default = "menu_settings_forced",
			[false] = "menu_settings_off"
		}
	},
	vs_rat_ogre_spawn_chance_multiplier = {
		setting_type = "multiplier",
		widget_type = "slider",
		localization_options = {
			default = "menu_settings_forced",
			[false] = "menu_settings_off"
		}
	},
	vs_ratling_gunner_hp = {
		widget_type = "slider"
	},
	vs_packmaster_hp = {
		widget_type = "slider"
	},
	vs_gutter_runner_hp = {
		widget_type = "slider"
	},
	vs_poison_wind_globadier_hp = {
		widget_type = "slider"
	},
	vs_warpfire_thrower_hp = {
		widget_type = "slider"
	},
	vs_chaos_troll_hp = {
		widget_type = "slider"
	},
	vs_rat_ogre_hp = {
		widget_type = "slider"
	}
}
