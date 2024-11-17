require("scripts/ui/views/versus_menu/ui_widgets_vs")

local SIZE_X, SIZE_Y = 1920, 1080
local RETAINED_MODE_ENABLED = false
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
	side_pivot_dark_pact = {
		vertical_alignment = "center",
		parent = "screen",
		horizontal_alignment = "right",
		position = {
			0,
			0,
			UILayer.hud
		},
		size = {
			400,
			260
		}
	},
	side_pivot_heroes = {
		vertical_alignment = "center",
		parent = "screen",
		horizontal_alignment = "right",
		position = {
			0,
			0,
			UILayer.hud
		},
		size = {
			400,
			360
		}
	}
}
local widgets = {}
local animations_definitions = {
	enter = {
		{
			name = "slide_and_fade_in",
			start_progress = 0,
			end_progress = 0.75,
			init = function (ui_scenegraph, scenegraph_definition, widget, params)
				local self = params.self

				self._render_settings.alpha_multiplier = 0
				self._should_draw = true
			end,
			update = function (ui_scenegraph, scenegraph_definition, widget, progress, params)
				if not widget then
					return
				end

				local anim_progress = math.easeOutCubic(progress)
				local self = params.self

				self._render_settings.alpha_multiplier = progress
				widget.offset[1] = 400 * (1 - anim_progress)
			end,
			on_complete = function (ui_scenegraph, scenegraph_definition, widget, params)
				return
			end
		}
	},
	exit = {
		{
			name = "slide_and_fade_out",
			start_progress = 0,
			end_progress = 0.5,
			init = function (ui_scenegraph, scenegraph_definition, widget, params)
				return
			end,
			update = function (ui_scenegraph, scenegraph_definition, widget, progress, params)
				if not widget then
					return
				end

				local anim_progress = math.easeOutCubic(progress)
				local self = params.self

				self._render_settings.alpha_multiplier = 1 - progress
				widget.offset[1] = 400 * anim_progress
				widget.element.dirty = true
			end,
			on_complete = function (ui_scenegraph, scenegraph_definition, widget, params)
				local self = params.self

				self._should_draw = false
			end
		}
	}
}

return {
	animations_definitions = animations_definitions,
	scenegraph = scenegraph_definition,
	widgets = widgets
}
