local window_default_settings = UISettings.game_start_windows
local window_size = window_default_settings.size
local window_spacing = window_default_settings.spacing
local large_window_size = {
	window_size[1] * 3 + window_spacing * 2,
	window_size[2]
}
local animation_definitions = {
	on_enter = {
		{
			name = "fade_in",
			start_progress = 0,
			end_progress = 0.3,
			init = function (ui_scenegraph, scenegraph_definition, widgets, params)
				params.render_settings.alpha_multiplier = 0
			end,
			update = function (ui_scenegraph, scenegraph_definition, widgets, progress, params)
				local anim_progress = math.easeOutCubic(progress)

				params.render_settings.alpha_multiplier = anim_progress
			end,
			on_complete = function (ui_scenegraph, scenegraph_definition, widgets, params)
				return
			end
		}
	},
	on_exit = {
		{
			name = "fade_out",
			start_progress = 0,
			end_progress = 0.3,
			init = function (ui_scenegraph, scenegraph_definition, widgets, params)
				params.render_settings.alpha_multiplier = 1
			end,
			update = function (ui_scenegraph, scenegraph_definition, widgets, progress, params)
				local anim_progress = math.easeOutCubic(progress)

				params.render_settings.alpha_multiplier = 1 - anim_progress
			end,
			on_complete = function (ui_scenegraph, scenegraph_definition, widgets, params)
				return
			end
		}
	}
}
local grid_settings = {
	4,
	3
}
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
	root_fit = {
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
	background = {
		scale = "fit",
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
	video = {
		scale = "fit",
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
	menu_root = {
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
	window = {
		vertical_alignment = "center",
		parent = "menu_root",
		horizontal_alignment = "center",
		size = {
			1960,
			1080
		},
		position = {
			0,
			0,
			1
		}
	},
	foreground = {
		parent = "window",
		position = {
			0,
			0,
			2
		}
	},
	area_root = {
		vertical_alignment = "center",
		parent = "window",
		horizontal_alignment = "center",
		size = {
			180,
			180
		},
		position = {
			0,
			220,
			2
		}
	},
	title_divider = {
		vertical_alignment = "bottom",
		parent = "area_root",
		horizontal_alignment = "center",
		size = {
			264,
			32
		},
		position = {
			0,
			-160,
			1
		}
	},
	area_title = {
		vertical_alignment = "bottom",
		parent = "menu_root",
		horizontal_alignment = "center",
		size = {
			1920,
			1080
		},
		position = {
			135,
			150,
			10
		}
	},
	description_text = {
		vertical_alignment = "bottom",
		parent = "menu_root",
		horizontal_alignment = "left",
		size = {
			1200,
			150
		},
		position = {
			135,
			190,
			2
		}
	},
	campaign_text = {
		vertical_alignment = "top",
		parent = "menu_root",
		horizontal_alignment = "left",
		position = {
			256,
			-440,
			5
		},
		size = {
			0,
			0
		}
	},
	side_quests_text = {
		vertical_alignment = "top",
		parent = "campaign_text",
		horizontal_alignment = "left",
		position = {
			206,
			0,
			1
		},
		size = {
			0,
			0
		}
	},
	not_owned_text = {
		vertical_alignment = "bottom",
		parent = "window",
		horizontal_alignment = "center",
		size = {
			800,
			50
		},
		position = {
			0,
			150,
			12
		}
	},
	requirements_not_met_text = {
		vertical_alignment = "bottom",
		parent = "window",
		horizontal_alignment = "center",
		size = {
			800,
			50
		},
		position = {
			0,
			200,
			12
		}
	}
}
local requirements_not_met_text_style = {
	word_wrap = true,
	upper_case = true,
	localize = true,
	use_shadow = true,
	font_size = 28,
	horizontal_alignment = "center",
	vertical_alignment = "center",
	font_type = "hell_shark",
	text_color = Colors.get_color_table_with_alpha("red", 255),
	offset = {
		0,
		0,
		3
	}
}
local not_owned_text_style = {
	word_wrap = true,
	upper_case = true,
	localize = true,
	use_shadow = true,
	font_size = 32,
	horizontal_alignment = "center",
	vertical_alignment = "center",
	font_type = "hell_shark",
	text_color = Colors.get_color_table_with_alpha("red", 255),
	offset = {
		0,
		0,
		3
	}
}
local description_text_style = {
	word_wrap = true,
	localize = false,
	font_size = 32,
	horizontal_alignment = "center",
	vertical_alignment = "center",
	draw_text_rect = true,
	font_type = "hell_shark",
	text_color = Colors.get_color_table_with_alpha("font_default", 255),
	rect_color = Colors.get_color_table_with_alpha("black", 150),
	offset = {
		0,
		0,
		3
	}
}
local level_text_style = {
	font_size = 72,
	upper_case = true,
	localize = false,
	use_shadow = true,
	word_wrap = false,
	horizontal_alignment = "left",
	vertical_alignment = "bottom",
	font_type = "hell_shark_header",
	text_color = Colors.get_color_table_with_alpha("font_title", 255),
	offset = {
		0,
		0,
		2
	}
}
local campaign_text_style = {
	font_size = 32,
	upper_case = true,
	localize = false,
	use_shadow = true,
	word_wrap = false,
	horizontal_alignment = "center",
	vertical_alignment = "top",
	font_type = "hell_shark_header",
	text_color = Colors.get_color_table_with_alpha("font_title", 255),
	offset = {
		0,
		0,
		2
	}
}
local side_quests_text_style = {
	font_size = 32,
	upper_case = true,
	localize = false,
	use_shadow = true,
	word_wrap = false,
	horizontal_alignment = "left",
	vertical_alignment = "top",
	font_type = "hell_shark_header",
	text_color = Colors.get_color_table_with_alpha("font_default", 255),
	offset = {
		0,
		0,
		2
	}
}
local area_desc_style = {
	font_size = 28,
	upper_case = false,
	localize = true,
	use_shadow = true,
	word_wrap = true,
	horizontal_alignment = "left",
	vertical_alignment = "bottom",
	font_type = "hell_shark",
	text_color = Colors.get_color_table_with_alpha("white", 255),
	area_size = {
		1200,
		1080
	},
	offset = {
		0,
		0,
		2
	}
}

local function create_campaign_widget()
	local size = {
		250,
		250
	}
	local scenegraph_id = "area_root_main_campaign"

	scenegraph_definition[scenegraph_id] = {
		vertical_alignment = "center",
		parent = "area_root",
		horizontal_alignment = "center",
		size = size,
		position = {
			0,
			100,
			1
		}
	}

	local widget = {
		element = {}
	}
	local passes = {
		{
			style_id = "icon",
			pass_type = "hotspot",
			content_id = "button_hotspot"
		},
		{
			pass_type = "texture",
			style_id = "icon_glow",
			texture_id = "icon_glow"
		},
		{
			pass_type = "texture",
			style_id = "icon",
			texture_id = "icon"
		},
		{
			pass_type = "texture",
			style_id = "lock",
			texture_id = "lock",
			content_check_function = function (content)
				return content.locked
			end
		},
		{
			pass_type = "texture",
			style_id = "frame",
			texture_id = "frame"
		}
	}
	local content = {
		locked = true,
		frame = "map_frame_04",
		icon = "level_icon_01",
		lock = "hero_icon_locked_gold",
		icon_glow = "map_frame_glow_02",
		button_hotspot = {},
		divider = {
			texture_id = "menu_divider",
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
	}
	local style = {
		frame = {
			vertical_alignment = "center",
			horizontal_alignment = "center",
			texture_size = size,
			offset = {
				0,
				0,
				6
			},
			color = {
				255,
				255,
				255,
				255
			}
		},
		lock = {
			vertical_alignment = "center",
			horizontal_alignment = "center",
			texture_size = {
				76,
				87
			},
			offset = {
				64,
				-58,
				9
			},
			color = {
				255,
				255,
				255,
				255
			}
		},
		icon = {
			vertical_alignment = "center",
			horizontal_alignment = "center",
			texture_size = {
				size[1] * 168 / 180,
				size[2] * 168 / 180
			},
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
		},
		icon_glow = {
			vertical_alignment = "center",
			horizontal_alignment = "center",
			texture_size = {
				size[1] * 270 / 180,
				size[2] * 270 / 180
			},
			offset = {
				0,
				0,
				3
			},
			color = {
				0,
				255,
				255,
				255
			}
		},
		divider = {
			vertical_alignment = "center",
			horizontal_alignment = "right",
			texture_size = {
				2,
				100
			},
			offset = {
				size[1] * 0.15,
				0,
				0
			},
			color = {
				192,
				255,
				255,
				255
			}
		},
		divider_top = {
			vertical_alignment = "center",
			horizontal_alignment = "right",
			texture_size = {
				2,
				size[2]
			},
			offset = {
				size[1] * 0.15,
				size[2] * 0.5,
				0
			},
			color = {
				192,
				255,
				255,
				255
			}
		},
		divider_bottom = {
			vertical_alignment = "center",
			horizontal_alignment = "right",
			texture_size = {
				2,
				size[2]
			},
			offset = {
				size[1] * 0.15,
				-size[2] * 0.5,
				0
			},
			color = {
				192,
				255,
				255,
				255
			}
		}
	}

	widget.element.passes = passes
	widget.content = content
	widget.style = style
	widget.offset = {
		0,
		0,
		0
	}
	widget.scenegraph_id = scenegraph_id

	return widget
end

local function create_area_widget(i, specific_scenegraph_id)
	local scenegraph_id = specific_scenegraph_id
	local size = {
		150,
		150
	}

	if not scenegraph_id then
		scenegraph_id = "area_root_" .. i
		scenegraph_definition[scenegraph_id] = {
			vertical_alignment = "center",
			parent = "area_root",
			horizontal_alignment = "center",
			size = size,
			position = {
				0,
				100,
				1
			}
		}
	end

	local widget = {
		element = {}
	}
	local passes = {
		{
			style_id = "icon",
			pass_type = "hotspot",
			content_id = "button_hotspot"
		},
		{
			pass_type = "texture",
			style_id = "icon_glow",
			texture_id = "icon_glow"
		},
		{
			pass_type = "texture",
			style_id = "icon",
			texture_id = "icon"
		},
		{
			pass_type = "texture",
			style_id = "lock",
			texture_id = "lock",
			content_check_function = function (content)
				return content.locked
			end
		},
		{
			pass_type = "texture",
			style_id = "frame",
			texture_id = "frame"
		}
	}
	local content = {
		locked = true,
		frame = "map_frame_04",
		icon = "level_icon_01",
		lock = "hero_icon_locked_gold",
		icon_glow = "map_frame_glow_02",
		button_hotspot = {}
	}
	local style = {
		frame = {
			vertical_alignment = "center",
			horizontal_alignment = "center",
			texture_size = size,
			offset = {
				0,
				0,
				6
			},
			color = {
				255,
				255,
				255,
				255
			}
		},
		lock = {
			vertical_alignment = "center",
			horizontal_alignment = "center",
			texture_size = {
				76,
				87
			},
			offset = {
				64,
				-58,
				9
			},
			color = {
				255,
				255,
				255,
				255
			}
		},
		icon = {
			vertical_alignment = "center",
			horizontal_alignment = "center",
			texture_size = {
				size[1] * 168 / 180,
				size[2] * 168 / 180
			},
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
		},
		icon_glow = {
			vertical_alignment = "center",
			horizontal_alignment = "center",
			texture_size = {
				size[1] * 270 / 180,
				size[2] * 270 / 180
			},
			offset = {
				0,
				0,
				3
			},
			color = {
				0,
				255,
				255,
				255
			}
		}
	}

	widget.element.passes = passes
	widget.content = content
	widget.style = style
	widget.offset = {
		0,
		0,
		0
	}
	widget.scenegraph_id = scenegraph_id

	return widget
end

local function create_left_fade()
	local size = {
		420,
		1080
	}
	local scenegraph_id = "left_fade"

	scenegraph_definition[scenegraph_id] = {
		vertical_alignment = "center",
		parent = "menu_root",
		horizontal_alignment = "center",
		size = size,
		position = {
			0,
			0,
			3
		}
	}

	local widget = {
		element = {}
	}
	local passes = {
		{
			style_id = "left_fade",
			pass_type = "texture_uv",
			content_id = "left_fade"
		}
	}
	local content = {
		left_fade = {
			texture_id = "gradient",
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
	}
	local style = {
		left_fade = {
			vertical_alignment = "center",
			horizontal_alignment = "left",
			texture_size = {
				size[1],
				1080
			},
			color = {
				255,
				255,
				255,
				255
			},
			offset = {
				-960 + size[1] * 0.5,
				0
			}
		}
	}

	widget.element.passes = passes
	widget.content = content
	widget.style = style
	widget.offset = {
		0,
		0,
		0
	}
	widget.scenegraph_id = scenegraph_id

	return widget
end

local function create_level_image(level_image, level_completed)
	local frame_settings = level_completed and UIFrameSettings.button_frame_01_gold or UIFrameSettings.button_frame_01

	level_image = UIAtlasHelper.has_atlas_settings_by_texture_name(level_image) and level_image or "any_small_image"

	local widget = {
		element = {}
	}
	local passes = {
		{
			texture_id = "level_image",
			style_id = "level_image",
			pass_type = "texture"
		},
		{
			texture_id = "frame",
			style_id = "frame",
			pass_type = "texture_frame"
		},
		{
			texture_id = "sigil",
			style_id = "sigil",
			pass_type = "texture",
			content_check_function = function (content, style)
				return content.completed
			end
		},
		{
			texture_id = "sigil",
			style_id = "sigil_shadow",
			pass_type = "texture",
			content_check_function = function (content, style)
				return content.completed
			end
		},
		{
			texture_id = "sigil_ribbon",
			style_id = "sigil_ribbon",
			pass_type = "texture",
			content_check_function = function (content, style)
				return content.completed
			end
		},
		{
			texture_id = "sigil_ribbon",
			style_id = "sigil_ribbon_shadow",
			pass_type = "texture",
			content_check_function = function (content, style)
				return content.completed
			end
		},
		{
			texture_id = "boss_icon",
			style_id = "boss_icon",
			pass_type = "texture",
			content_check_function = function (content, style)
				return content.boss_level
			end
		}
	}
	local content = {
		completed = false,
		boss_icon = "boss_icon",
		boss_level = true,
		sigil_ribbon = "store_owned_ribbon",
		sigil = "store_owned_sigil",
		level_image = level_image,
		frame = frame_settings.texture
	}
	local style = {
		level_image = {
			vertical_alignment = "bottom",
			saturated = true,
			horizontal_alignment = "left",
			texture_size = {
				97,
				58
			},
			color = {
				255,
				255,
				255,
				255
			},
			locked_color = {
				255,
				96,
				96,
				96
			},
			unlocked_color = {
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
		sigil = {
			vertical_alignment = "bottom",
			horizontal_alignment = "left",
			texture_size = {
				39.75,
				39.75
			},
			color = {
				255,
				255,
				255,
				255
			},
			offset = {
				1.625,
				-10.875,
				4
			}
		},
		sigil_shadow = {
			vertical_alignment = "bottom",
			horizontal_alignment = "left",
			texture_size = {
				39.75,
				39.75
			},
			color = {
				255,
				0,
				0,
				0
			},
			offset = {
				3.625,
				-12.875,
				3
			}
		},
		sigil_ribbon = {
			vertical_alignment = "bottom",
			horizontal_alignment = "left",
			texture_size = {
				25.5,
				37.5
			},
			color = {
				255,
				255,
				255,
				255
			},
			offset = {
				8.75,
				-29.75,
				2
			}
		},
		sigil_ribbon_shadow = {
			vertical_alignment = "bottom",
			horizontal_alignment = "left",
			texture_size = {
				25.5,
				37.5
			},
			color = {
				255,
				0,
				0,
				0
			},
			offset = {
				10.75,
				-45.25,
				1
			}
		},
		boss_icon = {
			vertical_alignment = "bottom",
			horizontal_alignment = "left",
			texture_size = {
				34,
				34
			},
			color = {
				255,
				255,
				255,
				255
			},
			offset = {
				69.8,
				-6.800000000000001,
				3
			}
		},
		frame = {
			vertical_alignment = "bottom",
			horizontal_alignment = "left",
			area_size = {
				97,
				58
			},
			texture_size = frame_settings.texture_size,
			texture_sizes = frame_settings.texture_sizes,
			color = {
				255,
				255,
				255,
				255
			},
			offset = {
				0,
				0,
				1
			}
		}
	}

	widget.element.passes = passes
	widget.content = content
	widget.style = style
	widget.offset = {
		0,
		-68,
		0
	}
	widget.scenegraph_id = "area_title"

	return widget
end

local function create_area_type()
	local widget = {
		element = {}
	}
	local passes = {
		{
			style_id = "text",
			pass_type = "text",
			text_id = "text",
			content_change_function = function (content, style)
				style.offset[1] = not (not content.locked and not content.dlc) and 36 or 0
			end
		},
		{
			style_id = "text_shadow",
			pass_type = "text",
			text_id = "text",
			content_change_function = function (content, style)
				style.offset[1] = not (not content.locked and not content.dlc) and 36.9 or 0
			end
		},
		{
			texture_id = "lock",
			style_id = "lock",
			pass_type = "texture",
			content_check_function = function (content, style)
				return content.locked and not content.dlc
			end
		},
		{
			texture_id = "lock_dlc",
			style_id = "lock",
			pass_type = "texture",
			content_check_function = function (content, style)
				return content.locked and content.dlc_locked
			end
		}
	}
	local content = {
		text = "area_selection_campaign",
		locked = true,
		lock = "hero_icon_locked",
		dlc_locked = true,
		lock_dlc = "hero_icon_locked_gold"
	}
	local style = {
		text = {
			word_wrap = false,
			upper_case = false,
			localize = true,
			font_size = 28,
			horizontal_alignment = "left",
			vertical_alignment = "bottom",
			font_type = "hell_shark",
			text_color = Colors.get_color_table_with_alpha("font_default", 255),
			offset = {
				0,
				80,
				2
			}
		},
		text_shadow = {
			word_wrap = false,
			upper_case = false,
			localize = true,
			font_size = 28,
			horizontal_alignment = "left",
			vertical_alignment = "bottom",
			font_type = "hell_shark",
			text_color = Colors.get_color_table_with_alpha("black", 255),
			offset = {
				2,
				78,
				1
			}
		},
		lock = {
			vertical_alignment = "bottom",
			horizontal_alignment = "left",
			texture_size = {
				34.2,
				39.15
			},
			color = {
				255,
				255,
				255,
				255
			},
			offset = {
				0,
				82,
				0
			}
		}
	}

	widget.element.passes = passes
	widget.content = content
	widget.style = style
	widget.offset = {
		0,
		0,
		0
	}
	widget.scenegraph_id = "area_title"

	return widget
end

local widgets = {
	background = UIWidgets.create_simple_rect("background", {
		255,
		0,
		0,
		0
	}),
	foreground = UIWidgets.create_simple_rect("foreground", {
		255,
		0,
		0,
		0
	}),
	window_fade = UIWidgets.create_simple_texture("options_window_fade_01", "video", nil, nil, nil, 2),
	left_fade = create_left_fade(),
	campaign = UIWidgets.create_simple_text(Localize("area_selection_campaign"), "campaign_text", nil, nil, campaign_text_style),
	area_title = UIWidgets.create_simple_text("area_title", "area_title", nil, nil, level_text_style),
	area_desc = UIWidgets.create_simple_text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut fringilla in nulla eu rutrum. Etiam non dapibus orci, sit amet tempus tortor. Mauris porttitor finibus quam eget tempor. Cras sed dui bibendum, gravida quam a, sodales justo. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut fringilla in nulla eu rutrum. Etiam non dapibus orci, sit amet tempus tortor. Mauris porttitor finibus quam eget tempor. Cras sed dui bibendum, gravida quam a, sodales justo. ", "description_text", nil, nil, area_desc_style),
	area_type = create_area_type(),
	title_divider = UIWidgets.create_simple_texture("edge_divider_04_horizontal", "area_title", nil, nil, nil, nil, {
		area_desc_style.area_size[1] * 0.9,
		8
	})
}
local area_widgets = {}

for i = 1, 20 do
	area_widgets[i] = create_area_widget(i)
end

return {
	widgets = widgets,
	area_widgets = area_widgets,
	create_level_image_func = create_level_image,
	main_campaign_widget = create_campaign_widget(),
	map_size = large_window_size,
	scenegraph_definition = scenegraph_definition,
	animation_definitions = animation_definitions,
	grid_settings = grid_settings
}
