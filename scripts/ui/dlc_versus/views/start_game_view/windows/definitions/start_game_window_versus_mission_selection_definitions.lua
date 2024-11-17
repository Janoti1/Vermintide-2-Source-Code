local window_default_settings = UISettings.game_start_windows
local window_frame = window_default_settings.frame
local window_size = window_default_settings.size
local large_window_size = {
	window_size[1] * 3 - 76,
	window_size[2]
}
local window_frame_width = UIFrameSettings[window_frame].texture_sizes.vertical[1]
local window_text_width = window_size[1] - (window_frame_width * 2 + 60)
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
			UILayer.default
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
			UILayer.default
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
		size = large_window_size,
		position = {
			0,
			0,
			1
		}
	},
	info_window = {
		vertical_alignment = "top",
		parent = "window",
		horizontal_alignment = "right",
		size = {
			window_size[1],
			window_size[2]
		},
		position = {
			0,
			0,
			1
		}
	},
	background = {
		vertical_alignment = "top",
		parent = "window",
		horizontal_alignment = "right",
		size = {
			window_size[1],
			window_size[2]
		},
		position = {
			0,
			0,
			0
		}
	},
	mask = {
		vertical_alignment = "top",
		parent = "window",
		horizontal_alignment = "left",
		size = {
			660,
			window_size[2] + 10
		},
		position = {
			-30,
			10,
			0
		}
	},
	level_image = {
		vertical_alignment = "top",
		parent = "background",
		horizontal_alignment = "center",
		size = {
			194,
			116
		},
		position = {
			-500,
			-30,
			1
		}
	},
	grid_anchor = {
		vertical_alignment = "top",
		parent = "window",
		horizontal_alignment = "left",
		position = {
			0,
			0,
			0
		},
		size = {
			1920,
			1080
		}
	},
	scroller = {
		vertical_alignment = "top",
		parent = "window",
		horizontal_alignment = "left",
		position = {
			-40,
			10,
			0
		},
		size = {
			20,
			window_size[2] + 10
		}
	},
	description_text = {
		vertical_alignment = "bottom",
		parent = "info_window",
		horizontal_alignment = "center",
		size = {
			window_text_width,
			window_size[2] / 2
		},
		position = {
			0,
			0,
			1
		}
	},
	locked_text = {
		vertical_alignment = "top",
		parent = "info_window",
		horizontal_alignment = "center",
		size = {
			window_text_width,
			100
		},
		position = {
			0,
			-20,
			1
		}
	},
	level_texture_frame = {
		vertical_alignment = "top",
		parent = "info_window",
		horizontal_alignment = "center",
		size = {
			180,
			180
		},
		position = {
			0,
			-80,
			2
		}
	},
	level_texture = {
		vertical_alignment = "center",
		parent = "level_texture_frame",
		horizontal_alignment = "center",
		size = {
			168,
			168
		},
		position = {
			0,
			0,
			-1
		}
	},
	level_texture_lock = {
		vertical_alignment = "center",
		parent = "level_texture_frame",
		horizontal_alignment = "center",
		size = {
			146,
			146
		},
		position = {
			0,
			0,
			1
		}
	},
	level_title_divider = {
		vertical_alignment = "bottom",
		parent = "level_texture_frame",
		horizontal_alignment = "center",
		size = {
			264,
			32
		},
		position = {
			0,
			-90,
			1
		}
	},
	level_title = {
		vertical_alignment = "bottom",
		parent = "level_title_divider",
		horizontal_alignment = "center",
		size = {
			window_text_width,
			50
		},
		position = {
			0,
			20,
			1
		}
	},
	helper_text = {
		vertical_alignment = "bottom",
		parent = "level_title_divider",
		horizontal_alignment = "center",
		size = {
			window_text_width,
			50
		},
		position = {
			0,
			-50,
			1
		}
	}
}
local grid_settings = {
	margin = 20,
	columns = 4,
	area_spacing = {
		0,
		-40,
		0
	},
	act_spacing = {
		5,
		-33,
		1
	},
	level_spacing = {
		137.5,
		-87.5,
		0
	},
	level_size = {
		121.25,
		72.5
	},
	section_spacing = {
		0,
		-60,
		0
	}
}
local description_text_style = {
	font_size = 24,
	use_shadow = true,
	localize = false,
	dynamic_font_size_word_wrap = true,
	word_wrap = true,
	horizontal_alignment = "center",
	vertical_alignment = "top",
	font_type = "hell_shark",
	text_color = Colors.get_color_table_with_alpha("font_default", 255),
	offset = {
		0,
		0,
		2
	}
}
local level_text_style = {
	font_size = 36,
	upper_case = true,
	localize = false,
	use_shadow = true,
	word_wrap = true,
	horizontal_alignment = "center",
	vertical_alignment = "bottom",
	dynamic_font_size = true,
	font_type = "hell_shark_header",
	text_color = Colors.get_color_table_with_alpha("font_title", 255),
	offset = {
		0,
		0,
		2
	}
}
local helper_text_style = {
	font_size = 36,
	upper_case = true,
	localize = false,
	use_shadow = true,
	word_wrap = true,
	horizontal_alignment = "center",
	vertical_alignment = "top",
	font_type = "hell_shark_header",
	text_color = Colors.get_color_table_with_alpha("font_default", 255),
	offset = {
		0,
		0,
		2
	}
}
local locked_level_text_style = {
	font_size = 28,
	upper_case = true,
	localize = false,
	word_wrap = true,
	horizontal_alignment = "center",
	use_shadow = true,
	vertical_alignment = "top",
	font_type = "hell_shark",
	text_color = Colors.get_color_table_with_alpha("red", 255),
	offset = {
		0,
		0,
		0
	}
}
local animation_definitions = {
	on_enter = {
		{
			name = "fade_in",
			start_progress = 0,
			end_progress = 0.3,
			init = function (ui_scenegraph, scenegraph_def, widgets, params)
				params.render_settings.alpha_multiplier = 0
			end,
			update = function (ui_scenegraph, scenegraph_def, widgets, progress, params)
				local anim_progress = math.easeOutCubic(progress)

				params.render_settings.alpha_multiplier = anim_progress
			end,
			on_complete = function (ui_scenegraph, scenegraph_def, widgets, params)
				return
			end
		},
		{
			name = "animate_in_window",
			start_progress = 0,
			end_progress = 0.3,
			init = function (ui_scenegraph, scenegraph_def, widgets, params)
				return
			end,
			update = function (ui_scenegraph, scenegraph_def, widgets, progress, params)
				local anim_progress = math.easeOutCubic(progress)

				ui_scenegraph.window.local_position[1] = scenegraph_def.window.position[1] + math.floor(-100 * (1 - anim_progress))
				ui_scenegraph.info_window.local_position[1] = scenegraph_def.info_window.position[1] + math.floor(-80 * (1 - anim_progress))
			end,
			on_complete = function (ui_scenegraph, scenegraph_def, widgets, params)
				return
			end
		}
	},
	on_exit = {
		{
			name = "fade_out",
			start_progress = 0,
			end_progress = 0.3,
			init = function (ui_scenegraph, scenegraph_def, widgets, params)
				params.render_settings.alpha_multiplier = 1
			end,
			update = function (ui_scenegraph, scenegraph_def, widgets, progress, params)
				params.render_settings.alpha_multiplier = 1
			end,
			on_complete = function (ui_scenegraph, scenegraph_def, widgets, params)
				return
			end
		}
	}
}

