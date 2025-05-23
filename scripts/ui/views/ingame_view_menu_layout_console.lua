local function player_stuck_cb()
	local level_key = Managers.state.game_mode:level_key()
	local player = Managers.player:local_player()

	if player and Unit.alive(player.player_unit) then
		Managers.telemetry_events:player_stuck(player, level_key)
	end
end

local tobii_contest_url = "https://vermintide2beta.com/?utm_medium=referral&utm_campaign=vermintide2beta&utm_source=ingame#challenge"
local leave_party_button_text = IS_XB1 and "leave_party_menu_button_name_xb1" or "leave_party_menu_button_name"
local disband_party_button_text = IS_XB1 and "disband_party_menu_button_name_xb1" or "disband_party_menu_button_name"
local quit_menu_button_text = IS_XB1 and "quit_menu_button_name_xb1" or "quit_menu_button_name_ps4"
local menu_layouts = {}

function demo_inverted_func()
	local input_service = Managers.input:get_service("Player")

	if IS_WINDOWS then
		local platform_key = "win32"
		local input_filters = input_service:get_active_filters(platform_key)
		local look_filter = input_filters.look
		local function_data = look_filter.function_data

		return function_data.filter_type == "scale_vector3" and "menu_invert_controls" or "menu_non_invert_controls"
	else
		local platform_key = PLATFORM
		local input_filters = input_service:get_active_filters(platform_key)
		local look_filter = input_filters.look_controller
		local function_data = look_filter.function_data

		return function_data.filter_type == "scale_vector3_xy_accelerated_x" and "menu_invert_controls" or "menu_non_invert_controls"
	end
end

local function can_add_ingame_menu(params)
	local variable_name = "force_ingame_menu"

	return params[variable_name]
end

local function can_add_versus_menu(params)
	return Managers.state.game_mode:game_mode_key() == "inn_vs" and can_add_ingame_menu(params)
end

local default_disable_for_mechanism = {
	adventure = {
		matchmaking = false,
		matchmaking_ready = true,
		not_matchmaking = false
	},
	versus = {
		matchmaking = false,
		matchmaking_ready = true,
		not_matchmaking = false
	},
	deus = {
		matchmaking = false,
		matchmaking_ready = true,
		not_matchmaking = false
	}
}
local disable_for_mechanism_versus_disabled = {
	adventure = {
		matchmaking = false,
		matchmaking_ready = true,
		not_matchmaking = false
	},
	versus = {
		matchmaking = true,
		matchmaking_ready = true,
		not_matchmaking = true
	},
	deus = {
		matchmaking = false,
		matchmaking_ready = true,
		not_matchmaking = false
	}
}
local HANDBOOK_OPTION = {
	force_ingame_menu = true,
	display_name = "tutorial_menu_header",
	force_open = true,
	fade = false,
	transition_state = "handbook",
	transition = "hero_view",
	disable_for_mechanism = default_disable_for_mechanism
}

