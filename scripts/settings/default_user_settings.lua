require("scripts/settings/render_settings_templates")
require("scripts/settings/camera_transition_templates")
require("scripts/settings/camera_settings")
require("scripts/managers/blood/blood_settings")
require("scripts/settings/sound_quality_settings")
require("scripts/managers/player/player_sync_data")
require("scripts/ui/views/crosshair_kill_confirm_settings")

local dlss_supported, dlss_g_supported, reflex_supported = Application.render_caps("dlss_supported", "dlss_g_supported", "reflex_supported")
local default_user_settings = {
	gamepad_left_handed = false,
	gamepad_auto_aim_enabled = true,
	play_intro_cinematic = true,
	gamepad_look_invert_y = false,
	tutorials_enabled = true,
	mouse_look_invert_y = false,
	master_bus_volume = 100,
	vsync = true,
	enable_gamepad_acceleration = true,
	root_scale_y = 1,
	always_ask_hero_when_joining = false,
	enabled_crosshairs = "all",
	max_fps = 0,
	sfx_bus_volume = 100,
	input_buffer = 0.5,
	borderless_fullscreen = false,
	dlss_enabled = false,
	hud_clamp_ui_scaling = false,
	voip_push_to_talk = true,
	overcharge_opacity = 100,
	use_subtitles = true,
	camera_shake = true,
	twitch_vote_time = 45,
	max_stacking_frames = -1,
	use_gamepad_hud_layout = "auto",
	adapter_index = 0,
	twitch_disable_positive_votes = "enable_positive_votes",
	max_quick_play_search_range = "far",
	double_tap_dodge = false,
	use_high_quality_fur = true,
	give_on_defend = true,
	use_alien_fx = false,
	gamepad_look_sensitivity_y = 0,
	gamepad_rumble_enabled = true,
	use_baked_enemy_meshes = false,
	sound_quality = "high",
	toggle_stationary_dodge = false,
	priority_input_buffer = 1,
	fullscreen = true,
	tobii_eyetracking = true,
	voice_bus_volume = 100,
	mouse_look_sensitivity = 0,
	twitch_spawn_amount = 1,
	social_wheel_gamepad_layout = "auto",
	tobii_extended_view_sensitivity = 50,
	sound_panning_rule = "speakers",
	tobii_clean_ui = true,
	tobii_extended_view_use_head_tracking = false,
	allow_occupied_hero_lobbies = true,
	write_network_debug_output_to_log = false,
	gamepad_zoom_sensitivity_y = 0,
	twitch_difficulty = 50,
	tobii_fire_at_gaze = true,
	max_upload_speed = 512,
	tobii_aim_at_gaze = true,
	deadlock_timeout = 15,
	use_custom_hud_scale = false,
	process_priority = "unchanged",
	fullscreen_minimize_on_alt_tab = true,
	weapon_scroll_type = "scroll_wrap",
	voip_is_enabled = true,
	screen_blood_enabled = true,
	profanity_check = false,
	twitch_disable_mutators = false,
	show_numerical_latency = false,
	toggle_crouch = false,
	social_wheel_delay = 0.12,
	double_tap_dodge_threshold = 0.25,
	hud_scale = 100,
	friend_join_mode = "lobby_friends",
	ragdoll_enabled = true,
	tobii_extended_view = true,
	use_razer_chroma = false,
	friendly_fire_crosshair = true,
	language_id = "en",
	toggle_pactsworn_overhead_name_ui = true,
	player_outlines = "on",
	friendly_fire_hit_marker = true,
	vs_floating_damage = "both",
	hud_damage_feedback_in_world = true,
	twitch_mutator_duration = 1,
	motion_sickness_misc_cam = "normal",
	gamepad_use_ps4_style_input_icons = false,
	hud_damage_feedback_on_yourself = false,
	use_pc_menu_layout = false,
	gamepad_layout = "default",
	chat_enabled = true,
	hud_damage_feedback_on_teammates = true,
	small_network_packets = false,
	twitch_time_between_votes = 30,
	music_bus_volume = 100,
	toggle_alternate_attack = false,
	toggle_pactsworn_help_ui = true,
	persistent_ammo_counter = false,
	mute_in_background = false,
	voip_bus_volume = 100,
	blood_enabled = true,
	toggle_versus_level_in_all_game_modes = true,
	gamepad_look_sensitivity = 0,
	subtitles_font_size = 20,
	subtitles_background_opacity = 20,
	motion_sickness_hit = "normal",
	fsr2_enabled = false,
	motion_sickness_swing = "normal",
	root_scale_x = 1,
	dismemberment_enabled = true,
	head_bob = true,
	melee_camera_movement = true,
	numeric_ui = false,
	minion_outlines = "off",
	gamepad_zoom_sensitivity = 0,
	dynamic_range_sound = "high",
	weapon_trails = "normal",
	chat_font_size = 20,
	char_texture_quality = TextureQuality.default_characters,
	env_texture_quality = TextureQuality.default_environment,
	local_light_shadow_quality = script_data.settings.default_local_light_shadow_quality or "high",
	particles_quality = script_data.settings.default_particles_quality or "high",
	sun_shadow_quality = script_data.settings.default_sun_shadow_quality or "high",
	use_physic_debris = script_data.settings.default_use_physic_debris or true,
	num_blood_decals = BloodSettings.blood_decals.num_decals or 100,
	volumetric_fog_quality = script_data.settings.default_volumetric_fog_quality or "lowest",
	ambient_light_quality = script_data.settings.default_ambient_light_quality or "high",
	ao_quality = script_data.settings.default_ao_quality or "medium",
	playerlist_build_privacy = PrivacyLevels.friends,
	crosshair_kill_confirm = CrosshairKillConfirmSettingsGroups.off,
	sound_channel_configuration = Wwise.AK_SPEAKER_SETUP_AUTO,
	overriden_settings = {
		dlss_frame_generation = not not dlss_g_supported,
		dlss_super_resolution = dlss_supported and "auto" or "none"
	}
}
local default_render_settings = {
	lod_scatter_density = 1,
	local_probes_enabled = true,
	upscaling_mode = "none",
	fsr_quality = 4,
	sun_shadows = true,
	skin_material_enabled = false,
	eye_adaptation_speed = 1,
	fsr_enabled = false,
	lens_quality_enabled = false,
	sun_flare_enabled = false,
	lod_decoration_density = 1,
	dof_enabled = false,
	nv_framerate_cap = 0,
	taa_enabled = false,
	ssr_high_quality = false,
	light_shafts_enabled = false,
	dlss_g_enabled = false,
	fxaa_enabled = false,
	upscaling_quality = "none",
	lens_flares_enabled = false,
	ao_enabled = true,
	ao_high_quality = false,
	ssr_enabled = false,
	bloom_enabled = true,
	gamma = 2.2,
	lod_object_multiplier = 1,
	sharpen_enabled = false,
	nv_low_latency_boost = false,
	upscaling_enabled = false,
	motion_blur_enabled = true,
	max_shadow_casting_lights = IS_WINDOWS and 1 or 2,
	fov = script_data.settings.default_fov or CameraSettings.first_person._node.vertical_fov,
	nv_low_latency_mode = not not reflex_supported
}
local default_versus_settings = {
	tagging_enabled = true,
	early_win_enabled = true,
	custom_loadout_enabled = true,
	gutter_runner_enabled = true,
	knockdown_hp = 250,
	bile_troll_enabled = true,
	catch_up_enabled = true,
	difficulty = "normal",
	ratling_gunner_enabled = true,
	hero_hp_percent = 100,
	starting_as_heroes = "random",
	enemy_outlines = "on",
	pactsworn_respawn_timer = 25,
	warpfire_thrower_enabled = true,
	hero_bots_enabled = true,
	career_changing_enabled = false,
	special_choice_amount = 2,
	ranged_weapons = true,
	healing_item = "medium",
	horde_ability_recharge_rate_percent = 100,
	packmaster_enabled = true,
	wounds_amount = 3,
	globadier_enabled = true,
	hero_rescues_enabled = false
}
local default_texture_settings = {}
local char_texture_settings = TextureQuality.characters[default_user_settings.char_texture_quality]
local env_texture_settings = TextureQuality.environment[default_user_settings.env_texture_quality]

