local scenegraph_definition = {
	root = {
		is_root = true,
		size = {
			1920,
			1080
		},
		position = {
			0,
			0,
			0
		}
	},
	dead_space_filler = {
		scale = "fit",
		size = {
			1920,
			1080
		},
		position = {
			0,
			0,
			0
		}
	},
	screen = {
		scale = "fit",
		size = {
			1920,
			1080
		},
		position = {
			0,
			0,
			0
		}
	},
	info_icon = {
		vertical_alignment = "top",
		parent = "screen",
		horizontal_alignment = "left",
		position = {
			100,
			-350,
			30
		},
		size = {
			87,
			87
		}
	},
	info_icon_text = {
		vertical_alignment = "top",
		parent = "info_icon",
		horizontal_alignment = "left",
		position = {
			95,
			-15,
			0
		},
		size = {
			400,
			100
		}
	},
	background = {
		vertical_alignment = "center",
		parent = "root",
		horizontal_alignment = "center",
		size = {
			1920,
			1080
		},
		position = {
			0,
			0,
			0
		}
	},
	engage_prompt = {
		vertical_alignment = "center",
		parent = "background",
		horizontal_alignment = "center",
		size = {
			1920,
			1080
		},
		position = {
			0,
			0,
			10
		}
	},
	sidebar = {
		parent = "background",
		horizontal_alignment = "left",
		size = {
			544,
			1080
		},
		position = {
			-800,
			0,
			2
		}
	},
	sidebar_fade_bg = {
		parent = "sidebar",
		horizontal_alignment = "right",
		size = {
			256,
			1080
		},
		position = {
			256,
			0,
			0
		}
	},
	sidebar_mask = {
		parent = "sidebar",
		horizontal_alignment = "left",
		size = {
			1920,
			1080
		},
		position = {
			0,
			1080,
			3
		}
	},
	info_slate = {
		vertical_alignment = "bottom",
		parent = "background",
		horizontal_alignment = "center",
		size = {
			1920,
			50
		},
		position = {
			-620,
			200,
			100
		}
	},
	game_type_tag = {
		vertical_alignment = "bottom",
		parent = "info_slate",
		horizontal_alignment = "center",
		size = {
			1920,
			50
		},
		position = {
			0,
			-50,
			0
		}
	},
	game_type_description = {
		vertical_alignment = "top",
		parent = "game_type_tag",
		horizontal_alignment = "center",
		size = {
			1920,
			1080
		},
		position = {
			0,
			-40,
			0
		}
	},
	information_text = {
		vertical_alignment = "center",
		parent = "background",
		horizontal_alignment = "center",
		size = {
			600,
			62
		},
		position = {
			0,
			-375,
			2
		}
	},
	splash_video = {
		parent = "background",
		size = {
			1920,
			1080
		},
		position = {
			0,
			0,
			700
		}
	},
	start_screen_video = {
		vertical_alignment = "center",
		parent = "background",
		horizontal_alignment = "center",
		size = {
			1920,
			1080
		},
		position = {
			0,
			0,
			1
		}
	},
	start_screen_video_fade = {
		parent = "background",
		size = {
			1920,
			1080
		},
		position = {
			0,
			0,
			2
		}
	},
	logo = {
		vertical_alignment = "top",
		parent = "background",
		horizontal_alignment = "left",
		size = {
			682,
			383.90000000000003
		},
		position = {
			0,
			20,
			5
		}
	},
	sub_logo = {
		vertical_alignment = "bottom",
		parent = "logo",
		horizontal_alignment = "center"
	},
	legal_text = {
		vertical_alignment = "bottom",
		parent = "background",
		horizontal_alignment = "center",
		size = {
			1400,
			300
		},
		position = {
			0,
			10,
			2
		}
	},
	game_type_text = {
		vertical_alignment = "bottom",
		parent = "change_profile_input_icon",
		horizontal_alignment = "left",
		size = {
			1200,
			50
		},
		position = {
			0,
			60,
			2
		}
	},
	user_gamertag = {
		vertical_alignment = "bottom",
		parent = "change_profile_input_icon",
		horizontal_alignment = "left",
		size = {
			1200,
			50
		},
		position = {
			0,
			35,
			2
		}
	},
	change_profile_input_icon = {
		vertical_alignment = "bottom",
		parent = "background",
		horizontal_alignment = "left",
		size = {
			26,
			26
		},
		position = {
			35,
			15,
			30
		}
	},
	change_profile_input_text = {
		vertical_alignment = "center",
		parent = "change_profile_input_icon",
		horizontal_alignment = "left",
		size = {
			1200,
			1
		},
		position = {
			30,
			-5,
			2
		}
	},
	update_offline_data_input_icon = {
		vertical_alignment = "bottom",
		parent = "background",
		horizontal_alignment = "left",
		size = {
			26,
			26
		},
		position = {
			250,
			15,
			30
		}
	},
	update_offline_data_input_text = {
		vertical_alignment = "center",
		parent = "update_offline_data_input_icon",
		horizontal_alignment = "left",
		size = {
			1200,
			1
		},
		position = {
			30,
			-5,
			2
		}
	},
	playgo_status = {
		vertical_alignment = "top",
		parent = "background",
		horizontal_alignment = "left",
		size = {
			1200,
			50
		},
		position = {
			35,
			-5,
			30
		}
	},
	menu_anchor_point = {
		vertical_alignment = "center",
		parent = "background",
		horizontal_alignment = "left",
		size = {
			0,
			0
		},
		position = {
			340,
			-100,
			4
		}
	},
	frame_top = {
		vertical_alignment = "bottom",
		parent = "menu_anchor_point",
		horizontal_alignment = "center",
		size = {
			960,
			96
		},
		position = {
			0,
			0,
			7
		}
	},
	frame_bottom = {
		vertical_alignment = "top",
		parent = "menu_anchor_point",
		horizontal_alignment = "center",
		size = {
			960,
			85
		},
		position = {
			0,
			-3,
			6
		}
	},
	frame_background = {
		vertical_alignment = "bottom",
		parent = "frame_bottom",
		horizontal_alignment = "center",
		size = {
			660,
			0
		},
		position = {
			0,
			83,
			-1
		}
	},
	frame_circle_glow = {
		vertical_alignment = "bottom",
		parent = "frame_bottom",
		horizontal_alignment = "center",
		size = {
			205,
			184
		},
		position = {
			4,
			-7,
			15
		}
	},
	frame_line_glow = {
		vertical_alignment = "center",
		parent = "frame_circle_glow",
		horizontal_alignment = "center",
		size = {
			730,
			26
		},
		position = {
			-4,
			-2,
			1
		}
	},
	input_icon = {
		vertical_alignment = "center",
		parent = "frame_circle_glow",
		horizontal_alignment = "center",
		size = {
			50,
			50
		},
		position = {
			-4,
			-2,
			-10
		}
	},
	lock_center = {
		vertical_alignment = "center",
		parent = "input_icon",
		horizontal_alignment = "center",
		size = {
			50,
			50
		},
		position = {
			0,
			1,
			-1
		}
	},
	lock_middle_top = {
		vertical_alignment = "bottom",
		parent = "frame_top",
		horizontal_alignment = "center",
		size = {
			50,
			50
		},
		position = {
			0,
			-29,
			2
		}
	},
	lock_middle_bottom = {
		vertical_alignment = "center",
		parent = "input_icon",
		horizontal_alignment = "center",
		size = {
			50,
			50
		},
		position = {
			0,
			1,
			-2
		}
	},
	lock_outer_top = {
		vertical_alignment = "bottom",
		parent = "frame_top",
		horizontal_alignment = "center",
		size = {
			50,
			50
		},
		position = {
			0,
			-29,
			1
		}
	},
	lock_outer_bottom = {
		vertical_alignment = "center",
		parent = "input_icon",
		horizontal_alignment = "center",
		size = {
			50,
			50
		},
		position = {
			0,
			1,
			-3
		}
	},
	selection_anchor = {
		vertical_alignment = "center",
		parent = "menu_anchor_point",
		horizontal_alignment = "center",
		position = {
			0,
			0,
			10
		},
		size = {
			0,
			60
		}
	},
	selection_glow_left = {
		vertical_alignment = "center",
		parent = "selection_anchor",
		horizontal_alignment = "left",
		position = {
			-98,
			0,
			10
		},
		size = {
			98,
			60
		}
	},
	selection_glow_right = {
		vertical_alignment = "center",
		parent = "selection_anchor",
		horizontal_alignment = "right",
		position = {
			98,
			0,
			10
		},
		size = {
			98,
			60
		}
	},
	online_button = {
		vertical_alignment = "center",
		parent = "menu_anchor_point",
		horizontal_alignment = "center",
		position = {
			0,
			-100,
			10
		},
		size = {
			300,
			60
		}
	},
	offline_button = {
		vertical_alignment = "center",
		parent = "menu_anchor_point",
		horizontal_alignment = "center",
		position = {
			0,
			-150,
			10
		},
		size = {
			300,
			60
		}
	},
	menu_option_1 = {
		vertical_alignment = "center",
		parent = "menu_anchor_point",
		horizontal_alignment = "center",
		position = {
			0,
			90,
			10
		},
		size = {
			300,
			50
		}
	},
	menu_option_2 = {
		vertical_alignment = "center",
		parent = "menu_anchor_point",
		horizontal_alignment = "center",
		position = {
			0,
			40,
			10
		},
		size = {
			300,
			50
		}
	},
	menu_option_3 = {
		vertical_alignment = "center",
		parent = "menu_anchor_point",
		horizontal_alignment = "center",
		position = {
			0,
			-10,
			10
		},
		size = {
			300,
			50
		}
	},
	menu_option_4 = {
		vertical_alignment = "center",
		parent = "menu_anchor_point",
		horizontal_alignment = "center",
		position = {
			0,
			-60,
			10
		},
		size = {
			300,
			50
		}
	},
	menu_option_5 = {
		vertical_alignment = "center",
		parent = "menu_anchor_point",
		horizontal_alignment = "center",
		position = {
			0,
			-110,
			10
		},
		size = {
			300,
			50
		}
	},
	menu_option_6 = {
		vertical_alignment = "center",
		parent = "menu_anchor_point",
		horizontal_alignment = "center",
		position = {
			0,
			-160,
			10
		},
		size = {
			300,
			50
		}
	},
	ai_benchmark = {
		vertical_alignment = "center",
		parent = "menu_anchor_point",
		horizontal_alignment = "center",
		position = {
			0,
			-240,
			10
		},
		size = {
			1000,
			60
		}
	},
	ai_benchmark_cycle = {
		vertical_alignment = "center",
		parent = "menu_anchor_point",
		horizontal_alignment = "center",
		position = {
			0,
			-300,
			10
		},
		size = {
			1000,
			60
		}
	},
	whitebox_combat = {
		vertical_alignment = "center",
		parent = "menu_anchor_point",
		horizontal_alignment = "center",
		position = {
			0,
			-360,
			10
		},
		size = {
			1000,
			60
		}
	},
	support_info = {
		vertical_alignment = "top",
		parent = "background",
		horizontal_alignment = "center",
		size = {
			1200,
			50
		},
		position = {
			0,
			-20,
			30
		}
	}
}
local info_slate_text_style = {
	font_size = 22,
	upper_case = false,
	localize = true,
	word_wrap = false,
	horizontal_alignment = "center",
	vertical_alignment = "center",
	font_type = "hell_shark_header",
	text_color = {
		255,
		0,
		0,
		0
	},
	offset = {
		0,
		-1,
		2
	}
}
local game_type_tag_text_style = {
	font_size = 32,
	upper_case = false,
	localize = true,
	word_wrap = false,
	horizontal_alignment = "center",
	vertical_alignment = "top",
	font_type = "hell_shark_header",
	text_color = {
		255,
		255,
		255,
		255
	},
	offset = {
		0,
		0,
		2
	}
}
local game_type_description_text_style = {
	font_size = 18,
	upper_case = false,
	localize = true,
	word_wrap = true,
	horizontal_alignment = "center",
	vertical_alignment = "top",
	font_type = "hell_shark_header",
	text_color = {
		255,
		128,
		128,
		128
	},
	offset = {
		0,
		0,
		2
	},
	area_size = {
		600,
		300
	}
}

