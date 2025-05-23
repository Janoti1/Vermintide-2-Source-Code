require("scripts/ui/atlas_settings/gui_hud_atlas")
require("scripts/ui/atlas_settings/gui_loading_atlas")
require("scripts/ui/atlas_settings/gui_menu_buttons_atlas")
require("scripts/ui/atlas_settings/gui_popup_atlas")
require("scripts/ui/atlas_settings/gui_splash_atlas")
require("scripts/ui/atlas_settings/gui_items_atlas")
require("scripts/ui/atlas_settings/gui_achievement_icons_atlas")
require("scripts/ui/atlas_settings/gui_icons_atlas")
require("scripts/ui/atlas_settings/gui_chat_atlas")
require("scripts/ui/atlas_settings/gui_voice_chat_atlas")
require("scripts/ui/atlas_settings/gui_startup_settings_atlas")
require("scripts/ui/atlas_settings/gui_settings_atlas")
require("scripts/ui/atlas_settings/gui_start_screen_atlas")
require("scripts/ui/atlas_settings/gui_level_images_atlas")
require("scripts/ui/atlas_settings/gui_frames_atlas")
require("scripts/ui/atlas_settings/gui_menus_atlas")
require("scripts/ui/atlas_settings/gui_country_flags_atlas")
require("scripts/ui/atlas_settings/gui_mission_selection_atlas")
require("scripts/ui/atlas_settings/gui_lock_test_atlas")
require("scripts/ui/atlas_settings/gui_pose_items_atlas")

UIAtlasHelper = UIAtlasHelper or {}

