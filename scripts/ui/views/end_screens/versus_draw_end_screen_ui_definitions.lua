local scenegraph = {
	screen = {
		scale = "fit",
		position = {
			0,
			0,
			UILayer.end_screen_banner
		},
		size = {
			1920,
			1080
		}
	},
	title_text_draw = {
		vertical_alignment = "center",
		parent = "screen",
		horizontal_alignment = "center",
		position = {
			0,
			200,
			1
		},
		size = {
			1400,
			100
		}
	}
}
local title_text_draw_style = {
	word_wrap = true,
	upper_case = true,
	localize = true,
	use_shadow = true,
	font_size = 100,
	horizontal_alignment = "center",
	vertical_alignment = "center",
	font_type = "hell_shark_header",
	text_color = Colors.get_color_table_with_alpha("cheeseburger", 255),
	offset = {
		0,
		0,
		2
	}
}
local widgets = {
	title_text = UIWidgets.create_simple_text("carousel_draw", "title_text_draw", nil, nil, title_text_draw_style)
}
local animations = {
	draw = {
		{
			name = "entry",
			start_progress = 1.4,
			end_progress = 1.8,
			init = function (ui_scenegraph, scenegraph_definition, widgets, params)
				widgets.title_text.style.text.text_color[1] = 0
				widgets.title_text.style.text_shadow.text_color[1] = 0
				params.draw_flags.alpha_multiplier = 1
			end,
			update = function (ui_scenegraph, scenegraph_definition, widgets, progress, params)
				return
			end,
			on_complete = function (ui_scenegraph, scenegraph_definition, widgets, params)
				return
			end
		},
		{
			name = "title_text",
			start_progress = 1.8,
			end_progress = 2.2,
			init = function (ui_scenegraph, scenegraph_definition, widgets, params)
				return
			end,
			update = function (ui_scenegraph, scenegraph_definition, widgets, progress, params)
				local anim_fraction = math.easeCubic(progress)
				local anim_font_size_fraction = math.ease_in_exp(1 - progress)
				local alpha = 255 * anim_fraction
				local text_style = widgets.title_text.style.text
				local text_shadow_style = widgets.title_text.style.text_shadow

				text_style.text_color[1] = alpha
				text_shadow_style.text_color[1] = alpha

				local new_text_size = 100 + 100 * anim_font_size_fraction

				text_style.font_size = new_text_size
				text_shadow_style.font_size = new_text_size
			end,
			on_complete = function (ui_scenegraph, scenegraph_definition, widgets, params)
				return
			end
		},
		{
			name = "fade_out",
			start_progress = 6,
			end_progress = 6.5,
			init = function (ui_scenegraph, scenegraph_definition, widgets, params)
				return
			end,
			update = function (ui_scenegraph, scenegraph_definition, widgets, progress, params)
				local anim_fraction = math.easeInCubic(progress)

				params.draw_flags.alpha_multiplier = 1 - anim_fraction
			end,
			on_complete = function (ui_scenegraph, scenegraph_definition, widgets, params)
				return
			end
		}
	}
}

return {
	scenegraph_definition = scenegraph,
	widget_definitions = widgets,
	animation_definitions = animations
}
