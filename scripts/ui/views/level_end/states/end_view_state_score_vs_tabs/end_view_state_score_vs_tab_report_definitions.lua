local level_up_foreground_size = {
	336,
	368
}
local bar_thresholds = {
	0.12,
	0.865
}
local sparkle_size = {
	128,
	128
}
local ITEM_SIZE = {
	80,
	80
}
local scenegraph_definition = {
	screen = {
		scale = "fit",
		size = {
			1920,
			1080
		},
		position = {
			0,
			0,
			UILayer.end_screen
		}
	},
	panel = {
		vertical_alignment = "center",
		parent = "screen",
		horizontal_alignment = "center",
		size = {
			1800,
			920
		},
		position = {
			0,
			0,
			10
		}
	},
	insignia = {
		vertical_alignment = "center",
		parent = "screen",
		horizontal_alignment = "center",
		size = {
			100,
			276
		},
		position = {
			0,
			0,
			100
		}
	},
	level_up_anchor = {
		vertical_alignment = "top",
		parent = "screen",
		horizontal_alignment = "left",
		size = {
			0,
			0
		},
		position = {
			80 + level_up_foreground_size[1] * 0.5,
			-344 - level_up_foreground_size[2] * 0.5,
			10
		}
	},
	level_up_text = {
		vertical_alignment = "center",
		parent = "level_up_anchor",
		horizontal_alignment = "center",
		size = level_up_foreground_size
	},
	versus_progress_anchor = {
		vertical_alignment = "top",
		parent = "level_up_anchor",
		horizontal_alignment = "left",
		size = {
			352,
			326
		},
		position = {
			level_up_foreground_size[1] * 0.5 + 25,
			level_up_foreground_size[2] * 0.5,
			0
		}
	},
	challenge_progress_anchor = {
		vertical_alignment = "top",
		parent = "screen",
		horizontal_alignment = "left",
		size = {
			830,
			225
		},
		position = {
			985,
			-550,
			1
		}
	},
	challenge_progress_area = {
		parent = "challenge_progress_anchor",
		position = {
			-15,
			-75,
			0
		}
	},
	challenge_entry_anchor = {
		vertical_alignment = "top",
		parent = "challenge_progress_area",
		position = {
			35,
			0,
			0
		},
		size = {
			830,
			110
		}
	},
	hero_progress_anchor = {
		vertical_alignment = "top",
		parent = "screen",
		horizontal_alignment = "left",
		size = {
			835,
			250
		},
		position = {
			985,
			-235,
			1
		}
	},
	hero_progress_item_anchor = {
		vertical_alignment = "top",
		parent = "hero_progress_anchor",
		horizontal_alignment = "left",
		size = ITEM_SIZE,
		position = {
			395,
			-80,
			1
		}
	},
	portrait = {
		vertical_alignment = "top",
		parent = "hero_progress_anchor",
		horizontal_alignment = "left",
		size = {
			100,
			100
		},
		position = {
			75,
			-50,
			0
		}
	},
	portrait_divider = {
		vertical_alignment = "top",
		parent = "portrait",
		horizontal_alignment = "right",
		size = {
			2,
			142
		},
		position = {
			-25,
			-20,
			0
		}
	},
	item_divider = {
		vertical_alignment = "top",
		parent = "portrait",
		horizontal_alignment = "right",
		size = {
			2,
			142
		},
		position = {
			200,
			-20,
			0
		}
	},
	hero_name = {
		vertical_alignment = "top",
		parent = "portrait_divider",
		horizontal_alignment = "right",
		size = {
			2,
			100
		},
		position = {
			20,
			0,
			0
		}
	},
	career_name = {
		vertical_alignment = "top",
		parent = "hero_name",
		horizontal_alignment = "right",
		size = {
			2,
			100
		},
		position = {
			0,
			-35,
			0
		}
	},
	experience_gained = {
		vertical_alignment = "bottom",
		parent = "career_name",
		horizontal_alignment = "right",
		size = {
			200,
			20
		},
		position = {
			192,
			25,
			0
		}
	},
	experience_bar = {
		vertical_alignment = "bottom",
		parent = "career_name",
		horizontal_alignment = "right",
		size = {
			200,
			20
		},
		position = {
			192,
			5,
			0
		}
	},
	sparkle_effect = {
		vertical_alignment = "top",
		parent = "experience_bar",
		horizontal_alignment = "right",
		size = sparkle_size
	}
}