local standalone_texture = {
	loot_presentation_circle_glow_exotic_large = true,
	loot_presentation_circle_glow_common_large = true,
	crafting_button_fill = true,
	loot_presentation_circle_glow_promo = true,
	ability_effect = true,
	demo_bg_02 = true,
	journal_gradient_05 = true,
	level_location_selected = true,
	twitch_buff_1 = true,
	ubersreik_area_icon_banner = true,
	chest_reward_bar = true,
	console_hp_bar_background = true,
	news_splash_pagecounter_fill = true,
	unit_frame_portrait_bardin_ranger_twitch_icon = true,
	level_list_selection_frame = true,
	game_mode_selection_glow_01 = true,
	charge_bar_flames_mask = true,
	versus_objective_progress_bar = true,
	gamma_settings_image_01 = true,
	unit_frame_portrait_kerillian_shade_masked = true,
	gradient_credits_menu = true,
	achievement_small_book_glow = true,
	unit_frame_portrait_kruber_questingknight_masked = true,
	teammate_hp_bar_color_tint_7 = true,
	end_screen_effect_victory_1 = true,
	gradient_main_menu = true,
	news_splash_new_dlc_tag = true,
	twitch_ammo = true,
	buff_cooldown_gradient = true,
	gamepad_difficulty_banner_4_masked = true,
	vote_a = true,
	gradient_item_rarity = true,
	unit_frame_portrait_bardin_slayer_twitch = true,
	achievement_book_glow_03 = true,
	offscreen_clear = true,
	loot_presentation_circle_glow_unique = true,
	end_screen_banner_victory = true,
	play_button_frame_glow = true,
	twitch_buff_3 = true,
	unit_frame_portrait_bardin_engineer = true,
	energy_bar = true,
	mask_rect_edge_fade = true,
	unit_frame_portrait_kerillian_thornsister_twitch = true,
	gamepad_difficulty_banner_3_masked = true,
	gamepad_difficulty_banner_2_masked = true,
	unit_frame_portrait_sienna_unchained = true,
	unit_frame_portrait_victor_zealot = true,
	circular_gradient_write_mask = true,
	journal_gradient_01 = true,
	mask_circular = true,
	unit_frame_portrait_victor_priest_twitch_icon = true,
	gamepad_difficulty_banner_2 = true,
	gamepad_crafting_bar_mask = true,
	teammate_hp_bar_color_tint_4 = true,
	unit_frame_portrait_kerillian_maidenguard_masked = true,
	unit_frame_portrait_kerillian_thornsister = true,
	twitch_damage_boost = true,
	unit_frame_portrait_sienna_unchained_twitch_icon = true,
	game_mode_selection_glow_01_masked = true,
	unit_frame_portrait_kerillian_waywatcher_twitch_icon = true,
	gamepad_difficulty_banner_5 = true,
	unit_frame_portrait_sienna_scholar = true,
	game_mode_selection_glow_02_masked = true,
	unit_frame_portrait_kerillian_shade_twitch_icon = true,
	buff_gradient_mask = true,
	unit_frame_portrait_kerillian_waywatcher_masked = true,
	gamepad_ability_outline_fill = true,
	vermintide_logo_title = true,
	unit_frame_portrait_victor_captain_twitch = true,
	end_screen_effect_defeat_2 = true,
	end_screen_experience_bar_bubbles = true,
	vermintide_2_logo_demo = true,
	teammate_hp_bar_1 = true,
	unit_frame_portrait_bardin_ranger_masked = true,
	unit_frame_portrait_bardin_ranger_twitch = true,
	glass_indicator = true,
	unit_frame_portrait_kruber_mercenary_twitch_icon = true,
	clear_mask = true,
	unit_frame_portrait_kruber_huntsman_masked = true,
	unit_frame_portrait_sienna_adept = true,
	unit_frame_portrait_victor_captain = true,
	gamepad_difficulty_banner_5_masked = true,
	twitch_frame_glass = true,
	unit_frame_portrait_bardin_ironbreaker_masked = true,
	unit_frame_portrait_victor_zealot_masked = true,
	unit_frame_portrait_sienna_scholar_twitch = true,
	active_ability_bar = true,
	console_cursor = true,
	hud_difficulty_unlocked_glow = true,
	background_seaweed_anim_03 = true,
	gradient_map_screen = true,
	unit_frame_portrait_victor_priest_twitch = true,
	teammate_hp_bar_2 = true,
	console_charge_bar_fill = true,
	unit_frame_portrait_victor_zealot_twitch_icon = true,
	twitch_special_group_3 = true,
	unit_frame_portrait_kerillian_waywatcher_twitch = true,
	unit_frame_portrait_kerillian_thornsister_twitch_icon = true,
	start_game_detail_glow_masked = true,
	achievement_menu_flag = true,
	unit_frame_portrait_bardin_engineer_twitch_icon = true,
	dark_pact_ability_effect = true,
	console_menu_highlight = true,
	hero_power_glow_console = true,
	unit_frame_portrait_sienna_unchained_twitch = true,
	unit_frame_portrait_bardin_slayer_masked = true,
	unit_frame_portrait_sienna_adept_twitch_icon = true,
	hero_panel_selection_glow = true,
	beta_end_overlay = true,
	unit_frame_portrait_victor_bountyhunter_masked = true,
	console_player_hp_bar_color_tint = true,
	background_seaweed_anim_04 = true,
	background_net_anim_01 = true,
	unit_frame_portrait_victor_priest = true,
	unit_frame_portrait_sienna_necromancer_twitch_icon = true,
	teammate_hp_bar_3 = true,
	unit_frame_portrait_sienna_adept_masked = true,
	controller_hold_bar = true,
	news_splash_bg_back_to_ubersreik = true,
	console_hp_bar_frame = true,
	gradient_dice_game_reward = true,
	news_splash_pagecounter_bar = true,
	news_splash_pagecounter_dot_on = true,
	twitch_speed_boost = true,
	unit_frame_portrait_sienna_scholar_masked = true,
	unit_frame_portrait_kerillian_thornsister_masked = true,
	news_splash_scroll_end = true,
	controller_image_xb1 = true,
	news_splash_scroll_middle = true,
	gamepad_ability_outline_mask = true,
	news_splash_bogenhafan_title = true,
	news_splash_back_to_ubersreik_title = true,
	news_splash_arrow_off = true,
	store_bg_marble_highlights = true,
	gamma_settings_image_02 = true,
	loot_presentation_circle_glow_rare = true,
	weave_button_passive_glow = true,
	overcharge_bar_warrior_priest = true,
	achievement_book_ribbon_01 = true,
	dark_pact_player_hp_bar = true,
	overcharge_bar_warrior_priest_active = true,
	gamepad_ability_effect_priest = true,
	twitch_rat_ogre = true,
	twitch_logo = true,
	teammate_hp_bar_5 = true,
	teammate_hp_bar_color_tint_2 = true,
	teammate_hp_bar_7 = true,
	teammate_hp_bar_color_tint_5 = true,
	teammate_hp_bar_color_tint_6 = true,
	teammate_hp_bar_mask = true,
	unit_frame_portrait_bardin_ironbreaker_twitch_icon = true,
	local_player_score_bar = true,
	storepage_button = true,
	dark_pact_overcharge_bar = true,
	dark_pact_player_hp_bar_color_tint = true,
	overcharge_bar_warrior_priest_slim_bar = true,
	boss_portrait_heal = true,
	dark_pact_boss_player_hp_bar_color_tint = true,
	dark_pact_boss_player_hp_bar = true,
	unit_frame_portrait_kerillian_maidenguard_twitch_icon = true,
	dark_pact_ability_effect_top = true,
	dark_pact_ability_effect_bar_top = true,
	radial_chat_wedge = true,
	unit_frame_portrait_kruber_huntsman_twitch_icon = true,
	dark_pact_ability_effect_halo = true,
	game_mode_selection_glow_02 = true,
	dark_pact_ability_icon_cooldown_gradient = true,
	dark_pact_selection_portrait_mask = true,
	event_upsell_skulls = true,
	options_menu_divider_glow_02 = true,
	loot_presentation_circle_glow_plentiful = true,
	unit_frame_portrait_kruber_questingknight_twitch = true,
	unit_frame_portrait_victor_bountyhunter = true,
	crystals_01_child = true,
	athanor_options_track_background = true,
	journal_gradient_03 = true,
	opponent_score_bar = true,
	background_net_anim_02 = true,
	end_screen_effect_defeat_1 = true,
	hud_panel_banner = true,
	news_splash_premium_edition_title = true,
	unit_frame_portrait_kruber_knight_masked = true,
	event_upsell_default = true,
	loot_presentation_circle_glow_common = true,
	gradient_playerlist = true,
	unit_frame_portrait_sienna_necromancer_twitch = true,
	unit_frame_portrait_kerillian_maidenguard = true,
	twitch_special_group_1 = true,
	overcharge_threshold_mask = true,
	overcharge_bar_warrior_priest_bar_glow = true,
	esrb_logo = true,
	unit_frame_portrait_victor_bountyhunter_twitch_icon = true,
	loading_screen = true,
	teammate_hp_bar_8 = true,
	news_splash_bg_premium = true,
	settings_debug_gamma_correction = true,
	unit_frame_portrait_victor_captain_twitch_icon = true,
	unit_frame_portrait_victor_zealot_twitch = true,
	achievement_book_glow_04 = true,
	unit_frame_portrait_sienna_necromancer_masked = true,
	overchargecircle_fill = true,
	unit_frame_portrait_bardin_ironbreaker_twitch = true,
	block_arch_symbol = true,
	twitch_heal = true,
	unit_frame_portrait_kruber_mercenary_masked = true,
	mask_rect = true,
	loot_presentation_circle_glow_plentiful_large = true,
	unit_frame_portrait_sienna_necromancer = true,
	dark_pact_ability_progress_bar = true,
	speech_bubble = true,
	unit_frame_portrait_kruber_mercenary = true,
	unit_frame_portrait_default = true,
	interaction_bar = true,
	win_track_xp_bar_masked = true,
	unit_frame_portrait_sienna_adept_twitch = true,
	unit_frame_portrait_bardin_slayer_twitch_icon = true,
	beta_text = true,
	end_screen_experience_bar = true,
	game_option_smoke = true,
	teammate_hp_bar_color_tint_8 = true,
	store_bg_marble_highlights_mask = true,
	play_button_passive_glow = true,
	weave_button_passive_glow_unmasked = true,
	simple_rect_texture = true,
	vote_b = true,
	glowtexture_mask_red = true,
	vermintide_2_logo_tutorial = true,
	fade_bg = true,
	charge_bar_flames = true,
	achievement_book_glow_02 = true,
	controller_image_ps4 = true,
	loot_presentation_circle_glow_unique_large = true,
	unit_frame_portrait_victor_priest_masked = true,
	gamepad_ability_effect = true,
	ability_outer_effect_mask = true,
	overchargecircle_sidefade = true,
	start_game_detail_glow = true,
	twitch_buff_2 = true,
	unit_frame_portrait_kerillian_shade = true,
	background_seaweed_anim_02 = true,
	unit_frame_portrait_sienna_scholar_twitch_icon = true,
	start_screen_selection_left = true,
	prestige_banner = true,
	unit_frame_portrait_victor_captain_masked = true,
	unit_frame_portrait_kruber_knight_twitch_icon = true,
	loading_screen_default = true,
	demo_water_mark = true,
	gamepad_difficulty_banner_4 = true,
	teammate_hp_bar_color_tint_3 = true,
	unit_frame_portrait_bardin_ironbreaker = true,
	gradient_store_menu = true,
	twitch_icon_damage = true,
	loading_title_divider = true,
	fuzzy_circle = true,
	tile_texture_01 = true,
	twitch_frame_01 = true,
	start_screen_selection_right = true,
	demo_bg_01 = true,
	twitch_validate = true,
	journal_gradient_04 = true,
	unit_frame_portrait_sienna_unchained_masked = true,
	achievement_book_ribbon_02 = true,
	unit_frame_portrait_kruber_questingknight_twitch_icon = true,
	twitch_buff_4 = true,
	mask_rect_side_edge_fade = true,
	unit_frame_portrait_kruber_mercenary_twitch = true,
	options_menu_divider_glow_01 = true,
	console_player_hp_bar = true,
	ability_glow_priest = true,
	unit_frame_portrait_bardin_engineer_masked = true,
	unit_frame_portrait_bardin_ranger = true,
	overcharge_bar = true,
	twitch_pow = true,
	twitch_icon_ammo = true,
	rect_masked = true,
	mission_objective_top = true,
	mission_objective_bottom = true,
	unit_frame_portrait_kruber_huntsman_twitch = true,
	default = true,
	buff_duration_gradient = true,
	gamepad_difficulty_banner_1_masked = true,
	twitch_special_group_4 = true,
	teammate_hp_bar_4 = true,
	twitch_bg = true,
	end_screen_effect_victory_2 = true,
	down_arrow = true,
	journal_gradient_02 = true,
	fatigue_icon_glow = true,
	unit_frame_portrait_victor_bountyhunter_twitch = true,
	unit_frame_portrait_kruber_questingknight = true,
	unit_frame_portrait_kerillian_shade_twitch = true,
	teammate_hp_bar_color_tint_1 = true,
	teammate_hp_bar_6 = true,
	twitch_disconnected = true,
	twitch_special_group_2 = true,
	twitch_connected = true,
	unit_frame_portrait_kruber_knight = true,
	unit_frame_portrait_kruber_huntsman = true,
	achievement_book_glow_01 = true,
	twitch_icon_heal = true,
	chest_reward_bar_progress = true,
	twitch_small_logo = true,
	hud_ability_bg = true,
	player_hp_bar = true,
	loot_presentation_circle_glow_exotic = true,
	news_splash_pagecounter_dot_off = true,
	gamepad_difficulty_banner_1 = true,
	loot_presentation_circle_glow_promo_large = true,
	tabs_glow_animated = true,
	karak_azgaraz_location_icon_banner = true,
	unit_frame_portrait_kerillian_waywatcher = true,
	gamepad_difficulty_banner_3 = true,
	news_splash_arrow_on = true,
	loot_presentation_circle_glow_rare_large = true,
	ability_outer_effect_1 = true,
	item_slot_side_effect = true,
	unit_frame_portrait_kerillian_maidenguard_twitch = true,
	event_upsell_anniversary = true,
	unit_frame_portrait_bardin_engineer_twitch = true,
	news_splash_bg_bogenhafen = true,
	event_upsell_background_fade = true,
	unit_frame_portrait_kruber_knight_twitch = true,
	twitch_healing_draught = true,
	end_screen_banner_defeat = true,
	dark_pact_ability_icon_gradient_mask = true,
	gradient_friend_list = true,
	gradient_enchantment_craft = true,
	unit_frame_portrait_bardin_slayer = true,
	player_hp_bar_color_tint = true
}
local ui_atlas_setting_tables = {
	gui_achievement_icons_atlas = achievement_icons_atlas,
	gui_startup_settings_atlas = startup_settings_atlas,
	gui_items_atlas = items_atlas,
	gui_icons_atlas = icons_atlas,
	gui_loading_atlas = loading_atlas,
	gui_popup_atlas = popup_atlas,
	gui_hud_atlas = hud_atlas,
	gui_splash_atlas = splash_atlas,
	gui_menu_buttons_atlas = menu_buttons_atlas,
	gui_chat_atlas = chat_atlas,
	gui_voice_chat_atlas = voice_chat_atlas,
	gui_settings_atlas = settings_atlas,
	gui_start_screen_atlas = start_screen_atlas,
	gui_mission_selection_atlas = mission_selection_atlas,
	gui_menus_atlas = menus_atlas,
	gui_frames_atlas = frames_atlas,
	gui_level_images_atlas = level_images_atlas,
	gui_country_flags_atlas = country_flags_atlas,
	gui_lock_test_atlas = lock_test_atlas,
	gui_pose_items_atlas = pose_items_atlas
}
local masked_materials = {
	gui_achievement_icons_atlas = "gui_achievement_icons_atlas_masked",
	gui_settings_atlas = "gui_settings_atlas_masked",
	gui_chat_atlas = "gui_chat_atlas_masked",
	gui_hud_atlas = "gui_hud_atlas_masked",
	gui_start_screen_atlas = "gui_start_screen_atlas_masked",
	gui_level_images_atlas = "gui_level_images_atlas_masked",
	gui_frames_atlas = "gui_frames_atlas_masked",
	gui_menu_buttons_atlas = "gui_menu_buttons_atlas_masked",
	gui_menus_atlas = "gui_menus_atlas_masked",
	gui_lock_test_atlas = "gui_lock_test_atlas_masked",
	gui_season_emblems_atlas = "gui_season_emblems_atlas_masked",
	gui_country_flags_atlas = "gui_country_flags_atlas_masked",
	gui_pose_items_atlas = "gui_pose_items_atlas_masked",
	gui_icons_atlas = "gui_icons_atlas_masked",
	gui_items_atlas = "gui_items_atlas_masked"
}
local saturated_materials = {
	gui_level_images_atlas = "gui_level_images_atlas_saturated",
	gui_frames_atlas = "gui_frames_atlas_saturated",
	gui_pose_items_atlas = "gui_pose_items_atlas_saturated",
	gui_hud_atlas = "gui_hud_atlas_saturated",
	gui_lock_test_atlas = "gui_lock_test_atlas_saturated",
	gui_achievement_icons_atlas = "gui_achievement_icons_atlas_saturated",
	gui_menu_buttons_atlas = "gui_menu_buttons_atlas_saturated",
	gui_menus_atlas = "gui_menus_atlas_saturated",
	gui_icons_atlas = "gui_icons_atlas_saturated",
	gui_items_atlas = "gui_items_atlas_saturated",
	gui_mission_selection_atlas = "gui_mission_selection_atlas_saturated"
}
local masked_saturated_materials = {
	gui_achievement_icons_atlas = "gui_achievement_icons_atlas_masked_saturated",
	gui_lock_test_atlas = "gui_lock_test_atlas_masked_saturated",
	gui_pose_items_atlas = "gui_pose_items_atlas_masked_saturated",
	gui_hud_atlas = "gui_hud_atlas_point_sample_masked_saturated",
	gui_icons_atlas = "gui_icons_atlas_masked_saturated",
	gui_items_atlas = "gui_items_atlas_masked_saturated",
	gui_level_images_atlas = "gui_level_images_atlas_masked_saturated"
}