for i = 1, #char_texture_settings do
	local setting = char_texture_settings[i]

	default_texture_settings[setting.texture_setting] = setting.mip_level
end

for i = 1, #env_texture_settings do
	local setting = env_texture_settings[i]

	default_texture_settings[setting.texture_setting] = setting.mip_level
end

local sun_shadow_quality_settings = SunShadowQuality[default_user_settings.sun_shadow_quality]

for setting, value in pairs(sun_shadow_quality_settings) do
	default_render_settings[setting] = value
end

local particles_quality_settings = ParticlesQuality[default_user_settings.particles_quality]

for setting, value in pairs(particles_quality_settings) do
	default_render_settings[setting] = value
end

local ambient_light_quality_settings = AmbientLightQuality[default_user_settings.ambient_light_quality]

for setting, value in pairs(ambient_light_quality_settings) do
	default_render_settings[setting] = value
end

local ao_quality_settings = AmbientOcclusionQuality[default_user_settings.ao_quality]

for setting, value in pairs(ao_quality_settings) do
	default_render_settings[setting] = value
end

local local_light_shadow_quality_settings = LocalLightShadowQuality[default_user_settings.local_light_shadow_quality]

for setting, value in pairs(local_light_shadow_quality_settings) do
	default_render_settings[setting] = value