local function create_level_up_widget(scenegraph_id)
	local widget_def = {}
	local element = {
		passes = {}
	}
	local passes = element.passes
	local content = {}
	local style = {}

	passes[#passes + 1] = {
		pass_type = "texture",
		style_id = "foreground",
		texture_id = "versus_circle_foreground"
	}
	passes[#passes + 1] = {
		pass_type = "texture",
		style_id = "middle_fill",
		texture_id = "versus_circle_background"
	}
	passes[#passes + 1] = {
		pass_type = "texture",
		style_id = "background",
		texture_id = "versus_circle_background"
	}
	passes[#passes + 1] = {
		pass_type = "rotated_texture",
		style_id = "left_lock",
		texture_id = "left_lock"
	}
	passes[#passes + 1] = {
		pass_type = "rotated_texture",
		style_id = "right_lock",
		texture_id = "left_lock"
	}
	passes[#passes + 1] = {
		style_id = "bottom_left_lock",
		pass_type = "texture_uv",
		content_id = "bottom_left_lock"
	}
	passes[#passes + 1] = {
		pass_type = "texture",
		style_id = "bottom_right_lock",
		texture_id = "bottom_lock"
	}
	passes[#passes + 1] = {
		pass_type = "texture",
		style_id = "lock_mask",
		texture_id = "lock_mask"
	}
	passes[#passes + 1] = {
		pass_type = "texture",
		style_id = "lava",
		texture_id = "lava"
	}
	passes[#passes + 1] = {
		pass_type = "texture",
		style_id = "lava_mask",
		texture_id = "lava_mask"
	}
	passes[#passes + 1] = {
		style_id = "pattern_1",
		texture_id = "versus_circle_pattern",
		pass_type = "rotated_texture",
		content_change_function = function (content, style)
			local t = Application.time_since_launch()

			style.angle = math.degrees_to_radians(t * 12 % 360)
		end
	}
	passes[#passes + 1] = {
		style_id = "pattern_2",
		texture_id = "versus_circle_pattern",
		pass_type = "rotated_texture",
		content_change_function = function (content, style)
			local t = Application.time_since_launch()

			style.angle = math.degrees_to_radians(t * 4 % 360)
		end
	}
	passes[#passes + 1] = {
		style_id = "static_progress_marker",
		texture_id = "static_marker",
		pass_type = "rotated_texture",
		content_check_function = function (content, style)
			return content.starting_progress >= bar_thresholds[1] and content.starting_progress < bar_thresholds[2]
		end,
		content_change_function = function (content, style)
			style.angle = content.starting_progress * 2 * math.pi
		end
	}
	passes[#passes + 1] = {
		style_id = "mask",
		texture_id = "versus_circle_mask",
		pass_type = "gradient_mask_texture",
		content_change_function = function (content, style)
			style.gradient_threshold = content.final_progress
		end
	}
	passes[#passes + 1] = {
		style_id = "versus_static_circle",
		texture_id = "versus_static_circle",
		pass_type = "gradient_mask_texture",
		content_change_function = function (content, style)
			style.gradient_threshold = content.starting_progress
		end
	}
	passes[#passes + 1] = {
		style_id = "versus_progress_circle",
		texture_id = "versus_progress_circle",
		pass_type = "gradient_mask_texture",
		content_change_function = function (content, style)
			style.gradient_threshold = content.final_progress
		end
	}
	passes[#passes + 1] = {
		style_id = "progress_marker",
		texture_id = "rect_smooth",
		pass_type = "rotated_texture",
		content_change_function = function (content, style)
			style.angle = content.final_progress * 2 * math.pi
		end
	}
	passes[#passes + 1] = {
		scenegraph_id = "level_up_text",
		style_id = "level_text",
		pass_type = "text",
		text_id = "level_text"
	}
	style.foreground = {
		vertical_alignment = "center",
		horizontal_alignment = "center",
		texture_size = {
			level_up_foreground_size[1],
			level_up_foreground_size[2]
		},
		color = Colors.get_color_table_with_alpha("white", 255)
	}
	style.middle_fill = {
		vertical_alignment = "center",
		horizontal_alignment = "center",
		texture_size = {
			level_up_foreground_size[1] * 0.75,
			level_up_foreground_size[2] * 0.75
		},
		color = Colors.get_color_table_with_alpha("white", 255),
		offset = {
			0,
			0,
			-9
		}
	}
	style.background = {
		vertical_alignment = "center",
		horizontal_alignment = "center",
		texture_size = {
			level_up_foreground_size[1],
			level_up_foreground_size[2]
		},
		color = Colors.get_color_table_with_alpha("white", 255),
		offset = {
			0,
			0,
			-10
		}
	}
	style.left_lock = {
		horizontal_alignment = "center",
		alpha_value = 255,
		vertical_alignment = "bottom",
		masked = true,
		angle = 0,
		texture_size = {
			104,
			156
		},
		pivot = {
			104,
			156
		},
		color = Colors.get_color_table_with_alpha("white", 255),
		offset = {
			-52,
			-38,
			2
		}
	}
	style.right_lock = {
		horizontal_alignment = "center",
		alpha_value = 255,
		vertical_alignment = "bottom",
		masked = true,
		angle = 0,
		texture_size = {
			104,
			156
		},
		pivot = {
			0,
			156
		},
		color = Colors.get_color_table_with_alpha("white", 255),
		offset = {
			52,
			-38,
			2
		},
		uvs = {
			{
				1,
				0
			},
			{
				0,
				1
			}
		}
	}
	style.bottom_right_lock = {
		vertical_alignment = "top",
		masked = true,
		horizontal_alignment = "center",
		alpha_value = 255,
		texture_size = {
			90,
			104
		},
		color = Colors.get_color_table_with_alpha("white", 255),
		offset = {
			45,
			14,
			2
		}
	}
	style.bottom_left_lock = {
		vertical_alignment = "top",
		masked = true,
		horizontal_alignment = "center",
		alpha_value = 255,
		texture_size = {
			90,
			104
		},
		color = Colors.get_color_table_with_alpha("white", 255),
		offset = {
			-45,
			14,
			2
		}
	}
	style.lock_mask = {
		vertical_alignment = "center",
		horizontal_alignment = "center",
		texture_size = {
			336,
			360
		},
		color = Colors.get_color_table_with_alpha("white", 0),
		offset = {
			0,
			14,
			10
		}
	}
	style.lava = {
		vertical_alignment = "center",
		horizontal_alignment = "center",
		texture_size = {
			336,
			360
		},
		color = Colors.get_color_table_with_alpha("white", 0),
		offset = {
			0,
			14,
			10
		}
	}
	style.lava_mask = {
		vertical_alignment = "top",
		horizontal_alignment = "center",
		texture_size = {
			330,
			330
		},
		color = Colors.get_color_table_with_alpha("white", 0),
		offset = {
			0,
			181.5,
			10
		}
	}
	style.pattern_1 = {
		vertical_alignment = "top",
		angle = 0,
		horizontal_alignment = "center",
		alpha_value = 192,
		texture_size = {
			330,
			330
		},
		pivot = {
			168,
			168
		},
		color = Colors.get_color_table_with_alpha("white", 0),
		offset = {
			0,
			181.5,
			-2
		}
	}
	style.pattern_2 = {
		vertical_alignment = "top",
		angle = 0,
		horizontal_alignment = "center",
		alpha_value = 128,
		texture_size = {
			330,
			330
		},
		pivot = {
			168,
			168
		},
		color = Colors.get_color_table_with_alpha("white", 0),
		offset = {
			0,
			181.5,
			-2
		}
	}
	style.mask = {
		vertical_alignment = "top",
		gradient_threshold = 0,
		horizontal_alignment = "center",
		texture_size = {
			330,
			330
		},
		color = Colors.get_color_table_with_alpha("white", 0),
		offset = {
			0,
			181.5,
			0
		}
	}
	style.versus_static_circle = {
		vertical_alignment = "top",
		gradient_threshold = 0.3,
		horizontal_alignment = "center",
		texture_size = {
			330,
			330
		},
		color = Colors.get_color_table_with_alpha("green", 0),
		offset = {
			0,
			181.5,
			-4
		}
	}
	style.static_progress_marker = {
		vertical_alignment = "top",
		horizontal_alignment = "center",
		angle = 0.5,
		pivot = {
			8,
			153
		},
		texture_size = {
			16,
			30
		},
		color = Colors.get_color_table_with_alpha("white", 0),
		offset = {
			0,
			-107,
			-2
		}
	}
	style.versus_progress_circle = {
		vertical_alignment = "top",
		gradient_threshold = 0,
		horizontal_alignment = "center",
		texture_size = {
			330,
			330
		},
		color = Colors.get_color_table_with_alpha("yellow", 0),
		offset = {
			0,
			181.5,
			-6
		}
	}
	style.progress_marker = {
		vertical_alignment = "top",
		horizontal_alignment = "center",
		angle = 0,
		pivot = {
			7,
			153
		},
		texture_size = {
			14,
			30
		},
		color = {
			0,
			255,
			255,
			100
		},
		offset = {
			0,
			-107,
			-3
		}
	}
	style.level_text = {
		localize = false,
		font_size = 45,
		horizontal_alignment = "center",
		vertical_alignment = "bottom",
		dynamic_font_size = true,
		font_type = "hell_shark_header",
		area_size = {
			55,
			20
		},
		color = Colors.get_color_table_with_alpha("font_default", 0),
		offset = {
			-50,
			13,
			1
		}
	}
	content.level_text = "0"
	content.starting_progress = 0
	content.final_progress = 0
	content.versus_circle_foreground = "versus_circle_foreground"
	content.versus_circle_background = "versus_circle_background"
	content.versus_static_circle = "versus_static_circle"
	content.rect_smooth = "rect_smooth"
	content.static_marker = "static_marker"
	content.versus_circle_mask = "versus_circle_mask"
	content.versus_circle_pattern = "versus_circle_pattern"
	content.versus_progress_circle = "versus_progress_circle"
	content.bg_circle = "circle"
	content.left_lock = "versus_end_screen_cover_top_left"
	content.bottom_lock = "versus_end_screen_cover_bottom_left"
	content.bottom_left_lock = {
		texture_id = "versus_end_screen_cover_bottom_left",
		uvs = {
			{
				1,
				0
			},
			{
				0,
				1
			}
		}
	}
	content.lock_mask = "versus_lock_mask"
	content.lava = "lava"
	content.lava_mask = "versus_circle_mask_2"
	widget_def.element = element
	widget_def.content = content
	widget_def.style = style
	widget_def.scenegraph_id = scenegraph_id
	widget_def.offset = {
		0,
		0,
		0
	}

	return widget_def
end