local function create_area_entry(area_data, offset)
	local frame_settings = UIFrameSettings.frame_outer_fade_02
	local edge_height = frame_settings.texture_sizes.horizontal[2]
	local widget = {
		scenegraph_id = "grid_anchor",
		element = {
			passes = {
				{
					style_id = "text_id",
					pass_type = "text",
					text_id = "text_id"
				},
				{
					style_id = "text_id_shadow",
					pass_type = "text",
					text_id = "text_id"
				},
				{
					pass_type = "texture",
					style_id = "background",
					texture_id = "background_id"
				},
				{
					pass_type = "texture_frame",
					style_id = "frame",
					texture_id = "frame"
				}
			}
		},
		content = {
			background_id = "rect_masked",
			text_id = area_data.area_display_name,
			frame = frame_settings.texture
		},
		style = {
			text_id = {
				word_wrap = false,
				upper_case = true,
				localize = true,
				font_size = 28,
				horizontal_alignment = "left",
				vertical_alignment = "top",
				font_type = "hell_shark_masked",
				text_color = Colors.get_color_table_with_alpha("font_title", 255),
				offset = {
					10,
					-10,
					2
				}
			},
			text_id_shadow = {
				word_wrap = false,
				upper_case = true,
				localize = true,
				font_size = 28,
				horizontal_alignment = "left",
				vertical_alignment = "top",
				font_type = "hell_shark_masked",
				text_color = Colors.get_color_table_with_alpha("black", 255),
				offset = {
					12,
					-12,
					1
				}
			},
			background = {
				vertical_alignment = "top",
				horizontal_alignment = "left",
				color = {
					160,
					0,
					0,
					0
				},
				texture_size = {
					grid_settings.level_spacing[1] * grid_settings.columns + grid_settings.margin * 2,
					0
				},
				offset = {
					0,
					0,
					0
				}
			},
			frame = {
				horizontal_alignment = "left",
				masked = true,
				vertical_alignment = "top",
				color = {
					160,
					0,
					0,
					0
				},
				edge_height = edge_height,
				area_size = {
					grid_settings.level_spacing[1] * grid_settings.columns + grid_settings.margin * 2 + edge_height * 2,
					200
				},
				texture_size = frame_settings.texture_size,
				texture_sizes = frame_settings.texture_sizes,
				offset = {
					-edge_height,
					edge_height,
					0
				}
			}
		},
		offset = offset
	}

	return widget
