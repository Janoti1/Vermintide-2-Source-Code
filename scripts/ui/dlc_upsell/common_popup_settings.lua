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

require("scripts/settings/handbook_settings")

for popup_id, popup_settings in pairs(HandbookSettings.popups) do
	CommonPopupSettings[popup_id] = {
		definitions_path = "scripts/ui/dlc_upsell/handbook_popup_definitions",
		class_name = "HandbookPopup",
		popup_type = "handbook",
		pages = popup_settings.pages
	}
end
