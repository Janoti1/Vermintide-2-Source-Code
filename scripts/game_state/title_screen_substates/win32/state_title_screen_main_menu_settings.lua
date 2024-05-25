local function create_menu_layout(self)
	return {
		{
			text = "start_game_menu_button_name",
			callback = callback(self, "_check_prologue_status"),
			layout = {
				{
					description = "start_menu_adventure_description",
					video = "adventure",
					text = "tutorial_intro_adventure",
					info_slate = "start_menu_recommended_tag",
					tag = "start_menu_adventure_tag",
					callback = function ()
						Managers.music:trigger_event("Stop_menu_screen_music")

						local hub_level = AdventureMechanism.get_starting_level()

						self:_start_game(hub_level)
					end
				},
				{
					description = "start_menu_cw_description",
					video = "chaos_wastes",
					tag = "start_menu_cw_tag",
					logo_texture = "chaos_wastes_logo",
					text = "area_selection_morris_name",
					callback = function ()
						Managers.music:trigger_event("Stop_menu_screen_music")

						local hub_level = DeusMechanism.get_starting_level()

						self:_start_game(hub_level)
					end
				},
				{
					description = "start_menu_vs_description",
					video = "versus",
					tag = "start_menu_vs_tag",
					logo_texture = "versus_logo",
					text = "vs_ui_versus_tag",
					conditional_func = function ()
						Managers.music:trigger_event("Stop_menu_screen_music")

						if not GameSettingsDevelopment.use_backend then
							return true
						end

						local backend_manager = Managers.backend
						local title_settings = backend_manager:get_title_settings()
						local versus_settings = title_settings.versus

						return versus_settings and versus_settings.active
					end,
					callback = function ()
						local hub_level = VersusMechanism.get_starting_level()

						self:_start_game(hub_level)
					end
				}
			}
		},
		{
			text = "start_menu_tutorial",
			callback = callback(self, "_start_game", "prologue")
		},
		{
			text = "start_menu_options",
			callback = callback(self, "_activate_view", "options_view")
		},
		{
			text = "start_menu_cinematics",
			callback = callback(self, "_activate_view", "cinematics_view")
		},
		{
			text = "start_menu_credits",
			callback = callback(self, "_activate_view", "credits_view")
		},
		{
			text = "menu_quit",
			callback = callback(self, "_quit_game")
		}
	}
end

return {
	create_menu_layout = create_menu_layout
}