if not IS_WINDOWS then
	saturated_materials.gui_map_console_atlas = "gui_map_console_atlas_saturated"
end

local masked_point_sample_materials = {
	gui_achievement_icons_atlas = "gui_achievement_icons_atlas_point_sample_masked",
	gui_settings_atlas = "gui_settings_atlas_point_sample_masked",
	gui_chat_atlas = "gui_chat_atlas_point_sample_masked",
	gui_hud_atlas = "gui_hud_atlas_point_sample_masked",
	gui_start_screen_atlas = "gui_start_screen_atlas_point_sample_masked",
	gui_lock_test_atlas = "gui_lock_test_atlas_point_sample_masked",
	gui_frames_atlas = "gui_frames_atlas_point_sample_masked",
	gui_pose_items_atlas = "gui_pose_items_atlas_point_sample_masked",
	gui_menus_atlas = "gui_menus_atlas_point_sample_masked",
	gui_season_emblems_atlas = "gui_season_emblems_atlas_point_sample_masked",
	gui_icons_atlas = "gui_icons_atlas_point_sample_masked",
	gui_items_atlas = "gui_items_atlas_point_sample_masked"
}
local masked_saturated_point_sample_materials = {
	gui_lock_test_atlas = "gui_lock_test_atlas_point_sample_masked_saturated",
	gui_icons_atlas = "gui_icons_atlas_point_sample_masked_saturated",
	gui_hud_atlas = "gui_hud_atlas_point_sample_masked_saturated"
}
local point_sample_materials = {
	controller_image_xb1 = "controller_image_xb1_point_sample",
	gui_settings_atlas = "gui_settings_atlas_point_sample",
	gui_pose_items_atlas = "gui_pose_items_atlas_point_sample",
	overchargecircle_fill = "overchargecircle_fill_point_sample",
	gui_start_screen_atlas = "gui_start_screen_atlas_point_sample",
	gui_season_emblems_atlas = "gui_season_emblems_atlas_point_sample",
	gui_achievement_icons_atlas = "gui_achievement_icons_atlas_point_sample",
	gui_level_images_atlas = "gui_level_images_atlas_point_sample",
	gui_menus_atlas = "gui_menus_atlas_point_sample",
	loading_screen_default = "loading_screen_default_point_sample",
	overchargecircle_sidefade = "overchargecircle_fill_point_sample",
	loading_screen = "loading_screen_point_sample",
	end_screen_banner_victory = "end_screen_banner_victory_point_sample",
	gui_icons_atlas = "gui_icons_atlas_point_sample",
	end_screen_effect_victory_1 = "end_screen_effect_victory_1_point_sample",
	end_screen_effect_victory_2 = "end_screen_effect_victory_2_point_sample",
	gui_voice_chat_atlas = "gui_voice_chat_atlas_point_sample",
	end_screen_banner_defeat = "end_screen_banner_defeat_point_sample",
	gui_chat_atlas = "gui_chat_atlas_point_sample",
	gui_hud_atlas = "gui_hud_atlas_point_sample",
	gui_popup_atlas = "gui_popup_atlas_point_sample",
	controller_hold_bar = "controller_hold_bar_point_sample",
	gui_frames_atlas = "gui_frames_atlas_point_sample",
	gui_menu_buttons_atlas = "gui_menu_buttons_atlas_point_sample",
	vermintide_2_logo_tutorial = "vermintide_2_logo_tutorial_point_sample",
	gui_loading_atlas = "gui_loading_atlas_point_sample",
	gui_startup_settings_atlas = "gui_startup_settings_atlas_point_sample",
	controller_image_ps4 = "controller_image_ps4_point_sample",
	gui_lock_test_atlas = "gui_lock_test_atlas_point_sample",
	gui_items_atlas = "gui_items_atlas_point_sample",
	gui_splash_atlas = "gui_splash_atlas_point_sample"
}
local offscreen_materials = {
	gui_menus_atlas = "gui_menus_atlas_offscreen",
	gui_icons_atlas = "gui_icons_atlas_offscreen",
	gui_items_atlas = "gui_items_atlas_offscreen",
	gui_frames_atlas = "gui_frames_atlas_offscreen"
}
local masked_offscreen_materials = {
	gui_menus_atlas = "gui_menus_atlas_masked_offscreen",
	gui_icons_atlas = "gui_icons_atlas_masked_offscreen",
	gui_items_atlas = "gui_items_atlas_masked_offscreen",
	gui_frames_atlas = "gui_frames_atlas_masked_offscreen"
}
local masked_point_sample_offscreen_materials = {
	gui_menus_atlas = "gui_menus_atlas_point_sample_masked_offscreen",
	gui_icons_atlas = "gui_icons_atlas_point_sample_masked_offscreen",
	gui_items_atlas = "gui_items_atlas_point_sample_masked_offscreen",
	gui_frames_atlas = "gui_frames_atlas_point_sample_masked_offscreen"
}
local point_sample_offscreen_materials = {
	gui_menus_atlas = "gui_menus_atlas_point_sample_offscreen",
	gui_icons_atlas = "gui_icons_atlas_point_sample_offscreen",
	gui_items_atlas = "gui_items_atlas_point_sample_offscreen",
	gui_frames_atlas = "gui_frames_atlas_point_sample_offscreen"
}
local saturated_offscreen_materials = {
	gui_items_atlas = "gui_items_atlas_saturated",
	gui_icons_atlas = "gui_icons_atlas_saturated"
}
local viewport_mask_materials = {
	gui_lock_test_atlas = "gui_lock_test_viewport_mask"
}
local ui_atlas_settings = {}