end

local function create_act_entry(act_name, offset)
	local widget = {
		scenegraph_id = "grid_anchor",
		element = {
			passes = {
				{
					style_id = "text_id",
					pass_type = "text",
					text_id = "text_id"
				},
				{
					pass_type = "texture",
					style_id = "background",
					texture_id = "background_id"
				}
			}
		},
		content = {
			background_id = "rect_masked",
			text_id = act_name
		},
		style = {
			text_id = {
				word_wrap = false,
				upper_case = true,
				localize = true,
				font_size = 20,
				horizontal_alignment = "left",
				vertical_alignment = "top",
				font_type = "hell_shark_masked",
				text_color = {
					255,
					255,
					255,
					255
				},
				offset = {
					10,
					-10,
					1
				}
			},
			background = {
				vertical_alignment = "top",
				horizontal_alignment = "left",
				color = UISettings.console_start_game_menu_rect_color,
				texture_size = {
					grid_settings.level_spacing[1] * grid_settings.columns + 5,
					25
				},
				offset = {
					0,
					-10,
					0
				}
			}
		},
		offset = offset
	}

	return widget
end

local function create_level_entry(level_settings, offset, selected_index, my_index, is_disabled, disabled_reason, preferred_levels)
	local fallback_image = "icons_placeholder"
	local texture_name = LevelHelper:get_small_level_image(level_settings.level_id)
	local texture_settings = UIAtlasHelper.has_texture_by_name(texture_name) and UIAtlasHelper.get_atlas_settings_by_texture_name(texture_name) or UIAtlasHelper.get_atlas_settings_by_texture_name(fallback_image)
	local frame_settings = UIFrameSettings.frame_outer_glow_01
	local edge_height = frame_settings.texture_sizes.horizontal[2]
	local box_size = math.min(grid_settings.level_size[1], grid_settings.level_size[2])
	local widget = {
		scenegraph_id = "grid_anchor",
		element = {
			passes = {
				{
					style_id = "button_hotspot",
					pass_type = "hotspot",
					content_id = "button_hotspot"
				},
				{
					texture_id = "texture_id",
					style_id = "texture_id",
					pass_type = "texture"
				},
				{
					style_id = "frame",
					texture_id = "frame",
					pass_type = "texture_frame",
					content_check_function = function (content, style)
						return content.index[1] == content.selected_index[1] and content.index[2] == content.selected_index[2]
					end,
					content_change_function = function (content, style)
						local time = Managers.time:time("game")

						style.color[1] = 192 + math.sin(time * 6) * 63
					end
				},
				{
					texture_id = "gold_lock",
					style_id = "gold_lock",
					pass_type = "texture",
					content_check_function = function (content)
						return content.show_gold_lock
					end
				},
				{
					texture_id = "forbidden",
					style_id = "forbidden",
					pass_type = "texture",
					content_check_function = function (content)
						return content.show_forbidden
					end
				}
			}
		},
		content = {
			gold_lock = "hero_icon_locked_gold",
			forbidden = "hero_icon_unavailable",
			selection_id = "rect_masked",
			fade_id = "text_gradient",
			button_hotspot = {
				disable_button = is_disabled
			},
			texture_id = texture_settings.texture_name,
			level_settings = level_settings,
			index = my_index,
			selected_index = selected_index,
			frame = frame_settings.texture,
			is_disabled = is_disabled,
			show_gold_lock = is_disabled and disabled_reason == "dlc",
			show_forbidden = is_disabled and disabled_reason ~= "dlc"
		},
		style = {
			button_hotspot = {
				vertical_alignment = "top",
				horizontal_alignment = "left",
				area_size = grid_settings.level_size,
				offset = {
					10,
					-10,
					2
				}
			},
			texture_id = {
				vertical_alignment = "top",
				masked = true,
				horizontal_alignment = "left",
				color = {
					255,
					255,
					255,
					255
				},
				texture_size = grid_settings.level_size,
				saturated = is_disabled,
				offset = {
					10,
					-10,
					2
				}
			},
			frame = {
				horizontal_alignment = "left",
				masked = true,
				vertical_alignment = "top",
				color = {
					255,
					255,
					255,
					255
				},
				edge_height = edge_height,
				area_size = {
					math.ceil(grid_settings.level_size[1] + edge_height * 2),
					grid_settings.level_size[2] + edge_height * 2
				},
				texture_size = frame_settings.texture_size,
				texture_sizes = frame_settings.texture_sizes,
				offset = {
					-4,
					4,
					4
				}
			},
			gold_lock = {
				vertical_alignment = "top",
				horizontal_alignment = "left",
				offset = {
					38,
					-10,
					4
				},
				texture_size = {
					box_size * 0.8735632183908046,
					box_size
				}
			},
			forbidden = {
				vertical_alignment = "top",
				horizontal_alignment = "left",
				offset = {
					35,
					-10,
					4
				},
				texture_size = {
					box_size,
					box_size
				}
			}
		},
		offset = offset
	}

	return widget
