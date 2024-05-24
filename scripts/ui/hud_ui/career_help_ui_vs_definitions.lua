local SIZE_X, SIZE_Y = 1920, 1080
local RETAINED_MODE_ENABLED = false
local bg_size = {
	1920,
	500
}
local ability_offset = {
	pivot_offset = {
		0,
		0,
		UILayer.hud
	},
	ability_offset_1 = {
		-150,
		25,
		UILayer.hud
	},
	ability_offset_2 = {
		150,
		25,
		UILayer.hud
	}
}
local scenegraph_definition = {
	screen = {
		scale = "hud_scale_fit",
		position = {
			0,
			0,
			UILayer.hud
		},
		size = {
			SIZE_X,
			SIZE_Y
		}
	},
	background = {
		vertical_alignment = "center",
		parent = "screen",
		horizontal_alignment = "center",
		position = {
			0,
			0,
			UILayer.hud
		},
		size = bg_size
	},
	portrait = {
		vertical_alignment = "top",
		parent = "background",
		horizontal_alignment = "left",
		position = {
			80,
			-30,
			UILayer.hud
		},
		size = {
			0,
			0
		}
	},
	player_info = {
		vertical_alignment = "center",
		parent = "portrait",
		horizontal_alignment = "left",
		position = {
			80,
			-30,
			UILayer.hud
		},
		size = {
			0,
			0
		}
	},
	title_text = {
		vertical_alignment = "top",
		parent = "background",
		horizontal_alignment = "center",
		position = {
			0,
			-80,
			UILayer.hud
		},
		size = {
			300,
			50
		}
	},
	abilities_pivot = {
		vertical_alignment = "center",
		parent = "background",
		horizontal_alignment = "center",
		position = {
			0,
			20,
			UILayer.hud
		},
		size = {
			0,
			0
		}
	}
}
local title_text_style = {
	vertical_alignment = "center",
	font_size = 50,
	localize = true,
	horizontal_alignment = "center",
	word_wrap = true,
	font_type = "hell_shark_header",
	text_color = Colors.get_color_table_with_alpha("white", 255),
	offset = {
		0,
		0,
		2
	}
}
local player_info_class_text_style = {
	word_wrap = true,
	horizontal_alignment = "left",
	localize = true,
	font_size = 36,
	vertical_alignment = "center",
	font_type = "hell_shark",
	text_color = Colors.get_color_table_with_alpha("white", 255),
	offset = {
		0,
		0,
		2
	},
	size = {
		600,
		50
	}
}
local player_info_name_text_style = {
	word_wrap = true,
	horizontal_alignment = "left",
	localize = true,
	font_size = 28,
	vertical_alignment = "center",
	font_type = "hell_shark",
	text_color = Colors.get_color_table_with_alpha("silver", 255),
	offset = {
		0,
		-50,
		2
	},
	size = {
		400,
		50
	}
}