if IS_PS4 then
	menu_layouts = {
		in_menu = {
			alone = {
				{
					fade = false,
					transition = "exit_menu",
					display_name = "return_to_game_button_name"
				},
				{
					display_name = "profile_menu_button_name",
					requires_player_unit = true,
					fade = true,
					transition_state = "character",
					transition = "character_selection",
					disable_for_mechanism = default_disable_for_mechanism
				},
				HANDBOOK_OPTION,
				{
					fade = true,
					transition = "options_menu",
					display_name = "options_menu_button_name",
					disable_for_mechanism = default_disable_for_mechanism
				},
				{
					fade = true,
					transition = "console_friends_menu",
					display_name = "console_friends_menu_button_name",
					disable_for_mechanism = default_disable_for_mechanism
				},
				{
					fade = false,
					transition = "leave_group_hero_view",
					display_name = "leave_game_menu_button_name"
				},
				{
					fade = false,
					transition = "return_to_title_screen_hero_view",
					display_name = quit_menu_button_text
				}
			},
			host = {
				{
					fade = false,
					transition = "exit_menu",
					display_name = "return_to_game_button_name"
				},
				{
					display_name = "profile_menu_button_name",
					requires_player_unit = true,
					fade = true,
					transition_state = "character",
					transition = "character_selection",
					disable_for_mechanism = default_disable_for_mechanism
				},
				HANDBOOK_OPTION,
				{
					fade = true,
					transition = "options_menu",
					display_name = "options_menu_button_name",
					disable_for_mechanism = default_disable_for_mechanism
				},
				{
					fade = true,
					transition = "console_friends_menu",
					display_name = "console_friends_menu_button_name",
					disable_for_mechanism = default_disable_for_mechanism
				},
				{
					fade = false,
					transition = "leave_group_hero_view",
					display_name = disband_party_button_text
				},
				{
					fade = false,
					transition = "return_to_title_screen_hero_view",
					display_name = quit_menu_button_text
				}
			},
			client = {
				{
					fade = false,
					transition = "exit_menu",
					display_name = "return_to_game_button_name"
				},
				{
					display_name = "profile_menu_button_name",
					requires_player_unit = true,
					fade = true,
					transition_state = "character",
					transition = "character_selection",
					disable_for_mechanism = default_disable_for_mechanism
				},
				HANDBOOK_OPTION,
				{
					fade = true,
					transition = "options_menu",
					display_name = "options_menu_button_name",
					disable_for_mechanism = default_disable_for_mechanism
				},
				{
					fade = true,
					transition = "console_friends_menu",
					display_name = "console_friends_menu_button_name",
					disable_for_mechanism = default_disable_for_mechanism
				},
				{
					fade = false,
					transition = "leave_group_hero_view",
					display_name = leave_party_button_text
				},
				{
					fade = false,
					transition = "return_to_title_screen_hero_view",
					display_name = quit_menu_button_text
				}
			},
			demo = {
				{
					transition = "exit_menu",
					display_name = "return_to_game_button_name"
				},
				{
					transition = "restart_demo_hero_view",
					display_name = "menu_restart"
				},
				{
					transition = "demo_invert_controls",
					display_name = "menu_invert_controls",
					display_name_func = demo_inverted_func
				},
				{
					transition = "return_to_demo_title_screen_hero_view",
					display_name = "menu_return_to_title_screen"
				}
			},
			offline = {
				{
					fade = false,
					transition = "exit_menu",
					display_name = "return_to_game_button_name"
				},
				{
					display_name = "profile_menu_button_name",
					requires_player_unit = true,
					fade = true,
					transition_state = "character",
					transition = "character_selection",
					disable_for_mechanism = default_disable_for_mechanism
				},
				HANDBOOK_OPTION,
				{
					fade = true,
					transition = "options_menu",
					display_name = "options_menu_button_name",
					disable_for_mechanism = default_disable_for_mechanism
				},
				{
					fade = false,
					transition = "return_to_title_screen_hero_view",
					display_name = quit_menu_button_text
				}
			}
		},
		in_game = {
			alone = {
				{
					fade = false,
					transition = "exit_menu",
					display_name = "return_to_game_button_name"
				},
				{
					fade = true,
					transition = "options_menu",
					display_name = "options_menu_button_name",
					disable_for_mechanism = default_disable_for_mechanism
				},
				{
					fade = true,
					transition = "console_friends_menu",
					display_name = "console_friends_menu_button_name",
					disable_for_mechanism = default_disable_for_mechanism
				},
				{
					fade = false,
					transition = "leave_group_hero_view",
					display_name = "leave_game_menu_button_name"
				},
				{
					fade = false,
					transition = "return_to_title_screen_hero_view",
					display_name = quit_menu_button_text
				}
			},
			host = {
				{
					fade = false,
					transition = "exit_menu",
					display_name = "return_to_game_button_name"
				},
				{
					fade = true,
					transition = "options_menu",
					display_name = "options_menu_button_name",
					disable_for_mechanism = default_disable_for_mechanism
				},
				{
					fade = true,
					transition = "console_friends_menu",
					display_name = "console_friends_menu_button_name",
					disable_for_mechanism = default_disable_for_mechanism
				},
				{
					fade = false,
					transition = "leave_group_hero_view",
					display_name = disband_party_button_text
				},
				{
					fade = false,
					transition = "return_to_title_screen_hero_view",
					display_name = quit_menu_button_text
				}
			},
			client = {
				{
					fade = false,
					transition = "exit_menu",
					display_name = "return_to_game_button_name"
				},
				{
					fade = true,
					transition = "options_menu",
					display_name = "options_menu_button_name",
					disable_for_mechanism = default_disable_for_mechanism
				},
				{
					fade = true,
					transition = "console_friends_menu",
					display_name = "console_friends_menu_button_name",
					disable_for_mechanism = default_disable_for_mechanism
				},
				{
					fade = false,
					transition = "leave_group_hero_view",
					display_name = leave_party_button_text
				},
				{
					fade = false,
					transition = "return_to_title_screen_hero_view",
					display_name = quit_menu_button_text
				}
			},
			tutorial = {
				{
					transition = "exit_menu",
					display_name = "return_to_game_button_name"
				},
				{
					transition = "options_menu",
					display_name = "options_menu_button_name"
				},
				{
					fade = false,
					transition = "leave_group_hero_view",
					display_name = "leave_game_menu_button_name"
				},
				{
					transition = "return_to_title_screen_hero_view",
					display_name = quit_menu_button_text
				}
			},
			demo = {
				{
					transition = "exit_menu",
					display_name = "return_to_game_button_name"
				},
				{
					transition = "restart_demo_hero_view",
					display_name = "menu_restart"
				},
				{
					transition = "demo_invert_controls",
					display_name = "menu_invert_controls",
					display_name_func = demo_inverted_func
				},
				{
					transition = "return_to_demo_title_screen_hero_view",
					display_name = "menu_return_to_title_screen"
				}
			},
			offline = {
				{
					fade = false,
					transition = "exit_menu",
					display_name = "return_to_game_button_name"
				},
				{
					fade = true,
					transition = "options_menu",
					display_name = "options_menu_button_name",
					disable_for_mechanism = default_disable_for_mechanism
				},
				{
					fade = false,
					transition = "leave_group_hero_view",
					display_name = "leave_game_menu_button_name"
				},
				{
					fade = false,
					transition = "return_to_title_screen_hero_view",
					display_name = quit_menu_button_text
				}
			}
		}
	}