end

local volumetric_fog_quality_settings = VolumetricFogQuality[default_user_settings.volumetric_fog_quality]

for setting, value in pairs(volumetric_fog_quality_settings) do
	default_render_settings[setting] = value
end

DefaultUserSettings = {}

DefaultUserSettings.set_default_user_settings = function ()
	if LEVEL_EDITOR_TEST then
		return
	end

	local set_default = false

	for key, value in pairs(default_user_settings) do
		if Application.user_setting(key) == nil then
			Application.set_user_setting(key, value)

			set_default = true
		end
	end

	local reload = false

	for key, value in pairs(default_render_settings) do
		if Application.user_setting("render_settings", key) == nil then
			Application.set_user_setting("render_settings", key, value)

			set_default = true
			reload = true
		end
	end

	for key, value in pairs(default_texture_settings) do
		if Application.user_setting("texture_settings", key) == nil then
			Application.set_user_setting("texture_settings", key, value)

			set_default = true
			reload = true
		end
	end

	for key, value in pairs(default_versus_settings) do
		if Application.user_setting("versus_settings", key) == nil then
			Application.set_user_setting("versus_settings", key, value)

			set_default = true
		end
	end

	if reload then
		Application.apply_user_settings()

		if rawget(_G, "GlobalShaderFlags") then
			GlobalShaderFlags.apply_settings()
		end
	end

	if set_default then
		Application.save_user_settings()
	end
end

DefaultUserSettings.clone_default_settings = function ()
	return table.clone(default_user_settings)
end

DefaultUserSettings.get = function (setting_type, setting_name)
	local setting

	if setting_type == "user_settings" then
		setting = default_user_settings[setting_name]
	elseif setting_type == "render_settings" then
		setting = default_render_settings[setting_name]
	elseif setting_type == "texture_settings" then
		setting = default_texture_settings[setting_name]
	elseif setting_type == "versus_settings" then
		setting = default_versus_settings[setting_name]
	end

	fassert(setting ~= nil, "No default setting set for setting %s", setting_name)

	return setting
end

DefaultUserSettings.setup_resolution = function ()
	local get_user_setting = Application.user_setting
	local set_user_setting = Application.set_user_setting
	local save_user_settings = Application.save_user_settings
	local apply_user_settings = Application.apply_user_settings
	local application_settings = Application:settings() or {}

	table.dump(application_settings, "Application Settings", 4)

	local user_settings = get_user_setting("user_settings")

	print("HAS USER_SETTINGS: " .. tostring(user_settings))

	local safe_mode = false
	local argv = {
		Application.argv()
	}

	for _, arg in pairs(argv) do
		if arg == "-safe-mode" then
			safe_mode = true
		end
	end

	print("SAFE MODE:", safe_mode)

	if application_settings.auto_detect_video and not user_settings or safe_mode then
		print("################### AUTO DETECT VIDEO ###################")

		local resolution = get_user_setting("screen_resolution")

		table.dump(resolution, "resolution", 2)

		local fullscreen_output = 0
		local display_modes = Application.enum_display_modes() or {}

		if #display_modes == 0 then
			display_modes = DefaultDisplayModes

			print("Could not fetch display modes ... using default")
		end

		table.dump(display_modes, "display_modes", 2)

		local available = false
		local highest_available = display_modes[1]

		print("lowest available", highest_available)

		for _, mode in ipairs(display_modes) do
			if (mode[1] >= highest_available[1] or mode[2] >= highest_available[2]) and mode[3] == fullscreen_output then
				highest_available = mode
			end
		end

		print("highest available", highest_available)

		if safe_mode then
			print("\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4 SETTING LOWEST RESOLUTION \xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4")

			local lowest_resolution = display_modes[1]

			resolution[1] = lowest_resolution[1]
			resolution[2] = lowest_resolution[2]
			resolution[3] = lowest_resolution[3]

			table.dump(resolution, "res", 1)
			set_user_setting("borderless_fullscreen", false)
		else
			print("\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4 SETTING MAX RESOLUTION \xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4\xC2\xA4")

			resolution[1] = highest_available[1]
			resolution[2] = highest_available[2]
			resolution[3] = highest_available[3]

			table.dump(resolution, "res", 1)
			set_user_setting("borderless_fullscreen", true)
		end

		local resolution = {
			resolution[1],
			resolution[2],
			resolution[3]
		}

		set_user_setting("screen_resolution", resolution)
		set_user_setting("fullscreen", false)
		set_user_setting("fullscreen_output", resolution[3])
		set_user_setting("adapter_index", 0)
		set_user_setting("aspect_ratio", -1)
		set_user_setting("user_settings", true)
		save_user_settings()
		apply_user_settings()
		print("################### AUTO DETECT VIDEO END ###################")

		return true
	end
end