for material, material_settings in pairs(ui_atlas_setting_tables) do
	for texture_name, settings in pairs(material_settings) do
		settings.texture_name = texture_name
		settings.material_name = material
		settings.masked_material_name = masked_materials[material]
		settings.point_sample_material_name = point_sample_materials[material]
		settings.masked_point_sample_material_name = masked_point_sample_materials[material]
		settings.saturated_material_name = saturated_materials[material]
		settings.masked_saturated_material_name = masked_saturated_materials[material]
		settings.masked_saturated_point_sample_material_name = masked_saturated_point_sample_materials[material]
		settings.offscreen_material_name = offscreen_materials[material]
		settings.masked_offscreen_material_name = masked_offscreen_materials[material]
		settings.masked_point_sample_offscreen_material_name = masked_point_sample_offscreen_materials[material]
		settings.point_sample_offscreen_material_name = point_sample_offscreen_materials[material]
		settings.saturated_offscreen_material_name = saturated_offscreen_materials[material]
		settings.viewport_mask_material_name = viewport_mask_materials[material]

		local existing_material_name = ui_atlas_settings[texture_name] and ui_atlas_settings[texture_name].material_name

		fassert(ui_atlas_settings[texture_name] == nil, "[UIAtlasHelper] Texture %q in material %q already exist in material %q. Make sure to use unique texture names.", texture_name, material, existing_material_name)

		ui_atlas_settings[texture_name] = settings
	end
