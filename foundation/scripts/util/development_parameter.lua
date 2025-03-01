Development._hardcoded_dev_params = {
	package_debug = true,
	use_beta_overlay = true,
	disable_tutorial_at_start = false,
	network_debug = true,
	matchmaking_debug = true,
	hide_version_info = true,
	use_local_backend = false,
	spawn_empty_chest = true,
	tobii_button = false,
	disable_debug_draw = true,
	force_debug_disabled = true,
	use_telemetry = true,
	packaged_build = true,
	dont_show_unseen_rewards = false,
	text_watermark = "BETA",
	telemetry_log_interval = "600",
	qr_watermark = false,
	disable_intro_trailer = false,
	force_steam = true,
	debug_interactions = false,
	beta_level_progression = false,
	disable_water_mark = true,
	show_fps = false,
	use_tech_telemetry = true,
	hide_fps = true
}
Development._hardcoded_benchmark_mode_params = {
	attract_benchmark = true,
	use_local_backend = false,
	disable_tutorial_at_start = true,
	disable_gutter_runner = true,
	disable_pack_master = true,
	screen_space_player_camera_reactions = false,
	show_fps = true,
	hide_fps = false,
	use_lan_backend = false,
	disable_debug_draw = true,
	infinite_ammo = true,
	force_steam = true,
	tobii_button = false,
	player_invincible = true,
	attract_mode = true,
	wanted_profile = "bright_wizard"
}

local hardcoded_dev_params = Development._hardcoded_dev_params

if LAUNCH_MODE == "attract_benchmark" then
	hardcoded_dev_params = Development._hardcoded_benchmark_mode_params
end

Development.parameter = function (param)
	return hardcoded_dev_params[param]
end

Development.clear_param_cache = function (param)
	return
end

Development.set_parameter = function (param, value)
	return
end

Development.init_parameters = function ()
	for param, value in pairs(hardcoded_dev_params) do
		script_data[param] = value
	end

	new_params = {}

	for param, value in pairs(hardcoded_dev_params) do
		if param:find("_") then
			new_param = param:gsub("_", "-")
			new_params[new_param] = value
		end
	end

	for param, value in pairs(new_params) do
		hardcoded_dev_params[param] = value
	end
end