local function create_engage_prompt(ui_renderer)
	local font_type = "hell_shark"
	local font_size = 52
	local button_size = {
		50,
		50
	}
	local press_str = Localize("interaction_prefix_press")
	local to_start_str = Localize("to_start_game")
	local spacing = 10
	local button_alignment = 7.5
	local font, scaled_font_size = UIFontByResolution({
		font_type = font_type,
		font_size = font_size
	})
	local press_text_width = UIRenderer.text_size(ui_renderer, press_str, font[1], scaled_font_size)
	local to_start_width = UIRenderer.text_size(ui_renderer, to_start_str, font[1], scaled_font_size)
	local total_size = press_text_width + spacing + button_size[1] + spacing + to_start_width + button_alignment
	local press_offset_x = -total_size * 0.5 + press_text_width * 0.5
	local button_offset = -total_size * 0.5 + button_size[1] * 0.5 + press_text_width + spacing + button_alignment
	local to_start_offset = button_offset + button_size[1] * 0.5 + spacing + to_start_width * 0.5

	return {
		scenegraph_id = "engage_prompt",
		element = {
			passes = {
				{
					style_id = "press_to_start",
					pass_type = "text",
					text_id = "press_to_start",
					content_change_function = function (content, style)
						local t = Managers.time:time("main")
						local alpha = 192 + math.sin(t * 5) * 63

						style.text_color[2] = alpha
						style.text_color[3] = alpha
						style.text_color[4] = alpha
					end,
					content_check_function = function (content, style)
						return not Managers.input:is_device_active("gamepad")
					end
				},
				{
					style_id = "press",
					pass_type = "text",
					text_id = "press_str",
					content_change_function = function (content, style)
						local t = Managers.time:time("main")
						local alpha = 192 + math.sin(t * 5) * 63

						style.text_color[2] = alpha
						style.text_color[3] = alpha
						style.text_color[4] = alpha
					end,
					content_check_function = function (content, style)
						return Managers.input:is_device_active("gamepad")
					end
				},
				{
					style_id = "to_start",
					pass_type = "text",
					text_id = "to_start_str",
					content_change_function = function (content, style)
						local t = Managers.time:time("main")
						local alpha = 192 + math.sin(t * 5) * 63

						style.text_color[2] = alpha
						style.text_color[3] = alpha
						style.text_color[4] = alpha
					end,
					content_check_function = function (content, style)
						return Managers.input:is_device_active("gamepad")
					end
				},
				{
					style_id = "button",
					pass_type = "texture",
					texture_id = "button_id",
					content_change_function = function (content, style)
						local t = Managers.time:time("main")
						local alpha = 192 + math.sin(t * 5) * 63

						style.color[2] = alpha
						style.color[3] = alpha
						style.color[4] = alpha
					end,
					content_check_function = function (content, style)
						return Managers.input:is_device_active("gamepad")
					end
				}
			}
		},
		content = {
			press_to_start = "press_any_button_to_continue",
			press_str = press_str,
			button_id = IS_PS4 and "ps4_button_icon_cross_large" or "xbone_button_icon_a_large",
			to_start_str = to_start_str
		},
		style = {
			press_to_start = {
				vertical_alignment = "center",
				localize = true,
				horizontal_alignment = "center",
				word_wrap = false,
				font_size = font_size,
				font_type = font_type,
				text_color = {
					255,
					255,
					255,
					255
				},
				offset = {
					0,
					0,
					0
				}
			},
			press = {
				vertical_alignment = "center",
				localize = false,
				horizontal_alignment = "center",
				word_wrap = false,
				font_size = font_size,
				font_type = font_type,
				text_color = {
					255,
					255,
					255,
					255
				},
				offset = {
					press_offset_x,
					0,
					0
				}
			},
			to_start = {
				vertical_alignment = "center",
				localize = false,
				horizontal_alignment = "center",
				word_wrap = false,
				font_size = font_size,
				font_type = font_type,
				text_color = {
					255,
					255,
					255,
					255
				},
				offset = {
					to_start_offset,
					0,
					0
				}
			},
			button = {
				vertical_alignment = "center",
				horizontal_alignment = "center",
				texture_size = button_size,
				color = {
					255,
					255,
					255,
					255
				},
				offset = {
					button_offset,
					0,
					0
				}
			},
			rect_press = {
				vertical_alignment = "center",
				horizontal_alignment = "center",
				texture_size = {
					press_text_width,
					30
				},
				color = {
					255,
					255,
					0,
					0
				},
				offset = {
					press_offset_x,
					50,
					0
				}
			},
			rect_button = {
				vertical_alignment = "center",
				horizontal_alignment = "center",
				texture_size = {
					button_size[1],
					30
				},
				color = {
					255,
					0,
					255,
					0
				},
				offset = {
					button_offset,
					50,
					0
				}
			},
			rect_to_start = {
				vertical_alignment = "center",
				horizontal_alignment = "center",
				texture_size = {
					to_start_width,
					30
				},
				color = {
					255,
					0,
					0,
					255
				},
				offset = {
					to_start_offset,
					50,
					0
				}
			},
			rect_total = {
				vertical_alignment = "center",
				horizontal_alignment = "center",
				texture_size = {
					total_size,
					30
				},
				color = {
					255,
					255,
					255,
					255
				},
				offset = {
					0,
					100,
					0
				}
			}
		},
		offset = {
			0,
			-375,
			0
		}
	}
