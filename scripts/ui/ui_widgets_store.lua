require("scripts/settings/ui_frame_settings")
require("scripts/settings/ui_player_portrait_frame_settings")

UIWidgets = UIWidgets or {}

UIWidgets.create_store_category_entry_definition = function (scenegraph_id, size, masked)
	local frame_name = "button_frame_02_gold"
	local frame_settings = UIFrameSettings[frame_name]
	local frame_spacing = frame_settings.texture_sizes.horizontal[2]
	local hover_frame_name = "frame_outer_glow_04"
	local hover_frame_settings = UIFrameSettings[hover_frame_name]
	local hover_frame_spacing = hover_frame_settings.texture_sizes.horizontal[2]
	local pulse_frame_name = "frame_outer_glow_04_big"
	local pulse_frame_settings = UIFrameSettings[pulse_frame_name]
	local pulse_frame_spacing = pulse_frame_settings.texture_sizes.horizontal[2]
	local widget = {
		element = {}
	}
	local passes = {
		{
			style_id = "hotspot",
			pass_type = "hotspot",
			content_id = "hotspot"
		},
		{
			pass_type = "tiled_texture",
			style_id = "background",
			texture_id = "background"
		},
		{
			pass_type = "texture",
			style_id = "background_fade",
			texture_id = "background_fade"
		},
		{
			pass_type = "texture_frame",
			style_id = "frame",
			texture_id = "frame"
		},
		{
			pass_type = "texture_frame",
			style_id = "hover_frame",
			texture_id = "hover_frame"
		},
		{
			pass_type = "texture_frame",
			style_id = "pulse_frame",
			texture_id = "pulse_frame"
		},
		{
			style_id = "title",
			pass_type = "text",
			text_id = "title"
		},
		{
			style_id = "title_shadow",
			pass_type = "text",
			text_id = "title"
		},
		{
			pass_type = "texture",
			style_id = "category_texture",
			texture_id = "category_texture",
			content_check_function = function (content)
				return content.category_texture
			end
		}
	}
	local content = {
		title = "n/a",
		background_fade = "options_window_fade_01",
		background = "menu_frame_bg_03",
		category_texture = "store_category_icon_hats",
		hotspot = {},
		hover_frame = hover_frame_settings.texture,
		pulse_frame = pulse_frame_settings.texture,
		frame = frame_settings.texture,
		size = size
	}
	local style = {
		hotspot = {
			size = size,
			offset = {
				0,
				0,
				0
			}
		},
		background = {
			vertical_alignment = "bottom",
			horizontal_alignment = "left",
			masked = masked,
			color = {
				255,
				100,
				100,
				100
			},
			texture_tiling_size = {
				256,
				256
			},
			texture_size = size,
			offset = {
				0,
				0,
				0
			}
		},
		background_fade = {
			vertical_alignment = "bottom",
			horizontal_alignment = "left",
			masked = masked,
			texture_size = {
				size[1] - frame_spacing * 2,
				size[2] - frame_spacing * 2
			},
			color = {
				255,
				255,
				255,
				255
			},
			offset = {
				frame_spacing,
				frame_spacing,
				1
			}
		},
		frame = {
			horizontal_alignment = "left",
			vertical_alignment = "bottom",
			masked = masked,
			area_size = size,
			texture_size = frame_settings.texture_size,
			texture_sizes = frame_settings.texture_sizes,
			frame_margins = {
				0,
				0
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
				5
			}
		},
		hover_frame = {
			horizontal_alignment = "left",
			vertical_alignment = "bottom",
			masked = masked,
			area_size = size,
			texture_size = hover_frame_settings.texture_size,
			texture_sizes = hover_frame_settings.texture_sizes,
			frame_margins = {
				-hover_frame_spacing,
				-hover_frame_spacing
			},
			color = {
				0,
				255,
				255,
				255
			},
			offset = {
				0,
				0,
				6
			}
		},
		pulse_frame = {
			horizontal_alignment = "left",
			vertical_alignment = "bottom",
			masked = masked,
			area_size = size,
			texture_size = pulse_frame_settings.texture_size,
			texture_sizes = pulse_frame_settings.texture_sizes,
			frame_margins = {
				-pulse_frame_spacing,
				-pulse_frame_spacing
			},
			color = {
				0,
				255,
				255,
				255
			},
			offset = {
				0,
				0,
				12
			}
		},
		category_texture = {
			vertical_alignment = "bottom",
			horizontal_alignment = "right",
			masked = masked,
			size = {
				size[1],
				size[2]
			},
			texture_size = {
				258,
				80
			},
			color = Colors.get_color_table_with_alpha("white", 255),
			offset = {
				0,
				0,
				3
			}
		},
		title = {
			word_wrap = true,
			upper_case = false,
			localize = false,
			font_size = 42,
			horizontal_alignment = "left",
			vertical_alignment = "center",
			dynamic_font_size = true,
			font_type = masked and "hell_shark_header_masked" or "hell_shark_header",
			text_color = Colors.get_color_table_with_alpha("font_button_normal", 255),
			default_text_color = Colors.get_color_table_with_alpha("font_button_normal", 255),
			select_text_color = Colors.get_color_table_with_alpha("white", 255),
			offset = {
				30,
				0,
				5
			},
			size = {
				size[1] - 40,
				size[2]
			}
		},
		title_shadow = {
			word_wrap = true,
			upper_case = false,
			localize = false,
			font_size = 42,
			horizontal_alignment = "left",
			vertical_alignment = "center",
			dynamic_font_size = true,
			font_type = masked and "hell_shark_header_masked" or "hell_shark_header",
			text_color = Colors.get_color_table_with_alpha("black", 255),
			normal_color = Colors.get_color_table_with_alpha("black", 255),
			offset = {
				32,
				-2,
				4
			},
			size = {
				size[1] - 40,
				size[2]
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

UIWidgets.create_store_collection_entry_definition = function (scenegraph_id, size, masked)
	local frame_name = "button_frame_02_gold"
	local frame_settings = UIFrameSettings[frame_name]
	local frame_spacing = frame_settings.texture_sizes.horizontal[2]
	local hover_frame_name = "frame_outer_glow_04"
	local hover_frame_settings = UIFrameSettings[hover_frame_name]
	local hover_frame_spacing = hover_frame_settings.texture_sizes.horizontal[2]
	local pulse_frame_name = "frame_outer_glow_04_big"
	local pulse_frame_settings = UIFrameSettings[pulse_frame_name]
	local pulse_frame_spacing = pulse_frame_settings.texture_sizes.horizontal[2]
	local widget = {
		element = {}
	}
	local passes = {
		{
			style_id = "hotspot",
			pass_type = "hotspot",
			content_id = "hotspot"
		},
		{
			pass_type = "tiled_texture",
			style_id = "background",
			texture_id = "background"
		},
		{
			pass_type = "texture",
			style_id = "background_fade",
			texture_id = "background_fade"
		},
		{
			pass_type = "texture_frame",
			style_id = "frame",
			texture_id = "frame"
		},
		{
			pass_type = "texture_frame",
			style_id = "hover_frame",
			texture_id = "hover_frame"
		},
		{
			pass_type = "texture_frame",
			style_id = "pulse_frame",
			texture_id = "pulse_frame"
		},
		{
			style_id = "title",
			pass_type = "text",
			text_id = "title"
		},
		{
			style_id = "title_shadow",
			pass_type = "text",
			text_id = "title"
		},
		{
			style_id = "category_texture",
			pass_type = "texture_uv",
			content_id = "category_texture",
			content_check_function = function (content)
				return content.texture_id
			end
		},
		{
			pass_type = "texture",
			style_id = "owned_icon",
			texture_id = "owned_icon",
			content_check_function = function (content)
				return content.owned
			end
		},
		{
			pass_type = "texture",
			style_id = "owned_icon_bg",
			texture_id = "owned_icon_bg",
			content_check_function = function (content)
				return content.owned
			end
		}
	}
	local content = {
		owned_icon_bg = "store_owned_ribbon",
		owned_icon = "store_owned_sigil",
		title = "n/a",
		background_fade = "options_window_fade_01",
		background = "menu_frame_bg_03",
		hotspot = {},
		hover_frame = hover_frame_settings.texture,
		pulse_frame = pulse_frame_settings.texture,
		frame = frame_settings.texture,
		category_texture = {
			texture_id = "icons_placeholder",
			uvs = {
				{
					0,
					size[2] / 220 * 0.5
				},
				{
					1,
					1 - size[2] / 220 * 0.5
				}
			}
		},
		size = size
	}
	local style = {
		hotspot = {
			size = size,
			offset = {
				0,
				0,
				0
			}
		},
		background = {
			vertical_alignment = "bottom",
			horizontal_alignment = "left",
			masked = masked,
			color = {
				255,
				100,
				100,
				100
			},
			texture_tiling_size = {
				256,
				256
			},
			texture_size = size,
			offset = {
				0,
				0,
				0
			}
		},
		background_fade = {
			vertical_alignment = "bottom",
			horizontal_alignment = "left",
			masked = masked,
			texture_size = {
				size[1] - frame_spacing * 2,
				size[2] - frame_spacing * 2
			},
			color = {
				255,
				255,
				255,
				255
			},
			offset = {
				frame_spacing,
				frame_spacing,
				1
			}
		},
		frame = {
			horizontal_alignment = "left",
			vertical_alignment = "bottom",
			masked = masked,
			area_size = size,
			texture_size = frame_settings.texture_size,
			texture_sizes = frame_settings.texture_sizes,
			frame_margins = {
				0,
				0
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
				5
			}
		},
		hover_frame = {
			horizontal_alignment = "left",
			vertical_alignment = "bottom",
			masked = masked,
			area_size = size,
			texture_size = hover_frame_settings.texture_size,
			texture_sizes = hover_frame_settings.texture_sizes,
			frame_margins = {
				-hover_frame_spacing,
				-hover_frame_spacing
			},
			color = {
				0,
				255,
				255,
				255
			},
			offset = {
				0,
				0,
				6
			}
		},
		pulse_frame = {
			horizontal_alignment = "left",
			vertical_alignment = "bottom",
			masked = masked,
			area_size = size,
			texture_size = pulse_frame_settings.texture_size,
			texture_sizes = pulse_frame_settings.texture_sizes,
			frame_margins = {
				-pulse_frame_spacing,
				-pulse_frame_spacing
			},
			color = {
				0,
				255,
				255,
				255
			},
			offset = {
				0,
				0,
				12
			}
		},
		category_texture = {
			vertical_alignment = "bottom",
			horizontal_alignment = "right",
			masked = masked,
			size = {
				size[1],
				size[2]
			},
			texture_size = {
				130,
				80
			},
			color = Colors.get_color_table_with_alpha("white", 255),
			offset = {
				0,
				0,
				3
			}
		},
		title = {
			word_wrap = false,
			upper_case = false,
			localize = false,
			font_size = 42,
			horizontal_alignment = "left",
			vertical_alignment = "center",
			dynamic_font_size = true,
			font_type = masked and "hell_shark_header_masked" or "hell_shark_header",
			text_color = Colors.get_color_table_with_alpha("font_button_normal", 255),
			default_text_color = Colors.get_color_table_with_alpha("font_button_normal", 255),
			select_text_color = Colors.get_color_table_with_alpha("white", 255),
			offset = {
				30,
				0,
				5
			},
			size = {
				size[1] - 170,
				size[2]
			}
		},
		title_shadow = {
			word_wrap = false,
			upper_case = false,
			localize = false,
			font_size = 42,
			horizontal_alignment = "left",
			vertical_alignment = "center",
			dynamic_font_size = true,
			font_type = masked and "hell_shark_header_masked" or "hell_shark_header",
			text_color = Colors.get_color_table_with_alpha("black", 255),
			normal_color = Colors.get_color_table_with_alpha("black", 255),
			offset = {
				32,
				-2,
				4
			},
			size = {
				size[1] - 170,
				size[2]
			}
		},
		owned_icon = {
			vertical_alignment = "bottom",
			horizontal_alignment = "left",
			masked = masked,
			texture_size = {
				53,
				53
			},
			default_texture_size = {
				53,
				53
			},
			color = {
				255,
				255,
				255,
				255
			},
			offset = {
				size[1] - 45,
				0,
				12
			}
		},
		owned_icon_bg = {
			vertical_alignment = "bottom",
			horizontal_alignment = "left",
			masked = masked,
			texture_size = {
				34,
				50
			},
			default_texture_size = {
				34,
				50
			},
			color = {
				255,
				255,
				255,
				255
			},
			offset = {
				size[1] - 35,
				-15,
				11
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

local dummy_table = {}

UIWidgets.create_store_item_definition = function (scenegraph_id, size, masked, product, settings)
	local frame_name = "menu_frame_16"
	local frame_settings = UIFrameSettings[frame_name]
	local hover_frame_name = "frame_outer_glow_04"
	local hover_frame_settings = UIFrameSettings[hover_frame_name]
	local hover_frame_spacing = hover_frame_settings.texture_sizes.horizontal[2]
	local pulse_frame_name = "frame_outer_glow_04_big"
	local pulse_frame_settings = UIFrameSettings[pulse_frame_name]
	local pulse_frame_spacing = pulse_frame_settings.texture_sizes.horizontal[2]
	local settings = settings or product.parent_settings or product.settings or dummy_table
	local dlc_settings = product.dlc_settings or dummy_table
	local icon_size = settings.icon_size
	local widget = {
		element = {}
	}
	local passes = {
		{
			style_id = "hotspot",
			pass_type = "hotspot",
			content_id = "hotspot"
		},
		{
			pass_type = "texture",
			style_id = "overlay",
			texture_id = "rect"
		},
		{
			pass_type = "texture",
			style_id = "background_rect",
			texture_id = "rect"
		},
		{
			pass_type = "texture",
			style_id = "background",
			texture_id = "background",
			content_check_function = function (content)
				return content.background
			end
		},
		{
			pass_type = "texture",
			style_id = "expire_time_icon",
			texture_id = "expire_time_icon",
			content_check_function = function (content)
				return content.discount
			end
		},
		{
			pass_type = "texture",
			style_id = "background_price",
			texture_id = "background_price",
			content_check_function = function (content)
				return not content.owned and (IS_WINDOWS or not content.real_currency) and not content.hide_price and not content.old_price
			end
		},
		{
			pass_type = "tiled_texture",
			style_id = "background_price_center",
			texture_id = "background_price_center",
			content_check_function = function (content)
				return not content.owned and (IS_WINDOWS or not content.real_currency) and not content.hide_price and not content.old_price
			end
		},
		{
			pass_type = "texture",
			style_id = "background_price_right",
			texture_id = "background_price_right",
			content_check_function = function (content)
				return not content.owned and (IS_WINDOWS or not content.real_currency) and not content.hide_price and not content.old_price
			end
		},
		{
			pass_type = "texture",
			style_id = "price_gradient",
			texture_id = "price_gradient",
			content_check_function = function (content)
				return not content.owned and (IS_WINDOWS or not content.real_currency) and not content.hide_price and content.old_price
			end
		},
		{
			texture_id = "price_strike_through",
			style_id = "price_strike_through",
			pass_type = "rotated_texture",
			content_check_function = function (content)
				return not content.owned and (IS_WINDOWS or not content.real_currency) and not content.hide_price and content.old_price and content.discount
			end
		},
		{
			pass_type = "texture",
			style_id = "price_icon",
			texture_id = "price_icon",
			content_check_function = function (content)
				return not content.owned and content.draw_price_icon
			end
		},
		{
			style_id = "optional_item_name",
			pass_type = "text",
			text_id = "optional_item_name",
			content_check_function = function (content)
				return content.optional_item_name ~= ""
			end
		},
		{
			style_id = "optional_subtitle",
			pass_type = "text",
			text_id = "optional_subtitle",
			content_check_function = function (content)
				return content.optional_item_name ~= ""
			end
		},
		{
			style_id = "price_text",
			pass_type = "text",
			text_id = "price_text",
			content_check_function = function (content)
				return not content.owned and (IS_WINDOWS or not content.real_currency) and not content.hide_price and not content.old_price
			end
		},
		{
			style_id = "price_text_now",
			pass_type = "text",
			text_id = "price_text_now",
			content_check_function = function (content)
				return not content.owned and (IS_WINDOWS or not content.real_currency) and not content.hide_price and content.old_price
			end
		},
		{
			style_id = "price_text_before",
			pass_type = "text",
			text_id = "price_text_before",
			content_check_function = function (content)
				return not content.owned and (IS_WINDOWS or not content.real_currency) and not content.hide_price and content.old_price and content.discount
			end
		},
		{
			pass_type = "texture",
			style_id = "owned_icon",
			texture_id = "owned_icon",
			content_check_function = function (content)
				return content.owned
			end
		},
		{
			pass_type = "texture",
			style_id = "owned_icon_bg",
			texture_id = "owned_icon_bg",
			content_check_function = function (content)
				return content.owned
			end
		},
		{
			pass_type = "texture",
			style_id = "discount_bg",
			texture_id = "discount_bg",
			content_check_function = function (content)
				return content.discount and not content.hide_price
			end
		},
		{
			pass_type = "multi_texture",
			style_id = "discont_number_icons",
			texture_id = "discont_number_icons",
			content_check_function = function (content)
				return content.discount and not content.hide_price
			end
		},
		{
			pass_type = "texture_frame",
			style_id = "frame",
			texture_id = "frame"
		},
		{
			pass_type = "texture_frame",
			style_id = "hover_frame",
			texture_id = "hover_frame"
		},
		{
			pass_type = "texture_frame",
			style_id = "pulse_frame",
			texture_id = "pulse_frame"
		},
		{
			style_id = "loading_icon",
			pass_type = "rotated_texture",
			texture_id = "loading_icon",
			content_check_function = function (content)
				return not content.icon
			end,
			content_change_function = function (content, style, _, dt)
				local progress = style.progress or 0

				progress = (progress + dt) % 1

				local angle = math.pow(2, math.smoothstep(progress, 0, 1)) * (math.pi * 2)

				style.angle = angle
				style.progress = progress
			end
		},
		{
			pass_type = "texture",
			style_id = "icon",
			texture_id = "icon",
			content_check_function = function (content)
				return content.icon and not content.rendering_loading_icon
			end
		},
		{
			style_id = "bundle_content_amount_text",
			pass_type = "text",
			text_id = "bundle_content_amount_text"
		},
		{
			pass_type = "texture",
			style_id = "type_tag_icon",
			texture_id = "type_tag_icon",
			content_check_function = function (content, style)
				return content.type_tag_icon
			end
		},
		{
			pass_type = "texture",
			style_id = "psplus_icon",
			texture_id = "psplus_icon",
			content_check_function = function (content)
				return content.show_ps4_plus and IS_PS4 and content.real_currency
			end
		},
		{
			pass_type = "texture",
			style_id = "console_background_rect_bottom",
			texture_id = "console_background_rect",
			content_check_function = function (content)
				return not IS_WINDOWS and content.real_currency
			end
		},
		{
			pass_type = "texture",
			style_id = "console_background_rect_top",
			texture_id = "console_background_rect",
			content_check_function = function (content)
				return not IS_WINDOWS and content.real_currency and content.console_secondary_price_text ~= ""
			end
		},
		{
			texture_id = "console_secondary_price_stroke",
			style_id = "console_secondary_price_stroke",
			pass_type = "texture",
			content_check_function = function (content)
				return content.show_secondary_stroke and not IS_WINDOWS and content.real_currency
			end
		},
		{
			texture_id = "console_third_price_stroke",
			style_id = "console_third_price_stroke",
			pass_type = "texture",
			content_check_function = function (content)
				return content.show_third_stroke and IS_PS4 and content.real_currency
			end
		},
		{
			style_id = "console_first_price_text",
			pass_type = "text",
			text_id = "console_first_price_text",
			content_check_function = function (content)
				return not IS_WINDOWS and content.real_currency
			end,
			content_change_function = function (content, style)
				style.text_color = content.show_ps4_plus and style.ps_plus_color or style.base_color
			end
		},
		{
			style_id = "console_secondary_price_text",
			pass_type = "text",
			text_id = "console_secondary_price_text",
			content_check_function = function (content)
				return content.console_secondary_price_text ~= "" and not IS_WINDOWS and content.real_currency
			end
		},
		{
			style_id = "console_third_price_text",
			pass_type = "text",
			text_id = "console_third_price_text",
			content_check_function = function (content)
				return content.console_third_price_text ~= "" and IS_PS4 and content.real_currency
			end
		},
		{
			style_id = "new_marker",
			pass_type = "texture",
			texture_id = "new_marker",
			content_check_function = function (content)
				if content.discount then
					return false
				end

				return not PlayerData.seen_shop_items[content.item_key] and not content.hide_new
			end,
			content_change_function = function (content, style)
				if not PlayerData.seen_shop_items[content.item_key] then
					local new_marker_progress = 0.5 + math.sin(Managers.time:time("ui") * 5) * 0.5

					style.color[1] = 100 + 155 * new_marker_progress
				end
			end
		},
		{
			style_id = "additional_content_added",
			pass_type = "text",
			text_id = "additional_content_added",
			content_check_function = function (content)
				return IS_CONSOLE and dlc_settings.additional_content_added and not content.owned
			end,
			content_change_function = function (content, style)
				local time = Application.time_since_launch()
				local progress = 0.5 + math.sin(time * 3) * 0.5

				style.text_color[2] = math.lerp(style.base_text_color[2], 225, progress)
				style.text_color[3] = math.lerp(style.base_text_color[3], 225, progress)
				style.text_color[4] = math.lerp(style.base_text_color[4], 225, progress)
			end
		},
		{
			style_id = "additional_content_added_shadow",
			pass_type = "text",
			text_id = "additional_content_added",
			content_check_function = function (content)
				return IS_CONSOLE and dlc_settings.additional_content_added and not content.owned
			end
		},
		{
			style_id = "additional_disclaimer",
			pass_type = "text",
			text_id = "additional_disclaimer",
			content_check_function = function (content, style)
				return content.has_disclamer
			end
		},
		{
			pass_type = "texture",
			style_id = "disclaimer_marker",
			texture_id = "disclaimer_marker",
			content_check_function = function (content, style)
				return content.has_disclamer
			end
		}
	}
	local content = {
		expire_time_icon = "icon_store_timer",
		old_price = false,
		price_strike_through = "shop_bundle_line",
		background_price_center = "store_thumbnail_pricetag_middle",
		optional_subtitle = "",
		psplus_icon = "psplus_logo",
		price_text_now = "-",
		bundle_content_amount_text = "",
		owned_icon = "store_owned_sigil",
		optional_item_name = "",
		price_icon = "store_icon_currency_ingame",
		price_text = "-",
		console_third_price_text = "",
		show_ps4_plus = false,
		price_text_before = "-",
		show_third_stroke = false,
		discount = false,
		loading_icon = "loot_loading",
		new_marker = "list_item_tag_new",
		show_secondary_stroke = false,
		additional_disclaimer = "",
		background_price = "store_thumbnail_pricetag_left",
		has_disclamer = false,
		price_gradient = "gradient",
		real_currency = false,
		owned = false,
		console_secondary_price_text = "",
		disclaimer_marker = "tooltip_marker_gold",
		owned_icon_bg = "store_owned_ribbon",
		background_price_right = "store_thumbnail_pricetag_right",
		discount_bg = "store_thumbnail_sale",
		console_first_price_text = "",
		hide_new = settings.hide_new,
		item_key = product.product_id,
		hotspot = {},
		hide_price = settings.hide_price,
		masked_price_strike_through = not settings.mask_price_strike_through_hack,
		draw_price_icon = not settings.hide_price,
		discont_number_icons = {},
		rect = masked and "rect_masked" or "simple_rect_texture",
		frame = frame_settings.texture,
		hover_frame = hover_frame_settings.texture,
		pulse_frame = pulse_frame_settings.texture,
		size = size,
		console_background_rect = masked and "rect_masked" or "simple_rect_texture",
		console_secondary_price_stroke = masked and "rect_masked" or "simple_rect_texture",
		console_third_price_stroke = masked and "rect_masked" or "simple_rect_texture",
		additional_content_added = Localize("title_screen_store_new_additional_content")
	}
	local style = {
		hotspot = {
			size = size,
			offset = {
				0,
				-size[2],
				0
			}
		},
		loading_icon = {
			vertical_alignment = "top",
			horizontal_alignment = "left",
			masked = true,
			angle = 0,
			pivot = {
				50,
				50
			},
			color = {
				255,
				255,
				255,
				255
			},
			offset = {
				size[1] * 0.5 - 50,
				-50,
				6
			},
			texture_size = {
				100,
				100
			}
		},
		price_text = {
			upper_case = false,
			localize = false,
			font_size = 28,
			horizontal_alignment = "left",
			vertical_alignment = "center",
			dynamic_font_size = false,
			size = {
				45,
				40
			},
			font_type = masked and "hell_shark_header_masked" or "hell_shark_header",
			text_color = Colors.get_color_table_with_alpha("black", 255),
			offset = {
				50,
				-(size[2] + 4),
				12
			}
		},
		optional_item_name = {
			upper_case = false,
			localize = false,
			font_size = 40,
			horizontal_alignment = "left",
			vertical_alignment = "top",
			dynamic_font_size = true,
			size = {
				320,
				60
			},
			font_type = masked and "hell_shark_header_masked" or "hell_shark_header",
			text_color = Colors.get_color_table_with_alpha("white", 255),
			offset = {
				40,
				-100,
				12
			}
		},
		optional_subtitle = {
			upper_case = false,
			localize = false,
			font_size = 28,
			horizontal_alignment = "left",
			vertical_alignment = "top",
			dynamic_font_size = true,
			size = {
				320,
				60
			},
			font_type = masked and "hell_shark_header_masked" or "hell_shark_header",
			text_color = Colors.get_color_table_with_alpha("white", 255),
			offset = {
				40,
				-150,
				12
			}
		},
		price_text_now = {
			upper_case = false,
			localize = false,
			font_size = 28,
			horizontal_alignment = "left",
			vertical_alignment = "center",
			dynamic_font_size = false,
			size = {
				45,
				40
			},
			font_type = masked and "hell_shark_header_masked" or "hell_shark_header",
			text_color = Colors.get_color_table_with_alpha("white", 255),
			offset = {
				50,
				-(size[2] + 0),
				12
			}
		},
		price_text_before = {
			upper_case = false,
			localize = false,
			font_size = 24,
			horizontal_alignment = "left",
			vertical_alignment = "center",
			dynamic_font_size = false,
			size = {
				45,
				40
			},
			font_type = masked and "hell_shark_header_masked" or "hell_shark_header",
			text_color = Colors.get_color_table_with_alpha("slate_gray", 255),
			offset = {
				50,
				-(size[2] - 1),
				12
			}
		},
		price_strike_through = {
			vertical_alignment = "top",
			horizontal_alignment = "left",
			angle = -0.17,
			masked = content.masked_price_strike_through,
			pivot = {
				0,
				0
			},
			color = {
				255,
				255,
				0,
				0
			},
			offset = {
				50,
				-(size[2] - 12),
				13
			},
			texture_size = {
				110,
				3
			}
		},
		background_rect = {
			vertical_alignment = "top",
			horizontal_alignment = "left",
			masked = masked,
			texture_size = size,
			color = {
				200,
				0,
				0,
				0
			},
			offset = {
				0,
				0,
				0
			}
		},
		background = {
			vertical_alignment = "top",
			horizontal_alignment = "left",
			masked = masked,
			texture_size = size,
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
		},
		expire_time_icon = {
			vertical_alignment = "top",
			horizontal_alignment = "left",
			masked = masked,
			texture_size = {
				49.5,
				58.5
			},
			color = {
				255,
				255,
				255,
				255
			},
			offset = {
				3,
				9,
				10
			}
		},
		overlay = {
			vertical_alignment = "top",
			horizontal_alignment = "left",
			masked = masked,
			texture_size = size,
			color = {
				0,
				5,
				5,
				5
			},
			offset = {
				0,
				0,
				8
			}
		},
		bundle_content_amount_text = {
			upper_case = false,
			localize = false,
			font_size = 28,
			horizontal_alignment = "left",
			text_horizontal_alignment = "right",
			vertical_alignment = "top",
			dynamic_font_size = false,
			size = {
				30,
				30
			},
			font_type = masked and "hell_shark_header_masked" or "hell_shark_header",
			text_color = {
				255,
				255,
				116,
				246
			},
			offset = {
				size[1] - 80,
				-44,
				12
			}
		},
		type_tag_icon = {
			vertical_alignment = "top",
			horizontal_alignment = "left",
			masked = masked,
			texture_size = {
				56,
				56
			},
			color = {
				255,
				255,
				255,
				255
			},
			offset = {
				size[1] - 56,
				0,
				9
			}
		},
		background_price = {
			vertical_alignment = "top",
			horizontal_alignment = "left",
			masked = masked,
			texture_size = {
				64,
				92
			},
			color = {
				255,
				255,
				255,
				255
			},
			offset = {
				-6,
				-(size[2] - 90),
				11
			}
		},
		background_price_center = {
			vertical_alignment = "top",
			horizontal_alignment = "left",
			masked = masked,
			texture_size = {
				0,
				36
			},
			texture_tiling_size = {
				12,
				36
			},
			color = {
				255,
				255,
				255,
				255
			},
			offset = {
				58,
				-(size[2] - 34),
				11
			}
		},
		background_price_right = {
			vertical_alignment = "top",
			horizontal_alignment = "left",
			masked = masked,
			texture_size = {
				32,
				40
			},
			default_size = {
				32,
				40
			},
			color = {
				255,
				255,
				255,
				255
			},
			offset = {
				58,
				-(size[2] - 38),
				11
			},
			default_offset = {
				58,
				-(size[2] - 38),
				11
			}
		},
		price_gradient = {
			vertical_alignment = "top",
			horizontal_alignment = "left",
			masked = masked,
			texture_size = {
				313,
				34
			},
			color = {
				255,
				255,
				0,
				0
			},
			offset = {
				6,
				-(size[2] - 40),
				10
			}
		},
		price_icon = {
			vertical_alignment = "top",
			horizontal_alignment = "left",
			masked = masked,
			texture_size = {
				58,
				58
			},
			color = {
				255,
				255,
				255,
				255
			},
			offset = {
				3,
				-(size[2] - 47),
				11
			}
		},
		owned_icon = {
			vertical_alignment = "bottom",
			horizontal_alignment = "left",
			masked = masked,
			texture_size = {
				53,
				53
			},
			default_texture_size = {
				53,
				53
			},
			color = {
				255,
				255,
				255,
				255
			},
			offset = {
				5,
				-(size[2] - 5),
				12
			},
			default_offset = {
				5,
				-(size[2] - 5),
				12
			}
		},
		owned_icon_bg = {
			vertical_alignment = "bottom",
			horizontal_alignment = "left",
			masked = masked,
			texture_size = {
				34,
				50
			},
			default_texture_size = {
				34,
				50
			},
			color = {
				255,
				255,
				255,
				255
			},
			offset = {
				15,
				-(size[2] + 8),
				11
			},
			default_offset = {
				15,
				-(size[2] + 8),
				11
			}
		},
		discount_bg = {
			vertical_alignment = "top",
			horizontal_alignment = "left",
			masked = masked,
			texture_size = {
				124,
				112
			},
			color = {
				255,
				255,
				255,
				255
			},
			offset = {
				-3,
				4,
				11
			}
		},
		discont_number_icons = {
			axis = 1,
			direction = 1,
			masked = masked,
			texture_sizes = {},
			texture_offsets = {},
			spacing = {
				0,
				0,
				0
			},
			color = {
				255,
				255,
				255,
				255
			},
			offset = {
				25,
				-82,
				12
			},
			default_offset = {
				25,
				-82,
				12
			}
		},
		icon = {
			vertical_alignment = "top",
			horizontal_alignment = "left",
			masked = masked,
			texture_size = icon_size or size,
			color = {
				255,
				255,
				255,
				255
			},
			offset = {
				icon_size and (size[1] - icon_size[1]) * 0.5 or 0,
				icon_size and -(size[2] - icon_size[2]) * 0.5 or 0,
				7
			}
		},
		frame = {
			horizontal_alignment = "left",
			vertical_alignment = "top",
			masked = masked,
			area_size = size,
			texture_size = frame_settings.texture_size,
			texture_sizes = frame_settings.texture_sizes,
			frame_margins = {
				0,
				0
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
				10
			}
		},
		hover_frame = {
			horizontal_alignment = "left",
			vertical_alignment = "top",
			masked = masked,
			area_size = size,
			texture_size = hover_frame_settings.texture_size,
			texture_sizes = hover_frame_settings.texture_sizes,
			frame_margins = {
				-hover_frame_spacing,
				-hover_frame_spacing
			},
			color = {
				0,
				255,
				255,
				255
			},
			offset = {
				0,
				0,
				6
			}
		},
		pulse_frame = {
			horizontal_alignment = "left",
			vertical_alignment = "top",
			masked = masked,
			area_size = size,
			texture_size = pulse_frame_settings.texture_size,
			texture_sizes = pulse_frame_settings.texture_sizes,
			frame_margins = {
				-pulse_frame_spacing,
				-pulse_frame_spacing
			},
			color = {
				0,
				255,
				255,
				255
			},
			offset = {
				0,
				0,
				12
			}
		},
		console_background_rect_bottom = {
			vertical_alignment = "top",
			horizontal_alignment = "left",
			masked = masked,
			texture_size = {
				size[1],
				-42.5
			},
			color = {
				192,
				0,
				0,
				0
			},
			offset = {
				0,
				-size[2],
				9
			}
		},
		console_background_rect_top = {
			vertical_alignment = "top",
			horizontal_alignment = "left",
			masked = masked,
			texture_size = {
				size[1],
				-32.5
			},
			color = {
				192,
				0,
				0,
				0
			},
			offset = {
				0,
				-size[2] + 42.5,
				9
			}
		},
		console_first_price_text = {
			upper_case = false,
			localize = false,
			font_size = 28,
			horizontal_alignment = "left",
			vertical_alignment = "center",
			dynamic_font_size = false,
			size = {
				45,
				40
			},
			font_type = masked and "hell_shark_header_masked" or "hell_shark_header",
			text_color = Colors.get_color_table_with_alpha("white", 255),
			base_color = Colors.get_color_table_with_alpha("white", 255),
			ps_plus_color = {
				255,
				255,
				205,
				0
			},
			offset = {
				size[1],
				-(size[2] - 4),
				12
			}
		},
		console_secondary_price_text = {
			upper_case = false,
			localize = false,
			font_size = 28,
			horizontal_alignment = "left",
			vertical_alignment = "center",
			dynamic_font_size = false,
			size = {
				45,
				40
			},
			font_type = masked and "hell_shark_header_masked" or "hell_shark_header",
			text_color = Colors.get_color_table_with_alpha("white", 255),
			offset = {
				size[1],
				-(size[2] - 4 - 30),
				12
			}
		},
		console_third_price_text = {
			upper_case = false,
			localize = false,
			font_size = 20,
			horizontal_alignment = "left",
			vertical_alignment = "center",
			dynamic_font_size = false,
			size = {
				45,
				40
			},
			font_type = masked and "hell_shark_header_masked" or "hell_shark_header",
			text_color = Colors.get_color_table_with_alpha("white", 255),
			offset = {
				size[1],
				-(size[2] - 4 - 30),
				12
			}
		},
		console_secondary_price_stroke = {
			vertical_alignment = "top",
			horizontal_alignment = "left",
			masked = masked,
			texture_size = {
				0,
				2
			},
			color = Colors.get_color_table_with_alpha("white", 255),
			offset = {
				size[1],
				-(size[2] - 4 - 50),
				13
			}
		},
		console_third_price_stroke = {
			vertical_alignment = "top",
			horizontal_alignment = "left",
			masked = masked,
			texture_size = {
				0,
				2
			},
			color = Colors.get_color_table_with_alpha("white", 255),
			offset = {
				size[1],
				-(size[2] - 4 - 50),
				13
			}
		},
		psplus_icon = {
			vertical_alignment = "center",
			horizontal_alignment = "left",
			masked = masked,
			texture_size = {
				20,
				20
			},
			color = {
				255,
				255,
				255,
				255
			},
			offset = {
				size[1],
				-size[2] + 25,
				10
			}
		},
		new_marker = {
			vertical_alignment = "top",
			horizontal_alignment = "left",
			masked = masked,
			texture_size = {
				math.floor(88.19999999999999),
				math.floor(35.699999999999996)
			},
			color = Colors.get_color_table_with_alpha("white", 255),
			offset = {
				-35,
				-size[2] - 5,
				10
			},
			size = size
		},
		additional_content_added = {
			font_size = 24,
			upper_case = true,
			localize = false,
			horizontal_alignment = "left",
			vertical_alignment = "bottom",
			dynamic_font_size = false,
			font_type = masked and "hell_shark_header_masked" or "hell_shark_header",
			text_color = {
				255,
				159,
				144,
				101
			},
			base_text_color = {
				255,
				159,
				144,
				101
			},
			offset = {
				20,
				-180,
				12
			}
		},
		additional_content_added_shadow = {
			font_size = 24,
			upper_case = true,
			localize = false,
			horizontal_alignment = "left",
			vertical_alignment = "bottom",
			dynamic_font_size = false,
			font_type = masked and "hell_shark_header_masked" or "hell_shark_header",
			text_color = {
				255,
				0,
				0,
				0
			},
			offset = {
				22,
				-182,
				11
			}
		},
		disclaimer_marker = {
			masked = true,
			texture_size = {
				20,
				20
			},
			offset = {
				40,
				76,
				15
			},
			color = Colors.get_color_table_with_alpha("white", 255)
		},
		additional_disclaimer = {
			upper_case = false,
			localize = false,
			use_shadow = true,
			font_size = 24,
			horizontal_alignment = "left",
			vertical_alignment = "center",
			size = {
				size[1] - 80,
				30
			},
			area_size = {
				size[1] - 80,
				30
			},
			font_type = masked and "hell_shark_header_masked" or "hell_shark_header",
			text_color = Colors.get_color_table_with_alpha("white", 180),
			offset = {
				62,
				70,
				15
			}
		}
	}

	widget.element.passes = passes
	widget.content = content
	widget.style = style
	widget.offset = {
		0,
		0,
		5
	}
	widget.scenegraph_id = scenegraph_id

	return widget
end

UIWidgets.create_store_pose_item_definition = function (scenegraph_id, size, masked, product)
	local settings = product.settings

	return UIWidgets.create_store_item_definition(scenegraph_id, size, masked, product, settings)
end

UIWidgets.create_store_header_text_definition = function (scenegraph_id, size, masked)
	local default_height_offset = -size[2]
	local edge_spacing = 25
	local widget = {
		element = {}
	}
	local passes = {
		{
			style_id = "text",
			pass_type = "text",
			text_id = "text"
		},
		{
			style_id = "text_shadow",
			pass_type = "text",
			text_id = "text"
		}
	}
	local content = {
		text = "n/a",
		size = size
	}
	local style = {
		text = {
			font_size = 32,
			upper_case = false,
			localize = false,
			word_wrap = true,
			horizontal_alignment = "left",
			vertical_alignment = "top",
			dynamic_font_size = false,
			size = {
				size[1] - edge_spacing * 2,
				size[2]
			},
			font_type = masked and "hell_shark_header_masked" or "hell_shark_header",
			text_color = Colors.get_color_table_with_alpha("font_title", 255),
			offset = {
				edge_spacing,
				default_height_offset,
				9
			}
		},
		text_shadow = {
			font_size = 32,
			upper_case = false,
			localize = false,
			word_wrap = true,
			horizontal_alignment = "left",
			vertical_alignment = "top",
			dynamic_font_size = false,
			size = {
				size[1] - edge_spacing * 2,
				size[2]
			},
			font_type = masked and "hell_shark_header_masked" or "hell_shark_header",
			text_color = Colors.get_color_table_with_alpha("black", 255),
			offset = {
				edge_spacing + 2,
				default_height_offset - 2,
				8
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

UIWidgets.create_store_body_text_definition = function (scenegraph_id, size, masked)
	local default_height_offset = -size[2]
	local edge_spacing = 25
	local widget = {
		element = {}
	}
	local passes = {
		{
			style_id = "text",
			pass_type = "text",
			text_id = "text"
		},
		{
			style_id = "text_shadow",
			pass_type = "text",
			text_id = "text"
		}
	}
	local content = {
		text = "n/a",
		size = size
	}
	local style = {
		text = {
			font_size = 20,
			upper_case = false,
			localize = false,
			word_wrap = true,
			horizontal_alignment = "left",
			vertical_alignment = "top",
			dynamic_font_size = false,
			size = {
				size[1] - edge_spacing * 2,
				size[2]
			},
			font_type = masked and "hell_shark_masked" or "hell_shark",
			text_color = Colors.get_color_table_with_alpha("font_default", 255),
			offset = {
				edge_spacing,
				default_height_offset,
				9
			}
		},
		text_shadow = {
			font_size = 20,
			upper_case = false,
			localize = false,
			word_wrap = true,
			horizontal_alignment = "left",
			vertical_alignment = "top",
			dynamic_font_size = false,
			size = {
				size[1] - edge_spacing * 2,
				size[2]
			},
			font_type = masked and "hell_shark_masked" or "hell_shark",
			text_color = Colors.get_color_table_with_alpha("black", 255),
			offset = {
				edge_spacing + 2,
				default_height_offset - 2,
				8
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

UIWidgets.create_store_currency_summary_title_definition = function (scenegraph_id, size, masked)
	local default_height_offset = -size[2]
	local edge_spacing = 25
	local color = {
		255,
		120,
		120,
		120
	}
	local widget = {
		element = {}
	}
	local passes = {
		{
			style_id = "text",
			pass_type = "text",
			text_id = "text"
		},
		{
			style_id = "text_shadow",
			pass_type = "text",
			text_id = "text"
		},
		{
			style_id = "text2",
			pass_type = "text",
			text_id = "text2"
		},
		{
			style_id = "text2_shadow",
			pass_type = "text",
			text_id = "text2"
		},
		{
			pass_type = "texture",
			style_id = "divider",
			texture_id = "rect"
		},
		{
			pass_type = "texture",
			style_id = "divider_shadow",
			texture_id = "rect"
		}
	}
	local content = {
		text = "n/a",
		text2 = "n/a",
		size = size,
		rect = masked and "rect_masked" or "simple_rect_texture"
	}
	local style = {
		text = {
			font_size = 16,
			upper_case = true,
			localize = false,
			word_wrap = true,
			horizontal_alignment = "left",
			vertical_alignment = "top",
			dynamic_font_size = false,
			size = {
				size[1] - edge_spacing * 2,
				size[2]
			},
			font_type = masked and "hell_shark_masked" or "hell_shark",
			text_color = color,
			offset = {
				edge_spacing,
				default_height_offset,
				9
			}
		},
		text_shadow = {
			font_size = 16,
			upper_case = true,
			localize = false,
			word_wrap = true,
			horizontal_alignment = "left",
			vertical_alignment = "top",
			dynamic_font_size = false,
			size = {
				size[1] - edge_spacing * 2,
				size[2]
			},
			font_type = masked and "hell_shark_masked" or "hell_shark",
			text_color = Colors.get_color_table_with_alpha("black", 255),
			offset = {
				edge_spacing + 2,
				default_height_offset - 2,
				8
			}
		},
		text2 = {
			font_size = 16,
			upper_case = true,
			localize = false,
			word_wrap = true,
			horizontal_alignment = "right",
			vertical_alignment = "top",
			dynamic_font_size = false,
			size = {
				size[1] - edge_spacing * 2,
				size[2]
			},
			font_type = masked and "hell_shark_masked" or "hell_shark",
			text_color = color,
			offset = {
				edge_spacing,
				default_height_offset,
				9
			}
		},
		text2_shadow = {
			font_size = 16,
			upper_case = true,
			localize = false,
			word_wrap = true,
			horizontal_alignment = "right",
			vertical_alignment = "top",
			dynamic_font_size = false,
			size = {
				size[1] - edge_spacing * 2,
				size[2]
			},
			font_type = masked and "hell_shark_masked" or "hell_shark",
			text_color = Colors.get_color_table_with_alpha("black", 255),
			offset = {
				edge_spacing + 2,
				default_height_offset - 2,
				8
			}
		},
		divider = {
			vertical_alignment = "bottom",
			horizontal_alignment = "left",
			masked = masked,
			texture_size = {
				size[1] - edge_spacing * 2,
				2
			},
			color = color,
			offset = {
				edge_spacing,
				0,
				8
			}
		},
		divider_shadow = {
			vertical_alignment = "bottom",
			horizontal_alignment = "left",
			masked = masked,
			texture_size = {
				size[1] - edge_spacing * 2,
				2
			},
			color = {
				255,
				0,
				0,
				0
			},
			offset = {
				edge_spacing + 2,
				0,
				7
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

UIWidgets.create_store_currency_summary_entry_definition = function (scenegraph_id, size, masked)
	local default_height_offset = -size[2]
	local edge_spacing = 25
	local color = {
		255,
		120,
		120,
		120
	}
	local widget = {
		element = {}
	}
	local passes = {
		{
			style_id = "text",
			pass_type = "text",
			text_id = "text"
		},
		{
			style_id = "text_shadow",
			pass_type = "text",
			text_id = "text"
		},
		{
			style_id = "text2",
			pass_type = "text",
			text_id = "text2"
		},
		{
			style_id = "text2_shadow",
			pass_type = "text",
			text_id = "text2"
		}
	}
	local content = {
		text = "n/a",
		text2 = "n/a",
		size = size
	}
	local style = {
		text = {
			font_size = 20,
			upper_case = false,
			localize = false,
			word_wrap = true,
			horizontal_alignment = "left",
			vertical_alignment = "top",
			dynamic_font_size = false,
			size = {
				size[1] - edge_spacing * 2,
				size[2]
			},
			font_type = masked and "hell_shark_masked" or "hell_shark",
			text_color = color,
			offset = {
				edge_spacing,
				default_height_offset,
				9
			}
		},
		text_shadow = {
			font_size = 20,
			upper_case = false,
			localize = false,
			word_wrap = true,
			horizontal_alignment = "left",
			vertical_alignment = "top",
			dynamic_font_size = false,
			size = {
				size[1] - edge_spacing * 2,
				size[2]
			},
			font_type = masked and "hell_shark_masked" or "hell_shark",
			text_color = Colors.get_color_table_with_alpha("black", 255),
			offset = {
				edge_spacing + 2,
				default_height_offset - 2,
				8
			}
		},
		text2 = {
			font_size = 20,
			upper_case = false,
			localize = false,
			word_wrap = true,
			horizontal_alignment = "right",
			vertical_alignment = "top",
			dynamic_font_size = false,
			size = {
				size[1] - edge_spacing * 2,
				size[2]
			},
			font_type = masked and "hell_shark_masked" or "hell_shark",
			text_color = color,
			offset = {
				edge_spacing,
				default_height_offset,
				9
			}
		},
		text2_shadow = {
			font_size = 20,
			upper_case = false,
			localize = false,
			word_wrap = true,
			horizontal_alignment = "right",
			vertical_alignment = "top",
			dynamic_font_size = false,
			size = {
				size[1] - edge_spacing * 2,
				size[2]
			},
			font_type = masked and "hell_shark_masked" or "hell_shark",
			text_color = Colors.get_color_table_with_alpha("black", 255),
			offset = {
				edge_spacing + 2,
				default_height_offset - 2,
				8
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

UIWidgets.create_store_dlc_feature_vertical_definition = function (scenegraph_id, size, masked, product)
	local frame_name = "menu_frame_16"
	local frame_settings = UIFrameSettings[frame_name]
	local image_size = {
		size[1],
		220
	}
	local default_height_offset = -size[2]
	local edge_spacing = 5
	local settings = product.settings or dummy_table
	local add_frame = settings.add_frame
	local widget = {
		element = {}
	}
	local passes = {
		{
			pass_type = "texture",
			style_id = "image",
			texture_id = "image"
		},
		{
			style_id = "text",
			pass_type = "text",
			text_id = "text"
		},
		{
			style_id = "text_shadow",
			pass_type = "text",
			text_id = "text"
		},
		{
			pass_type = "texture",
			style_id = "background",
			texture_id = "background",
			content_check_function = function (content)
				return content.add_frame
			end
		},
		{
			pass_type = "texture_frame",
			style_id = "frame",
			texture_id = "frame",
			content_check_function = function (content)
				return content.add_frame
			end
		}
	}
	local content = {
		text = "n/a",
		background = "store_thumbnail_bg_promo",
		image = masked and "rect_masked" or "simple_rect_texture",
		size = size,
		frame = frame_settings.texture,
		add_frame = add_frame
	}
	local style = {
		text = {
			upper_case = false,
			localize = false,
			dynamic_font_size_word_wrap = true,
			word_wrap = true,
			font_size = 20,
			horizontal_alignment = "left",
			vertical_alignment = "top",
			size = {
				image_size[1] - edge_spacing,
				size[2] - image_size[2]
			},
			area_size = {
				image_size[1] - edge_spacing,
				size[2] - image_size[2]
			},
			font_type = masked and "hell_shark_masked" or "hell_shark",
			text_color = Colors.get_color_table_with_alpha("font_default", 255),
			offset = {
				edge_spacing,
				default_height_offset - 0,
				9
			}
		},
		text_shadow = {
			upper_case = false,
			localize = false,
			dynamic_font_size_word_wrap = true,
			word_wrap = true,
			font_size = 20,
			horizontal_alignment = "left",
			vertical_alignment = "top",
			size = {
				image_size[1] - edge_spacing,
				size[2] - image_size[2]
			},
			area_size = {
				image_size[1] - edge_spacing,
				size[2] - image_size[2]
			},
			font_type = masked and "hell_shark_masked" or "hell_shark",
			text_color = Colors.get_color_table_with_alpha("black", 255),
			offset = {
				edge_spacing + 2,
				default_height_offset - 0 - 2,
				8
			}
		},
		image = {
			vertical_alignment = "top",
			horizontal_alignment = "left",
			masked = masked,
			texture_size = image_size,
			color = {
				255,
				255,
				255,
				255
			},
			offset = {
				0,
				0,
				8
			}
		},
		background = {
			vertical_alignment = "top",
			horizontal_alignment = "left",
			masked = masked,
			texture_size = image_size,
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
		},
		frame = {
			horizontal_alignment = "left",
			vertical_alignment = "top",
			masked = masked,
			area_size = image_size,
			texture_size = frame_settings.texture_size,
			texture_sizes = frame_settings.texture_sizes,
			frame_margins = {
				0,
				0
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
				9
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

UIWidgets.create_store_dlc_feature_horizontal_definition = function (scenegraph_id, size, masked, product)
	local image_size, frame_name
	local settings = product.settings

	if settings then
		image_size = settings.image_size
		frame_name = settings.frame_name
	end

	image_size = image_size or {
		260,
		size[2]
	}

	local frame_name = frame_name or "menu_frame_16"
	local frame_settings = frame_name and UIFrameSettings[frame_name]
	local default_height_offset = -size[2]
	local edge_spacing = 20
	local widget = {
		element = {}
	}
	local passes = {
		{
			pass_type = "texture",
			style_id = "image",
			texture_id = "image"
		},
		{
			style_id = "text",
			pass_type = "text",
			text_id = "text"
		},
		{
			style_id = "text_shadow",
			pass_type = "text",
			text_id = "text"
		},
		{
			texture_id = "frame",
			style_id = "frame",
			pass_type = "texture_frame",
			content_check_function = function (content)
				return content.show_frame
			end
		}
	}
	local content = {
		text = "n/a",
		image = masked and "rect_masked" or "simple_rect_texture",
		size = size,
		show_frame = settings.show_frame,
		frame = frame_settings.texture
	}
	local style = {
		text = {
			font_size = 20,
			upper_case = false,
			localize = false,
			dynamic_font_size_word_wrap = false,
			word_wrap = true,
			horizontal_alignment = "left",
			vertical_alignment = "top",
			size = {
				size[1] - image_size[1] - edge_spacing,
				size[2]
			},
			font_type = masked and "hell_shark_masked" or "hell_shark",
			text_color = Colors.get_color_table_with_alpha("font_default", 255),
			offset = {
				image_size[1] + edge_spacing,
				default_height_offset - 0,
				9
			}
		},
		text_shadow = {
			font_size = 20,
			upper_case = false,
			localize = false,
			dynamic_font_size_word_wrap = false,
			word_wrap = true,
			horizontal_alignment = "left",
			vertical_alignment = "top",
			size = {
				size[1] - image_size[1] - edge_spacing,
				size[2]
			},
			font_type = masked and "hell_shark_masked" or "hell_shark",
			text_color = Colors.get_color_table_with_alpha("black", 255),
			offset = {
				image_size[1] + edge_spacing + 2,
				default_height_offset - 0 - 2,
				8
			}
		},
		image = {
			vertical_alignment = "top",
			horizontal_alignment = "left",
			masked = masked,
			texture_size = image_size,
			color = {
				255,
				255,
				255,
				255
			},
			offset = {
				0,
				0,
				8
			}
		},
		frame = {
			vertical_alignment = "top",
			horizontal_alignment = "left",
			masked = masked,
			texture_size = frame_settings.texture_size,
			texture_sizes = frame_settings.texture_sizes,
			color = {
				255,
				255,
				255,
				255
			},
			size = image_size,
			offset = {
				0,
				-image_size[2],
				9
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

UIWidgets.create_store_dlc_feature_pullet_point_definition = function (scenegraph_id, size, masked)
	local image_size = {
		26,
		28
	}
	local default_height_offset = -size[2]
	local edge_spacing = 50
	local widget = {
		element = {}
	}
	local passes = {
		{
			pass_type = "texture",
			style_id = "image",
			texture_id = "image"
		},
		{
			style_id = "text",
			pass_type = "text",
			text_id = "text"
		},
		{
			style_id = "text_shadow",
			pass_type = "text",
			text_id = "text"
		}
	}
	local content = {
		text = "n/a",
		image = "chain_link_horizontal_01_end",
		size = size
	}
	local style = {
		text = {
			font_size = 20,
			upper_case = false,
			localize = false,
			dynamic_font_size_word_wrap = false,
			word_wrap = true,
			horizontal_alignment = "left",
			vertical_alignment = "top",
			size = {
				size[1] - image_size[1] - edge_spacing,
				size[2]
			},
			font_type = masked and "hell_shark_masked" or "hell_shark",
			text_color = Colors.get_color_table_with_alpha("font_default", 255),
			offset = {
				image_size[1] + edge_spacing,
				default_height_offset - 0,
				9
			}
		},
		text_shadow = {
			font_size = 20,
			upper_case = false,
			localize = false,
			dynamic_font_size_word_wrap = false,
			word_wrap = true,
			horizontal_alignment = "left",
			vertical_alignment = "top",
			size = {
				size[1] - image_size[1] - edge_spacing,
				size[2]
			},
			font_type = masked and "hell_shark_masked" or "hell_shark",
			text_color = Colors.get_color_table_with_alpha("black", 255),
			offset = {
				image_size[1] + edge_spacing + 2,
				default_height_offset - 0 - 2,
				8
			}
		},
		image = {
			vertical_alignment = "top",
			horizontal_alignment = "left",
			masked = masked,
			texture_size = image_size,
			color = {
				255,
				255,
				255,
				255
			},
			offset = {
				edge_spacing / 2,
				0,
				8
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

UIWidgets.create_store_list_spacing_definition = function (scenegraph_id, size, masked, product)
	local widget = {
		element = {}
	}
	local passes = {}
	local content = {
		size = size
	}
	local style = {}

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

UIWidgets.create_store_dlc_logo_definition = function (scenegraph_id, size, masked)
	local image_size = {
		440,
		64
	}
	local default_height_offset = -size[2]
	local widget = {
		element = {}
	}
	local passes = {
		{
			pass_type = "texture",
			style_id = "image",
			texture_id = "image"
		}
	}
	local content = {
		image = masked and "rect_masked" or "simple_rect_texture",
		size = size
	}
	local style = {
		image = {
			vertical_alignment = "top",
			horizontal_alignment = "left",
			masked = masked,
			texture_size = image_size,
			color = {
				255,
				255,
				255,
				255
			},
			offset = {
				size[1] / 2 - image_size[1] / 2,
				image_size[2],
				8
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

UIWidgets.create_store_list_divider_definition = function (scenegraph_id, size, masked)
	local image_size = {
		618,
		32
	}
	local default_height_offset = -size[2]
	local widget = {
		element = {}
	}
	local passes = {
		{
			pass_type = "texture",
			style_id = "image",
			texture_id = "image"
		}
	}
	local content = {
		image = "store_divider",
		size = size
	}
	local style = {
		image = {
			vertical_alignment = "top",
			horizontal_alignment = "left",
			masked = masked,
			texture_size = image_size,
			color = {
				255,
				255,
				255,
				255
			},
			offset = {
				size[1] / 2 - image_size[1] / 2,
				-(size[2] / 2 - image_size[2] / 2),
				8
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

UIWidgets.create_store_header_video_definition = function (scenegraph_id, size, masked)
	local fade_multiplier = 0.6
	local edge_multiplier = 0.2
	local background_height_offset = -(size[2] * 0.6)
	local default_height_offset = -size[2]
	local widget = {
		element = {}
	}
	local passes = {
		{
			style_id = "button_hotspot",
			pass_type = "hotspot",
			content_id = "button_hotspot"
		},
		{
			style_id = "video_style",
			pass_type = "video",
			content_id = "video_content"
		},
		{
			pass_type = "texture",
			style_id = "background",
			texture_id = "rect"
		},
		{
			pass_type = "texture",
			style_id = "icon",
			texture_id = "icon"
		},
		{
			pass_type = "texture",
			style_id = "bottom_rect",
			texture_id = "rect"
		},
		{
			style_id = "bottom_fade",
			pass_type = "texture_uv",
			content_id = "bottom_fade"
		},
		{
			pass_type = "texture",
			style_id = "top_fade",
			texture_id = "top_fade"
		}
	}
	local content = {
		top_fade = "edge_fade_small",
		icon = "expand_video_icon",
		button_hotspot = {},
		bottom_fade = {
			texture_id = "edge_fade_small",
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
		},
		video_content = {
			video_completed = false
		},
		rect = masked and "rect_masked" or "simple_rect_texture",
		size = size
	}
	local style = {
		button_hotspot = {
			size = size,
			offset = {
				0,
				default_height_offset,
				0
			}
		},
		video_style = {
			size = size,
			color = {
				255,
				255,
				255,
				255
			},
			offset = {
				0,
				default_height_offset,
				1
			}
		},
		icon = {
			vertical_alignment = "center",
			horizontal_alignment = "center",
			masked = masked,
			texture_size = {
				85,
				84
			},
			color = {
				255,
				255,
				255,
				255
			},
			offset = {
				size[1] / 2,
				default_height_offset + size[2] / 2 + size[2] * fade_multiplier / 2 + background_height_offset * 0.5,
				5
			}
		},
		background = {
			vertical_alignment = "top",
			horizontal_alignment = "left",
			masked = masked,
			texture_size = size,
			color = {
				255,
				0,
				0,
				0
			},
			offset = {
				0,
				0,
				0
			}
		},
		bottom_rect = {
			vertical_alignment = "top",
			horizontal_alignment = "left",
			masked = masked,
			texture_size = {
				size[1],
				size[2] * fade_multiplier
			},
			color = {
				255,
				0,
				0,
				0
			},
			offset = {
				0,
				default_height_offset + size[2] * fade_multiplier - 1 + background_height_offset,
				3
			}
		},
		bottom_fade = {
			vertical_alignment = "top",
			horizontal_alignment = "left",
			masked = masked,
			texture_size = {
				size[1],
				size[2] * edge_multiplier
			},
			color = {
				255,
				0,
				0,
				0
			},
			offset = {
				0,
				default_height_offset + background_height_offset,
				3
			}
		},
		top_fade = {
			vertical_alignment = "top",
			masked = false,
			horizontal_alignment = "left",
			texture_size = {
				size[1],
				size[2] * edge_multiplier
			},
			color = {
				255,
				0,
				0,
				0
			},
			offset = {
				0,
				default_height_offset + (size[2] * fade_multiplier + size[2] * edge_multiplier - 2) + background_height_offset,
				3
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

UIWidgets.create_store_purchase_button = function (scenegraph_id, size, text, font_size, disable_with_gamepad)
	local background_texture = "menu_frame_bg_07"
	local background_size

	if UIAtlasHelper.has_atlas_settings_by_texture_name(background_texture) then
		local background_texture_settings = UIAtlasHelper.get_atlas_settings_by_texture_name(background_texture)

		background_size = {
			background_texture_settings.size[1],
			background_texture_settings.size[2]
		}
	else
		background_size = {
			512,
			256
		}
	end

	local frame_name = "button_frame_01_gold"
	local frame_settings = frame_name and UIFrameSettings[frame_name] or UIFrameSettings.button_frame_01
	local frame_width = frame_settings.texture_sizes.corner[1]
	local side_detail_texture = "button_detail_09_gold"
	local side_detail_texture_settings = UIAtlasHelper.get_atlas_settings_by_texture_name(side_detail_texture)
	local side_detail_texture_size = side_detail_texture_settings.size

	return {
		element = {
			passes = {
				{
					style_id = "frame",
					pass_type = "hotspot",
					content_id = "button_hotspot"
				},
				{
					texture_id = "frame",
					style_id = "frame",
					pass_type = "texture_frame"
				},
				{
					style_id = "background",
					pass_type = "texture_uv",
					content_id = "background"
				},
				{
					texture_id = "background_fade",
					style_id = "background_fade",
					pass_type = "texture"
				},
				{
					texture_id = "hover_glow",
					style_id = "hover_glow",
					pass_type = "texture"
				},
				{
					pass_type = "rect",
					style_id = "clicked_rect"
				},
				{
					style_id = "disabled_overlay",
					pass_type = "rect",
					content_check_function = function (content)
						local button_hotspot = content.button_hotspot

						return button_hotspot.disable_button and not content.owned
					end
				},
				{
					style_id = "owned_overlay",
					pass_type = "texture_uv",
					content_id = "owned_overlay",
					content_check_function = function (content)
						return content.parent.owned
					end
				},
				{
					style_id = "owned_text_write_mask",
					pass_type = "text",
					text_id = "owned_text",
					content_check_function = function (content)
						return content.owned
					end
				},
				{
					texture_id = "owned_text_gradient",
					style_id = "owned_text_gradient",
					pass_type = "texture",
					content_check_function = function (content)
						return content.owned
					end
				},
				{
					pass_type = "texture",
					style_id = "owned_icon",
					texture_id = "owned_icon",
					content_check_function = function (content)
						return content.owned
					end
				},
				{
					pass_type = "texture",
					style_id = "owned_icon_bg",
					texture_id = "owned_icon_bg",
					content_check_function = function (content)
						return content.owned
					end
				},
				{
					style_id = "side_detail_right",
					pass_type = "texture_uv",
					content_id = "side_detail"
				},
				{
					texture_id = "texture_id",
					style_id = "side_detail_left",
					pass_type = "texture",
					content_id = "side_detail"
				},
				{
					style_id = "currency_text",
					pass_type = "text",
					text_id = "currency_text",
					content_check_function = function (content)
						local button_hotspot = content.button_hotspot

						return not button_hotspot.disable_button and not content.owned and content.present_currency
					end
				},
				{
					style_id = "currency_text_disabled",
					pass_type = "text",
					text_id = "currency_text",
					content_check_function = function (content)
						local button_hotspot = content.button_hotspot

						return not content.owned and content.present_currency and button_hotspot.disable_button
					end
				},
				{
					style_id = "currency_text_shadow",
					pass_type = "text",
					text_id = "currency_text",
					content_check_function = function (content)
						return not content.owned and content.present_currency
					end
				},
				{
					style_id = "title_text",
					pass_type = "text",
					text_id = "title_text",
					content_check_function = function (content)
						local button_hotspot = content.button_hotspot

						return not button_hotspot.disable_button and content.title_text and (IS_WINDOWS or not content.real_currency)
					end
				},
				{
					style_id = "title_text_disabled",
					pass_type = "text",
					text_id = "title_text",
					content_check_function = function (content)
						local button_hotspot = content.button_hotspot

						return button_hotspot.disable_button and not content.owned and content.title_text and (IS_WINDOWS or not content.real_currency)
					end
				},
				{
					style_id = "title_text_shadow",
					pass_type = "text",
					text_id = "title_text",
					content_check_function = function (content)
						return not content.owned and content.title_text and (IS_WINDOWS or not content.real_currency)
					end
				},
				{
					style_id = "title_text_write_mask",
					pass_type = "text",
					text_id = "title_text",
					content_check_function = function (content)
						local button_hotspot = content.button_hotspot

						return not button_hotspot.disable_button and content.title_text and (IS_WINDOWS or not content.real_currency)
					end
				},
				{
					texture_id = "title_text_gradient",
					style_id = "title_text_gradient",
					pass_type = "texture",
					content_check_function = function (content)
						local button_hotspot = content.button_hotspot

						return not button_hotspot.disable_button and (IS_WINDOWS or not content.real_currency)
					end
				},
				{
					texture_id = "glass",
					style_id = "glass",
					pass_type = "texture",
					content_check_function = function (content)
						return not content.owned
					end
				},
				{
					texture_id = "glass_top",
					style_id = "glass_top",
					pass_type = "texture",
					content_check_function = function (content)
						return not content.owned
					end
				},
				{
					texture_id = "currency_icon",
					style_id = "currency_icon",
					pass_type = "texture",
					content_check_function = function (content)
						local button_hotspot = content.button_hotspot

						return not content.owned and not button_hotspot.disable_button and content.present_currency
					end
				},
				{
					texture_id = "currency_icon",
					style_id = "currency_icon_disabled",
					pass_type = "texture",
					content_check_function = function (content)
						local button_hotspot = content.button_hotspot

						return not content.owned and content.present_currency and button_hotspot.disable_button
					end
				},
				{
					pass_type = "texture",
					style_id = "psplus_icon",
					texture_id = "psplus_icon",
					content_check_function = function (content)
						return content.show_ps4_plus and IS_PS4 and content.real_currency
					end
				},
				{
					pass_type = "texture",
					style_id = "console_background_rect",
					texture_id = "console_background_rect",
					content_check_function = function (content)
						return not IS_WINDOWS and content.real_currency
					end
				},
				{
					texture_id = "console_secondary_price_stroke",
					style_id = "console_secondary_price_stroke",
					pass_type = "texture",
					content_check_function = function (content)
						return content.show_secondary_stroke and not IS_WINDOWS and content.real_currency
					end
				},
				{
					texture_id = "console_third_price_stroke",
					style_id = "console_third_price_stroke",
					pass_type = "texture",
					content_check_function = function (content)
						return content.show_third_stroke and IS_PS4 and content.real_currency
					end
				},
				{
					style_id = "console_first_price_text",
					pass_type = "text",
					text_id = "console_first_price_text",
					content_check_function = function (content)
						return not IS_WINDOWS and content.real_currency
					end,
					content_change_function = function (content, style)
						style.text_color = content.show_ps4_plus and style.ps_plus_color or style.base_color
					end
				},
				{
					style_id = "console_secondary_price_text",
					pass_type = "text",
					text_id = "console_secondary_price_text",
					content_check_function = function (content)
						return content.console_secondary_price_text ~= "" and not IS_WINDOWS and content.real_currency
					end
				},
				{
					style_id = "console_third_price_text",
					pass_type = "text",
					text_id = "console_third_price_text",
					content_check_function = function (content)
						return content.console_third_price_text ~= "" and IS_PS4 and content.real_currency
					end
				},
				{
					texture_id = "lock",
					style_id = "lock",
					pass_type = "texture",
					content_check_function = function (content)
						return not content.owns_required_dlc
					end
				}
			}
		},
		content = {
			owned_icon = "store_owned_sigil",
			console_third_price_stroke = "simple_rect_texture",
			glass_top = "button_glass_02",
			glass = "game_options_fg",
			owned_text_gradient = "store_button_bg_02",
			show_third_stroke = false,
			owned_text = "menu_store_purchase_button_owned",
			console_third_price_text = "",
			present_currency = false,
			show_ps4_plus = false,
			show_secondary_stroke = false,
			background_fade = "button_bg_fade",
			currency_icon = "store_icon_currency_ingame_big",
			console_secondary_price_stroke = "simple_rect_texture",
			hover_glow = "button_state_default",
			real_currency = false,
			owns_required_dlc = true,
			owned = false,
			console_background_rect = "simple_rect_texture",
			console_secondary_price_text = "",
			lock = "hero_icon_locked_gold",
			owned_icon_bg = "store_owned_ribbon",
			title_text_gradient = "text_gradient",
			console_first_price_text = "",
			psplus_icon = "psplus_logo",
			currency_text = "",
			button_hotspot = {
				disable_button = false
			},
			owned_overlay = {
				texture_id = "store_button_bg_01",
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
			},
			side_detail = {
				uvs = {
					{
						1,
						0
					},
					{
						0,
						1
					}
				},
				texture_id = side_detail_texture
			},
			title_text = text,
			frame = frame_settings.texture,
			background = {
				uvs = {
					{
						0,
						1 - size[2] / background_size[2]
					},
					{
						size[1] / background_size[1],
						1
					}
				},
				texture_id = background_texture
			},
			disable_with_gamepad = disable_with_gamepad,
			frame_width = frame_width,
			size = size
		},
		style = {
			background = {
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
			background_fade = {
				color = {
					0,
					255,
					255,
					255
				},
				offset = {
					frame_width,
					frame_width - 2,
					2
				},
				size = {
					size[1] - frame_width * 2,
					size[2] - frame_width * 2
				}
			},
			hover_glow = {
				color = {
					0,
					255,
					255,
					255
				},
				offset = {
					0,
					frame_width - 2,
					3
				},
				size = {
					size[1],
					math.min(size[2] - 5, 80)
				}
			},
			clicked_rect = {
				color = {
					0,
					0,
					0,
					0
				},
				offset = {
					0,
					0,
					7
				}
			},
			disabled_overlay = {
				color = {
					180,
					10,
					10,
					10
				},
				offset = {
					0,
					0,
					3
				}
			},
			currency_icon = {
				vertical_alignment = "center",
				horizontal_alignment = "left",
				texture_size = {
					64,
					64
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
					4
				}
			},
			currency_icon_disabled = {
				vertical_alignment = "center",
				horizontal_alignment = "left",
				texture_size = {
					64,
					64
				},
				color = {
					255,
					90,
					90,
					90
				},
				offset = {
					0,
					0,
					4
				}
			},
			currency_text = {
				upper_case = true,
				word_wrap = true,
				horizontal_alignment = "left",
				vertical_alignment = "center",
				dynamic_font_size = true,
				font_type = "hell_shark",
				font_size = font_size or 24,
				text_color = Colors.get_color_table_with_alpha("font_default", 255),
				default_text_color = Colors.get_color_table_with_alpha("font_button_normal", 255),
				select_text_color = Colors.get_color_table_with_alpha("white", 255),
				offset = {
					20,
					0,
					4
				}
			},
			currency_text_disabled = {
				upper_case = true,
				word_wrap = true,
				horizontal_alignment = "left",
				vertical_alignment = "center",
				dynamic_font_size = true,
				font_type = "hell_shark",
				font_size = font_size or 24,
				text_color = {
					255,
					100,
					0,
					0
				},
				default_text_color = {
					255,
					100,
					0,
					0
				},
				offset = {
					20,
					0,
					4
				}
			},
			currency_text_shadow = {
				upper_case = true,
				word_wrap = true,
				horizontal_alignment = "left",
				vertical_alignment = "center",
				dynamic_font_size = true,
				font_type = "hell_shark",
				font_size = font_size or 24,
				text_color = Colors.get_color_table_with_alpha("black", 255),
				default_text_color = Colors.get_color_table_with_alpha("black", 255),
				offset = {
					20,
					-2,
					3
				}
			},
			title_text = {
				upper_case = true,
				word_wrap = true,
				horizontal_alignment = "left",
				vertical_alignment = "center",
				dynamic_font_size = true,
				font_type = "hell_shark_header",
				font_size = font_size or 24,
				text_color = Colors.get_color_table_with_alpha("font_button_normal", 255),
				default_text_color = Colors.get_color_table_with_alpha("font_button_normal", 255),
				select_text_color = Colors.get_color_table_with_alpha("white", 255),
				offset = {
					20,
					0,
					4
				}
			},
			title_text_disabled = {
				upper_case = true,
				word_wrap = true,
				horizontal_alignment = "left",
				vertical_alignment = "center",
				dynamic_font_size = true,
				font_type = "hell_shark_header",
				font_size = font_size or 24,
				text_color = Colors.get_color_table_with_alpha("gray", 255),
				default_text_color = Colors.get_color_table_with_alpha("gray", 255),
				offset = {
					20,
					0,
					4
				}
			},
			title_text_shadow = {
				upper_case = true,
				word_wrap = true,
				horizontal_alignment = "left",
				vertical_alignment = "center",
				dynamic_font_size = true,
				font_type = "hell_shark_header",
				font_size = font_size or 24,
				text_color = Colors.get_color_table_with_alpha("black", 255),
				default_text_color = Colors.get_color_table_with_alpha("black", 255),
				offset = {
					22,
					-2,
					3
				}
			},
			title_text_write_mask = {
				upper_case = true,
				word_wrap = true,
				horizontal_alignment = "left",
				vertical_alignment = "center",
				dynamic_font_size = true,
				font_type = "hell_shark_header_write_mask",
				font_size = font_size or 24,
				text_color = Colors.get_color_table_with_alpha("font_button_normal", 255),
				offset = {
					20,
					0,
					6
				}
			},
			owned_text_write_mask = {
				word_wrap = true,
				upper_case = true,
				localize = true,
				horizontal_alignment = "center",
				vertical_alignment = "center",
				dynamic_font_size = true,
				font_type = "hell_shark_header_write_mask",
				font_size = font_size or 24,
				text_color = Colors.get_color_table_with_alpha("font_button_normal", 255),
				offset = {
					0,
					0,
					9
				}
			},
			title_text_gradient = {
				vertical_alignment = "center",
				horizontal_alignment = "center",
				masked = true,
				color = {
					255,
					97,
					180,
					141
				},
				offset = {
					0,
					0,
					5
				},
				texture_size = {
					size[1],
					size[2] * 0.5
				}
			},
			owned_text_gradient = {
				vertical_alignment = "center",
				horizontal_alignment = "center",
				masked = true,
				color = {
					255,
					255,
					255,
					255
				},
				offset = {
					0,
					0,
					8
				},
				texture_size = {
					size[1],
					62
				}
			},
			owned_icon = {
				vertical_alignment = "center",
				horizontal_alignment = "center",
				texture_size = {
					53,
					53
				},
				color = {
					255,
					255,
					255,
					255
				},
				offset = {
					0,
					-4,
					11
				}
			},
			owned_icon_bg = {
				vertical_alignment = "center",
				horizontal_alignment = "center",
				texture_size = {
					34,
					50
				},
				color = {
					255,
					255,
					255,
					255
				},
				offset = {
					0,
					-24,
					10
				}
			},
			frame = {
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
					8
				}
			},
			glass_top = {
				color = {
					255,
					255,
					255,
					255
				},
				offset = {
					0,
					size[2] - (frame_width + 11),
					4
				},
				size = {
					size[1],
					11
				}
			},
			glass = {
				color = {
					255,
					255,
					255,
					255
				},
				offset = {
					0,
					0,
					5
				}
			},
			owned_overlay = {
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
					7
				},
				texture_size = {
					size[1],
					62
				}
			},
			side_detail_left = {
				vertical_alignment = "center",
				horizontal_alignment = "left",
				color = {
					255,
					255,
					255,
					255
				},
				offset = {
					-55,
					0,
					9
				},
				texture_size = {
					side_detail_texture_size[1],
					side_detail_texture_size[2]
				}
			},
			side_detail_right = {
				vertical_alignment = "center",
				horizontal_alignment = "right",
				color = {
					255,
					255,
					255,
					255
				},
				offset = {
					55,
					0,
					9
				},
				texture_size = {
					side_detail_texture_size[1],
					side_detail_texture_size[2]
				}
			},
			console_background_rect = {
				color = {
					255,
					0,
					0,
					0
				},
				offset = {
					0,
					0,
					1
				}
			},
			console_first_price_text = {
				font_size = 28,
				upper_case = false,
				localize = false,
				horizontal_alignment = "right",
				vertical_alignment = "bottom",
				dynamic_font_size = false,
				font_type = "hell_shark_header",
				text_color = Colors.get_color_table_with_alpha("white", 255),
				base_color = Colors.get_color_table_with_alpha("white", 255),
				ps_plus_color = {
					255,
					255,
					205,
					0
				},
				offset = {
					-45,
					-2,
					2
				}
			},
			console_secondary_price_text = {
				font_size = 28,
				upper_case = false,
				localize = false,
				horizontal_alignment = "right",
				vertical_alignment = "bottom",
				dynamic_font_size = false,
				font_type = "hell_shark_header",
				text_color = Colors.get_color_table_with_alpha("white", 255),
				offset = {
					-45,
					24,
					2
				}
			},
			console_third_price_text = {
				font_size = 20,
				upper_case = false,
				localize = false,
				horizontal_alignment = "right",
				vertical_alignment = "bottom",
				dynamic_font_size = false,
				font_type = "hell_shark_header",
				text_color = Colors.get_color_table_with_alpha("white", 255),
				offset = {
					0,
					29,
					2
				}
			},
			console_secondary_price_stroke = {
				vertical_alignment = "bottom",
				horizontal_alignment = "right",
				texture_size = {
					0,
					2
				},
				color = Colors.get_color_table_with_alpha("white", 255),
				offset = {
					0,
					44,
					3
				}
			},
			console_third_price_stroke = {
				vertical_alignment = "bottom",
				horizontal_alignment = "right",
				texture_size = {
					0,
					2
				},
				color = Colors.get_color_table_with_alpha("white", 255),
				offset = {
					0,
					44,
					3
				}
			},
			psplus_icon = {
				vertical_alignment = "bottom",
				horizontal_alignment = "right",
				texture_size = {
					20,
					20
				},
				color = {
					255,
					255,
					255,
					255
				},
				offset = {
					0,
					10,
					50
				}
			},
			lock = {
				vertical_alignment = "bottom",
				horizontal_alignment = "center",
				texture_size = {
					83.60000000000001,
					95.7
				},
				color = {
					255,
					255,
					255,
					255
				},
				offset = {
					0,
					-20,
					50
				}
			}
		},
		scenegraph_id = scenegraph_id,
		offset = {
			0,
			0,
			0
		}
	}
end

UIWidgets.create_store_panel_button = function (scenegraph_id, size, text, font_size, optional_offset, optional_horizontal_alignment)
	local new_marker_offset = {
		-55,
		2,
		10
	}
	local selection_offset = {
		0,
		-8,
		0
	}
	local shadow_offset = {
		2,
		3,
		3
	}
	local marker_offset = {
		0,
		0,
		2
	}

	return {
		element = {
			passes = {
				{
					style_id = "button_hotspot",
					pass_type = "hotspot",
					content_id = "button_hotspot"
				},
				{
					style_id = "text_shadow",
					pass_type = "text",
					text_id = "text_field"
				},
				{
					style_id = "text_hover",
					pass_type = "text",
					text_id = "text_field",
					content_check_function = function (content)
						return not content.button_hotspot.disable_button and (content.button_hotspot.is_hover or content.button_hotspot.is_selected)
					end
				},
				{
					style_id = "text",
					pass_type = "text",
					text_id = "text_field",
					content_check_function = function (content)
						return not content.button_hotspot.disable_button and not content.button_hotspot.is_hover and not content.button_hotspot.is_selected
					end
				},
				{
					style_id = "text_disabled",
					pass_type = "text",
					text_id = "text_field",
					content_check_function = function (content)
						return content.button_hotspot.disable_button
					end
				},
				{
					texture_id = "new_marker",
					style_id = "new_marker",
					pass_type = "texture",
					content_check_function = function (content)
						return content.new and not content.timer
					end
				},
				{
					style_id = "timer_marker",
					pass_type = "texture",
					texture_id = "timer_marker",
					content_check_function = function (content)
						return content.timer
					end,
					content_change_function = function (content, style)
						local s = 0.5 + math.sin(Managers.time:time("ui") * 5) * 0.5

						style.color[1] = 100 + 155 * s
					end
				}
			}
		},
		content = {
			timer_marker = "icon_store_timer",
			timer = false,
			new_marker = "list_item_tag_new",
			button_hotspot = {},
			text_field = text,
			default_font_size = font_size,
			size = size
		},
		style = {
			button_hotspot = {
				size = size
			},
			text = {
				word_wrap = false,
				upper_case = true,
				localize = true,
				vertical_alignment = "center",
				dynamic_font_size = true,
				font_type = "hell_shark_header",
				font_size = font_size,
				horizontal_alignment = optional_horizontal_alignment or "left",
				text_color = Colors.get_color_table_with_alpha("font_button_normal", 255),
				default_offset = {
					0,
					10,
					4
				},
				offset = {
					0,
					5,
					4
				},
				size = size
			},
			text_shadow = {
				word_wrap = false,
				upper_case = true,
				localize = true,
				vertical_alignment = "center",
				dynamic_font_size = true,
				font_type = "hell_shark_header",
				font_size = font_size,
				horizontal_alignment = optional_horizontal_alignment or "left",
				text_color = Colors.get_color_table_with_alpha("black", 255),
				default_offset = shadow_offset,
				offset = shadow_offset,
				size = size
			},
			text_hover = {
				word_wrap = false,
				upper_case = true,
				localize = true,
				vertical_alignment = "center",
				dynamic_font_size = true,
				font_type = "hell_shark_header",
				font_size = font_size,
				horizontal_alignment = optional_horizontal_alignment or "left",
				text_color = Colors.get_color_table_with_alpha("white", 255),
				default_offset = {
					0,
					10,
					4
				},
				offset = {
					0,
					5,
					4
				},
				size = size
			},
			text_disabled = {
				word_wrap = false,
				upper_case = true,
				localize = true,
				vertical_alignment = "center",
				dynamic_font_size = true,
				font_type = "hell_shark_header",
				font_size = font_size,
				horizontal_alignment = optional_horizontal_alignment or "left",
				text_color = Colors.get_color_table_with_alpha("gray", 50),
				default_offset = {
					0,
					10,
					4
				},
				offset = {
					0,
					5,
					4
				},
				size = size
			},
			new_marker = {
				vertical_alignment = "center",
				horizontal_alignment = "left",
				texture_size = {
					math.floor(88.19999999999999),
					math.floor(35.699999999999996)
				},
				color = Colors.get_color_table_with_alpha("white", 255),
				offset = {
					new_marker_offset[1],
					new_marker_offset[2],
					new_marker_offset[3]
				},
				size = size
			},
			timer_marker = {
				vertical_alignment = "center",
				horizontal_alignment = "left",
				texture_size = {
					44,
					46
				},
				color = Colors.get_color_table_with_alpha("white", 255),
				offset = {
					new_marker_offset[1] + 42,
					new_marker_offset[2] - 2,
					new_marker_offset[3]
				},
				size = size
			}
		},
		offset = optional_offset or {
			0,
			0,
			0
		},
		scenegraph_id = scenegraph_id
	}
end

UIWidgets.create_store_panel_currency_widget = function (scenegraph_id, frame_texture, currency_icon, background_texture, background_tile_size)
	local unit_frame_settings = frame_texture and UIFrameSettings[frame_texture] or UIFrameSettings.button_frame_01_gold

	return {
		element = {
			passes = {
				{
					pass_type = "texture_frame",
					style_id = "frame",
					texture_id = "frame"
				},
				{
					pass_type = "tiled_texture",
					style_id = "background_texture",
					texture_id = "background_texture"
				},
				{
					pass_type = "texture",
					style_id = "currency_icon",
					texture_id = "currency_icon"
				},
				{
					style_id = "currency_text",
					pass_type = "text",
					text_id = "currency_text"
				}
			}
		},
		content = {
			currency_text = "-",
			frame = unit_frame_settings.texture,
			background_texture = background_texture or "menu_frame_bg_07",
			currency_icon = currency_icon or "store_icon_currency_ingame_big"
		},
		style = {
			frame = {
				texture_size = unit_frame_settings.texture_size,
				texture_sizes = unit_frame_settings.texture_sizes,
				color = {
					255,
					255,
					255,
					255
				},
				offset = {
					0,
					0,
					5
				}
			},
			background_texture = {
				offset = {
					0,
					0,
					0
				},
				texture_tiling_size = background_tile_size or {
					512,
					256
				},
				color = {
					255,
					255,
					255,
					255
				}
			},
			currency_icon = {
				vertical_alignment = "center",
				horizontal_alignment = "left",
				color = {
					255,
					255,
					255,
					255
				},
				offset = {
					30,
					0,
					1
				},
				texture_size = {
					64,
					64
				}
			},
			currency_text = {
				word_wrap = false,
				upper_case = false,
				localize = false,
				use_shadow = true,
				font_size = 32,
				horizontal_alignment = "left",
				vertical_alignment = "center",
				dynamic_font_size = false,
				font_type = "hell_shark_header",
				text_color = Colors.get_color_table_with_alpha("white", 255),
				offset = {
					99,
					0,
					2
				}
			}
		},
		scenegraph_id = scenegraph_id,
		offset = {
			0,
			0,
			1
		}
	}
end