elseif IS_XB1 then
	menu_layouts = {
		in_menu = {
			alone = {
				{
					fade = false,
					transition = "exit_menu",
					display_name = "return_to_game_button_name"
				},
				{
					display_name = "profile_menu_button_name",
					requires_player_unit = true,
					fade = true,
					transition_state = "character",
					transition = "character_selection",
					disable_for_mechanism = default_disable_for_mechanism
				},
				HANDBOOK_OPTION,
				{
					fade = true,
					transition = "options_menu",
					display_name = "options_menu_button_name",
					disable_for_mechanism = default_disable_for_mechanism
				},
				{
					fade = true,
					transition = "console_friends_menu",
					display_name = "console_friends_menu_button_name",
					disable_for_mechanism = default_disable_for_mechanism
				},
				{
					fade = false,
					transition = "leave_group_hero_view",
					display_name = "leave_game_menu_button_name"
				},
				{
					fade = false,
					transition = "return_to_title_screen_hero_view",
					display_name = quit_menu_button_text
				}
			},
			host = {
				{
					fade = false,
					transition = "exit_menu",
					display_name = "return_to_game_button_name"
				},
				{
					display_name = "profile_menu_button_name",
					requires_player_unit = true,
					fade = true,
					transition_state = "character",
					transition = "character_selection",
					disable_for_mechanism = default_disable_for_mechanism
				},
				HANDBOOK_OPTION,
				{
					fade = true,
					transition = "options_menu",
					display_name = "options_menu_button_name",
					disable_for_mechanism = default_disable_for_mechanism
				},
				{
					fade = true,
					transition = "console_friends_menu",
					display_name = "console_friends_menu_button_name",
					disable_for_mechanism = default_disable_for_mechanism
				},
				{
					fade = false,
					transition = "leave_group_hero_view",
					display_name = disband_party_button_text
				},
				{
					fade = false,
					transition = "return_to_title_screen_hero_view",
					display_name = quit_menu_button_text
				}
			},
			client = {
				{
					fade = false,
					transition = "exit_menu",
					display_name = "return_to_game_button_name"
				},
				{
					display_name = "profile_menu_button_name",
					requires_player_unit = true,
					fade = true,
					transition_state = "character",
					transition = "character_selection",
					disable_for_mechanism = default_disable_for_mechanism
				},
				HANDBOOK_OPTION,
				{
					fade = true,
					transition = "options_menu",
					display_name = "options_menu_button_name",
					disable_for_mechanism = default_disable_for_mechanism
				},
				{
					fade = true,
					transition = "console_friends_menu",
					display_name = "console_friends_menu_button_name",
					disable_for_mechanism = default_disable_for_mechanism
				},
				{
					fade = false,
					transition = "leave_group_hero_view",
					display_name = leave_party_button_text
				},
				{
					fade = false,
					transition = "return_to_title_screen_hero_view",
					display_name = quit_menu_button_text
				}
			},
			demo = {
				{
					transition = "exit_menu",
					display_name = "return_to_game_button_name"
				},
				{
					transition = "restart_demo_hero_view",
					display_name = "menu_restart"
				},
				{
					transition = "demo_invert_controls",
					display_name = "menu_invert_controls",
					display_name_func = demo_inverted_func
				},
				{
					transition = "return_to_demo_title_screen_hero_view",
					display_name = "menu_return_to_title_screen"
				}
			},
			offline = {
				{
					fade = false,
					transition = "exit_menu",
					display_name = "return_to_game_button_name"
				},
				{
					display_name = "profile_menu_button_name",
					requires_player_unit = true,
					fade = true,
					transition_state = "character",
					transition = "character_selection",
					disable_for_mechanism = default_disable_for_mechanism
				},
				HANDBOOK_OPTION,
				{
					fade = true,
					transition = "options_menu",
					display_name = "options_menu_button_name",
					disable_for_mechanism = default_disable_for_mechanism
				},
				{
					fade = false,
					transition = "return_to_title_screen_hero_view",
					display_name = quit_menu_button_text
				}
			}
		},
		in_game = {
			alone = {
				{
					fade = false,
					transition = "exit_menu",
					display_name = "return_to_game_button_name"
				},
				{
					fade = true,
					transition = "options_menu",
					display_name = "options_menu_button_name",
					disable_for_mechanism = default_disable_for_mechanism
				},
				{
					fade = true,
					transition = "console_friends_menu",
					display_name = "console_friends_menu_button_name",
					disable_for_mechanism = default_disable_for_mechanism
				},
				{
					fade = false,
					transition = "leave_group_hero_view",
					display_name = "leave_game_menu_button_name"
				},
				{
					fade = false,
					transition = "return_to_title_screen_hero_view",
					display_name = quit_menu_button_text
				}
			},
			host = {
				{
					fade = false,
					transition = "exit_menu",
					display_name = "return_to_game_button_name"
				},
				{
					fade = true,
					transition = "options_menu",
					display_name = "options_menu_button_name",
					disable_for_mechanism = default_disable_for_mechanism
				},
				{
					fade = true,
					transition = "console_friends_menu",
					display_name = "console_friends_menu_button_name",
					disable_for_mechanism = default_disable_for_mechanism
				},
				{
					fade = false,
					transition = "leave_group_hero_view",
					display_name = disband_party_button_text
				},
				{
					fade = false,
					transition = "return_to_title_screen_hero_view",
					display_name = quit_menu_button_text
				}
			},
			client = {
				{
					fade = false,
					transition = "exit_menu",
					display_name = "return_to_game_button_name"
				},
				{
					fade = true,
					transition = "options_menu",
					display_name = "options_menu_button_name",
					disable_for_mechanism = default_disable_for_mechanism
				},
				{
					fade = true,
					transition = "console_friends_menu",
					display_name = "console_friends_menu_button_name",
					disable_for_mechanism = default_disable_for_mechanism
				},
				{
					fade = false,
					transition = "leave_group_hero_view",
					display_name = leave_party_button_text
				},
				{
					fade = false,
					transition = "return_to_title_screen_hero_view",
					display_name = quit_menu_button_text
				}
			},
			tutorial = {
				{
					transition = "exit_menu",
					display_name = "return_to_game_button_name"
				},
				{
					transition = "options_menu",
					display_name = "options_menu_button_name"
				},
				{
					fade = false,
					transition = "leave_group_hero_view",
					display_name = "leave_game_menu_button_name"
				},
				{
					transition = "return_to_title_screen_hero_view",
					display_name = quit_menu_button_text
				}
			},
			demo = {
				{
					transition = "exit_menu",
					display_name = "return_to_game_button_name"
				},
				{
					transition = "restart_demo_hero_view",
					display_name = "menu_restart"
				},
				{
					transition = "demo_invert_controls",
					display_name = "menu_invert_controls",
					display_name_func = demo_inverted_func
				},
				{
					transition = "return_to_demo_title_screen_hero_view",
					display_name = "menu_return_to_title_screen"
				}
			},
			offline = {
				{
					fade = false,
					transition = "exit_menu",
					display_name = "return_to_game_button_name"
				},
				{
					fade = true,
					transition = "options_menu",
					display_name = "options_menu_button_name",
					disable_for_mechanism = default_disable_for_mechanism
				},
				{
					fade = false,
					transition = "leave_group_hero_view",
					display_name = "leave_game_menu_button_name"
				},
				{
					fade = false,
					transition = "return_to_title_screen_hero_view",
					display_name = quit_menu_button_text
				}
			}
		}
	}