end

UIWidgets.create_game_type_text = function (text, scenegraph_id, size, color)
	local text_color = color or {
		255,
		255,
		255,
		255
	}

	return {
		element = {
			passes = {
				{
					style_id = "text",
					pass_type = "text",
					text_id = "text"
				},
				{
					style_id = "status_text",
					pass_type = "text",
					text_id = "status_text",
					content_check_function = function (content, style)
						return content.text ~= ""
					end
				}
			}
		},
		content = {
			text = text,
			status_text = Localize("lb_status") .. ":",
			color = text_color
		},
		style = {
			text = {
				localize = false,
				word_wrap = true,
				font_type = "hell_shark",
				font_size = size,
				text_color = text_color,
				offset = {
					0,
					0,
					2
				}
			},
			status_text = {
				localize = false,
				word_wrap = true,
				font_type = "hell_shark",
				font_size = size * 0.4,
				text_color = {
					255,
					255,
					255,
					255
				},
				offset = {
					0,
					size,
					2
				}
			}
		},
		offset = {
			0,
			0,
			0
		},
		scenegraph_id = scenegraph_id
	}
end

local function create_info_text(text, scenegraph_id, font_size)
	return {
		element = {
			passes = {
				{
					style_id = "text",
					pass_type = "text",
					text_id = "text"
				},
				{
					pass_type = "texture",
					style_id = "icon",
					texture_id = "texture_id",
					scenegraph_id = "info_icon"
				}
			}
		},
		content = {
			texture_id = "info",
			text = text
		},
		style = {
			text = {
				localize = true,
				word_wrap = true,
				pixel_perfect = true,
				horizontal_alignment = "left",
				vertical_alignment = "top",
				dynamic_font = true,
				font_type = "hell_shark_header",
				font_size = font_size,
				text_color = Colors.get_table("dark_gray"),
				offset = {
					0,
					0,
					1
				}
			},
			icon = {
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
				}
			}
		},
		scenegraph_id = scenegraph_id
	}