local function create_ability_info_widget(scenegraph_id, ability_icon, ability_icon_frame, ability_title, ability_description, offset)
	local widget = {
		element = {
			passes = {
				{
					style_id = "keybind",
					pass_type = "text",
					text_id = "keybind",
					content_check_function = function (content)
						local gamepad_active = Managers.input:is_device_active("gamepad")

						return content.has_keybind and not gamepad_active
					end
				},
				{
					pass_type = "texture",
					style_id = "key_icon",
					texture_id = "key_icon",
					content_check_function = function (content)
						local gamepad_active = Managers.input:is_device_active("gamepad")

						return content.has_keybind and gamepad_active
					end
				},
				{
					pass_type = "texture",
					style_id = "ability_icon",
					texture_id = "ability_icon"
				},
				{
					pass_type = "texture",
					style_id = "ability_icon_frame",
					texture_id = "ability_icon_frame"
				},
				{
					style_id = "ability_title",
					pass_type = "text",
					text_id = "ability_title"
				},
				{
					style_id = "ability_type",
					pass_type = "text",
					text_id = "ability_type"
				},
				{
					style_id = "ability_description",
					pass_type = "text",
					text_id = "ability_description"
				}
			}
		},
		content = {
			keybind = "UNASSIGNED",
			ability_type = "placeholder ",
			key_icon = "simple_rect_texture",
			has_keybind = false,
			ability_icon = ability_icon or "simple_rect_texture",
			ability_icon_frame = ability_icon_frame or "simple_rect_texture",
			ability_title = ability_title or "PLACEHOLDER",
			ability_description = ability_description or "PLACEHOLDER"
		},
		style = {
			keybind = {
				word_wrap = true,
				horizontal_alignment = "center",
				font_size = 30,
				vertical_alignment = "center",
				dynamic_font_size = true,
				font_type = "hell_shark",
				text_color = Colors.get_color_table_with_alpha("silver", 255),
				offset = {
					-100,
					0,
					2
				},
				size = {
					200,
					50
				}
			},
			key_icon = {
				size = {
					50,
					50
				},
				offset = {
					-25,
					65,
					0
				},
				color = {
					255,
					255,
					255,
					255
				}
			},
			ability_icon = {
				size = {
					64,
					64
				},
				offset = {
					-32,
					-64,
					0
				},
				color = {
					255,
					255,
					255,
					255
				}
			},
			ability_icon_frame = {
				size = {
					100,
					100
				},
				offset = {
					-49,
					-81,
					0
				},
				color = {
					255,
					255,
					255,
					255
				}
			},
			ability_title = {
				word_wrap = true,
				horizontal_alignment = "center",
				localize = true,
				font_size = 32,
				vertical_alignment = "center",
				font_type = "hell_shark",
				text_color = Colors.get_color_table_with_alpha("pactsworn_color", 255),
				offset = {
					-150,
					-120,
					2
				},
				size = {
					300,
					50
				}
			},
			ability_type = {
				word_wrap = true,
				horizontal_alignment = "center",
				font_size = 20,
				vertical_alignment = "center",
				dynamic_font_size = true,
				font_type = "hell_shark",
				text_color = Colors.get_color_table_with_alpha("silver", 255),
				offset = {
					-100,
					-148,
					2
				},
				size = {
					200,
					50
				}
			},
			ability_description = {
				word_wrap = true,
				horizontal_alignment = "center",
				localize = true,
				font_size = 16,
				vertical_alignment = "top",
				font_type = "hell_shark",
				text_color = Colors.get_color_table_with_alpha("white", 255),
				offset = {
					-130,
					-340,
					2
				},
				size = {
					275,
					200
				}
			}
		},
		scenegraph_id = scenegraph_id,
		offset = offset or {
			0,
			0,
			0
		}
	}

	return widget
end

local widgets = {
	background = UIWidgets.create_simple_texture("simple_rect_texture", "background", nil, RETAINED_MODE_ENABLED, {
		150,
		0,
		0,
		0
	}),
	title_text = UIWidgets.create_simple_text("versus_skills", "title_text", nil, nil, title_text_style, nil, RETAINED_MODE_ENABLED),
	title_divider = UIWidgets.create_simple_texture("popup_divider", "title_text", nil, RETAINED_MODE_ENABLED, {
		255,
		255,
		255,
		255
	}, {
		-40,
		-10,
		0
	}, {
		379,
		8
	}),
	player_info_career = UIWidgets.create_simple_text("PLACEHOLDER CLASS", "player_info", nil, nil, player_info_class_text_style, nil, RETAINED_MODE_ENABLED),
	player_info_divider = UIWidgets.create_simple_texture("popup_divider", "player_info", nil, RETAINED_MODE_ENABLED, {
		255,
		255,
		255,
		255
	}, {
		0,
		-10,
		0
	}, {
		379,
		8
	}),
	player_info_name = UIWidgets.create_simple_text("PLACEHOLDER NAME", "player_info", nil, nil, player_info_name_text_style, nil, RETAINED_MODE_ENABLED),
	ability_widget_1 = create_ability_info_widget("abilities_pivot", nil, "consumables_frame_bg_big_lit", "PLACEHOLDER", "dev_bacon_ipsum", ability_offset.ability_offset_1),
	ability_widget_2 = create_ability_info_widget("abilities_pivot", nil, "consumables_frame_bg_big_lit", "PLACEHOLDER", "dev_bacon_ipsum", ability_offset.ability_offset_2)
}

return {
	scenegraph = scenegraph_definition,
	widgets = widgets
}