else
	menu_layouts = {
		in_menu = {
			alone = {
				{
					fade = false,
					transition = "exit_menu",
					display_name = "return_to_game_button_name"
				},
				{
					display_name = "profile_menu_button_name",
					requires_player_unit = true,
					fade = true,
					transition_state = "character",
					transition = "character_selection",
					disable_for_mechanism = default_disable_for_mechanism
				},
				{
					display_name = "inventory_menu_button_name",
					requires_player_unit = true,
					fade = true,
					transition_state = "overview",
					transition = "hero_view",
					force_open = true,
					disable_for_mechanism = default_disable_for_mechanism,
					can_add_function = can_add_ingame_menu
				},
				{
					display_name = "interact_loot",
					requires_player_unit = true,
					fade = true,
					transition_state = "loot",
					transition = "spoils_of_war",
					force_open = true,
					disable_for_mechanism = disable_for_mechanism_versus_disabled,
					can_add_function = can_add_ingame_menu
				},
				HANDBOOK_OPTION,
				{
					fade = true,
					transition = "options_menu",
					display_name = "options_menu_button_name",
					disable_for_mechanism = default_disable_for_mechanism
				},
				{
					fade = false,
					transition = "return_to_pc_menu_hero_view",
					display_name = "menu_return_to_title_screen"
				},
				{
					fade = false,
					transition = "quit_game_hero_view",
					display_name = "quit_menu_button_name"
				}
			},
			host = {
				{
					fade = false,
					transition = "exit_menu",
					display_name = "return_to_game_button_name"
				},
				{
					display_name = "profile_menu_button_name",
					requires_player_unit = true,
					fade = true,
					transition_state = "character",
					transition = "character_selection",
					disable_for_mechanism = default_disable_for_mechanism
				},
				{
					display_name = "inventory_menu_button_name",
					requires_player_unit = true,
					fade = true,
					transition_state = "overview",
					transition = "hero_view",
					force_open = true,
					disable_for_mechanism = default_disable_for_mechanism,
					can_add_function = can_add_ingame_menu
				},
				{
					display_name = "interact_loot",
					requires_player_unit = true,
					fade = true,
					transition_state = "loot",
					transition = "spoils_of_war",
					force_open = true,
					disable_for_mechanism = disable_for_mechanism_versus_disabled,
					can_add_function = can_add_ingame_menu
				},
				HANDBOOK_OPTION,
				{
					fade = true,
					transition = "options_menu",
					display_name = "options_menu_button_name",
					disable_for_mechanism = default_disable_for_mechanism
				},
				{
					fade = false,
					transition = "leave_group_hero_view",
					display_name = disband_party_button_text
				},
				{
					fade = false,
					transition = "return_to_pc_menu_hero_view",
					display_name = "menu_return_to_title_screen"
				},
				{
					fade = false,
					transition = "quit_game_hero_view",
					display_name = "quit_menu_button_name"
				}
			},
			client = {
				{
					fade = false,
					transition = "exit_menu",
					display_name = "return_to_game_button_name"
				},
				{
					display_name = "profile_menu_button_name",
					requires_player_unit = true,
					fade = true,
					transition_state = "character",
					transition = "character_selection",
					disable_for_mechanism = default_disable_for_mechanism
				},
				{
					display_name = "inventory_menu_button_name",
					requires_player_unit = true,
					fade = true,
					transition_state = "overview",
					transition = "hero_view",
					force_open = true,
					disable_for_mechanism = default_disable_for_mechanism,
					can_add_function = can_add_ingame_menu
				},
				{
					display_name = "interact_loot",
					requires_player_unit = true,
					fade = true,
					transition_state = "loot",
					transition = "spoils_of_war",
					force_open = true,
					disable_for_mechanism = disable_for_mechanism_versus_disabled,
					can_add_function = can_add_ingame_menu
				},
				HANDBOOK_OPTION,
				{
					fade = true,
					transition = "options_menu",
					display_name = "options_menu_button_name",
					disable_for_mechanism = default_disable_for_mechanism
				},
				{
					fade = false,
					transition = "leave_group_hero_view",
					display_name = leave_party_button_text
				},
				{
					fade = false,
					transition = "return_to_pc_menu_hero_view",
					display_name = "menu_return_to_title_screen"
				},
				{
					fade = false,
					transition = "quit_game_hero_view",
					display_name = "quit_menu_button_name"
				}
			},
			demo = {
				{
					transition = "exit_menu",
					display_name = "return_to_game_button_name"
				},
				{
					transition = "restart_demo",
					display_name = "menu_restart"
				},
				{
					transition = "demo_invert_controls",
					display_name = "menu_invert_controls",
					display_name_func = demo_inverted_func
				},
				{
					transition = "return_to_demo_title_screen",
					display_name = "menu_return_to_title_screen"
				}
			}
		},
		in_game = {
			alone = {
				{
					fade = false,
					transition = "exit_menu",
					display_name = "return_to_game_button_name"
				},
				{
					fade = true,
					transition = "options_menu",
					display_name = "options_menu_button_name",
					disable_for_mechanism = default_disable_for_mechanism
				},
				{
					fade = false,
					transition = "leave_group_hero_view",
					display_name = "leave_game_menu_button_name"
				},
				{
					fade = false,
					transition = "quit_game_hero_view",
					display_name = "quit_menu_button_name"
				}
			},
			host = {
				{
					fade = false,
					transition = "exit_menu",
					display_name = "return_to_game_button_name"
				},
				{
					fade = true,
					transition = "options_menu",
					display_name = "options_menu_button_name",
					disable_for_mechanism = default_disable_for_mechanism
				},
				{
					fade = false,
					transition = "leave_group_hero_view",
					display_name = disband_party_button_text
				},
				{
					fade = false,
					transition = "quit_game_hero_view",
					display_name = "quit_menu_button_name"
				}
			},
			client = {
				{
					fade = false,
					transition = "exit_menu",
					display_name = "return_to_game_button_name"
				},
				{
					fade = true,
					transition = "options_menu",
					display_name = "options_menu_button_name",
					disable_for_mechanism = default_disable_for_mechanism
				},
				{
					fade = false,
					transition = "leave_group_hero_view",
					display_name = leave_party_button_text
				},
				{
					fade = false,
					transition = "quit_game_hero_view",
					display_name = "quit_menu_button_name"
				}
			},
			tutorial = {
				{
					transition = "exit_menu",
					display_name = "return_to_game_button_name"
				},
				{
					transition = "options_menu",
					display_name = "options_menu_button_name"
				},
				{
					fade = false,
					transition = "leave_group_hero_view",
					display_name = "leave_game_menu_button_name"
				},
				{
					transition = "quit_game_hero_view",
					display_name = "quit_menu_button_name"
				}
			},
			demo = {
				{
					transition = "exit_menu",
					display_name = "return_to_game_button_name"
				},
				{
					transition = "restart_demo",
					display_name = "menu_restart"
				},
				{
					transition = "demo_invert_controls",
					display_name = "menu_invert_controls"
				},
				{
					transition = "return_to_demo_title_screen",
					display_name = "menu_return_to_title_screen"
				}
			}
		}
	}