end

local function create_menu_button(scenegraph_id, text, callback, menu_option_data)
	local localized_text = Localize(text)
	local upper_case = not string.find(localized_text, "{#")

	return {
		element = {
			passes = {
				{
					pass_type = "hotspot",
					content_id = "button_text"
				},
				{
					style_id = "text",
					pass_type = "text",
					text_id = "text_field",
					content_check_function = function (content)
						if Managers.input:is_device_active("mouse") then
							return
						end

						return not content.button_text.disable_button and not content.button_text.is_selected
					end
				},
				{
					style_id = "text",
					pass_type = "text",
					text_id = "text_field",
					content_check_function = function (content)
						if not Managers.input:is_device_active("mouse") then
							return
						end

						return not content.button_text.disable_button
					end
				},
				{
					style_id = "text_disabled",
					pass_type = "text",
					text_id = "text_field",
					content_check_function = function (content)
						return content.button_text.disable_button
					end
				},
				{
					texture_id = "icon_id",
					style_id = "icon",
					pass_type = "texture_uv",
					content_id = "icon_content",
					content_check_function = function (content)
						local parent_content = content.parent

						if not parent_content.show_icon or parent_content.disabled then
							return false
						end

						if parent_content.selection_callback then
							local current_index = parent_content.selection_callback()

							return parent_content.index ~= current_index
						end

						return false
					end
				}
			}
		},
		content = {
			default_font_size = 24,
			show_icon = false,
			alpha_value = 255,
			callback = callback,
			menu_option_data = menu_option_data,
			button_text = {},
			text_field = localized_text,
			icon_content = {
				icon_id = "info",
				uvs = {
					{
						0,
						1
					},
					{
						1,
						0
					}
				}
			}
		},
		style = {
			text = {
				word_wrap = false,
				localize = false,
				font_size = 24,
				horizontal_alignment = "center",
				vertical_alignment = "center",
				font_type = "hell_shark",
				upper_case = upper_case,
				text_color = Colors.get_color_table_with_alpha("font_title", 255),
				offset = {
					0,
					0,
					4
				}
			},
			text_hover = {
				word_wrap = false,
				localize = false,
				font_size = 24,
				horizontal_alignment = "center",
				vertical_alignment = "center",
				font_type = "hell_shark",
				upper_case = upper_case,
				text_color = Colors.get_color_table_with_alpha("white", 255),
				offset = {
					0,
					0,
					4
				}
			},
			text_disabled = {
				word_wrap = false,
				localize = false,
				font_size = 24,
				horizontal_alignment = "left",
				vertical_alignment = "center",
				font_type = "hell_shark",
				upper_case = upper_case,
				text_color = Colors.get_color_table_with_alpha("gray", 50),
				offset = {
					0,
					0,
					4
				}
			},
			icon = {
				vertical_alignment = "center",
				horizontal_alignment = "center",
				texture_size = {
					36,
					36
				},
				offset = {
					0,
					2,
					4
				},
				color = {
					255,
					255,
					255,
					255
				}
			}
		},
		scenegraph_id = scenegraph_id
	}
