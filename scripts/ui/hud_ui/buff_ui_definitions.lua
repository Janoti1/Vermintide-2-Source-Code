local SIZE_X, SIZE_Y = 1920, 1080
local RETAINED_MODE_ENABLED = true
local scenegraph_definition = {
	root = {
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
	pivot_root = {
		vertical_alignment = "bottom",
		parent = "root",
		horizontal_alignment = "left",
		position = {
			150,
			18,
			1
		},
		size = {
			0,
			0
		}
	},
	pivot_parent = {
		vertical_alignment = "bottom",
		parent = "pivot_root",
		horizontal_alignment = "left",
		position = {
			UISettings.INSIGNIA_OFFSET,
			0,
			0
		},
		size = {
			0,
			0
		}
	},
	pivot = {
		vertical_alignment = "bottom",
		parent = "pivot_parent",
		horizontal_alignment = "left",
		position = {
			0,
			0,
			0
		},
		size = {
			0,
			0
		}
	},
	pivot_dragger = {
		vertical_alignment = "bottom",
		parent = "pivot",
		horizontal_alignment = "left",
		position = {
			0,
			0,
			0
		},
		size = {
			362,
			214
		}
	},
	buff_pivot = {
		vertical_alignment = "center",
		parent = "pivot",
		horizontal_alignment = "center",
		position = {
			0,
			0,
			1
		},
		size = {
			0,
			0
		}
	}
}

if not IS_WINDOWS then
	scenegraph_definition.root.scale = "hud_fit"
	scenegraph_definition.root.is_root = false
end

local BUFF_SIZE = {
	66,
	66
}
local BUFF_SPACING = 8
local buff_widget_definition = {
	scenegraph_id = "buff_pivot",
	element = {
		passes = {
			{
				pass_type = "texture",
				style_id = "texture_icon_bg",
				texture_id = "texture_icon",
				retained_mode = RETAINED_MODE_ENABLED
			},
			{
				pass_type = "texture",
				style_id = "texture_icon",
				texture_id = "texture_icon",
				retained_mode = RETAINED_MODE_ENABLED,
				content_check_function = function (content)
					return content.is_cooldown
				end
			},
			{
				style_id = "icon_mask",
				texture_id = "icon_mask",
				pass_type = "texture",
				retained_mode = RETAINED_MODE_ENABLED,
				content_change_function = function (content, style, _, dt)
					style.color[1] = 255 * (1 - content.progress)
				end
			},
			{
				pass_type = "texture",
				style_id = "texture_frame",
				texture_id = "texture_frame",
				retained_mode = RETAINED_MODE_ENABLED
			},
			{
				style_id = "stack_count",
				pass_type = "text",
				text_id = "stack_count",
				retained_mode = RETAINED_MODE_ENABLED,
				content_check_function = function (content)
					return content.stack_count > 1
				end
			},
			{
				style_id = "stack_count_shadow",
				pass_type = "text",
				text_id = "stack_count",
				retained_mode = RETAINED_MODE_ENABLED,
				content_check_function = function (content)
					return content.stack_count > 1
				end
			},
			{
				style_id = "texture_cooldown",
				texture_id = "texture_cooldown",
				pass_type = "gradient_mask_texture",
				retained_mode = RETAINED_MODE_ENABLED,
				content_check_function = function (content)
					return content.is_cooldown
				end,
				content_change_function = function (content, style, _, dt)
					style.color[1] = 255 * (1 - content.progress)
				end
			},
			{
				style_id = "texture_duration",
				texture_id = "texture_duration",
				pass_type = "gradient_mask_texture",
				retained_mode = RETAINED_MODE_ENABLED,
				content_check_function = function (content)
					return not content.is_cooldown
				end,
				content_change_function = function (content, style, _, dt)
					style.color[1] = 255 * (1 - content.progress)
				end
			}
		}
	},
	content = {
		set_unsaturated = false,
		is_cooldown = false,
		texture_cooldown = "buff_cooldown_gradient",
		progress = 0,
		texture_frame = "buff_frame",
		stack_count = 1,
		texture_icon = "teammate_consumable_icon_medpack",
		last_stack_count = 1,
		texture_duration = "buff_duration_gradient",
		gris = "rect_masked",
		icon_mask = "buff_gradient_mask"
	},
	style = {
		texture_icon_bg = {
			saturated = false,
			size = {
				60,
				60
			},
			color = {
				255,
				255,
				255,
				255
			},
			offset = {
				3,
				3,
				1
			}
		},
		texture_icon = {
			saturated = false,
			masked = true,
			size = {
				60,
				60
			},
			color = {
				255,
				100,
				100,
				100
			},
			offset = {
				3,
				3,
				2
			}
		},
		icon_mask = {
			size = {
				60,
				60
			},
			color = {
				255,
				255,
				255,
				255
			},
			offset = {
				3,
				3,
				2
			}
		},
		texture_cooldown = {
			size = {
				60,
				60
			},
			color = {
				255,
				255,
				255,
				255
			},
			offset = {
				3,
				3,
				3
			}
		},
		texture_frame = {
			size = BUFF_SIZE,
			color = {
				255,
				255,
				255,
				255
			},
			offset = {
				0,
				0,
				4
			}
		},
		texture_duration = {
			size = {
				70,
				70
			},
			color = {
				150,
				255,
				255,
				255
			},
			offset = {
				-2,
				-2,
				5
			}
		},
		stack_count = {
			word_wrap = true,
			upper_case = true,
			localize = false,
			font_size = 26,
			horizontal_alignment = "right",
			vertical_alignment = "bottom",
			font_type = "hell_shark",
			size = {
				60,
				60
			},
			offset = {
				-2,
				2,
				9
			},
			text_color = Colors.get_color_table_with_alpha("white", 255)
		},
		stack_count_shadow = {
			word_wrap = true,
			upper_case = true,
			localize = false,
			font_size = 26,
			horizontal_alignment = "right",
			vertical_alignment = "bottom",
			font_type = "hell_shark",
			size = {
				60,
				60
			},
			offset = {
				0,
				0,
				8
			},
			text_color = Colors.get_color_table_with_alpha("black", 255)
		}
	},
	offset = {
		0,
		0,
		0
	}
}
local MAX_BUFF_ROWS, MAX_BUFF_COLUMNS = 3, 5
local MAX_NUMBER_OF_BUFFS = MAX_BUFF_ROWS * MAX_BUFF_COLUMNS

return {
	BUFF_SIZE = BUFF_SIZE,
	BUFF_SPACING = BUFF_SPACING,
	MAX_NUMBER_OF_BUFFS = MAX_NUMBER_OF_BUFFS,
	MAX_BUFF_ROWS = MAX_BUFF_ROWS,
	MAX_BUFF_COLUMNS = MAX_BUFF_COLUMNS,
	scenegraph_definition = scenegraph_definition,
	buff_widget_definition = buff_widget_definition
}