end

for name, dlc in pairs(DLCSettings) do
	local dlc_ui_texture_settings = dlc.ui_texture_settings

	if dlc_ui_texture_settings then
		local filenames = dlc_ui_texture_settings.filenames

		if filenames then
			for _, filename in ipairs(filenames) do
				require(filename)
			end
		end

		local single_textures = dlc_ui_texture_settings.single_textures

		if single_textures then
			for _, texture_name in ipairs(single_textures) do
				fassert(standalone_texture[texture_name] == nil, "[UIAtlasHelper] Single Texture %q already exists. Make sure to use unique texture names.", texture_name)

				standalone_texture[texture_name] = true
			end
		end

		local atlas_settings = dlc_ui_texture_settings.atlas_settings

		if atlas_settings then
			for material, material_settings in pairs(atlas_settings) do
				local atlas_table = _G[material]

				for texture_name, texture_settings in pairs(atlas_table) do
					local settings = table.clone(texture_settings)

					settings.texture_name = texture_name
					settings.material_name = material_settings.material_name
					settings.masked_material_name = material_settings.masked_material_name
					settings.point_sample_material_name = material_settings.point_sample_material_name
					settings.masked_point_sample_material_name = material_settings.masked_point_sample_material_name
					settings.saturated_material_name = material_settings.saturated_material_name
					settings.masked_saturated_material_name = material_settings.masked_saturated_material_name
					settings.masked_saturated_point_sample_material_name = material_settings.masked_saturated_point_sample_material_name
					settings.offscreen_material_name = material_settings.offscreen_material_name
					settings.masked_offscreen_material_name = material_settings.masked_offscreen_material_name
					settings.masked_point_sample_offscreen_material_name = material_settings.masked_point_sample_offscreen_material_name
					settings.point_sample_offscreen_material_name = material_settings.point_sample_offscreen_material_name
					settings.saturated_offscreen_material_name = material_settings.saturated_offscreen_material_name
					settings.viewport_mask_material_name = material_settings.viewport_mask_material_name

					local existing_material_name = ui_atlas_settings[texture_name] and ui_atlas_settings[texture_name].material_name

					fassert(ui_atlas_settings[texture_name] == nil, "[UIAtlasHelper] Texture %q in material %q already exist in material %q. Make sure to use unique texture names.", texture_name, material, existing_material_name)

					ui_atlas_settings[texture_name] = settings
				end
			end
		end
	end