local versus_progress_text_style = {
	vertical_alignment = "top",
	upper_case = true,
	localize = false,
	horizontal_alignment = "left",
	font_size = 44,
	font_type = "hell_shark_header",
	text_color = Colors.get_color_table_with_alpha("font_default", 255),
	offset = {
		0,
		-2,
		2
	}
}
local hero_progress_text_style = {
	vertical_alignment = "top",
	horizontal_alignment = "left",
	localize = false,
	font_size = 28,
	font_type = "hell_shark",
	text_color = Colors.get_color_table_with_alpha("font_button_normal", 255),
	offset = {
		0,
		-12,
		2
	}
}
local challenge_progress_text_style = {
	vertical_alignment = "top",
	horizontal_alignment = "left",
	localize = false,
	font_size = 28,
	font_type = "hell_shark",
	text_color = Colors.get_color_table_with_alpha("font_button_normal", 255),
	offset = {
		0,
		-12,
		2
	}
}
local versus_progress_summary_text_style = {
	vertical_alignment = "bottom",
	horizontal_alignment = "left",
	localize = true,
	font_size = 28,
	font_type = "hell_shark",
	text_color = Colors.get_color_table_with_alpha("font_button_normal", 255),
	offset = {
		5,
		0,
		2
	}
}
local versus_progress_summary_value_text_style = {
	vertical_alignment = "bottom",
	horizontal_alignment = "right",
	localize = false,
	font_size = 28,
	font_type = "hell_shark",
	text_color = Colors.get_color_table_with_alpha("font_default", 255),
	offset = {
		-5,
		0,
		2
	}
}
local experience_gained_text_style = {
	vertical_alignment = "bottm",
	horizontal_alignment = "left",
	localize = false,
	font_size = 28,
	font_type = "hell_shark",
	text_color = Colors.get_color_table_with_alpha("font_default", 0),
	offset = {
		0,
		0,
		2
	}
}
local hero_name_text_style = {
	font_type = "hell_shark",
	font_size = 30,
	localize = false,
	horizontal_alignment = "left",
	vertical_alignment = "top",
	dynamic_font_size = true,
	text_color = Colors.get_color_table_with_alpha("font_default", 255),
	area_size = {
		200,
		200
	},
	offset = {
		-5,
		0,
		2
	}
}
local career_name_text_style = {
	font_size = 45,
	upper_case = true,
	localize = false,
	horizontal_alignment = "left",
	vertical_alignment = "top",
	dynamic_font_size = true,
	font_type = "hell_shark_header",
	text_color = Colors.get_color_table_with_alpha("font_button_normal", 255),
	area_size = {
		200,
		200
	},
	offset = {
		-5,
		0,
		2
	}
}
local level_up_text_style = {
	font_size = 40,
	upper_case = true,
	word_wrap = true,
	use_shadow = true,
	horizontal_alignment = "center",
	vertical_alignment = "center",
	font_type = "hell_shark_header_masked",
	text_color = Colors.get_color_table_with_alpha("white", 0),
	offset = {
		0,
		2,
		10
	}
}
local challenge_completed_text_style = {
	font_size = 20,
	horizontal_alignment = "left",
	use_shadow = true,
	vertical_alignment = "center",
	dynamic_font_size = true,
	font_type = "hell_shark_masked",
	text_color = Colors.get_color_table_with_alpha("white", 255),
	offset = {
		106,
		38,
		0
	},
	area_size = {
		250,
		100
	}
}
local challenge_name_text_style = {
	font_size = 35,
	use_shadow = true,
	localize = true,
	horizontal_alignment = "left",
	vertical_alignment = "center",
	dynamic_font_size = true,
	font_type = "hell_shark_header_masked",
	text_color = Colors.get_color_table_with_alpha("font_button_normal", 255),
	offset = {
		106,
		10,
		0
	},
	area_size = {
		250,
		100
	}
}
local challenge_desc_text_style = {
	font_size = 18,
	use_shadow = true,
	localize = false,
	horizontal_alignment = "left",
	vertical_alignment = "center",
	dynamic_font_size = true,
	font_type = "hell_shark_masked",
	text_color = Colors.get_color_table_with_alpha("font_default", 255),
	offset = {
		106,
		-15,
		0
	},
	area_size = {
		250,
		100
	}
}

local function create_summery_entry(index, header, xp, force)
	return {
		scenegraph_id = "versus_progress_anchor",
		element = {
			passes = {
				{
					style_id = "header",
					pass_type = "text",
					text_id = "header"
				},
				{
					style_id = "experience",
					pass_type = "text",
					text_id = "experience"
				}
			}
		},
		content = {
			header = header,
			experience = force and tostring(xp) or "0",
			xp = xp
		},
		style = {
			header = {
				font_size = 28,
				localize = false,
				horizontal_alignment = "left",
				vertical_alignment = "top",
				dynamic_font_size = true,
				font_type = "hell_shark",
				area_size = {
					275,
					50
				},
				text_color = Colors.get_color_table_with_alpha("font_button_normal", force and 255 or 0),
				offset = {
					5,
					0,
					0
				}
			},
			experience = {
				vertical_alignment = "top",
				horizontal_alignment = "right",
				localize = false,
				font_size = 28,
				font_type = "hell_shark",
				text_color = Colors.get_color_table_with_alpha("font_default", force and 255 or 0),
				offset = {
					-5,
					0,
					0
				}
			}
		},
		offset = {
			0,
			-50 + (index - 1) * -35,
			5
		}
	}
end