end

function create_sub_logo(texture)
	local texture_settings = UIAtlasHelper.get_atlas_settings_by_texture_name(texture)
	local settings_size = texture_settings.size
	local texture_size = {
		settings_size[1],
		settings_size[2]
	}

	return {
		scenegraph_id = "sub_logo",
		element = {
			passes = {
				{
					texture_id = "texture_id",
					style_id = "texture_id",
					pass_type = "texture"
				}
			}
		},
		content = {
			texture_id = texture
		},
		style = {
			texture_id = {
				vertical_alignment = "top",
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
				texture_size = texture_size
			}
		},
		offset = {
			0,
			-250,
			0
		}
	}
end

local function create_optional_text(text, scenegraph_id, text_style)
	return {
		element = {
			passes = {
				{
					style_id = "text",
					pass_type = "text",
					text_id = "text",
					content_check_function = function (content, style)
						if content.text == nil then
							return false
						end

						return content.text ~= ""
					end
				}
			}
		},
		content = {
			text = text
		},
		style = {
			text = text_style
		},
		offset = {
			0,
			0,
			0
		},
		scenegraph_id = scenegraph_id
	}
end

local function create_info_slate(scenegraph_id)
	return {
		element = {
			passes = {
				{
					style_id = "text",
					pass_type = "text",
					text_id = "text",
					content_check_function = function (content, style)
						if content.text == nil then
							return false
						end

						return content.text ~= ""
					end
				},
				{
					pass_type = "texture",
					style_id = "background",
					texture_id = "texture_id",
					content_check_function = function (content, style)
						if content.text == nil then
							return false
						end

						return content.text ~= ""
					end
				}
			}
		},
		content = {
			text = "test",
			texture_id = "start_screen_info_tag"
		},
		style = {
			text = info_slate_text_style,
			background = {
				vertical_alignment = "center",
				horizontal_alignment = "center",
				texture_size = {
					481,
					20
				},
				color = Colors.get_color_table_with_alpha("font_title", 255)
			}
		},
		offset = {
			0,
			0,
			1
		},
		scenegraph_id = scenegraph_id
	}
