AreaSettings.termite = {
	menu_sound_event = "Play_hud_menu_area_termite",
	long_description_text = "area_selection_termite_description_long",
	display_name = "area_selection_termite_name",
	description_text = "area_selection_termite_description",
	name = "termite",
	store_page_url = "https://store.steampowered.com/app/552500/Warhammer_Vermintide_2/",
	dlc_name = "termite",
	sort_order = 5,
	level_image = "area_icon_termite",
	video_settings = {
		material_name = "area_video_termite",
		resource = "video/area_videos/termite/area_video_termite"
	},
	acts = {
		"act_termite"
	},
	create_mission_background_widget = function ()
		local widget = {
			scenegraph_id = "dlc_background",
			element = {
				passes = {
					{
						style_id = "background",
						pass_type = "texture_uv",
						content_id = "background"
					},
					{
						texture_id = "banner",
						style_id = "banner_left",
						pass_type = "texture"
					},
					{
						texture_id = "banner",
						style_id = "banner_right",
						pass_type = "texture"
					},
					{
						texture_id = "banner_holder",
						style_id = "banner_holder_left",
						pass_type = "texture"
					},
					{
						texture_id = "banner_holder",
						style_id = "banner_holder_right",
						pass_type = "texture"
					}
				}
			},
			content = {
				banner_holder = "area_selection_banner_head_drachenfels",
				banner = "area_selection_banner_drachenfels",
				background = {
					texture_id = "area_selection_drachenfels",
					uvs = {
						{
							0,
							0
						},
						{
							1,
							1
						}
					}
				}
			},
			style = {
				banner_left = {
					vertical_alignment = "center",
					horizontal_alignment = "left",
					color = {
						255,
						255,
						255,
						255
					},
					offset = {
						-30,
						-25,
						1
					},
					texture_size = {
						256,
						512
					}
				},
				banner_right = {
					vertical_alignment = "center",
					horizontal_alignment = "right",
					color = {
						255,
						255,
						255,
						255
					},
					offset = {
						30,
						-25,
						1
					},
					texture_size = {
						256,
						512
					}
				},
				banner_holder_left = {
					vertical_alignment = "center",
					horizontal_alignment = "left",
					color = {
						255,
						255,
						255,
						255
					},
					offset = {
						25,
						200,
						2
					},
					texture_size = {
						147,
						152
					}
				},
				banner_holder_right = {
					vertical_alignment = "center",
					horizontal_alignment = "right",
					color = {
						255,
						255,
						255,
						255
					},
					offset = {
						-25,
						200,
						2
					},
					texture_size = {
						147,
						152
					}
				},
				background = {
					vertical_alignment = "center",
					horizontal_alignment = "center",
					color = {
						255,
						255,
						255,
						255
					},
					offset = {
						0,
						0,
						0
					},
					texture_size = {
						1060,
						699
					}
				}
			},
			offset = {
				0,
				0,
				0
			}
		}

		return widget
	end
}
ActSettings.act_termite = {
	banner_texture = "menu_frame_bg_01",
	sorting = 2,
	display_name = "area_selection_termite_name",
	console_offset = 320
}