end

local function create_level_widget(i, specific_scenegraph_id)
	local scenegraph_id = specific_scenegraph_id
	local size = {
		180,
		180
	}

	if not scenegraph_id then
		scenegraph_id = "level_root_" .. i
		scenegraph_definition[scenegraph_id] = {
			vertical_alignment = "center",
			parent = "level_root_node",
			horizontal_alignment = "center",
			size = size,
			position = {
				0,
				0,
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
			content_id = "button_hotspot",
			content_check_function = function (content)
				return not content.parent.locked
			end
		},
		{
			style_id = "icon",
			pass_type = "level_tooltip",
			level_id = "level_data",
			content_check_function = function (content)
				return content.button_hotspot.is_hover
			end
		},
		{
			pass_type = "texture",
			style_id = "icon_glow",
			texture_id = "icon_glow"
		},
		{
			pass_type = "texture",
			style_id = "icon_unlock_guidance_glow",
			texture_id = "icon_unlock_guidance_glow"
		},
		{
			pass_type = "texture",
			style_id = "icon",
			texture_id = "icon",
			content_check_function = function (content)
				return not content.locked
			end
		},
		{
			pass_type = "texture",
			style_id = "icon_locked",
			texture_id = "icon",
			content_check_function = function (content)
				return content.locked
			end
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
			style_id = "lock_fade",
			texture_id = "lock_fade",
			content_check_function = function (content)
				return content.locked
			end
		},
		{
			pass_type = "texture",
			style_id = "frame",
			texture_id = "frame"
		},
		{
			pass_type = "texture",
			style_id = "glass",
			texture_id = "glass"
		},
		{
			pass_type = "texture",
			style_id = "boss_icon",
			texture_id = "boss_icon",
			content_check_function = function (content)
				return content.boss_level
			end
		}
	}
	local content = {
		lock = "map_frame_lock",
		locked = true,
		lock_fade = "map_frame_fade",
		draw_path = false,
		frame = "map_frame_00",
		draw_path_fill = false,
		icon_unlock_guidance_glow = "map_frame_glow_03",
		boss_level = true,
		glass = "act_presentation_fg_glass",
		boss_icon = "boss_icon",
		icon = "level_icon_01",
		icon_glow = "map_frame_glow_02",
		button_hotspot = {}
	}
	local style = {
		glass = {
			vertical_alignment = "center",
			horizontal_alignment = "center",
			texture_size = {
				216,
				216
			},
			offset = {
				0,
				0,
				7
			},
			color = {
				255,
				255,
				255,
				255
			}
		},
		frame = {
			vertical_alignment = "center",
			horizontal_alignment = "center",
			texture_size = {
				180,
				180
			},
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
				180,
				180
			},
			offset = {
				0,
				0,
				9
			},
			color = {
				255,
				255,
				255,
				255
			}
		},
		lock_fade = {
			vertical_alignment = "center",
			horizontal_alignment = "center",
			texture_size = {
				180,
				180
			},
			offset = {
				0,
				0,
				5
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
				168,
				168
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
				3
			}
		},
		icon_locked = {
			vertical_alignment = "center",
			saturated = true,
			horizontal_alignment = "center",
			texture_size = {
				168,
				168
			},
			color = {
				255,
				100,
				100,
				100
			},
			offset = {
				0,
				0,
				3
			}
		},
		icon_glow = {
			vertical_alignment = "center",
			horizontal_alignment = "center",
			texture_size = {
				270,
				270
			},
			offset = {
				0,
				0,
				4
			},
			color = {
				0,
				255,
				255,
				255
			}
		},
		icon_unlock_guidance_glow = {
			vertical_alignment = "center",
			horizontal_alignment = "center",
			texture_size = {
				180,
				180
			},
			offset = {
				0,
				0,
				7
			},
			color = {
				0,
				255,
				255,
				255
			}
		},
		boss_icon = {
			vertical_alignment = "center",
			horizontal_alignment = "center",
			texture_size = {
				68,
				68
			},
			offset = {
				0,
				-60,
				8
			},
			color = {
				255,
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

local function create_scroller(scenegraph_id)
	local widget = {
		element = {
			passes = {
				{
					pass_type = "rect",
					style_id = "background"
				},
				{
					pass_type = "rect",
					style_id = "inner_rect"
				},
				{
					pass_type = "rect",
					style_id = "scroller"
				}
			}
		},
		content = {},
		style = {
			background = {
				color = {
					255,
					5,
					5,
					5
				}
			},
			inner_rect = {
				vertical_alignment = "top",
				horizontal_alignment = "left",
				color = {
					255,
					15,
					15,
					15
				},
				offset = {
					3,
					-3,
					1
				},
				texture_size = {
					scenegraph_definition[scenegraph_id].size[1] - 6,
					scenegraph_definition[scenegraph_id].size[2] - 6
				}
			},
			scroller = {
				vertical_alignment = "top",
				horizontal_alignment = "left",
				color = {
					255,
					50,
					50,
					50
				},
				offset = {
					3,
					-3,
					2
				},
				texture_size = {
					scenegraph_definition[scenegraph_id].size[1] - 6,
					94
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

	return widget
end

local widget_functions = {
	create_area_entry = create_area_entry,
	create_act_entry = create_act_entry,
	create_level_entry = create_level_entry
}
local widgets = {
	background = UIWidgets.create_rect_with_outer_frame("background", scenegraph_definition.background.size, "frame_outer_fade_02", nil, UISettings.console_start_game_menu_rect_color),
	mask = UIWidgets.create_simple_texture("mask_rect", "mask"),
	scroller = create_scroller("scroller"),
	level_title = UIWidgets.create_simple_text("", "level_title", nil, nil, level_text_style),
	selected_level = create_level_widget(nil, "level_texture_frame"),
	level_title_divider = UIWidgets.create_simple_texture("divider_01_top", "level_title_divider"),
	description_text = UIWidgets.create_simple_text("", "description_text", nil, nil, description_text_style),
	helper_text = UIWidgets.create_simple_text(Localize("tutorial_map"), "helper_text", nil, nil, helper_text_style),
	description_background = UIWidgets.create_rect_with_outer_frame("info_window", scenegraph_definition.info_window.size, "frame_outer_fade_02", nil, UISettings.console_start_game_menu_rect_color),
	locked_text = UIWidgets.create_simple_text("", "locked_text", nil, nil, locked_level_text_style)
}

return {
	widgets = widgets,
	widget_functions = widget_functions,
	grid_settings = grid_settings,
	scenegraph_definition = scenegraph_definition,
	animation_definitions = animation_definitions
}
