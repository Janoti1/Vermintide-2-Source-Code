CommonPopupSettings = CommonPopupSettings or {}
CommonPopupSettings.scorpion = {
	definitions_path = "scripts/ui/dlc_upsell/upsell_popup_definitions",
	title_text = "menu_weave_area_no_wom_title",
	body_text = "menu_weave_area_no_wom_body",
	ok_button_text = "menu_close",
	button_text = "menu_weave_area_no_wom_button",
	popup_type = "upsell",
	class_name = "UpsellPopup",
	background_texture = "wom_upsell_popup_bg",
	input_desc = {
		actions = {
			{
				input_action = "confirm",
				priority = 1,
				description_text = "menu_weave_area_no_wom_button"
			}
		}
	}
}
CommonPopupSettings.lake = {
	definitions_path = "scripts/ui/dlc_upsell/upsell_popup_definitions",
	title_text = "upsell_popup_new_career_title",
	body_text = "upsell_popup_lake_body",
	ok_button_text = "menu_close",
	button_text = "menu_weave_area_no_lake_button",
	popup_type = "upsell",
	class_name = "UpsellPopup",
	background_texture = "lake_upsell_popup_bg",
	input_desc = {
		actions = {
			{
				input_action = "confirm",
				priority = 1,
				description_text = "menu_weave_area_no_lake_button"
			}
		}
	}
}
CommonPopupSettings.cog = {
	definitions_path = "scripts/ui/dlc_upsell/upsell_popup_definitions",
	title_text = "upsell_popup_new_career_title",
	body_text = "upsell_popup_cog_body",
	ok_button_text = "menu_close",
	button_text = "upsell_popup_cog_button",
	popup_type = "upsell",
	class_name = "UpsellPopup",
	background_texture = "cog_upsell_popup_bg",
	input_desc = {
		actions = {
			{
				input_action = "confirm",
				priority = 1,
				description_text = "upsell_popup_cog_button"
			}
		}
	}
}
CommonPopupSettings.woods = {
	definitions_path = "scripts/ui/dlc_upsell/upsell_popup_definitions",
	title_text = "upsell_popup_new_career_title",
	body_text = "upsell_popup_woods_body",
	ok_button_text = "menu_close",
	button_text = "upsell_popup_woods_button",
	popup_type = "upsell",
	class_name = "UpsellPopup",
	background_texture = "woods_upsell_popup_bg",
	input_desc = {
		actions = {
			{
				input_action = "confirm",
				priority = 1,
				description_text = "upsell_popup_woods_button"
			}
		}
	}
}
CommonPopupSettings.bless = {
	definitions_path = "scripts/ui/dlc_upsell/upsell_popup_definitions",
	title_text = "upsell_popup_new_career_title",
	body_text = "upsell_popup_bless_body",
	ok_button_text = "menu_close",
	button_text = "upsell_popup_bless_button",
	popup_type = "upsell",
	class_name = "UpsellPopup",
	background_texture = "priest_upsell_popup_bg",
	input_desc = {
		actions = {
			{
				input_action = "confirm",
				priority = 1,
				description_text = "upsell_popup_bless_button"
			}
		}
	}
}
CommonPopupSettings.shovel = {
	definitions_path = "scripts/ui/dlc_upsell/upsell_popup_definitions",
	title_text = "upsell_popup_new_career_title",
	body_text = "upsell_popup_shovel_body",
	ok_button_text = "menu_close",
	button_text = "upsell_popup_shovel_button",
	popup_type = "upsell",
	class_name = "UpsellPopup",
	background_texture = "shovel_upsell_popup_bg",
	input_desc = {
		actions = {
			{
				input_action = "confirm",
				priority = 1,
				description_text = "upsell_popup_shovel_button"
			}
		}
	}
}
CommonPopupSettings.anniversary = {
	definitions_path = "scripts/ui/active_event/active_event_popup_definitions",
	body_text = "popup_active_event_flavour_text",
	button_text = "menu_close",
	popup_type = "active_event",
	event_name = "Anniversary",
	class_name = "ActiveEventPopup",
	background_texture = "event_upsell_anniversary",
	action_buttons = {
		{
			button_text = "popup_button_open_store_event_tab",
			on_pressed = function ()
				Managers.ui:handle_transition("hero_view_force", {
					menu_state_name = "store",
					use_fade = true,
					menu_sub_state_name = {
						"cosmetics",
						"event"
					}
				})
			end
		},
		{
			button_text = "popup_button_open_weekly_challenges",
			on_pressed = function ()
				Managers.ui:handle_transition("hero_view_force", {
					menu_state_name = "achievements",
					use_fade = true,
					menu_sub_state_name = {
						{
							layout_name = "quest"
						},
						{
							tab_index = 3
						}
					}
				})
			end
		},
		{
			button_text = "popup_button_open_mission_selection_event_tab",
			on_pressed = function ()
				Managers.ui:handle_transition("start_game_view_force", {
					menu_sub_state_name = "event",
					menu_state_name = "play",
					use_fade = true
				})
			end
		}
	},
	input_desc = {
		actions = {
			{
				input_action = "back",
				priority = 1,
				description_text = "menu_close"
			}
		}
	}
}
CommonPopupSettings.default_event = {
	definitions_path = "scripts/ui/active_event/active_event_popup_definitions",
	body_text = "popup_weekly_event_flavour_text",
	button_text = "menu_close",
	popup_type = "active_event",
	class_name = "ActiveEventPopup",
	background_texture = "event_upsell_default",
	action_buttons = {
		{
			button_text = "popup_button_open_mission_selection_event_tab",
			on_pressed = function ()
				Managers.ui:handle_transition("start_game_view_force", {
					menu_sub_state_name = "event",
					menu_state_name = "play",
					use_fade = true
				})
			end
		}
	},
	input_desc = {
		actions = {
			{
				input_action = "back",
				priority = 1,
				description_text = "menu_close"
			}
		}
	}
}
CommonPopupSettings.skulls = {
	definitions_path = "scripts/ui/active_event/active_event_popup_definitions",
	body_text = "popup_active_event_flavour_text",
	button_text = "menu_close",
	popup_type = "active_event",
	event_name = "Skulls",
	class_name = "ActiveEventPopup",
	background_texture = "event_upsell_skulls",
	action_buttons = {
		{
			button_text = "popup_button_open_store_event_tab",
			on_pressed = function ()
				Managers.ui:handle_transition("hero_view_force", {
					menu_state_name = "store",
					use_fade = true,
					menu_sub_state_name = {
						"cosmetics",
						"event"
					}
				})
			end
		},
		{
			button_text = "popup_button_open_weekly_challenges",
			on_pressed = function ()
				Managers.ui:handle_transition("hero_view_force", {
					menu_state_name = "achievements",
					use_fade = true,
					menu_sub_state_name = {
						{
							layout_name = "quest"
						},
						{
							tab_index = 3
						}
					}
				})
			end
		},
		{
			button_text = "lb_game_type_quick_play",
			on_pressed = function ()
				Managers.ui:handle_transition("start_game_view_force", {
					menu_sub_state_name = "adventure",
					menu_state_name = "play",
					use_fade = true
				})
			end
		}
	},
	input_desc = {
		actions = {
			{
				input_action = "back",
				priority = 1,
				description_text = "menu_close"
			}
		}
	}
}

require("scripts/settings/handbook_settings")

for popup_id, popup_settings in pairs(HandbookSettings.popups) do
	CommonPopupSettings[popup_id] = {
		definitions_path = "scripts/ui/dlc_upsell/handbook_popup_definitions",
		class_name = "HandbookPopup",
		popup_type = "handbook",
		pages = popup_settings.pages
	}
end