local function create_challenge_entry(id, start_progress, end_progress, offset, force)
	local achievement_template = AchievementTemplates.achievements[id]
	local icon = achievement_template.icon
	local name = achievement_template.name
	local desc = type(achievement_template.desc) == "function" and achievement_template.desc() or Localize(achievement_template.desc)
	local widget_def = {}
	local element = {
		passes = {}
	}
	local passes = element.passes
	local content = {}
	local style = {}

	passes[#passes + 1] = {
		style_id = "completed",
		pass_type = "text",
		text_id = "completed",
		content_check_function = function (content, style)
			return content.is_completed
		end
	}
	passes[#passes + 1] = {
		style_id = "name",
		pass_type = "text",
		text_id = "name"
	}
	passes[#passes + 1] = {
		style_id = "desc",
		pass_type = "text",
		text_id = "desc"
	}
	passes[#passes + 1] = {
		pass_type = "texture",
		style_id = "icon",
		texture_id = "icon"
	}
	passes[#passes + 1] = {
		style_id = "experience_start",
		pass_type = "texture_uv",
		content_id = "experience_start"
	}
	passes[#passes + 1] = {
		style_id = "experience_end",
		pass_type = "texture_uv",
		content_id = "experience_end"
	}
	passes[#passes + 1] = {
		pass_type = "texture",
		style_id = "outer_frame",
		texture_id = "masked_rect"
	}
	passes[#passes + 1] = {
		pass_type = "texture",
		style_id = "inner_frame",
		texture_id = "masked_rect"
	}
	passes[#passes + 1] = {
		pass_type = "texture",
		style_id = "marker",
		texture_id = "masked_rect"
	}
	content.experience_start = {
		texture_id = "versus_summary_screen_fill",
		uvs = {
			{
				0,
				0
			},
			{
				start_progress,
				1
			}
		}
	}
	content.experience_end = {
		texture_id = "versus_summary_screen_fill",
		uvs = {
			{
				start_progress,
				0
			},
			{
				end_progress,
				1
			}
		}
	}
	content.icon = icon
	content.name = name
	content.desc = desc
	content.completed = string.gsub(Localize("search_filter_completed"), "^%l", string.upper) .. "!"
	content.is_completed = end_progress >= 1
	content.masked_rect = "rect_masked"
	content.progress = end_progress
	content.alpha_multiplier = force and 1 or 0
	style.completed = challenge_completed_text_style
	style.name = challenge_name_text_style
	style.desc = challenge_desc_text_style
	style.icon = {
		vertical_alignment = "center",
		masked = true,
		horizontal_alignment = "left",
		texture_size = {
			96,
			96
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
	}

	local bar_offset = {
		106,
		-35
	}

	style.experience_start = {
		vertical_alignment = "center",
		masked = true,
		horizontal_alignment = "left",
		texture_size = {
			246 * start_progress,
			10
		},
		color = Colors.get_color_table_with_alpha("green", 255),
		offset = {
			bar_offset[1] + 2,
			bar_offset[2],
			2
		}
	}
	style.experience_end = {
		vertical_alignment = "center",
		masked = true,
		horizontal_alignment = "left",
		texture_size = {
			246 * (end_progress - start_progress),
			10
		},
		color = Colors.get_color_table_with_alpha("yellow", 255),
		offset = {
			bar_offset[1] + 2 + 246 * start_progress,
			bar_offset[2],
			2
		}
	}
	style.outer_frame = {
		vertical_alignment = "center",
		horizontal_alignment = "left",
		texture_size = {
			250,
			14
		},
		color = {
			255,
			64,
			58.400000000000006,
			40.400000000000006
		},
		offset = {
			bar_offset[1],
			bar_offset[2],
			0
		}
	}
	style.inner_frame = {
		vertical_alignment = "center",
		horizontal_alignment = "left",
		texture_size = {
			246,
			10
		},
		color = Colors.get_color_table_with_alpha("black", 255),
		offset = {
			bar_offset[1] + 2,
			bar_offset[2],
			1
		}
	}
	style.marker = {
		vertical_alignment = "center",
		horizontal_alignment = "left",
		texture_size = {
			2,
			10
		},
		color = {
			255,
			32,
			29.200000000000003,
			20.200000000000003
		},
		offset = {
			246 * start_progress + bar_offset[1],
			bar_offset[2],
			3
		}
	}
	widget_def.element = element
	widget_def.content = content
	widget_def.style = style
	widget_def.scenegraph_id = "challenge_entry_anchor"
	widget_def.offset = offset or {
		0,
		0,
		0
	}

	return widget_def
end

local function create_item_widget(item, offset, force)
	local alpha = force and 255 or 0
	local size = table.clone(ITEM_SIZE)
	local rarity = item.rarity
	local rarity_texture = UISettings.item_rarity_textures[rarity or "default"]
	local inventory_icon, display_name, description, store_icon = UIUtils.get_ui_information_from_item(item)

	return {
		scenegraph_id = "hero_progress_item_anchor",
		element = {
			passes = {
				{
					pass_type = "hotspot",
					content_id = "hotspot"
				},
				{
					item_id = "item",
					style_id = "item_tooltip",
					pass_type = "item_tooltip",
					content_check_function = function (content, style)
						local hotspot = content.hotspot

						return hotspot.is_hover
					end
				},
				{
					texture_id = "texture_id",
					style_id = "texture_id",
					pass_type = "texture"
				},
				{
					texture_id = "frame",
					style_id = "frame",
					pass_type = "texture"
				},
				{
					texture_id = "rarity_texture",
					style_id = "rarity_texture",
					pass_type = "texture"
				}
			}
		},
		content = {
			frame = "reward_pop_up_item_frame",
			hotspot = {},
			item = item,
			texture_id = inventory_icon,
			rarity_texture = rarity_texture,
			size = size
		},
		style = {
			item = {
				font_size = 18,
				max_width = 500,
				localize = true,
				horizontal_alignment = "left",
				vertical_alignment = "top",
				font_type = "hell_shark",
				text_color = Colors.get_color_table_with_alpha("white", 255),
				line_colors = {
					Colors.get_color_table_with_alpha("font_title", 255),
					Colors.get_color_table_with_alpha("white", 255)
				},
				offset = {
					0,
					0,
					100
				}
			},
			texture_id = {
				color = {
					alpha,
					255,
					255,
					255
				},
				texture_size = size,
				offset = {
					0,
					0,
					1
				}
			},
			frame = {
				color = {
					alpha,
					255,
					255,
					255
				},
				texture_size = size,
				offset = {
					0,
					0,
					2
				}
			},
			rarity_texture = {
				color = {
					alpha,
					255,
					255,
					255
				},
				texture_size = size,
				offset = {
					0,
					0,
					0
				}
			}
		},
		offset = offset
	}
end

local completed_string = string.gsub(Localize("search_filter_completed"), "^%l", string.upper)
local challenge_progress_text_string = Localize("achv_menu_achievements_category_title") .. " {#color(181,181,181,255)}(%d " .. completed_string .. ")"
local hero_progress_text_string = Localize("hero_level_tag")
local summary_value_string = "%d XP"
local widget_definitions = {
	level_up = create_level_up_widget("level_up_anchor"),
	insignia = UIWidgets.create_large_insignia("level_up_anchor", 1, false, {
		255,
		255,
		255,
		255
	}, {
		85,
		234.6
	}, {
		0,
		5,
		-2
	}),
	level_progress_bg = UIWidgets.create_simple_uv_texture("vertical_gradient", {
		{
			0,
			1
		},
		{
			1,
			0
		}
	}, "versus_progress_anchor", nil, nil, {
		128,
		0,
		0,
		0
	}, {
		0,
		-50,
		0
	}),
	level_progress_divider = UIWidgets.create_simple_rect("versus_progress_anchor", Colors.get_color_table_with_alpha("font_button_normal", 255), nil, {
		0,
		-48,
		0
	}, {
		scenegraph_definition.versus_progress_anchor.size[1],
		2
	}),
	versus_progress_text = UIWidgets.create_simple_text(Localize("versus_level_tag"), "versus_progress_anchor", nil, nil, versus_progress_text_style),
	summary_text = UIWidgets.create_simple_text("achv_menu_summary_category_title", "versus_progress_anchor", nil, nil, versus_progress_summary_text_style),
	summary_value_text = UIWidgets.create_simple_text(string.format(summary_value_string, 0), "versus_progress_anchor", nil, nil, versus_progress_summary_value_text_style)
}
local hero_progress_widget_definitions = {
	hero_progress_bg = UIWidgets.create_simple_uv_texture("vertical_gradient", {
		{
			0,
			1
		},
		{
			1,
			0
		}
	}, "hero_progress_anchor", nil, nil, {
		128,
		0,
		0,
		0
	}, {
		0,
		-50,
		0
	}),
	hero_progress_divider = UIWidgets.create_simple_rect("hero_progress_anchor", Colors.get_color_table_with_alpha("font_button_normal", 255), nil, {
		0,
		-48,
		0
	}, {
		scenegraph_definition.hero_progress_anchor.size[1],
		2
	}),
	hero_progress_text = UIWidgets.create_simple_text(string.format(hero_progress_text_string, "hero_name"), "hero_progress_anchor", nil, nil, hero_progress_text_style),
	divider = UIWidgets.create_simple_rect("portrait_divider", {
		255,
		255,
		255,
		255
	}),
	hero_name = UIWidgets.create_simple_text("Sienna Fueganassus", "hero_name", nil, nil, hero_name_text_style),
	career_name = UIWidgets.create_simple_text("NECROMANCER", "career_name", nil, nil, career_name_text_style),
	item_divider = UIWidgets.create_simple_rect("item_divider", {
		255,
		255,
		255,
		255
	}),
	experience_gained_text = UIWidgets.create_simple_text(string.format(summary_value_string, 0), "experience_gained", nil, nil, experience_gained_text_style),
	experience_fg = UIWidgets.create_simple_uv_texture("summary_screen_fg", {
		{
			0.075,
			0.2
		},
		{
			0.927,
			1
		}
	}, "experience_bar", nil, nil, {
		255,
		255,
		255,
		255
	}, {
		0,
		0,
		20
	}),
	experience_bar = UIWidgets.create_summary_experience_bar("experience_bar", scenegraph_definition.experience_bar.size, nil, 20),
	level_up_text = UIWidgets.create_simple_text(Localize("summary_screen_level_up"), "experience_bar", nil, nil, level_up_text_style),
	sparkle_effect = UIWidgets.create_simple_rotated_texture("sparkle_effect", 0, {
		sparkle_size[1] / 2,
		sparkle_size[2] / 2
	}, "sparkle_effect", nil, nil, {
		0,
		255,
		255,
		255
	}, nil, {
		55,
		65,
		50
	})
}
local challenge_widget_definitions = {
	challenge_progress_bg = UIWidgets.create_simple_uv_texture("vertical_gradient", {
		{
			0,
			1
		},
		{
			1,
			0
		}
	}, "challenge_progress_anchor", nil, nil, {
		128,
		0,
		0,
		0
	}, {
		0,
		-50,
		-5
	}),
	challenge_progress_divider = UIWidgets.create_simple_rect("challenge_progress_anchor", Colors.get_color_table_with_alpha("font_button_normal", 255), nil, {
		0,
		-48,
		0
	}, {
		scenegraph_definition.challenge_progress_anchor.size[1],
		2
	}),
	challenge_progress_text = UIWidgets.create_simple_text(string.format(challenge_progress_text_string, 0), "challenge_progress_anchor", nil, nil, challenge_progress_text_style),
	challenge_progress_mask = UIWidgets.create_simple_texture("mask_rect", "challenge_progress_area"),
	challenge_progress_mask_top = UIWidgets.create_simple_texture("vertical_gradient_write_mask", "challenge_progress_area", nil, nil, nil, {
		15,
		scenegraph_definition.challenge_progress_anchor.size[2],
		0
	}, {
		scenegraph_definition.challenge_progress_anchor.size[1],
		20
	}),
	challenge_progress_mask_bottom = UIWidgets.create_simple_uv_texture("vertical_gradient_write_mask", {
		{
			0,
			1
		},
		{
			1,
			0
		}
	}, "challenge_progress_area", nil, nil, nil, {
		15,
		-20,
		0
	}, nil, {
		scenegraph_definition.challenge_progress_anchor.size[1],
		20
	})
}
local animation_definitions = {
	on_enter = {
		{
			name = "fade_in",
			start_progress = 0,
			end_progress = 0.3,
			init = function (ui_scenegraph, scenegraph_definition, widgets, params)
				params.render_settings.alpha_multiplier = 0

				params.play_sound("Play_vs_hud_progression_personal_report_start")
			end,
			update = function (ui_scenegraph, scenegraph_definition, widgets, progress, params)
				local anim_progress = math.easeOutCubic(progress)

				params.render_settings.alpha_multiplier = anim_progress

				local widget = widgets.level_up

				widget.offset[1] = math.lerp(-100, 0, anim_progress)
				widget.style.level_text.offset[1] = math.lerp(-100, 0, anim_progress)
				widget.style.level_text.color[1] = widget.style.level_text.alpha_value or 255
				widget.style.pattern_1.color[1] = widget.style.pattern_1.alpha_value or 255
				widget.style.pattern_2.color[1] = widget.style.pattern_2.alpha_value or 255
				widget.style.mask.color[1] = widget.style.mask.alpha_value or 255
				widget.style.versus_static_circle.color[1] = widget.style.versus_static_circle.alpha_value or 255
				widget.style.static_progress_marker.color[1] = widget.style.static_progress_marker.alpha_value or 255
				widget.style.versus_progress_circle.color[1] = widget.style.versus_progress_circle.alpha_value or 255
				widget.style.progress_marker.color[1] = widget.style.progress_marker.alpha_value or 255

				local widget = widgets.insignia

				widget.offset[1] = math.lerp(-100, 0, anim_progress)
				widget.style.insignia_main.color[1] = anim_progress * 255
				ui_scenegraph.versus_progress_anchor.position[1] = math.lerp(scenegraph_definition.versus_progress_anchor.position[1] - 100, scenegraph_definition.versus_progress_anchor.position[1], anim_progress)
			end,
			on_complete = function (ui_scenegraph, scenegraph_definition, widgets, params)
				return
			end
		}
	},
	on_enter_forced = {
		{
			name = "fade_in",
			start_progress = 0,
			end_progress = 0.3,
			init = function (ui_scenegraph, scenegraph_definition, widgets, params)
				params.render_settings.alpha_multiplier = 0
				params.render_settings.hero_progress_alpha_multiplier = 0
				params.render_settings.challenge_alpha_multiplier = 0
			end,
			update = function (ui_scenegraph, scenegraph_definition, widgets, progress, params)
				local anim_progress = math.easeOutCubic(progress)

				params.render_settings.alpha_multiplier = anim_progress
				params.render_settings.hero_progress_alpha_multiplier = anim_progress
				params.render_settings.challenge_alpha_multiplier = anim_progress

				local widget = widgets.level_up

				widget.offset[1] = math.lerp(-100, 0, anim_progress)
				widget.style.level_text.offset[1] = math.lerp(-100, 0, anim_progress)
				widget.style.level_text.color[1] = widget.style.level_text.alpha_value or 255
				widget.style.pattern_1.color[1] = widget.style.pattern_1.alpha_value or 255
				widget.style.pattern_2.color[1] = widget.style.pattern_2.alpha_value or 255
				widget.style.mask.color[1] = widget.style.mask.alpha_value or 255
				widget.style.versus_static_circle.color[1] = widget.style.versus_static_circle.alpha_value or 255
				widget.style.static_progress_marker.color[1] = widget.style.static_progress_marker.alpha_value or 255
				widget.style.versus_progress_circle.color[1] = widget.style.versus_progress_circle.alpha_value or 255
				widget.style.progress_marker.color[1] = widget.style.progress_marker.alpha_value or 255

				local widget = widgets.insignia

				widget.offset[1] = math.lerp(-100, 0, anim_progress)
				widget.style.insignia_main.color[1] = anim_progress * 255
				ui_scenegraph.versus_progress_anchor.position[1] = math.lerp(scenegraph_definition.versus_progress_anchor.position[1] - 100, scenegraph_definition.versus_progress_anchor.position[1], anim_progress)
			end,
			on_complete = function (ui_scenegraph, scenegraph_definition, widgets, params)
				return
			end
		}
	},
	animate_progression_entry = {
		{
			name = "animate_header_in",
			start_progress = 0,
			end_progress = 0.4,
			init = function (ui_scenegraph, scenegraph_definition, widgets, params)
				local entry_name = params.data.entry_name
				local widget = widgets[entry_name]

				widget.style.header.text_color[1] = 0
				widget.style.experience.text_color[1] = 0

				params.play_sound("Play_vs_hud_progression_xp_summary_table")
			end,
			update = function (ui_scenegraph, scenegraph_definition, widgets, progress, params)
				local anim_progress = math.easeOutCubic(progress)
				local entry_name = params.data.entry_name
				local widget = widgets[entry_name]

				widget.style.header.text_color[1] = math.lerp(0, 255, anim_progress * anim_progress)
				widget.style.header.offset[1] = math.lerp(-50, 5, anim_progress)
			end,
			on_complete = function (ui_scenegraph, scenegraph_definition, widgets, params)
				local entry_name = params.data.entry_name
				local widget = widgets[entry_name]

				widget.style.header.text_color[1] = 255
				widget.style.header.offset[1] = 5
			end
		},
		{
			name = "animate_entry_experience",
			start_progress = 0.4,
			end_progress = 0.8,
			init = function (ui_scenegraph, scenegraph_definition, widgets, params)
				return
			end,
			update = function (ui_scenegraph, scenegraph_definition, widgets, progress, params)
				local anim_progress = math.easeOutCubic(progress)
				local entry_name = params.data.entry_name
				local widget = widgets[entry_name]

				widget.content.experience = tostring(math.round(math.lerp(0, widget.content.xp, anim_progress)))
				widget.style.experience.text_color[1] = 255
			end,
			on_complete = function (ui_scenegraph, scenegraph_definition, widgets, params)
				local entry_name = params.data.entry_name
				local widget = widgets[entry_name]

				widget.content.experience = tostring(widget.content.xp)
			end
		},
		{
			name = "animate_progression_summary",
			start_progress = 0.8,
			end_progress = 1.2,
			init = function (ui_scenegraph, scenegraph_definition, widgets, params)
				local entry_name = params.data.entry_name
				local entry_widget = widgets[entry_name]
				local entry_experience = entry_widget.content.xp
				local widget = widgets.summary_value_text

				widget.content.value = (widget.content.value or 0) + entry_experience
			end,
			update = function (ui_scenegraph, scenegraph_definition, widgets, progress, params)
				local anim_progress = math.ease_pulse(progress)
				local initial_font_size = 28
				local target_font_size = initial_font_size * 1.255
				local new_font_size = math.lerp(initial_font_size, target_font_size, anim_progress)
				local widget = widgets.summary_value_text

				widget.content.text = string.format(summary_value_string, widget.content.value)
				widget.style.text.font_size = new_font_size
			end,
			on_complete = function (ui_scenegraph, scenegraph_definition, widgets, params)
				local widget = widgets.summary_value_text

				widget.style.text.font_size = 28
			end
		}
	},
	animate_level_up_start = {
		{
			name = "animate_level_up_widget",
			start_progress = 0,
			end_progress = 3,
			init = function (ui_scenegraph, scenegraph_definition, widgets, params)
				params.play_sound("Play_vs_hud_progression_level_counter_loop")
				params.set_global_wwise_parameter("summary_meter_progress", params.data.sound_parameter_values[1])
			end,
			update = function (ui_scenegraph, scenegraph_definition, widgets, progress, params)
				local anim_progress = math.easeInCubic(progress)
				local widget = widgets.level_up

				widget.content.final_progress = math.lerp(bar_thresholds[1], bar_thresholds[2], params.data.starting_progress + (params.data.final_progress - params.data.starting_progress) * anim_progress)

				params.set_global_wwise_parameter("summary_meter_progress", math.lerp(params.data.sound_parameter_values[1], params.data.sound_parameter_values[2], anim_progress))
			end,
			on_complete = function (ui_scenegraph, scenegraph_definition, widgets, params)
				local widget = widgets.level_up

				widget.content.final_progress = math.lerp(bar_thresholds[1], bar_thresholds[2], params.data.final_progress)

				params.play_sound("Stop_vs_hud_progression_level_counter_loop")

				local level = params.data.level

				if level % 50 == 1 then
					params.play_sound("Play_vs_hud_progression_level_up_50")
				elseif level % 10 == 1 then
					params.play_sound("Play_vs_hud_progression_level_up_5")
				else
					params.play_sound("Play_vs_hud_progression_level_up")
				end
			end
		},
		{
			name = "close_top",
			start_progress = 3,
			end_progress = 3.4,
			init = function (ui_scenegraph, scenegraph_definition, widgets, params)
				local widget = widgets.level_up

				widget.style.left_lock.angle = math.degrees_to_radians(90)
				widget.style.right_lock.angle = math.degrees_to_radians(-90)
				widget.style.bottom_left_lock.offset[2] = -180
				widget.style.bottom_right_lock.offset[2] = -180
			end,
			update = function (ui_scenegraph, scenegraph_definition, widgets, progress, params)
				local anim_progress = math.easeInCubic(progress)
				local widget = widgets.level_up

				widget.style.lock_mask.color[1] = 255

				local angle = math.lerp(90, 0, anim_progress)

				widget.style.left_lock.angle = math.degrees_to_radians(angle)
				widget.style.right_lock.angle = math.degrees_to_radians(-angle)
			end,
			on_complete = function (ui_scenegraph, scenegraph_definition, widgets, params)
				return
			end
		},
		{
			name = "close_bottom",
			start_progress = 3.2,
			end_progress = 3.6,
			init = function (ui_scenegraph, scenegraph_definition, widgets, params)
				return
			end,
			update = function (ui_scenegraph, scenegraph_definition, widgets, progress, params)
				local anim_progress = math.easeInCubic(progress)
				local widget = widgets.level_up

				widget.style.bottom_left_lock.offset[2] = math.lerp(-180, 14, anim_progress)
				widget.style.bottom_right_lock.offset[2] = math.lerp(-180, 14, anim_progress)
			end,
			on_complete = function (ui_scenegraph, scenegraph_definition, widgets, params)
				return
			end
		},
		{
			name = "level_up",
			start_progress = 3.6,
			end_progress = 4.1,
			init = function (ui_scenegraph, scenegraph_definition, widgets, params)
				return
			end,
			update = function (ui_scenegraph, scenegraph_definition, widgets, progress, params)
				local anim_progress = math.easeOutCubic(progress)
				local widget = widgets.level_up

				widget.content.level_text = params.data.level
				widget.style.lava.color[1] = anim_progress * 255
				widget.style.lava_mask.color[1] = 255
			end,
			on_complete = function (ui_scenegraph, scenegraph_definition, widgets, params)
				local widget = widgets.level_up

				widget.content.level_text = params.data.level
				widget.content.starting_progress = params.data.on_complete_optional_starting_progress or 0
				widget.content.final_progress = params.data.on_complete_optional_final_progress or 0

				local insignia_widget = widgets.insignia
				local insignia_main_uvs, insignia_addon_uvs = UIAtlasHelper.get_insignia_texture_settings_from_level(params.data.level)

				insignia_widget.content.insignia_main.uvs = insignia_main_uvs
				insignia_widget.content.insignia_addon.uvs = insignia_addon_uvs
				insignia_widget.content.level = params.data.level
			end
		},
		{
			name = "fade_out",
			start_progress = 4.6,
			end_progress = 5.1,
			init = function (ui_scenegraph, scenegraph_definition, widgets, params)
				return
			end,
			update = function (ui_scenegraph, scenegraph_definition, widgets, progress, params)
				local anim_progress = math.easeOutCubic(progress)
				local widget = widgets.level_up

				widget.content.level_text = params.data.level
				widget.style.lava.color[1] = 255 - anim_progress * 255
			end,
			on_complete = function (ui_scenegraph, scenegraph_definition, widgets, params)
				local widget = widgets.level_up

				widget.content.level_text = params.data.level
				widget.style.lava.color[1] = 0
				widget.style.lava_mask.color[1] = 0

				local insignia_widget = widgets.insignia
				local insignia_main_uvs, insignia_addon_uvs = UIAtlasHelper.get_insignia_texture_settings_from_level(params.data.level)

				insignia_widget.content.insignia_main.uvs = insignia_main_uvs
				insignia_widget.content.insignia_addon.uvs = insignia_addon_uvs
				insignia_widget.content.level = params.data.level
			end
		},
		{
			name = "open",
			start_progress = 5.1,
			end_progress = 5.6,
			init = function (ui_scenegraph, scenegraph_definition, widgets, params)
				return
			end,
			update = function (ui_scenegraph, scenegraph_definition, widgets, progress, params)
				local anim_progress = math.easeOutCubic(progress)
				local widget = widgets.level_up

				widget.style.bottom_left_lock.offset[2] = math.lerp(14, -180, anim_progress)
				widget.style.bottom_right_lock.offset[2] = math.lerp(14, -180, anim_progress)

				local angle = math.lerp(0, 90, anim_progress)

				widget.style.left_lock.angle = math.degrees_to_radians(angle)
				widget.style.right_lock.angle = math.degrees_to_radians(-angle)
			end,
			on_complete = function (ui_scenegraph, scenegraph_definition, widgets, params)
				local widget = widgets.level_up

				widget.style.lock_mask.color[1] = 0
			end
		}
	},
	animate_level_up_start_end = {
		{
			name = "animate_level_up_widget",
			start_progress = 0,
			end_progress = 3,
			init = function (ui_scenegraph, scenegraph_definition, widgets, params)
				params.play_sound("Play_vs_hud_progression_level_counter_loop")
				params.set_global_wwise_parameter("summary_meter_progress", params.data.sound_parameter_values[1])
			end,
			update = function (ui_scenegraph, scenegraph_definition, widgets, progress, params)
				local anim_progress = math.easeCubic(progress)
				local widget = widgets.level_up

				widget.content.final_progress = math.lerp(bar_thresholds[1], bar_thresholds[2], params.data.starting_progress + (params.data.final_progress - params.data.starting_progress) * anim_progress)

				params.set_global_wwise_parameter("summary_meter_progress", math.lerp(params.data.sound_parameter_values[1], params.data.sound_parameter_values[2], anim_progress))
			end,
			on_complete = function (ui_scenegraph, scenegraph_definition, widgets, params)
				local widget = widgets.level_up

				widget.content.final_progress = math.lerp(bar_thresholds[1], bar_thresholds[2], params.data.final_progress)

				params.play_sound("Stop_vs_hud_progression_level_counter_loop")
			end
		}
	},
	animate_level_up_end = {
		{
			name = "animate_level_up_widget",
			start_progress = 0,
			end_progress = 3,
			init = function (ui_scenegraph, scenegraph_definition, widgets, params)
				local widget = widgets.level_up

				widget.content.starting_progress = 0

				params.play_sound("Play_vs_hud_progression_level_counter_loop")
				params.set_global_wwise_parameter("summary_meter_progress", params.data.sound_parameter_values[1])
			end,
			update = function (ui_scenegraph, scenegraph_definition, widgets, progress, params)
				local anim_progress = math.easeOutCubic(progress)
				local widget = widgets.level_up

				widget.content.final_progress = math.lerp(bar_thresholds[1], bar_thresholds[2], params.data.starting_progress + (params.data.final_progress - params.data.starting_progress) * anim_progress)

				params.set_global_wwise_parameter("summary_meter_progress", math.lerp(params.data.sound_parameter_values[1], params.data.sound_parameter_values[2], anim_progress))
			end,
			on_complete = function (ui_scenegraph, scenegraph_definition, widgets, params)
				local widget = widgets.level_up

				widget.content.final_progress = math.lerp(bar_thresholds[1], bar_thresholds[2], params.data.final_progress)

				params.play_sound("Stop_vs_hud_progression_level_counter_loop")
			end
		}
	},
	animate_level_up_instant = {
		{
			name = "animate_level_up_widget",
			start_progress = 0,
			end_progress = 0,
			init = function (ui_scenegraph, scenegraph_definition, widgets, params)
				local widget = widgets.level_up

				widget.content.starting_progress = 1
				widget.content.final_progress = 1
			end,
			update = function (ui_scenegraph, scenegraph_definition, widgets, progress, params)
				return
			end,
			on_complete = function (ui_scenegraph, scenegraph_definition, widgets, params)
				return
			end
		}
	},
	animate_level_up_linear = {
		{
			name = "animate_level_up_widget",
			start_progress = 0,
			end_progress = 1.5,
			init = function (ui_scenegraph, scenegraph_definition, widgets, params)
				local widget = widgets.level_up

				widget.content.starting_progress = 0
				widget.style.lock_mask.color[1] = 0

				params.play_sound("Play_vs_hud_progression_level_counter_loop")
				params.set_global_wwise_parameter("summary_meter_progress", params.data.sound_parameter_values[1])
			end,
			update = function (ui_scenegraph, scenegraph_definition, widgets, progress, params)
				local anim_progress = progress
				local widget = widgets.level_up

				widget.content.final_progress = math.lerp(bar_thresholds[1], bar_thresholds[2], anim_progress)

				params.set_global_wwise_parameter("summary_meter_progress", math.lerp(params.data.sound_parameter_values[1], params.data.sound_parameter_values[2], anim_progress))
			end,
			on_complete = function (ui_scenegraph, scenegraph_definition, widgets, params)
				local widget = widgets.level_up

				widget.content.final_progress = math.lerp(bar_thresholds[1], bar_thresholds[2], params.data.final_progress)

				params.play_sound("Stop_vs_hud_progression_level_counter_loop")

				local level = params.data.level

				if level % 50 == 1 then
					params.play_sound("Play_vs_hud_progression_level_up_50")
				elseif level % 10 == 1 then
					params.play_sound("Play_vs_hud_progression_level_up_5")
				else
					params.play_sound("Play_vs_hud_progression_level_up")
				end
			end
		},
		{
			name = "close_top",
			start_progress = 1.5,
			end_progress = 1.9,
			init = function (ui_scenegraph, scenegraph_definition, widgets, params)
				local widget = widgets.level_up

				widget.style.left_lock.angle = math.degrees_to_radians(90)
				widget.style.right_lock.angle = math.degrees_to_radians(-90)
				widget.style.bottom_left_lock.offset[2] = -180
				widget.style.bottom_right_lock.offset[2] = -180
			end,
			update = function (ui_scenegraph, scenegraph_definition, widgets, progress, params)
				local anim_progress = math.easeInCubic(progress)
				local widget = widgets.level_up

				widget.style.lock_mask.color[1] = 255

				local angle = math.lerp(90, 0, anim_progress)

				widget.style.left_lock.angle = math.degrees_to_radians(angle)
				widget.style.right_lock.angle = math.degrees_to_radians(-angle)
			end,
			on_complete = function (ui_scenegraph, scenegraph_definition, widgets, params)
				return
			end
		},
		{
			name = "close_bottom",
			start_progress = 1.7,
			end_progress = 2.1,
			init = function (ui_scenegraph, scenegraph_definition, widgets, params)
				return
			end,
			update = function (ui_scenegraph, scenegraph_definition, widgets, progress, params)
				local anim_progress = math.easeInCubic(progress)
				local widget = widgets.level_up

				widget.style.bottom_left_lock.offset[2] = math.lerp(-180, 14, anim_progress)
				widget.style.bottom_right_lock.offset[2] = math.lerp(-180, 14, anim_progress)
			end,
			on_complete = function (ui_scenegraph, scenegraph_definition, widgets, params)
				return
			end
		},
		{
			name = "level_up",
			start_progress = 2.1,
			end_progress = 2.5,
			init = function (ui_scenegraph, scenegraph_definition, widgets, params)
				return
			end,
			update = function (ui_scenegraph, scenegraph_definition, widgets, progress, params)
				local anim_progress = math.easeInCubic(progress)
				local widget = widgets.level_up

				widget.content.level_text = params.data.level
				widget.style.lava.color[1] = anim_progress * 255
				widget.style.lava_mask.color[1] = 255
			end,
			on_complete = function (ui_scenegraph, scenegraph_definition, widgets, params)
				local widget = widgets.level_up

				widget.content.level_text = params.data.level
				widget.content.starting_progress = 0
				widget.content.final_progress = 0

				local insignia_widget = widgets.insignia
				local insignia_main_uvs, insignia_addon_uvs = UIAtlasHelper.get_insignia_texture_settings_from_level(params.data.level)

				insignia_widget.content.insignia_main.uvs = insignia_main_uvs
				insignia_widget.content.insignia_addon.uvs = insignia_addon_uvs
				insignia_widget.content.level = params.data.level
			end
		},
		{
			name = "fade_out",
			start_progress = 3,
			end_progress = 3.5,
			init = function (ui_scenegraph, scenegraph_definition, widgets, params)
				return
			end,
			update = function (ui_scenegraph, scenegraph_definition, widgets, progress, params)
				local anim_progress = math.easeOutCubic(progress)
				local widget = widgets.level_up

				widget.content.level_text = params.data.level
				widget.style.lava.color[1] = 255 - anim_progress * 255
			end,
			on_complete = function (ui_scenegraph, scenegraph_definition, widgets, params)
				local widget = widgets.level_up

				widget.content.level_text = params.data.level
				widget.style.lava.color[1] = 0
				widget.style.lava_mask.color[1] = 0

				local insignia_widget = widgets.insignia
				local insignia_main_uvs, insignia_addon_uvs = UIAtlasHelper.get_insignia_texture_settings_from_level(params.data.level)

				insignia_widget.content.insignia_main.uvs = insignia_main_uvs
				insignia_widget.content.insignia_addon.uvs = insignia_addon_uvs
				insignia_widget.content.level = params.data.level
			end
		},
		{
			name = "open",
			start_progress = 3.5,
			end_progress = 4,
			init = function (ui_scenegraph, scenegraph_definition, widgets, params)
				return
			end,
			update = function (ui_scenegraph, scenegraph_definition, widgets, progress, params)
				local anim_progress = math.easeOutCubic(progress)
				local widget = widgets.level_up

				widget.style.bottom_left_lock.offset[2] = math.lerp(14, -180, anim_progress)
				widget.style.bottom_right_lock.offset[2] = math.lerp(14, -180, anim_progress)

				local angle = math.lerp(0, 90, anim_progress)

				widget.style.left_lock.angle = math.degrees_to_radians(angle)
				widget.style.right_lock.angle = math.degrees_to_radians(-angle)
			end,
			on_complete = function (ui_scenegraph, scenegraph_definition, widgets, params)
				local widget = widgets.level_up

				widget.style.lock_mask.color[1] = 0
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
	},
	level_up = {
		{
			name = "spark",
			start_progress = 0,
			end_progress = 0.3,
			init = function (ui_scenegraph, scenegraph_definition, widgets, params)
				return
			end,
			update = function (ui_scenegraph, scenegraph_definition, widgets, progress, params)
				local widget = widgets.sparkle_effect
				local style = widget.style
				local content = widget.content
				local offset = widget.offset
				local anim_progress = math.easeOutCubic(progress)
				local degrees = 180 * anim_progress
				local texture_style = style.texture_id

				texture_style.angle = math.degrees_to_radians(degrees)
				texture_style.color[1] = 255 * math.ease_pulse(progress)
			end,
			on_complete = function (ui_scenegraph, scenegraph_definition, widgets, params)
				return
			end
		}
	},
	animate_item = {
		{
			name = "animate_item",
			start_progress = 0,
			end_progress = 0.3,
			init = function (ui_scenegraph, scenegraph_definition, widgets, params)
				local data = params.data
				local widget = data.widget

				widget.style.texture_id.color[1] = 0
				widget.style.frame.color[1] = 0
				widget.style.rarity_texture.color[1] = 0

				local size = scenegraph_definition.hero_progress_item_anchor.size

				widget.content.size[1] = size[1] * 2
				widget.content.size[2] = size[2] * 2

				local offset = data.offset

				widget.offset[1] = offset[1] - size[1] * 0.5
				widget.offset[2] = offset[2] - size[2] * 0.5

				params.play_sound(params.data.sound)
			end,
			update = function (ui_scenegraph, scenegraph_definition, widgets, progress, params)
				local data = params.data
				local widget = data.widget
				local style = widget.style
				local content = widget.content
				local offset = widget.offset
				local anim_progress = math.easeOutCubic(progress)
				local size = scenegraph_definition.hero_progress_item_anchor.size

				content.size[1] = math.lerp(size[1] * 2, size[1], anim_progress)
				content.size[2] = math.lerp(size[2] * 2, size[2], anim_progress)
				style.texture_id.texture_size = content.size
				style.frame.texture_size = content.size
				style.rarity_texture.texture_size = content.size

				local offset = params.data.offset

				widget.offset[1] = offset[1] - math.lerp(size[1] * 0.5, 0, anim_progress)
				widget.offset[2] = offset[2] - math.lerp(size[2] * 0.5, 0, anim_progress)
				style.texture_id.color[1] = math.lerp(0, 255, anim_progress)
				style.frame.color[1] = math.lerp(0, 255, anim_progress)
				style.rarity_texture.color[1] = math.lerp(0, 255, anim_progress)
			end,
			on_complete = function (ui_scenegraph, scenegraph_definition, widgets, params)
				local data = params.data
				local widget = data.widget
				local style = widget.style
				local content = widget.content

				style.texture_id.color[1] = 255
				style.frame.color[1] = 255
				style.rarity_texture.color[1] = 255

				local size = scenegraph_definition.hero_progress_item_anchor.size

				content.size[1] = size[1]
				content.size[2] = size[2]
				style.texture_id.texture_size = content.size
				style.frame.texture_size = content.size
				style.rarity_texture.texture_size = content.size

				local offset = data.offset

				widget.offset[1] = offset[1]
				widget.offset[2] = offset[2]
			end
		}
	},
	versus_level_up_pause = {
		{
			name = "pause",
			start_progress = 0,
			end_progress = 0.5,
			init = function (ui_scenegraph, scenegraph_definition, widgets, params)
				return
			end,
			update = function (ui_scenegraph, scenegraph_definition, widgets, progress, params)
				return
			end,
			on_complete = function (ui_scenegraph, scenegraph_definition, widgets, params)
				return
			end
		}
	},
	animate_hero_progress = {
		{
			name = "animate_in",
			start_progress = 0,
			end_progress = 0.3,
			init = function (ui_scenegraph, scenegraph_definition, widgets, params)
				params.render_settings.hero_progress_alpha_multiplier = 0
			end,
			update = function (ui_scenegraph, scenegraph_definition, widgets, progress, params)
				local anim_progress = math.easeOutCubic(progress)

				params.render_settings.hero_progress_alpha_multiplier = anim_progress
				ui_scenegraph.hero_progress_anchor.position[1] = math.lerp(scenegraph_definition.hero_progress_anchor.position[1] + 100, scenegraph_definition.hero_progress_anchor.position[1], anim_progress)
			end,
			on_complete = function (ui_scenegraph, scenegraph_definition, widgets, params)
				return
			end
		},
		{
			name = "animate_experience_gained",
			start_progress = 0.3,
			end_progress = 0.6,
			init = function (ui_scenegraph, scenegraph_definition, widgets, params)
				return
			end,
			update = function (ui_scenegraph, scenegraph_definition, widgets, progress, params)
				local anim_progress = math.easeOutCubic(progress)

				ui_scenegraph.experience_gained.position[1] = math.lerp(scenegraph_definition.experience_gained.position[1] - 50, scenegraph_definition.experience_gained.position[1], anim_progress)

				local widget = widgets.experience_gained_text
				local widget_style = widget.style

				widget_style.text.text_color[1] = 255 * anim_progress
			end,
			on_complete = function (ui_scenegraph, scenegraph_definition, widgets, params)
				return
			end
		}
	},
	animate_hero_progress_forced = {
		{
			name = "animate_in",
			start_progress = 0,
			end_progress = 0.3,
			init = function (ui_scenegraph, scenegraph_definition, widgets, params)
				params.render_settings.hero_progress_alpha_multiplier = 0

				local widget = widgets.experience_gained_text
				local widget_style = widget.style

				widget_style.text.text_color[1] = 255
			end,
			update = function (ui_scenegraph, scenegraph_definition, widgets, progress, params)
				local anim_progress = math.easeOutCubic(progress)

				params.render_settings.hero_progress_alpha_multiplier = anim_progress
				ui_scenegraph.hero_progress_anchor.position[1] = math.lerp(scenegraph_definition.hero_progress_anchor.position[1] + 100, scenegraph_definition.hero_progress_anchor.position[1], anim_progress)
			end,
			on_complete = function (ui_scenegraph, scenegraph_definition, widgets, params)
				return
			end
		}
	},
	animate_challenge_progress = {
		{
			name = "animate_in",
			start_progress = 0,
			end_progress = 0.3,
			init = function (ui_scenegraph, scenegraph_definition, widgets, params)
				params.render_settings.challenge_alpha_multiplier = 0
			end,
			update = function (ui_scenegraph, scenegraph_definition, widgets, progress, params)
				local anim_progress = math.easeOutCubic(progress)

				params.render_settings.challenge_alpha_multiplier = anim_progress
				ui_scenegraph.challenge_progress_anchor.position[1] = math.lerp(scenegraph_definition.challenge_progress_anchor.position[1] + 100, scenegraph_definition.challenge_progress_anchor.position[1], anim_progress)
			end,
			on_complete = function (ui_scenegraph, scenegraph_definition, widgets, params)
				return
			end
		}
	},
	animate_challenge_entry = {
		{
			name = "challenge_entry",
			start_progress = 0,
			end_progress = 0.5,
			init = function (ui_scenegraph, scenegraph_definition, widgets, params)
				local data = params.data
				local entry_name = data.entry_name
				local widget = widgets[entry_name]

				widget.base_offset = widget.offset[1]
			end,
			update = function (ui_scenegraph, scenegraph_definition, widgets, progress, params)
				local anim_progress = math.easeOutCubic(progress)
				local data = params.data
				local entry_name = data.entry_name
				local widget = widgets[entry_name]

				widget.offset[1] = math.lerp(widget.base_offset + 50, widget.base_offset, anim_progress)
				widget.content.alpha_multiplier = anim_progress
			end,
			on_complete = function (ui_scenegraph, scenegraph_definition, widgets, params)
				return
			end
		}
	},
	wait = {
		{
			name = "challenge_entry",
			start_progress = 0,
			end_progress = 0.1,
			init = function (ui_scenegraph, scenegraph_definition, widgets, params)
				return
			end,
			update = function (ui_scenegraph, scenegraph_definition, widgets, progress, params)
				return
			end,
			on_complete = function (ui_scenegraph, scenegraph_definition, widgets, params)
				return
			end
		}
	}
}

return {
	scenegraph_definition = scenegraph_definition,
	widget_definitions = widget_definitions,
	challenge_widget_definitions = challenge_widget_definitions,
	hero_progress_widget_definitions = hero_progress_widget_definitions,
	animation_definitions = animation_definitions,
	challenge_progress_text_string = challenge_progress_text_string,
	hero_progress_text_string = hero_progress_text_string,
	summary_value_string = summary_value_string,
	create_summery_entry_func = create_summery_entry,
	bar_thresholds = bar_thresholds,
	create_item_widget_func = create_item_widget,
	create_challenge_entry_func = create_challenge_entry
}
