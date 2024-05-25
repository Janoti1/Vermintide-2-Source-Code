local SIZE_X, SIZE_Y = 1920, 1080
local RETAINED_MODE_ENABLED = false
local scenegraph_definition = {
	screen = {
		scale = "hud_scale_fit",
		size = {
			SIZE_X,
			SIZE_Y
		},
		position = {
			0,
			0,
			UILayer.hud
		}
	},
	center_screen = {
		vertical_alignment = "center",
		parent = "screen",
		horizontal_alignment = "center",
		size = {
			512,
			256
		},
		position = {
			0,
			-SIZE_Y * 0.3,
			15
		}
	},
	teleport_text = {
		vertical_alignment = "bottom",
		parent = "screen",
		horizontal_alignment = "center",
		size = {
			800,
			50
		},
		position = {
			0,
			200,
			2
		}
	},
	spawn_text = {
		vertical_alignment = "bottom",
		parent = "teleport_text",
		horizontal_alignment = "center",
		size = {
			800,
			50
		},
		position = {
			0,
			-50,
			2
		}
	},
	spawn_reason = {
		vertical_alignment = "bottom",
		parent = "spawn_text",
		horizontal_alignment = "center",
		size = {
			800,
			50
		},
		position = {
			0,
			-35,
			2
		}
	},
	spawn_info = {
		vertical_alignment = "bottom",
		parent = "screen",
		horizontal_alignment = "center",
		size = {
			550,
			200
		},
		position = {
			0,
			40,
			2
		}
	},
	spawn_info_text = {
		vertical_alignment = "center",
		parewnt = "spawn_info",
		horizontal_alignment = "right",
		size = {
			400,
			184
		},
		position = {
			16,
			0,
			4
		}
	}
}
local teleport_text_style = {
	word_wrap = true,
	upper_case = false,
	localize = false,
	use_shadow = false,
	font_size = 24,
	horizontal_alignment = "center",
	vertical_alignment = "center",
	dynamic_font_size = false,
	draw_text_rect = true,
	font_type = "hell_shark",
	text_color = Colors.get_color_table_with_alpha("white", 255),
	rect_color = Colors.get_color_table_with_alpha("black", 90),
	offset = {
		0,
		0,
		2
	}
}
local spawn_text_style = {
	font_size = 28,
	upper_case = false,
	localize = false,
	use_shadow = false,
	word_wrap = true,
	horizontal_alignment = "center",
	vertical_alignment = "center",
	draw_text_rect = true,
	font_type = "hell_shark",
	text_color = Colors.get_color_table_with_alpha("white", 255),
	rect_color = Colors.get_color_table_with_alpha("black", 90),
	offset = {
		0,
		0,
		10
	}
}
local spawn_reason_text_style = {
	font_size = 20,
	upper_case = false,
	localize = false,
	use_shadow = false,
	word_wrap = true,
	horizontal_alignment = "center",
	vertical_alignment = "center",
	draw_text_rect = true,
	font_type = "hell_shark",
	text_color = Colors.get_color_table_with_alpha("red", 255),
	rect_color = Colors.get_color_table_with_alpha("black", 90),
	offset = {
		0,
		0,
		10
	}
}
local widgets = {
	teleport_text = UIWidgets.create_simple_text("", "teleport_text", nil, nil, teleport_text_style, nil, RETAINED_MODE_ENABLED)
}
local spawn_info_widgets = {
	spawn_text = UIWidgets.create_simple_text("", "spawn_text", nil, nil, spawn_text_style, nil, RETAINED_MODE_ENABLED),
	spawn_reason = UIWidgets.create_simple_text("", "spawn_reason", nil, nil, spawn_reason_text_style, nil, RETAINED_MODE_ENABLED)
}
local animation_definitions = {}

return {
	scenegraph = scenegraph_definition,
	widgets = widgets,
	spawn_info_widgets = spawn_info_widgets,
	animation_definitions = animation_definitions
}
