local SIZE_X, SIZE_Y = 1920, 1080
local scenegraph_definition = {
	screen = {
		position = {
			0,
			0,
			UILayer.hud
		},
		size = {
			SIZE_X,
			SIZE_Y
		},
		scale = not IS_WINDOWS and "hud_fit" or "fit"
	},
	background = {
		vertical_alignment = "center",
		parent = "screen",
		horizontal_alignment = "center",
		size = {
			500,
			500
		},
		position = {
			0,
			0,
			0
		}
	},
	viewport = {
		vertical_alignment = "top",
		parent = "background",
		horizontal_alignment = "center",
		size = {
			500,
			500
		},
		position = {
			0,
			0,
			0
		}
	},
	portrait_pivot = {
		vertical_alignment = "bottom",
		parent = "background",
		horizontal_alignment = "left",
		size = {
			0,
			0
		},
		position = {
			63,
			69,
			10
		}
	},
	corner_top_left = {
		vertical_alignment = "top",
		parent = "background",
		horizontal_alignment = "left",
		size = {
			110,
			110
		},
		position = {
			0,
			0,
			10
		}
	},
	corner_top_right = {
		vertical_alignment = "top",
		parent = "background",
		horizontal_alignment = "right",
		size = {
			110,
			110
		},
		position = {
			0,
			0,
			10
		}
	},
	corner_bottom_left = {
		vertical_alignment = "bottom",
		parent = "bottom_panel",
		horizontal_alignment = "left",
		size = {
			110,
			110
		},
		position = {
			0,
			100,
			1
		}
	},
	corner_bottom_right = {
		vertical_alignment = "bottom",
		parent = "bottom_panel",
		horizontal_alignment = "right",
		size = {
			110,
			110
		},
		position = {
			0,
			100,
			1
		}
	},
	bottom_panel = {
		vertical_alignment = "bottom",
		parent = "background",
		horizontal_alignment = "right",
		size = {
			500,
			100
		},
		position = {
			0,
			5,
			1
		}
	},
	bottom_panel_edge = {
		vertical_alignment = "top",
		parent = "bottom_panel",
		horizontal_alignment = "center",
		size = {
			500,
			5
		},
		position = {
			0,
			0,
			1
		}
	},
	hero_text_box = {
		vertical_alignment = "top",
		parent = "bottom_panel",
		horizontal_alignment = "center",
		size = {
			500,
			100
		},
		position = {
			20,
			5,
			10
		}
	},
	player_text_box = {
		vertical_alignment = "top",
		parent = "background",
		horizontal_alignment = "center",
		size = {
			500,
			100
		},
		position = {
			0,
			-5,
			10
		}
	}
}
local career_text_style = {
	word_wrap = true,
	upper_case = false,
	localize = false,
	use_shadow = true,
	font_size = 36,
	horizontal_alignment = "left",
	vertical_alignment = "center",
	dynamic_font_size = true,
	font_type = "hell_shark_header",
	text_color = Colors.get_color_table_with_alpha("font_title", 255),
	offset = {
		0,
		10,
		2
	}
}
local player_text_style = {
	word_wrap = true,
	upper_case = false,
	localize = false,
	use_shadow = true,
	font_size = 20,
	horizontal_alignment = "left",
	vertical_alignment = "center",
	dynamic_font_size = true,
	font_type = "arial",
	text_color = {
		255,
		160,
		160,
		160
	},
	offset = {
		0,
		-25,
		2
	}
}

local function create_panel_background(scenegraph_id, size, background_texture, optional_color)
	background_texture = background_texture or "menu_frame_bg_01"

	local background_texture_settings = UIAtlasHelper.get_atlas_settings_by_texture_name(background_texture)
	local widget = {
		element = {}
	}
	local passes = {
		{
			style_id = "background",
			pass_type = "texture_uv",
			content_id = "background"
		}
	}
	local content = {
		background = {
			uvs = {
				{
					0.5,
					1
				},
				{
					0.5 - math.min(size[1] / background_texture_settings.size[1], 1),
					1 - math.min(size[2] / background_texture_settings.size[2], 1)
				}
			},
			texture_id = background_texture
		}
	}
	local style = {
		background = {
			color = optional_color or {
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

local widget_definitions = {
	overlay = UIWidgets.create_simple_rect("viewport", {
		255,
		0,
		0,
		0
	}),
	background = UIWidgets.create_simple_texture("default_offscreen_write_mask", "background"),
	corner_top_left = UIWidgets.create_simple_texture("athanor_decoration_corner", "corner_top_left"),
	corner_top_right = UIWidgets.create_simple_uv_texture("athanor_decoration_corner", {
		{
			1,
			0
		},
		{
			0,
			1
		}
	}, "corner_top_right"),
	corner_bottom_left = UIWidgets.create_simple_uv_texture("athanor_decoration_corner", {
		{
			0,
			1
		},
		{
			1,
			0
		}
	}, "corner_bottom_left"),
	corner_bottom_right = UIWidgets.create_simple_uv_texture("athanor_decoration_corner", {
		{
			1,
			1
		},
		{
			0,
			0
		}
	}, "corner_bottom_right"),
	frame = UIWidgets.create_frame("background", scenegraph_definition.background.size, "menu_frame_12", 11),
	viewport_frame = UIWidgets.create_frame("viewport", scenegraph_definition.background.size, "frame_inner_glow_01", 1, {
		255,
		0,
		0,
		0
	}, {
		5,
		5
	}),
	bottom_panel_edge = UIWidgets.create_simple_texture("menu_frame_09_divider", "bottom_panel_edge"),
	career_name = UIWidgets.create_simple_text("", "hero_text_box", nil, nil, career_text_style),
	player_name = UIWidgets.create_simple_text("", "hero_text_box", nil, nil, player_text_style)
}
local animation_definitions = {}

return {
	animation_definitions = animation_definitions,
	scenegraph_definition = scenegraph_definition,
	widget_definitions = widget_definitions,
	create_panel_background = create_panel_background
}