end

if GameSettingsDevelopment.use_global_chat and IS_WINDOWS then
	table.insert(menu_layouts.in_menu.host, 4, {
		fade = false,
		transition = "chat_view",
		display_name = "chat_menu_button_name"
	})
	table.insert(menu_layouts.in_menu.client, 4, {
		fade = false,
		transition = "chat_view",
		display_name = "chat_menu_button_name"
	})
	table.insert(menu_layouts.in_menu.alone, 4, {
		fade = false,
		transition = "chat_view",
		display_name = "chat_menu_button_name"
	})
	table.insert(menu_layouts.in_game.host, 4, {
		fade = false,
		transition = "chat_view",
		display_name = "chat_menu_button_name"
	})
	table.insert(menu_layouts.in_game.client, 4, {
		fade = false,
		transition = "chat_view",
		display_name = "chat_menu_button_name"
	})
	table.insert(menu_layouts.in_game.alone, 4, {
		fade = false,
		transition = "chat_view",
		display_name = "chat_menu_button_name"
	})
end

local full_access_layout = {
	{
		display_name = "profile_menu_button_name",
		fade = true,
		transition_state = "character",
		transition = "character_selection",
		disable_for_mechanism = {
			adventure = {
				matchmaking = false,
				matchmaking_ready = false,
				not_matchmaking = false
			},
			versus = {
				matchmaking = false,
				matchmaking_ready = false,
				not_matchmaking = false
			},
			deus = {
				matchmaking = false,
				matchmaking_ready = false,
				not_matchmaking = false
			}
		}
	},
	{
		display_name = "inventory_menu_button_name",
		requires_player_unit = true,
		fade = true,
		transition_state = "overview",
		transition = "hero_view",
		force_open = true,
		disable_for_mechanism = default_disable_for_mechanism,
		can_add_function = can_add_ingame_menu
	},
	{
		requires_player_unit = true,
		transition_sub_state = "talents",
		display_name = "hero_window_talents",
		force_open = true,
		fade = true,
		transition = "hero_view",
		transition_state = "overview",
		disable_for_mechanism = default_disable_for_mechanism,
		can_add_function = can_add_ingame_menu
	},
	{
		requires_player_unit = true,
		transition_sub_state = "cosmetics",
		display_name = "hero_window_cosmetics",
		force_open = true,
		fade = true,
		transition = "hero_view",
		transition_state = "overview",
		disable_for_mechanism = default_disable_for_mechanism,
		can_add_function = can_add_ingame_menu
	},
	{
		display_name = "achievements",
		requires_player_unit = true,
		fade = true,
		transition_state = "achievements",
		transition = "hero_view"
	},
	{
		display_name = "start_menu_view",
		requires_player_unit = true,
		fade = false,
		transition = "start_menu_view",
		disable_for_mechanism = default_disable_for_mechanism
	},
	{
		fade = true,
		transition = "options_menu",
		display_name = "options_menu_button_name",
		disable_for_mechanism = default_disable_for_mechanism
	},
	{
		fade = true,
		transition = "console_friends_menu",
		display_name = "console_friends_menu_button_name",
		disable_for_mechanism = default_disable_for_mechanism
	},
	{
		fade = false,
		transition = "return_to_title_screen_hero_view",
		display_name = "menu_return_to_title_screen"
	},
	{
		fade = false,
		transition = "leave_group_hero_view",
		display_name = "leave_game_menu_button_name"
	},
	{
		fade = false,
		transition = "quit_game_hero_view",
		display_name = "quit_menu_button_name"
	}
}

return {
	menu_layouts = menu_layouts,
	full_access_layout = full_access_layout
}