end

UIAtlasHelper._ui_atlas_settings = ui_atlas_settings

UIAtlasHelper.get_atlas_settings_by_texture_name = function (texture_name)
	assert(texture_name, "[UIAtlasHelper] Trying to access atlas settings for a texture without a name")

	if standalone_texture[texture_name] then
		return
	end

	fassert(ui_atlas_settings[texture_name], "[UIAtlasHelper] Atlas texture settings do not exist: %q", texture_name)

	return ui_atlas_settings[texture_name]
end

UIAtlasHelper.has_atlas_settings_by_texture_name = function (texture_name)
	if ui_atlas_settings[texture_name] then
		return true
	else
		return false
	end
end

UIAtlasHelper.has_texture_by_name = function (texture_name)
	if standalone_texture[texture_name] or ui_atlas_settings[texture_name] then
		return true
	else
		return false
	end
end

UIAtlasHelper.add_standalone_texture_by_name = function (texture_name)
	if standalone_texture[texture_name] or ui_atlas_settings[texture_name] then
		return
	else
		standalone_texture[texture_name] = true
	end
end

UIAtlasHelper.get_insignia_texture_settings_from_level = function (level)
	local level = math.min(level, ExperienceSettings.max_versus_level)
	local insignia_uv_size = {
		0.2,
		0.1
	}
	local insignia_level = math.floor((level - 1) / 50)
	local insignia_type = math.floor((level - 1) / 5) % 10
	local insignia_main_uvs = {
		{
			insignia_level * insignia_uv_size[1],
			insignia_type * insignia_uv_size[2]
		},
		{
			insignia_level * insignia_uv_size[1] + insignia_uv_size[1],
			insignia_type * insignia_uv_size[2] + insignia_uv_size[2]
		}
	}
	local insignia_addon_uv_size = {
		0.25,
		1
	}
	local addon_level = math.floor(level - 1) % 5
	local insignia_addon_uvs

	if addon_level > 0 then
		insignia_addon_uvs = {
			{
				(addon_level - 1) * insignia_addon_uv_size[1],
				0
			},
			{
				(addon_level - 1) * insignia_addon_uv_size[1] + insignia_addon_uv_size[1],
				1
			}
		}
	end

	return insignia_main_uvs, insignia_addon_uvs
end