end

local background_widget_definitions = {
	dead_space_filler_widget = UIWidgets.create_simple_rect("dead_space_filler", {
		255,
		0,
		0,
		0
	}),
	sidebar_fill = UIWidgets.create_simple_rect("sidebar", {
		245,
		0,
		0,
		0
	}),
	sidebar_fade_bg = UIWidgets.create_shader_tiled_texture("sidebar_fade_bg", "fade_bg_unmasked", {
		256,
		256
	}, nil, nil, {
		245,
		255,
		255,
		255
	}),
	start_screen_video_fade = UIWidgets.create_simple_rect("start_screen_video_fade", {
		0,
		0,
		0,
		0
	})
}
local single_widget_definitions = {
	logo = UIWidgets.create_simple_texture("vermintide_logo_title", "logo"),
	legal_text = UIWidgets.create_simple_text("n/a", "legal_text", 12, {
		255,
		255,
		255,
		255
	}),
	information_text = UIWidgets.create_simple_text("n/a", "information_text", 18, {
		255,
		255,
		255,
		255
	}),
	start_screen_selection_left = UIWidgets.create_simple_texture("start_screen_selection_left", "selection_glow_left"),
	start_screen_selection_right = UIWidgets.create_simple_texture("start_screen_selection_right", "selection_glow_right"),
	create_engage_prompt = create_engage_prompt,
	info_icon_text = create_info_text("", "info_icon_text", 23),
	info_slate = create_info_slate("info_slate"),
	game_type = create_optional_text("start_menu_adventure_tag", "game_type_tag", game_type_tag_text_style),
	game_type_description = create_optional_text("start_menu_adventure_description", "game_type_description", game_type_description_text_style)
}
local menu_videos = {
	main = {
		loop = true,
		scenegraph_id = "start_screen_video",
		video_name = "video/start_1",
		main_menu = true,
		material_name = "start_1"
	},
	main_menu = {
		loop = true,
		scenegraph_id = "start_screen_video",
		video_name = "video/start_2",
		main_menu = true,
		material_name = "start_2"
	},
	adventure = {
		loop = true,
		scenegraph_id = "start_screen_video",
		video_name = "video/start_2_drachenfels",
		main_menu = true,
		material_name = "start_2_drachenfels"
	},
	chaos_wastes = {
		loop = true,
		scenegraph_id = "start_screen_video",
		video_name = "video/start_2_chaos_wastes",
		main_menu = true,
		material_name = "start_2_chaos_wastes"
	},
	versus = {
		loop = true,
		scenegraph_id = "start_screen_video",
		video_name = "video/start_2_versus",
		main_menu = true,
		material_name = "start_2_versus"
	}
}
local legal_texts = {
	"fatshark_legal_1",
	"gw_legal_1",
	"gw_legal_2",
	"gw_legal_3",
	"gw_legal_4"
}
local animation_definitions = {
	video_fade_in = {
		{
			name = "video_fade_in",
			start_progress = 0,
			end_progress = 0.5,
			init = function (ui_scenegraph, scenegraph_definition, widgets, params)
				local widget = widgets.start_screen_video_fade
				local style = widget.style
				local rect_style = style.rect

				rect_style.color[1] = 255
			end,
			update = function (ui_scenegraph, scenegraph_definition, widgets, progress, params)
				local anim_progress = math.easeInCubic(progress)
				local widget = widgets.start_screen_video_fade
				local style = widget.style
				local rect_style = style.rect

				rect_style.color[1] = math.clamp(255 * (1 - anim_progress), 0, 255)
			end,
			on_complete = function (ui_scenegraph, scenegraph_definition, widgets, params)
				return
			end
		}
	}
}

return {
	background_widget_definitions = background_widget_definitions,
	single_widget_definitions = single_widget_definitions,
	scenegraph_definition = scenegraph_definition,
	menu_videos = menu_videos,
	create_menu_button_func = create_menu_button,
	legal_texts = legal_texts,
	create_sub_logo_func = create_sub_logo,
	animation_definitions = animation_definitions
}
