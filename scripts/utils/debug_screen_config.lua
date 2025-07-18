require("scripts/utils/debug_hero_templates")

local function save_statistics()
	local backend_manager = Managers.backend
	local stats_interface = backend_manager:get_interface("statistics")

	stats_interface:save()
	backend_manager:commit(true)
end

local function add_items(items, skip_autosave)
	local backend_mirror = Managers.backend._backend_mirror
	local request = {
		FunctionName = "devGrantItems",
		FunctionParameter = {
			items = items
		}
	}

	local function cb(result)
		local items = result.FunctionResult.items
		local item_interface = Managers.backend:get_interface("items")

		for i = 1, #items do
			if skip_autosave and i == #items then
				skip_autosave = nil
			end

			local item = items[i]

			backend_mirror:add_item(item.ItemInstanceId, item, skip_autosave)
		end

		local chest_inventory = result.FunctionResult.chest_inventory

		if chest_inventory then
			backend_mirror:set_read_only_data("chest_inventory", chest_inventory, true)
		end
	end

	local request_queue = backend_mirror:request_queue()

	request_queue:enqueue(request, cb, false)
end

local settings = {
	{
		description = "* Open and close menu using right and left keyboard arrows (no gamepad support yet).\n\t\t* Use the same keys to 'open' a category.\n\t\t* Use CTRL+up/down/left/right for quick-travel and quick-change.\n\t\t* Press \"F\" to add something as a favorite. Press \"F\" on a favorite to remove it.\n\t\t* Press a key on your numpad on a category to assign that key as a hotkey to flip through the options.",
		bitmap = "hud_debug_screen_logo",
		setting_name = "Debug menu instructions (press right arrow key to open)",
		category = "Allround useful stuff!",
		bitmap_size = 128
	},
	{
		description = "Takes you straight to the menu. Great to combine with auto_host_level.",
		is_boolean = true,
		setting_name = "skip_splash",
		category = "Allround useful stuff!"
	},
	{
		description = "Skips trailer. Always.",
		is_boolean = true,
		setting_name = "skip_intro_trailer",
		category = "Allround useful stuff!"
	},
	{
		description = "Shows which keys can be used for debug stuff.",
		is_boolean = true,
		setting_name = "debug_key_handler_visible",
		category = "Allround useful stuff!"
	},
	{
		description = "Activates Third Person Mode",
		is_boolean = true,
		setting_name = "third_person_mode",
		category = "Allround useful stuff!"
	},
	{
		description = "Caps the maximum frame time to 0.2 seconds. Really useful when you're debugging.",
		is_boolean = true,
		setting_name = "disable_long_timesteps",
		category = "Allround useful stuff!"
	},
	{
		description = "Allows clients to join an ongoing weave game mode",
		is_boolean = true,
		setting_name = "allow_weave_joining",
		category = "Allround useful stuff!"
	},
	{
		description = "Allows items from different mechanisms to show in the inventory",
		is_boolean = true,
		setting_name = "disable_mechanism_item_filter",
		category = "Allround useful stuff!"
	},
	{
		description = "Disables the network hash check when connecting (WARNING: Both clients need to have this enabled)",
		is_boolean = true,
		setting_name = "force_ignore_network_hash",
		category = "Allround useful stuff!"
	},
	{
		description = "Disables the engine revision network hash check when connecting",
		is_boolean = true,
		setting_name = "ignore_engine_revision_in_network_hash",
		category = "Allround useful stuff!"
	},
	{
		description = "Takes you in the game as fast as possible, skipping delays and picking etc",
		is_boolean = true,
		setting_name = "dev_quick_start",
		category = "Allround useful stuff!"
	},
	{
		description = "Displays information about registered puzzles in the world",
		is_boolean = true,
		setting_name = "debug_puzzles",
		category = "Allround useful stuff!"
	},
	{
		setting_name = "teleport player",
		description = "Teleports the player to a portal hub element",
		category = "Allround useful stuff!",
		item_source = {},
		load_items_source_func = function (options)
			table.clear(options)

			local portals = ConflictUtils.get_teleporter_portals()

			for key, _ in pairs(portals) do
				options[#options + 1] = key
			end
		end,
		func = function (options, index)
			local local_player = Managers.player:local_player()

			if local_player then
				local player_unit = local_player.player_unit

				if Unit.alive(player_unit) then
					local portals = ConflictUtils.get_teleporter_portals()

					if table.is_empty(portals) then
						return
					end

					local portal_id = options[index]
					local pos = portals[portal_id][1]:unbox()
					local rot = portals[portal_id][2]:unbox()
					local locomotion = ScriptUnit.extension(player_unit, "locomotion_system")
					local world = Managers.world:world("level_world")

					LevelHelper:flow_event(world, "teleport_" .. options[index])
					locomotion:teleport_to(pos, rot)
				end
			end

			print("TELEPORT")
		end
	},
	{
		setting_name = "teleport player to player",
		description = "Teleports the player to another player.",
		category = "Allround useful stuff!",
		item_source = {},
		load_items_source_func = function (options)
			table.clear(options)

			local data = {}

			options.data = data

			local players = Managers.player:players()
			local local_player = Managers.player:local_player()

			for _, player in pairs(players) do
				if player ~= local_player then
					options[#options + 1] = player:name()
					data[#data + 1] = player
				end
			end
		end,
		func = function (options, index)
			local local_player = Managers.player:local_player()
			local data = options.data

			if local_player then
				local player_unit = local_player.player_unit

				if not Unit.alive(player_unit) then
					return
				end

				if table.is_empty(data) then
					return
				end

				local target_player_unit = data[index].player_unit

				if not Unit.alive(target_player_unit) then
					return
				end

				local player_locomotion_ext = ScriptUnit.extension(player_unit, "locomotion_system")
				local target_locomotion_ext = ScriptUnit.extension(target_player_unit, "locomotion_system")
				local mover = Unit.mover(target_player_unit)
				local pos = Mover.position(mover)
				local rot = target_locomotion_ext:current_rotation()

				player_locomotion_ext:teleport_to(pos, rot)
			end
		end
	},
	{
		setting_name = "teleport player to player repeatedly",
		description = "Teleports the player to another player every 2 seconds.",
		category = "Allround useful stuff!",
		item_source = {},
		load_items_source_func = function (options)
			table.clear(options)

			local data = {}

			options.data = data

			local players = Managers.player:players()
			local local_player = Managers.player:local_player()

			for _, player in pairs(players) do
				if player ~= local_player then
					options[#options + 1] = player:name()
					data[#data + 1] = player
				end
			end

			options[#options + 1] = "Turn Off"
			data[#data + 1] = {}
		end,
		func = function (options, index)
			local data = options.data

			if table.is_empty(data) then
				return
			end

			local updator_id = "teleport player to player repeatedly"

			if Managers.updator:has(updator_id) then
				Managers.updator:remove(updator_id)
			end

			local timer = 0
			local target_player_unit = data[index].player_unit

			Managers.updator:add(function (dt)
				timer = timer - dt

				if timer > 0 then
					return
				end

				timer = 2

				UPDATE_POSITION_LOOKUP()

				local local_player = Managers.player:local_player()

				if not local_player then
					return
				end

				local player_unit = local_player.player_unit

				if not Unit.alive(player_unit) then
					return
				end

				if not Unit.alive(target_player_unit) then
					Managers.updator:remove(updator_id)

					return
				end

				local player_locomotion_ext = ScriptUnit.extension(player_unit, "locomotion_system")
				local target_locomotion_ext = ScriptUnit.extension(target_player_unit, "locomotion_system")
				local mover = Unit.mover(target_player_unit)
				local pos = Mover.position(mover)
				local rot = target_locomotion_ext:current_rotation()

				player_locomotion_ext:teleport_to(pos, rot)
			end, updator_id)
		end
	},
	{
		description = "Teleports the bots to the local player.",
		category = "Allround useful stuff!",
		setting_name = "teleport bots to local player",
		func = function ()
			local bots = Managers.player:bots()
			local local_player = Managers.player:local_player()

			if local_player and local_player.player_unit then
				local player_unit = local_player.player_unit
				local player_locomotion_ext = ScriptUnit.extension(player_unit, "locomotion_system")
				local mover = Unit.mover(player_unit)
				local pos = Mover.position(mover)
				local rot = player_locomotion_ext:current_rotation()

				for _, bot in pairs(bots) do
					local locomotion_ext = ScriptUnit.extension(bot.player_unit, "locomotion_system")

					locomotion_ext:teleport_to(pos, rot)
				end
			end
		end
	},
	{
		description = "Will change the network pong timeout from 15 seconds to 10000 seconds.",
		is_boolean = true,
		setting_name = "network_timeout_really_long",
		category = "Allround useful stuff!"
	},
	{
		description = "Disables the auto-start of tutorial if it's not completed.",
		is_boolean = true,
		setting_name = "disable_tutorial_at_start",
		category = "Allround useful stuff!"
	},
	{
		description = "Will disable afk kick",
		is_boolean = true,
		setting_name = "debug_disable_afk_kick",
		category = "Allround useful stuff!"
	},
	{
		description = "Will enable gift popup debug (use F3 to spawn)",
		is_boolean = true,
		setting_name = "debug_gift_popup",
		category = "Allround useful stuff!"
	},
	{
		description = "Do not clear the unseen_rewards field",
		is_boolean = true,
		setting_name = "dont_clear_unseen_rewards",
		category = "Allround useful stuff!"
	},
	{
		description = "Do not show unseen rewards at login",
		is_boolean = true,
		setting_name = "dont_show_unseen_rewards",
		category = "Allround useful stuff!"
	},
	{
		description = "When resetting saves, give all items",
		is_boolean = true,
		setting_name = "give_all_lan_backend_items",
		category = "Allround useful stuff!"
	},
	{
		description = "In the shop, write the master list key on each item icon",
		is_boolean = true,
		setting_name = "show_shop_item_keys",
		category = "Allround useful stuff!"
	},
	{
		description = "hide version info hud",
		is_boolean = true,
		setting_name = "hide_version_info",
		category = "Allround useful stuff!"
	},
	{
		description = "hide fps counter hud",
		is_boolean = true,
		setting_name = "hide_fps",
		category = "Allround useful stuff!"
	},
	{
		description = "Will change all true booleans to false, and if there are no true ones, then all will be set to nil (cleared). Press right arrow to do it!",
		category = "Allround useful stuff!",
		setting_name = "reset_settings",
		func = function ()
			DebugScreen.reset_settings()
		end
	},
	{
		description = "Requires restart. Gives you all items of a certain rarity",
		setting_name = "all_items_of_rarity",
		category = "Allround useful stuff!",
		item_source = {
			common = true,
			plentiful = true,
			rare = true,
			exotic = true
		}
	},
	{
		description = "Disable popup warning when trying to exit the game",
		is_boolean = true,
		setting_name = "disable_exit_popup_warning",
		category = "Allround useful stuff!"
	},
	{
		description = "Sets the fadeout time to zero when exiting the game",
		is_boolean = true,
		setting_name = "zero_exit_time",
		category = "Allround useful stuff!"
	},
	{
		setting_name = "load_level",
		description = "Loads the selected level.",
		category = "Allround useful stuff!",
		item_source = {},
		load_items_source_func = function (options)
			table.clear(options)
			table.keys(LevelSettings, options)

			local level_variations = {}

			for i = #options, 1, -1 do
				local level_name = options[i]
				local level_settings = LevelSettings[level_name]
				local variations = level_settings.environment_variations

				if variations then
					for variation_id = #variations, 1, -1 do
						local combined_name = level_name .. "_" .. variations[variation_id]

						table.insert(options, combined_name)

						options[combined_name] = {
							level_name,
							variation_id
						}
						level_variations[combined_name] = true
					end
				end
			end

			local high_prio_levels = table.mirror_array_inplace({
				"inn_level",
				"whitebox"
			})
			local mechanism_order = table.mirror_array_inplace({
				"adventure",
				"versus",
				"deus",
				"weaves"
			})

			table.sort(options, function (a, b)
				if high_prio_levels[a] or high_prio_levels[b] then
					return (high_prio_levels[a] or math.huge) < (high_prio_levels[b] or math.huge)
				end

				if level_variations[a] or level_variations[b] then
					if not level_variations[a] or not level_variations[b] then
						return not level_variations[a]
					else
						return a < b
					end
				end

				local settings_a = LevelSettings[a]
				local settings_b = LevelSettings[b]

				if settings_a.mechanism ~= settings_b.mechanism then
					return (mechanism_order[settings_a.mechanism] or math.huge) < (mechanism_order[settings_b.mechanism] or math.huge)
				end

				local act_a_index = table.find(GameActsOrder, settings_a.act) or math.huge
				local act_b_index = table.find(GameActsOrder, settings_b.act) or math.huge

				if act_a_index < act_b_index then
					return true
				elseif act_a_index == act_b_index then
					local act_presentation_order_a = settings_a.act_presentation_order
					local act_presentation_order_b = settings_b.act_presentation_order

					if act_presentation_order_a or act_presentation_order_b then
						return (act_presentation_order_a or math.huge) < (act_presentation_order_b or math.huge)
					else
						local debug_sorting_a = settings_a.map_settings and settings_a.map_settings.sorting
						local debug_sorting_b = settings_b.map_settings and settings_b.map_settings.sorting

						if debug_sorting_a or debug_sorting_b then
							return (debug_sorting_a or math.huge) < (debug_sorting_b or math.huge)
						else
							return a < b
						end
					end
				else
					return false
				end
			end)
		end,
		func = function (options, index)
			local level_name = options[index]
			local environment_id = 0
			local combined_name = options[level_name]

			if combined_name then
				level_name = combined_name[1]
				environment_id = combined_name[2]
			end

			local level_settings = LevelSettings[level_name]

			if level_settings.hub_level then
				Managers.mechanism:override_hub_level(level_name)
			end

			Debug.load_level(level_name, environment_id, level_settings.debug_environment_level_flow_event)
		end
	},
	{
		description = "Converts all IRC messages to a random vote",
		is_boolean = true,
		setting_name = "twitch_randomize_votes",
		category = "Twitch"
	},
	{
		description = "Allow multiple votes from the same user",
		is_boolean = true,
		setting_name = "twitch_allow_multiple_votes",
		category = "Twitch"
	},
	{
		description = "Disables the effect of the Twitch vote",
		is_boolean = true,
		setting_name = "twitch_disable_result",
		category = "Twitch"
	},
	{
		description = "Activates twitch game mode and randomized twich votes without connected to stream",
		setting_name = "twitch_debug_voting",
		category = "Twitch",
		is_boolean = true,
		func = function ()
			Managers.twitch:debug_activate_twitch_game_mode()
		end
	},
	{
		description = "Display your current matchmaking settings on the screen for easier testing/debug",
		is_boolean = true,
		setting_name = "debug_weave_matchmaking",
		category = "Weave Matchmaking"
	},
	{
		description = "",
		setting_name = "Default development settings",
		category = "Presets",
		preset = {
			skippable_cutscenes = true,
			disable_long_timesteps = true,
			disable_mechanism_item_filter = false,
			use_lan_backend = true,
			network_timeout_really_long = true,
			skip_splash = true
		}
	},
	{
		description = "",
		setting_name = "Make player imba kthx",
		category = "Presets",
		preset = {
			ledge_hanging_turned_off = true,
			player_mechanics_goodness_debug = true,
			infinite_ammo = true,
			disable_gamemode_end = true,
			disable_fatigue_system = true,
			player_invincible = true,
			use_super_jumps = true
		}
	},
	{
		description = "",
		setting_name = "Disable all specials",
		category = "Presets",
		preset = {
			disable_globadier = true,
			disable_ratling_gunner = true,
			disable_warpfire_thrower = true,
			disable_gutter_runner = true,
			disable_vortex_sorcerer = true,
			disable_pack_master = true,
			disable_plague_sorcerer = true
		}
	},
	{
		description = "",
		setting_name = "Enable all specials",
		category = "Presets",
		preset = {
			disable_globadier = false,
			disable_ratling_gunner = false,
			disable_warpfire_thrower = false,
			disable_gutter_runner = false,
			disable_vortex_sorcerer = false,
			disable_pack_master = false,
			disable_plague_sorcerer = false
		}
	},
	{
		description = "",
		setting_name = "No bots or AI spawn",
		category = "Presets",
		preset = {
			ai_mini_patrol_disabled = true,
			ai_critter_spawning_disabled = true,
			ai_horde_spawning_disabled = true,
			ai_roaming_spawning_disabled = true,
			ai_boss_spawning_disabled = true,
			ai_rush_intervention_disabled = true,
			ai_terror_events_disabled = true,
			ai_bots_disabled = true,
			ai_specials_spawning_disabled = true,
			ai_pacing_disabled = true,
			ai_speed_run_intervention_disabled = true
		}
	},
	{
		description = "",
		setting_name = "Bots or AI can spawn",
		category = "Presets",
		preset = {
			ai_mini_patrol_disabled = false,
			ai_critter_spawning_disabled = false,
			ai_horde_spawning_disabled = false,
			ai_roaming_spawning_disabled = false,
			ai_boss_spawning_disabled = false,
			ai_rush_intervention_disabled = false,
			ai_terror_events_disabled = false,
			ai_bots_disabled = false,
			ai_specials_spawning_disabled = false,
			ai_pacing_disabled = false,
			ai_speed_run_intervention_disabled = false
		}
	},
	{
		description = "",
		setting_name = "Main Path Boss Debug",
		category = "Presets",
		preset = {
			ai_mini_patrol_disabled = true,
			ai_critter_spawning_disabled = true,
			ai_horde_spawning_disabled = true,
			ai_roaming_spawning_disabled = true,
			ai_boss_spawning_disabled = false,
			debug_ai_recycler = true,
			debug_ai_pacing = true,
			ai_terror_events_disabled = true,
			debug_player_intensity = true,
			ai_bots_disabled = true,
			ai_specials_spawning_disabled = true,
			ai_pacing_disabled = false,
			ai_rush_intervention_disabled = true,
			ai_speed_run_intervention_disabled = true
		}
	},
	{
		description = "",
		setting_name = "QA - General stuff",
		category = "Presets",
		preset = {
			debug_player_position = true,
			paste_revision_to_clipboard = true
		}
	},
	{
		description = "",
		setting_name = "QA-Network/join/sync/matchmaking",
		category = "Presets",
		preset = {
			network_log_messages = true,
			network_debug = true,
			debug_interactions = true,
			package_debug = true,
			matchmaking_debug = true,
			network_debug_connections = true
		}
	},
	{
		description = "",
		setting_name = "QA - Player debug",
		category = "Presets",
		preset = {
			debug_interactions = true,
			debug_player_animations = true,
			debug_state_machines = true
		}
	},
	{
		description = "",
		setting_name = "Screenshot mode",
		category = "Presets",
		preset = {
			disable_info_slate_ui = true,
			disable_debug_draw = true,
			disable_tutorial_ui = true,
			bone_lod_disable = true,
			hide_version_info = true,
			hide_fps = true
		}
	},
	{
		description = "",
		setting_name = "Screenshot mode - no hud",
		category = "Presets",
		preset = {
			disable_debug_draw = true,
			disable_info_slate_ui = true,
			disable_loading_icon = true,
			hide_version_info = true,
			disable_ui = true,
			disable_water_mark = true,
			bone_lod_disable = true,
			disable_outlines = true,
			disable_tutorial_ui = true,
			hide_fps = true
		}
	},
	{
		description = "",
		setting_name = "Disable screenshot mode",
		category = "Presets",
		preset = {
			disable_debug_draw = false,
			disable_info_slate_ui = false,
			disable_loading_icon = false,
			hide_version_info = false,
			disable_ui = false,
			disable_water_mark = false,
			bone_lod_disable = false,
			disable_outlines = false,
			disable_tutorial_ui = false,
			hide_fps = false
		}
	},
	{
		description = "ctrl+F to cycle between graphs, ctrl+G to use special function in graph. (respawn level atm)",
		setting_name = "Show Graphs",
		category = "Presets",
		preset = {
			debug_player_intensity = true,
			debug_ai_pacing = true,
			ai_pacing_disabled = false
		}
	},
	{
		description = "This is used to turn off screen effects affecting the main character in case the camera is changed into a 3rd person view.",
		setting_name = "Replay Settings",
		category = "Presets",
		preset = {
			screen_space_player_camera_reactions = false,
			fade_on_camera_ai_collision = false
		}
	},
	{
		description = "This is used to restore settings after working with replays.",
		setting_name = "Non-Replay Settings",
		category = "Presets",
		preset = {
			screen_space_player_camera_reactions = true,
			fade_on_camera_ai_collision = true
		}
	},
	{
		description = "Make the player unkillable.",
		is_boolean = true,
		setting_name = "player_invincible",
		category = "Player mechanics recommended",
		propagate_to_server = true,
		never_save = true
	},
	{
		description = "Make the player unkillable.",
		is_boolean = true,
		setting_name = "player_unkillable",
		category = "Player mechanics recommended"
	},
	{
		description = "Everything dies instantly when it receives damage",
		is_boolean = true,
		setting_name = "insta_death",
		category = "Player mechanics recommended"
	},
	{
		description = "Sets player invisibility for local player.",
		setting_name = "player_invisibility",
		category = "Player mechanics recommended",
		is_boolean = true,
		func = function (options, option_id)
			local wants_invis = options[option_id]
			local player_manager = Managers.player
			local local_player = player_manager:local_player()
			local player_unit = local_player and local_player.player_unit

			if Unit.alive(player_unit) then
				local status_extension = ScriptUnit.extension(player_unit, "status_system")

				if status_extension:is_invisible() ~= wants_invis then
					status_extension:set_invisible(wants_invis, nil, "debug_invis")

					local debug_text = wants_invis and "Local player is now invisible" or "Local player is now visible"

					Debug.sticky_text(debug_text)
				end
			end
		end
	},
	{
		description = "Features that make player mechanics nicer to work with.\n * Enables increasing/decreasing the player run speed via ALT+MouseScroll.\n * Allows you to press 'B' to take debug damage.\n * Kill yourself on 'CTRL' + 'V'\n * Revive yourself on 'CTRL' + 'B'\n * Playable pactsworn can stagger them self on 'ALT' + 'X'\n * (requests go here...)",
		is_boolean = true,
		setting_name = "player_mechanics_goodness_debug",
		category = "Player mechanics recommended"
	},
	{
		description = "Increases jump height and allows you to jump multiple times whilst in the air.",
		is_boolean = true,
		setting_name = "use_super_jumps",
		category = "Player mechanics recommended"
	},
	{
		description = "Sets the profile you would like to start the game with.",
		setting_name = "wanted_profile",
		category = "Player mechanics recommended",
		item_source = {
			witch_hunter = true,
			empire_soldier = true,
			dwarf_ranger = true,
			wood_elf = true,
			bright_wizard = true
		}
	},
	{
		description = "Sets the career index you would like to start the game with.",
		setting_name = "wanted_career_index",
		category = "Player mechanics recommended",
		item_source = {
			1,
			2,
			3,
			4
		}
	},
	{
		setting_name = "switch_class",
		description = "Switch player class to play",
		category = "Player mechanics recommended",
		item_source = {},
		load_items_source_func = function (options)
			table.clear(options)

			local data = {}

			options.data = data

			local player = Managers.player:local_player()
			local peer_id = player:network_id()
			local local_player_id = player:local_player_id()
			local party_manager = Managers.party
			local party = party_manager:get_party_from_player_id(peer_id, local_player_id)
			local side = Managers.state.side.side_by_party[party]
			local available_profiles = side.available_profiles

			available_profiles = available_profiles or PROFILES_BY_AFFILIATION.heroes

			for k = 1, #available_profiles do
				local profile_name = available_profiles[k]
				local index = #options + 1

				options[index] = profile_name
				data[index] = profile_name
			end
		end,
		func = function (options, index)
			local profile_name = options.data[index]

			if profile_name then
				local profile_index = FindProfileIndex(profile_name)
				local careers = SPProfiles[profile_index].careers
				local career = careers[script_data.wanted_career_index] or careers[1]
				local force_respawn = true

				if career.display_name == "vs_undecided" then
					return
				end

				Managers.state.network:request_profile(1, profile_name, career.display_name, force_respawn)
			end
		end
	},
	{
		setting_name = "switch_party",
		description = "Switch party you you want to spawn in. Note: you need to 'switch_class' for it to be fulfilled",
		category = "Player mechanics recommended",
		item_source = {},
		load_items_source_func = function (options)
			local party_manager = Managers.party
			local parties = party_manager:parties()

			table.clear(options)

			local data = {}

			options.data = data

			for k, party in ipairs(parties) do
				local index = #options + 1
				local num_used_slots = party.num_used_slots - party.num_bots
				local num_slots = party.num_slots

				if num_used_slots < num_slots then
					options[index] = string.format("%s (%d/%d)", party.party_id, num_used_slots, num_slots)
				else
					options[index] = string.format("%s (%d/%d) FULL!", party.party_id, num_used_slots, num_slots)
				end

				data[index] = party.party_id
			end
		end,
		func = function (options, index)
			local party_id = options.data[index]

			if party_id then
				local party = Managers.party:get_party(party_id)

				if party.num_open_slots + party.num_bots > 0 then
					print("Debug switching wanted party to:", party_id)

					local player = Managers.player:local_player()
					local local_player_id = player:local_player_id()
					local peer_id = player:network_id()
					local mechanism_name = Managers.mechanism:current_mechanism_name()
					local side = Managers.state.side.side_by_party[party]

					Managers.party:request_join_party(peer_id, local_player_id, party_id)

					if player and player:needs_despawn() then
						Managers.state.spawn:delayed_despawn(player)
					end

					local camera_system = Managers.state.entity:system("camera_system")

					if party.name == "spectators" then
						local profile = PROFILES_BY_NAME.spectator

						camera_system:initialize_camera_states(player, profile.index, 1)
					else
						local profile_index = FindProfileIndex("witch_hunter")

						camera_system:initialize_camera_states(player, profile_index, 1)
					end

					local sides = Managers.state.side:sides()
					local object_set_name, enable

					for i = 1, #sides do
						local current_side = sides[i]

						object_set_name = string.format("%s_%s", mechanism_name, current_side:name())
						enable = current_side == side

						Managers.state.game_mode:set_object_set_enabled(object_set_name, enable)
					end
				end
			end
		end
	},
	{
		setting_name = "wanted_party",
		description = "automatically puts you in selected party on join",
		category = "Player mechanics",
		item_source = {},
		load_items_source_func = function (options)
			local party_manager = Managers.party
			local parties = party_manager:parties()

			table.clear(options)

			options[#options + 1] = "none"

			for i = 1, #parties do
				local party = parties[i]

				options[#options + 1] = party.party_id
			end
		end,
		func = function (options, index)
			local party_tag = options[index]

			if party_tag then
				-- Nothing
			end
		end
	},
	{
		setting_name = "switch_ai_debug_spawning_party",
		description = "Switch what party you want debugging spawning (P) AI units to belong to",
		category = "Player mechanics recommended",
		item_source = {},
		load_items_source_func = function (options)
			local side_manager = Managers.state.side
			local sides = side_manager:sides()

			table.clear(options)

			for k, side in pairs(sides) do
				local index = #options + 1

				options[index] = side.side_id
			end
		end,
		func = function (options, index)
			local side_id = options[index]

			if side_id then
				Managers.state.conflict:set_debug_spawn_side(side_id)
			end
		end
	},
	{
		description = "Show the units currently equipped in left/right hand.",
		is_boolean = true,
		setting_name = "show_equipped_weapon_units",
		category = "Player mechanics"
	},
	{
		description = "Show fatigue information about human players",
		is_boolean = true,
		setting_name = "debug_fatigue",
		category = "Player mechanics"
	},
	{
		description = "For enabling melee weapon debugging.",
		is_boolean = true,
		setting_name = "debug_weapons",
		category = "Player mechanics"
	},
	{
		description = "The enemy that got target will always get hit",
		is_boolean = true,
		setting_name = "debug_weapons_always_hit_target",
		category = "Player mechanics"
	},
	{
		description = "Damage debugging.",
		is_boolean = true,
		setting_name = "damage_debug",
		category = "Player mechanics"
	},
	{
		description = "Enables ground targetting.",
		is_boolean = true,
		setting_name = "debug_ground_target",
		category = "Player mechanics"
	},
	{
		description = "Logs a ton of stuff, and adds a debug arrow to the knee... err.. screen.",
		is_boolean = true,
		setting_name = "camera_debug",
		category = "Player mechanics"
	},
	{
		description = "Shows area of active AreaDamageExtensions",
		is_boolean = true,
		setting_name = "debug_area_damage",
		category = "Player mechanics"
	},
	{
		description = "Enable state logging for all state machines",
		is_boolean = true,
		setting_name = "debug_state_machines",
		category = "Player mechanics"
	},
	{
		description = "Enable interactor/interactable debugging.",
		is_boolean = true,
		setting_name = "debug_interactions",
		category = "Player mechanics"
	},
	{
		description = "Disables the nice movement by Markus, Peder and Platt.",
		is_boolean = true,
		setting_name = "disable_nice_movement",
		category = "Player mechanics"
	},
	{
		description = "Adds informative text on screen about ladder climbing",
		is_boolean = true,
		setting_name = "debug_ladder_climbing",
		category = "Player mechaniscs"
	},
	{
		description = "Disables the aim lead/rig motion",
		is_boolean = true,
		setting_name = "disable_aim_lead_rig_motion",
		category = "Player mechanics"
	},
	{
		description = "Shows debug spheres for the first rig motion",
		is_boolean = true,
		setting_name = "debug_rig_motion",
		category = "Player mechanics"
	},
	{
		description = "When enabled you will no longer get fatigued.",
		is_boolean = true,
		setting_name = "disable_fatigue_system",
		category = "Player mechanics"
	},
	{
		description = "Can always reload.",
		is_boolean = true,
		setting_name = "infinite_ammo",
		category = "Player mechanics"
	},
	{
		description = "Exits ghost mode automatically",
		is_boolean = true,
		setting_name = "disable_ghost_mode",
		category = "Versus"
	},
	{
		description = "Activated ability cooldowns set to 5 seconds",
		is_boolean = true,
		setting_name = "short_ability_cooldowns",
		category = "Player mechanics"
	},
	{
		description = "Unlock all talent points - Requires Restart",
		is_boolean = true,
		setting_name = "debug_unlock_talents",
		category = "Player mechanics"
	},
	{
		description = "Resets all talents for the current career. Needs to be done outside of a menu to take effect",
		category = "Player mechanics",
		setting_name = "reset_career_talents",
		func = function ()
			local backend_manager = Managers.backend
			local player = Managers.player:local_player()
			local career_name = player:career_name()

			backend_manager:get_interface("talents"):set_talents(career_name, {
				0,
				0,
				0,
				0,
				0
			})
			backend_manager:commit(true)
		end
	},
	{
		description = "Enable hero stats in inventory",
		is_boolean = true,
		setting_name = "hero_statistics",
		category = "Player mechanics"
	},
	{
		description = "Enable Animation Logging In The Console For The First Person Local Player.",
		is_boolean = true,
		setting_name = "debug_player_animations",
		category = "Player mechanics"
	},
	{
		description = "Enable \"legendary\" traits for all weapons, and adds some debug prints/draws",
		is_boolean = true,
		setting_name = "debug_legendary_traits",
		category = "Player mechanics"
	},
	{
		description = "Show damage numbers above enemies heads. - Requires restart of level",
		is_boolean = true,
		setting_name = "debug_show_damage_numbers",
		category = "Player mechanics"
	},
	{
		description = "Show Debug sticky text whenever the 1p SM changes.",
		is_boolean = true,
		setting_name = "show_state_machine_changes",
		category = "Player mechanics"
	},
	{
		description = "Enable Animation Logging In The Console For The Local Player.",
		is_boolean = true,
		setting_name = "debug_first_person_player_animations",
		category = "Player mechanics"
	},
	{
		description = "Show animation events triggered via actions.",
		is_boolean = true,
		setting_name = "debug_action_anim_events",
		category = "Player mechanics"
	},
	{
		description = "Show animation variables as they are written to the local player unit",
		is_boolean = true,
		setting_name = "debug_player_anim_variables",
		category = "Player mechanics"
	},
	{
		description = "Show movement settings as they are written to the local player unit",
		is_boolean = true,
		setting_name = "debug_movement_settings",
		category = "Player mechanics"
	},
	{
		description = "Show animation events called for selected unit.",
		is_boolean = true,
		setting_name = "debug_selected_unit_anim_events",
		category = "AI"
	},
	{
		description = "Visualize ledges",
		is_boolean = true,
		setting_name = "visualize_ledges",
		category = "Player mechanics"
	},
	{
		description = "Enable Buff Debug Information",
		is_boolean = true,
		setting_name = "buff_debug",
		category = "Player mechanics"
	},
	{
		description = "Disable Buff system optimization",
		is_boolean = true,
		setting_name = "buff_no_opt",
		category = "Player mechanics"
	},
	{
		description = "Adds any buff in the game to player.",
		setting_name = "Add Buff",
		category = "Player mechanics",
		item_source = {},
		load_items_source_func = function (options)
			table.clear(options)

			local buff_templates = BuffTemplates

			for key, item in pairs(buff_templates) do
				item = BuffUtils.get_buff_template(key)

				if item.buffs and item.buffs[1] and not item.buffs[1].dormant then
					options[#options + 1] = key
				end
			end

			table.sort(options)
		end,
		func = function (options, index)
			local key = options[index]
			local player_manager = Managers.player
			local player = player_manager:local_player()
			local unit = player.player_unit
			local buff_system = Managers.state.entity:system("buff_system")
			local server_controlled = false

			buff_system:add_buff(unit, key, unit, server_controlled)
		end
	},
	{
		description = "Enable OverCharge Debug Information",
		is_boolean = true,
		setting_name = "overcharge_debug",
		category = "Player mechanics"
	},
	{
		description = "Enable OverCharge Debug Information",
		is_boolean = true,
		setting_name = "disable_overcharge",
		category = "Player mechanics"
	},
	{
		description = "Enable Energy Debug Information",
		is_boolean = true,
		setting_name = "energy_debug",
		category = "Player mechanics"
	},
	{
		description = "Disables Energy loss",
		is_boolean = true,
		setting_name = "disable_energy",
		category = "Player mechanics"
	},
	{
		description = "Makes it so you cant fall and hang from ledges.",
		is_boolean = true,
		setting_name = "ledge_hanging_turned_off",
		category = "Player mechanics"
	},
	{
		description = "Visualizes hang ledges positioning and rotation",
		is_boolean = true,
		setting_name = "debug_hang_ledges",
		category = "Player mechanics"
	},
	{
		description = "Makes it so you dont die when you hang from ledge and fall.",
		is_boolean = true,
		setting_name = "ledge_hanging_fall_and_die_turned_off",
		category = "Player mechanics"
	},
	{
		description = "Tutorial stuffs",
		is_boolean = true,
		setting_name = "tutorial_disabled",
		category = "Player mechanics"
	},
	{
		description = "Tutorial stuffs",
		is_boolean = true,
		setting_name = "tutorial_debug",
		category = "Player mechanics"
	},
	{
		description = "Debug statistics stuff",
		is_boolean = true,
		setting_name = "statistics_debug",
		category = "Player mechanics"
	},
	{
		description = "Debug achievements/trophies",
		is_boolean = true,
		setting_name = "achievement_debug",
		category = "Player mechanics"
	},
	{
		description = "Use debug platform for achievements",
		is_boolean = true,
		setting_name = "achievement_debug_platform",
		category = "Player mechanics"
	},
	{
		description = "RESETS all achievements/trophies",
		category = "Player mechanics",
		setting_name = "achievement_reset",
		func = function ()
			Managers.state.achievement:reset()
		end
	},
	{
		description = "Debug in game challenges",
		is_boolean = true,
		setting_name = "debug_in_game_challenges",
		category = "Player mechanics"
	},
	{
		description = "Debug info for missions",
		is_boolean = true,
		setting_name = "debug_mission_system",
		category = "Player mechanics"
	},
	{
		description = "Show the player's position on the screen",
		is_boolean = true,
		setting_name = "debug_player_position",
		category = "Player mechanics"
	},
	{
		description = "Never causes critical strikes",
		is_boolean = true,
		setting_name = "no_critical_strikes",
		category = "Player mechanics"
	},
	{
		description = "Always causes critical strikes",
		is_boolean = true,
		setting_name = "always_critical_strikes",
		category = "Player mechanics"
	},
	{
		description = "Causes a critical strike every second attack",
		is_boolean = true,
		setting_name = "alternating_critical_strikes",
		category = "Player mechanics"
	},
	{
		description = "Draws debug lines to show your blocking arcs",
		is_boolean = true,
		setting_name = "debug_draw_block_arcs",
		category = "Player mechanics"
	},
	{
		description = "Draws debug lines to show your pushing arcs",
		is_boolean = true,
		setting_name = "debug_draw_push_arcs",
		category = "Player mechanics"
	},
	{
		description = "Sets a static power level, ignoring actual career and equipment power",
		category = "Player mechanics",
		setting_name = "power_level_override",
		item_source = {
			200,
			225,
			250,
			275,
			300,
			325,
			350,
			375,
			400,
			425,
			450,
			475,
			500,
			525,
			550,
			575,
			600,
			625,
			650,
			675,
			700,
			725,
			750,
			775,
			800,
			825,
			850,
			875,
			900,
			925,
			950,
			975,
			1000,
			1200,
			1400,
			1600
		},
		custom_item_source_order = function (item_source, options)
			for _, v in ipairs(item_source) do
				local option = v

				options[#options + 1] = option
			end
		end
	},
	{
		description = "Sets the power level of the damage dealt when triggering debug damage.",
		category = "Player mechanics",
		setting_name = "debug_damage_power_level",
		item_source = {
			100,
			200,
			225,
			250,
			275,
			300,
			325,
			350,
			375,
			400,
			425,
			450,
			475,
			500,
			525,
			550,
			575,
			600,
			625,
			650,
			675,
			700,
			725,
			750,
			775,
			800
		},
		custom_item_source_order = function (item_source, options)
			for _, v in ipairs(item_source) do
				local option = v

				options[#options + 1] = option
			end
		end
	},
	{
		description = "Show player health",
		is_boolean = true,
		setting_name = "show_player_health",
		category = "Player mechanics"
	},
	{
		description = "Show player ammo",
		is_boolean = true,
		setting_name = "show_player_ammo",
		category = "Player mechanics"
	},
	{
		description = "Enables players and bots to respawn quickly at respawn points",
		is_boolean = true,
		setting_name = "fast_respawns",
		category = "Player mechanics"
	},
	{
		description = "Disables triggering weapon animations for third person. Useful for testing new weapons. \xC3\xB6ddfg (to spite Seb)",
		is_boolean = true,
		setting_name = "disable_third_person_weapon_animation_events",
		category = "Player mechanics"
	},
	{
		description = "Enables players to leave ghost mode while in los",
		is_boolean = true,
		setting_name = "allow_ghost_mode_los",
		category = "Player mechanics"
	},
	{
		description = "Enables players to leave ghost mode while in within range",
		is_boolean = true,
		setting_name = "allow_ghost_mode_range",
		category = "Player mechanics"
	},
	{
		description = "Enables players to leave ghost mode always",
		is_boolean = true,
		setting_name = "always_allow_leave_ghost_mode",
		category = "Player mechanics"
	},
	{
		description = "Disable blacklisting servers in search / matchmaking",
		is_boolean = true,
		setting_name = "blacklisting_disabled_vs",
		category = "Versus"
	},
	{
		description = "Skips to a set in VS. Will mess up UI paramaters",
		setting_name = "vs_skip_to_set",
		category = "Versus",
		close_when_selected = true,
		item_source = {},
		load_items_source_func = function (options)
			table.clear(options)

			if Managers.level_transition_handler:in_hub_level() or Managers.mechanism:current_mechanism_name() ~= "versus" then
				return
			end

			local mechanism = Managers.mechanism:game_mechanism()
			local num_sets = mechanism:get_objective_settings().num_sets
			local current_set = mechanism:get_current_set()

			for set = 1, num_sets do
				if current_set < set then
					options[#options + 1] = set
				end
			end
		end,
		func = function (options, index)
			local key = options[index]

			if not key then
				return
			end

			Managers.mechanism:game_mechanism():debug_skip_to_set(key)
		end
	},
	{
		description = "Ends a vs match. UI might get messed",
		close_when_selected = true,
		setting_name = "vs_end_match",
		category = "Versus",
		propagate_to_server = true,
		func = function (options, index)
			if Managers.level_transition_handler:in_hub_level() or Managers.mechanism:current_mechanism_name() ~= "versus" then
				return
			end

			local game_mode_manager = Managers.state.game_mode

			game_mode_manager:round_started()

			script_data.disable_gamemode_end = nil
			script_data.disable_gamemode_end_hero_check = nil

			Managers.mechanism:game_mechanism():win_conditions():debug_end_match()
		end
	},
	{
		description = "Add score for the current scoring party",
		setting_name = "vs_add_score",
		category = "Versus",
		item_source = {
			1,
			2,
			3,
			5,
			10,
			15,
			25,
			50,
			100
		},
		custom_item_source_order = function (item_source, options)
			for _, v in ipairs(item_source) do
				local option = v

				options[#options + 1] = option
			end
		end,
		func = function (options, index)
			if Managers.level_transition_handler:in_hub_level() then
				return
			end

			local value = options[index]
			local win_conditions = Managers.mechanism:game_mechanism():win_conditions()

			win_conditions:debug_add_score(value)
		end
	},
	{
		description = "Draws sphere cast on ratogers ability",
		is_boolean = true,
		setting_name = "debug_vs_ratogre_ability",
		category = "Versus"
	},
	{
		description = "Unhoists local player",
		setting_name = "vs_unhoist_local_player",
		category = "Versus",
		func = function (options, index)
			local player = Managers.player:local_player(1)
			local player_unit = player.player_unit

			StatusUtils.set_grabbed_by_pack_master_network("pack_master_dropping", player_unit, true, nil)
		end
	},
	{
		setting_name = "Add Versus Experience",
		description = "Adds Versus Experience to your account.",
		category = "Versus",
		item_source = {},
		load_items_source_func = function (options)
			table.clear(options)

			options[1] = 100
			options[2] = 500
			options[3] = 2000
			options[4] = 5000
			options[5] = 10000
			options[6] = 100000
		end,
		func = function (options, index)
			local backend_manager = Managers.backend
			local experience = options[index] or 1
			local player = Managers.player:local_player(1)

			local function cb(result)
				local function_result = result.FunctionResult
				local new_vs_profile_data = result.FunctionResult.data.player_profile_data
				local backend_mirror = Managers.backend:get_backend_mirror()

				backend_mirror:set_read_only_data("vs_profile_data", cjson.encode(new_vs_profile_data), true)
			end

			local request = {
				FunctionName = "devAddVersusExperience",
				FunctionParameter = {
					experience = experience
				}
			}
			local backend_mirror = backend_manager._backend_mirror
			local request_queue = backend_mirror:request_queue()

			request_queue:enqueue(request, cb, false)
		end
	},
	{
		setting_name = "Add Versus Currency",
		description = "Adds Versus Versus Currency.",
		category = "Versus",
		item_source = {},
		load_items_source_func = function (options)
			table.clear(options)

			options[1] = 1
			options[2] = 5
			options[3] = 10
			options[4] = 50
			options[5] = 100
		end,
		func = function (options, index)
			local backend_manager = Managers.backend
			local amount = options[index] or 1
			local peddler_interface = backend_manager:get_interface("peddler")
			local current_chips = peddler_interface:get_chips("VS")
			local player = Managers.player:local_player(1)

			local function cb(result)
				local function_result = result.FunctionResult

				peddler_interface:set_chips("VS", function_result.new_vs_currency)
			end

			local request = {
				FunctionName = "devGrantVersusCurrency",
				FunctionParameter = {
					amount = amount
				}
			}
			local backend_mirror = backend_manager._backend_mirror
			local request_queue = backend_mirror:request_queue()

			request_queue:enqueue(request, cb, false)
		end
	},
	{
		description = "draws spheres where player is teleported to",
		is_boolean = true,
		setting_name = "vs_debug_hoist",
		category = "Versus"
	},
	{
		description = "Draw some helpful lines for player leaps",
		is_boolean = true,
		setting_name = "debug_draw_player_leap",
		category = "Player mechanics"
	},
	{
		description = "Stops Manny from cheating in playtests. Hopefully.",
		is_boolean = true,
		setting_name = "disable_time_travel",
		category = "Player mechanics"
	},
	{
		description = "Disables external velocity influences (Knockback from punches or enemies pushing the player)",
		is_boolean = true,
		setting_name = "disable_external_velocity",
		category = "Player mechanics"
	},
	{
		description = "Disables catapulting players (Ratogre has a attack that catapults the player for example)",
		is_boolean = true,
		setting_name = "disable_catapulting",
		category = "Player mechanics"
	},
	{
		description = "Will show debug lines for projectiles when true",
		is_boolean = true,
		setting_name = "debug_projectiles",
		category = "Weapons"
	},
	{
		description = "Will show debug lines for projectiles when true",
		is_boolean = true,
		setting_name = "debug_light_weight_projectiles",
		category = "Weapons"
	},
	{
		description = "Writes into the console whenever a new action starts or finishes",
		is_boolean = true,
		setting_name = "log_actions",
		category = "Weapons"
	},
	{
		description = "Add/remove test attachments",
		is_boolean = true,
		setting_name = "attachment_debug",
		category = "Attachments"
	},
	{
		description = "Turns on chieftain spawn debug",
		is_boolean = true,
		setting_name = "ai_champion_spawn_debug",
		category = "AI recommended"
	},
	{
		description = "Disables AI spawning due to pacing.",
		is_boolean = true,
		setting_name = "ai_pacing_disabled",
		category = "AI recommended"
	},
	{
		description = "Disables AI rush intervention (specials & hordes)",
		is_boolean = true,
		setting_name = "ai_rush_intervention_disabled",
		category = "AI recommended"
	},
	{
		description = "Disables AI speed run intervention(specials and small hordes)",
		is_boolean = true,
		setting_name = "ai_speed_run_intervention_disabled",
		category = "AI recommended"
	},
	{
		description = "Disables AI roam spawning.",
		is_boolean = true,
		setting_name = "ai_roaming_spawning_disabled",
		category = "AI recommended"
	},
	{
		description = "Disables AI roaming patrols spawning. (there will only be normal packs)",
		is_boolean = true,
		setting_name = "ai_roaming_patrols_disabled",
		category = "AI recommended"
	},
	{
		description = "Disables boss/rare event spawning.",
		is_boolean = true,
		setting_name = "ai_boss_spawning_disabled",
		category = "AI recommended"
	},
	{
		description = "Disables specials spawning",
		is_boolean = true,
		setting_name = "ai_specials_spawning_disabled",
		category = "AI recommended"
	},
	{
		description = "Disables critter spawning",
		is_boolean = true,
		setting_name = "ai_critter_spawning_disabled",
		category = "AI recommended"
	},
	{
		description = "Disables AI terror events spawning",
		is_boolean = true,
		setting_name = "ai_terror_events_disabled",
		category = "AI recommended"
	},
	{
		description = "Disables gutter runners from spawning (requires restart!!!)",
		is_boolean = true,
		setting_name = "disable_gutter_runner",
		category = "AI recommended"
	},
	{
		description = "Disables globadiers from spawning (requires restart!!!)",
		is_boolean = true,
		setting_name = "disable_globadier",
		category = "AI recommended"
	},
	{
		description = "Disables pack masters from spawning (requires restart!!!)",
		is_boolean = true,
		setting_name = "disable_pack_master",
		category = "AI recommended"
	},
	{
		description = "Disables ratling gunners from spawning (requires restart!!!)",
		is_boolean = true,
		setting_name = "disable_ratling_gunner",
		category = "AI recommended"
	},
	{
		description = "Disables warpfire throwers from spawning (requires restart!!!)",
		is_boolean = true,
		setting_name = "disable_warpfire_thrower",
		category = "AI recommended"
	},
	{
		description = "Disables vortex sorcerers from spawning (requires restart!!!)",
		is_boolean = true,
		setting_name = "disable_vortex_sorcerer",
		category = "AI recommended"
	},
	{
		description = "Disables plague sorcerers from spawning (requires restart!!!)",
		is_boolean = true,
		setting_name = "disable_plague_sorcerer",
		category = "AI recommended"
	},
	{
		description = "Disables hordes spawning",
		is_boolean = true,
		setting_name = "ai_horde_spawning_disabled",
		category = "AI recommended"
	},
	{
		description = "When pressing 'h for a debug horde, set what kind of horde will spawn, instead of a random variant",
		setting_name = "ai_set_horde_type_debug",
		category = "AI recommended",
		item_source = {
			vector_blob = "vector_blob",
			vector = "vector",
			ambush = "ambush",
			random = "random"
		}
	},
	{
		description = "Disables mini patrols from spawning",
		is_boolean = true,
		setting_name = "ai_mini_patrol_disabled",
		category = "AI recommended"
	},
	{
		setting_name = "debug spawn mini patrol",
		description = "Spawns a mini patrol right now",
		category = "AI",
		item_source = {},
		load_items_source_func = function (options)
			table.clear(options)

			for k, setting in pairs(HordeSettings) do
				options[#options + 1] = setting.mini_patrol_composition
			end
		end,
		func = function (options, index)
			local composition = options[index]

			if composition then
				print("Debug spawning mini patrol of composition:", composition)

				local group_template = {
					size = 0,
					template = "mini_patrol",
					id = Managers.state.entity:system("ai_group_system"):generate_group_id()
				}
				local t = Managers.time:time("game")
				local side_id

				Managers.state.conflict:mini_patrol(t, nil, side_id, composition, group_template)
			end
		end
	},
	{
		description = "Enemy ragdolls are despawned immediately.",
		is_boolean = true,
		setting_name = "disable_ragdolls",
		category = "AI"
	},
	{
		description = "Players deal no direct damage to enemies.",
		is_boolean = true,
		setting_name = "players_deal_no_damage",
		category = "AI"
	},
	{
		description = "Cap num controlled units",
		category = "AI",
		setting_name = "cap_num_controlled_units",
		item_source = {
			0,
			1,
			2,
			3
		},
		custom_item_source_order = function (item_source, options)
			for _, v in ipairs(item_source) do
				local option = v

				options[#options + 1] = option
			end
		end
	},
	{
		description = "Disable controlled unit rotation based follow",
		is_boolean = true,
		setting_name = "disable_rotation_based_follow",
		category = "AI"
	},
	{
		description = "Colors the different sides of ai-units in red, blue, green and yellow",
		is_boolean = true,
		setting_name = "faction_colored_ai",
		category = "AI"
	},
	{
		description = "Disable Necromancer Pets",
		is_boolean = true,
		setting_name = "disable_necromancer_pets",
		category = "AI"
	},
	{
		description = "Enables horde logging in console",
		is_boolean = true,
		setting_name = "ai_horde_logging",
		category = "AI recommended"
	},
	{
		description = "Presents current amount of alive breeds on screen.",
		is_boolean = true,
		setting_name = "show_alive_ai",
		category = "AI recommended"
	},
	{
		description = "Writes out max-health / current health above ai units",
		is_boolean = true,
		setting_name = "show_ai_health",
		category = "AI recommended"
	},
	{
		description = "Writes out from what BreedPack the unit was picked. What zone he spawned in. If he was replaced.",
		is_boolean = true,
		setting_name = "show_ai_spawn_info",
		category = "AI recommended"
	},
	{
		description = "Draws a spinning line abouve each pickup in game",
		is_boolean = true,
		setting_name = "show_spawned_pickups",
		category = "AI recommended"
	},
	{
		description = "Collects the data needed for drawing pickup spawners and spawn sections. Restart required.",
		is_boolean = true,
		setting_name = "debug_pickup_spawners",
		category = "Pickup Spawners"
	},
	{
		description = "The debug_pickup_spawners option must be set to true when using this feature",
		category = "Pickup Spawners",
		setting_name = "Toggle Pickup Spawners Draw Mode",
		func = function ()
			Managers.state.entity:system("pickup_system"):debug_draw_spread_pickups()
		end
	},
	{
		description = "Shows which dynamic packages that have been loaded or unloaded.",
		is_boolean = true,
		setting_name = "debug_pickup_package_loader",
		category = "Network"
	},
	{
		description = "Shows which dynamic packages that have been loaded or unloaded",
		is_boolean = true,
		setting_name = "debug_general_package_loader",
		category = "Network"
	},
	{
		description = "Draws lines up in the sky where each ai is",
		is_boolean = true,
		setting_name = "show_where_ai_is",
		category = "AI recommended"
	},
	{
		description = "Draws lines up in the sky where each inactive ai is",
		is_boolean = true,
		setting_name = "show_where_inactive_ai_is",
		category = "AI recommended"
	},
	{
		description = "turns on animation debug on your current ai debug target.",
		is_boolean = true,
		setting_name = "anim_debug_ai_debug_target",
		category = "AI recommended"
	},
	{
		description = "Choose between different conflict director settings.",
		setting_name = "override_conflict_settings",
		category = "Conflict & Pacing",
		item_source = ConflictDirectors
	},
	{
		description = "Displays current conflict settings on screen.",
		is_boolean = true,
		setting_name = "show_current_conflict_settings",
		category = "Conflict & Pacing"
	},
	{
		description = "Shows the contained breeds of the current conflict_director.",
		is_boolean = true,
		setting_name = "debug_conflict_director_breeds",
		category = "Conflict & Pacing"
	},
	{
		description = "Displays current threat value from aggroed enemies, and what systems will delay their spawning.",
		is_boolean = true,
		setting_name = "debug_current_threat_value",
		category = "Conflict & Pacing"
	},
	{
		description = "Dump lots of debug in the console when constructing the zones & packs. Will draw 1m spheres around units that gets replaced via BreedPacks zone_checks. Each hi/low segment will have the same colored spheres. Units that are not replaced, but counted will have small spheres.",
		is_boolean = true,
		setting_name = "debug_zone_baker",
		category = "Conflict & Pacing"
	},
	{
		description = "Draws zones on screen, and lots of debug on ground",
		is_boolean = true,
		setting_name = "debug_zone_baker_on_screen",
		category = "Conflict & Pacing"
	},
	{
		description = "Show all hidden spawners with vertical lines.",
		is_boolean = true,
		setting_name = "show_hidden_spawners",
		category = "Conflict & Pacing"
	},
	{
		description = "Shows clustering, loneliness, crumbs...",
		is_boolean = true,
		setting_name = "debug_player_positioning",
		category = "Conflict & Pacing"
	},
	{
		description = "Shows rushing player...",
		is_boolean = true,
		setting_name = "debug_rush_intervention",
		category = "Conflict & Pacing"
	},
	{
		description = "Handles speedrunners by spawning specials or small hordes ahead of players, activate this to see its states",
		is_boolean = true,
		setting_name = "debug_speed_running_intervention",
		category = "Conflict & Pacing"
	},
	{
		description = "Show data for pacing of the game",
		is_boolean = true,
		setting_name = "debug_ai_pacing",
		category = "Conflict & Pacing"
	},
	{
		description = "Shows player intensity",
		is_boolean = true,
		setting_name = "debug_player_intensity",
		category = "Conflict & Pacing"
	},
	{
		description = "debug the peak delayer.",
		is_boolean = true,
		setting_name = "debug_peak_delayer",
		category = "Conflict & Pacing"
	},
	{
		description = "Show exclamation point icon above heads of alerted skaven",
		is_boolean = true,
		setting_name = "enable_alert_icon",
		category = "AI"
	},
	{
		description = "Make AI not perceive anyone",
		is_boolean = true,
		setting_name = "disable_ai_perception",
		category = "AI"
	},
	{
		description = "Check no spawn volumes when spawning specials",
		is_boolean = true,
		setting_name = "check_no_spawn_volumes_for_special_spawning",
		category = "AI"
	},
	{
		description = "Shows perception for some units",
		is_boolean = true,
		setting_name = "debug_ai_perception",
		category = "AI"
	},
	{
		description = "Shows attack patterns for enemies. Gray -> has no slot. Lime -> has slot. Red -> is attacking. Orange -> is in attack cooldown. Blue -> is staggered or blocked.",
		is_boolean = true,
		setting_name = "debug_ai_attack_pattern",
		category = "AI"
	},
	{
		description = "Automagically destroys AI that are at a far enough distance from all the players.",
		is_boolean = true,
		setting_name = "ai_far_off_despawn_disabled",
		category = "AI"
	},
	{
		description = "Shows the workings of the ai recycler and area sets",
		is_boolean = true,
		setting_name = "debug_ai_recycler",
		category = "AI"
	},
	{
		description = "Shows frozen breed units",
		is_boolean = true,
		setting_name = "debug_breed_freeze",
		category = "AI"
	},
	{
		description = "Disables AI freeze optimization",
		is_boolean = true,
		setting_name = "disable_breed_freeze_opt",
		category = "AI"
	},
	{
		description = "Enemy recycler will spawn rats wile in free-flight",
		is_boolean = true,
		setting_name = "recycler_in_freeflight",
		category = "AI"
	},
	{
		description = "Shows the active respawns as yellow spheres with distance from start. removed respawns due to crossroads are bluish spheres",
		is_boolean = true,
		setting_name = "debug_player_respawns",
		category = "AI"
	},
	{
		description = "Horde debugging, shows how it picks spawn points",
		is_boolean = true,
		setting_name = "debug_hordes",
		category = "AI"
	},
	{
		description = "Mini patrol debugging",
		is_boolean = true,
		setting_name = "debug_mini_patrols",
		category = "AI"
	},
	{
		description = "Draws patrols routes",
		category = "AI",
		setting_name = "draw_patrol_routes",
		func = function ()
			Managers.state.conflict.level_analysis:draw_patrol_routes()
		end
	},
	{
		description = "Draws patrol start positions",
		category = "AI",
		setting_name = "draw_patrol_start_positions",
		func = function ()
			Managers.state.conflict.level_analysis:draw_patrol_start_positions()
		end
	},
	{
		description = "Spawns a boss patrol at the closest spawner, use draw_patrol_start_positions to see spawners",
		category = "AI",
		setting_name = "spawn_patrol_at_closest_spawner",
		func = function ()
			Managers.state.conflict:debug_spawn_spline_patrol_closest_spawner()
		end
	},
	{
		description = "AI behviour trees text over unit.",
		is_boolean = true,
		setting_name = "debug_behaviour_trees",
		category = "AI"
	},
	{
		description = "Show debug data for terror events.",
		is_boolean = true,
		setting_name = "debug_terror",
		category = "AI"
	},
	{
		description = "Change which difficulty terror events will be played at",
		setting_name = "terror_event_difficulty",
		category = "AI",
		item_source = DifficultySettings
	},
	{
		setting_name = "terror_event_difficulty_tweak",
		category = "AI",
		description = "Change which difficulty tweak terror events will be played at.",
		item_source = {},
		load_items_source_func = function (options)
			table.clear(options)

			for i = -DifficultyTweak.range, DifficultyTweak.range do
				options[#options + 1] = i
			end

			table.sort(options)

			options[#options + 1] = "[clear value]"
		end
	},
	{
		description = "Draws a sphere and text at each respawner unit in the level. Must set 'debug_ai_recycler=true'",
		category = "AI",
		setting_name = "debug_spawn_ogre_from_closest_boss_spawner",
		func = function ()
			if script_data.debug_ai_recycler then
				local only_draw = false

				Managers.state.conflict.level_analysis:debug_spawn_boss_from_closest_spawner_to_player(only_draw)
			end
		end
	},
	{
		description = "Injects all patrols into the main path'",
		category = "AI",
		setting_name = "debug_spawn_all_boss_patrols",
		func = function ()
			print("All boss patrols injected into the main path now")
			Managers.state.conflict.level_analysis:spawn_all_boss_spline_patrols()
		end
	},
	{
		description = "Injects all bosses into the main path'",
		category = "AI",
		setting_name = "debug_inject_bosses_in_all_boss_spawners",
		func = function ()
			print("All boss enemies are now injected into the main path!")
			Managers.state.conflict.level_analysis:inject_all_bosses_into_main_path()
		end
	},
	{
		description = "Debug spawns one special through the specials spawning system.",
		category = "AI",
		setting_name = "debug_spawn_special",
		func = function ()
			Managers.state.conflict.specials_pacing:debug_spawn()
		end
	},
	{
		description = "Enable navigation group debugging.",
		is_boolean = true,
		setting_name = "debug_navigation_group_manager",
		category = "AI"
	},
	{
		description = "Draws lines between all navigation-groups. Remove lines by pressing 'X'. ",
		category = "AI",
		setting_name = "draw_navigation_group_connections",
		func = function ()
			Managers.state.conflict.navigation_group_manager:draw_group_connections()
		end
	},
	{
		description = "Enables debugging for spawning packs using perlin noise.",
		is_boolean = true,
		setting_name = "debug_perlin_noise_spawning",
		category = "AI"
	},
	{
		description = "Visual debugging for movement.",
		setting_name = "debug_ai_movement",
		category = "AI",
		item_source = {
			graphics_only = "graphics_only",
			text_and_graphics = "text_and_graphics"
		}
	},
	{
		description = "Shows which of nav tag volume layer 20-29 that are enabled.",
		is_boolean = true,
		setting_name = "debug_nav_tag_volume_layers",
		category = "AI"
	},
	{
		description = "Visual debugging for skeleton for debug_unit.",
		is_boolean = true,
		setting_name = "debug_skeleton",
		category = "AI"
	},
	{
		description = "Fades out debug_unit.",
		is_boolean = true,
		setting_name = "fade_debug_unit",
		category = "AI"
	},
	{
		description = "Visual debugging for big boy turning.",
		is_boolean = true,
		setting_name = "debug_big_boy_turning",
		category = "AI"
	},
	{
		description = "Visual debugging when enemy AI pathfinding fails.",
		is_boolean = true,
		setting_name = "ai_debug_failed_pathing",
		category = "AI"
	},
	{
		description = "Will hide then node-history list on the left side of the screen, when in the behavior debugger screen. (CTRL+B)",
		is_boolean = true,
		setting_name = "hide_behavior_tree_node_history",
		category = "AI"
	},
	{
		description = "Displays engine debug for EngineOptimizedExtensions",
		is_boolean = true,
		setting_name = "show_engine_locomotion_debug",
		category = "AI"
	},
	{
		description = "Policy to use for the enemy package loader (see EnemyPackageLoaderSettings). [NEED TO RESTART GAME]",
		setting_name = "enemy_package_loader_policy",
		category = "AI",
		item_source = {
			console = "console"
		}
	},
	{
		description = "Shows which dynamic packages that have been loaded or unloaded.",
		is_boolean = true,
		setting_name = "debug_enemy_package_loader",
		category = "AI"
	},
	{
		description = "Visual debugging for ai attacks",
		is_boolean = true,
		setting_name = "debug_ai_attack",
		category = "AI"
	},
	{
		description = "Visual debugging for ai targeting.",
		is_boolean = true,
		setting_name = "debug_ai_targets",
		category = "AI"
	},
	{
		description = "Only enables AI debugger during freeflight",
		is_boolean = true,
		setting_name = "ai_debugger_freeflight_only",
		category = "AI"
	},
	{
		description = "Shows the aoe targeting alternatives and which target position chosen",
		is_boolean = true,
		setting_name = "ai_debug_aoe_targeting",
		category = "AI"
	},
	{
		description = "Shows the raycasts when testing trajectories",
		is_boolean = true,
		setting_name = "ai_debug_trajectory_raycast",
		category = "AI"
	},
	{
		description = "Visualize AI slots",
		is_boolean = true,
		setting_name = "ai_debug_slots",
		category = "AI"
	},
	{
		description = "Will log when stuff happens",
		is_boolean = true,
		setting_name = "ai_debug_inventory",
		category = "AI"
	},
	{
		description = "Will visualize ai sound detection and reactions",
		is_boolean = true,
		setting_name = "ai_debug_sound_detection",
		category = "AI"
	},
	{
		description = "Visual debugging and logging for groups/patrols",
		is_boolean = true,
		setting_name = "ai_debug_smartobject",
		category = "AI"
	},
	{
		description = "Pack master will attack regardless of if the player is already under attack or not.",
		is_boolean = true,
		setting_name = "ai_packmaster_ignore_dogpile",
		category = "AI"
	},
	{
		description = "If not true, when quick-spawning enemies the ai debugger will auto select them.",
		is_boolean = true,
		setting_name = "ai_disable_auto_ai_debugger_target",
		category = "AI"
	},
	{
		description = "show globadiers areas for decision making",
		is_boolean = true,
		setting_name = "ai_globadier_behavior",
		category = "AI"
	},
	{
		description = "show gutter runner debug",
		is_boolean = true,
		setting_name = "ai_gutter_runner_behavior",
		category = "AI"
	},
	{
		description = "show loot rat debug",
		is_boolean = true,
		setting_name = "ai_loot_rat_behavior",
		category = "AI"
	},
	{
		description = "Toggle navmesh debug draw mode.",
		setting_name = "nav_mesh_debug",
		category = "AI",
		item_source = {
			retained = "retained",
			continuous = "continuous"
		}
	},
	{
		description = "Shows cover points as green spheres. Bad cover points as red capsules, only draws at level startup.",
		is_boolean = true,
		setting_name = "show_hidden_cover_points",
		category = "AI"
	},
	{
		description = "Shows all coverpoints within 35m from the player",
		is_boolean = true,
		setting_name = "debug_near_cover_points",
		category = "AI"
	},
	{
		description = "AI group/patrols",
		is_boolean = true,
		setting_name = "ai_group_debug",
		category = "AI"
	},
	{
		description = "Debug patrols",
		is_boolean = true,
		setting_name = "debug_patrols",
		category = "AI"
	},
	{
		description = "Debug which groups are being considered for despawning by recycler",
		is_boolean = true,
		setting_name = "debug_group_recycling",
		category = "AI"
	},
	{
		description = "Debug chaos troll",
		is_boolean = true,
		setting_name = "debug_chaos_troll",
		category = "AI"
	},
	{
		description = "Debug Skaven Stormfiend",
		is_boolean = true,
		setting_name = "debug_stormfiend",
		category = "AI"
	},
	{
		description = "Debug the Chaos Vortex",
		is_boolean = true,
		setting_name = "debug_vortex",
		category = "AI"
	},
	{
		description = "Debug liquid system used for AoE effects.",
		is_boolean = true,
		setting_name = "debug_liquid_system",
		category = "AI"
	},
	{
		description = "Debug damage wave used for AoE attacks.",
		is_boolean = true,
		setting_name = "debug_damage_wave",
		category = "AI"
	},
	{
		description = "Debug damage blobs used for AoE attacks.",
		is_boolean = true,
		setting_name = "debug_damage_blobs",
		category = "AI"
	},
	{
		description = "AI interest points",
		is_boolean = true,
		setting_name = "ai_interest_point_debug",
		category = "AI"
	},
	{
		description = "AI interest points gets randomly disabled without this",
		is_boolean = true,
		setting_name = "ai_dont_randomize_interest_points",
		category = "AI"
	},
	{
		description = "ratling gunner debug",
		is_boolean = true,
		setting_name = "ai_ratling_gunner_debug",
		category = "AI"
	},
	{
		description = "disable to debug crashes more clearly or to profile.",
		is_boolean = true,
		setting_name = "navigation_thread_disabled",
		category = "AI"
	},
	{
		description = "Disable rats spreading out more.",
		is_boolean = true,
		setting_name = "disable_crowd_dispersion",
		category = "AI"
	},
	{
		description = "Sets the time available for pathfinding",
		setting_name = "navigation_pathfinder_budget",
		category = "AI",
		item_source = {
			default = true,
			short = true,
			long = true
		},
		func = function (options, index)
			local option = options[index]
			local nav_world = Managers.state.entity:system("ai_system"):nav_world()

			if option == "off" then
				print("Not changing pathfinding budget")
			elseif option == "short" then
				local ms = 0.1

				printf("Changing pathfinding budget to %.1fms", ms)
				GwNavWorld.set_pathfinder_budget(nav_world, ms * 0.001)
			else
				local ms = 100

				printf("Changing pathfinding budget to %.1fms", ms)
				GwNavWorld.set_pathfinder_budget(nav_world, ms * 0.001)
			end
		end
	},
	{
		description = "Enables visual debugging.",
		category = "AI",
		setting_name = "navigation_visual_debug_enabled",
		callback = "enable_navigation_visual_debug",
		is_boolean = true
	},
	{
		description = "Show stagger immunity info on enemies.",
		is_boolean = true,
		setting_name = "debug_stagger",
		category = "AI"
	},
	{
		description = "Shows the values for current attack intensity",
		is_boolean = true,
		setting_name = "debug_attack_intensity",
		category = "AI"
	},
	{
		description = "Find it annoying that the game ends every time you die? Well enable this setting then!",
		setting_name = "disable_gamemode_end",
		category = "Gamemode/level",
		propagate_to_server = true,
		is_boolean = true
	},
	{
		description = "Find it annoying that the game ends every time you die? Well enable this setting then!",
		setting_name = "disable_gamemode_end_hero_check",
		category = "Gamemode/level",
		propagate_to_server = true,
		is_boolean = true
	},
	{
		description = "Game will not end even though if all players die",
		is_boolean = true,
		setting_name = "lose_condition_disabled",
		category = "Gamemode/level"
	},
	{
		description = "Game will not end until bots have died. (Only for Versus now)",
		is_boolean = true,
		setting_name = "lose_condition_also_count_bots",
		category = "Gamemode/level"
	},
	{
		description = "Unlock all levels in the map",
		is_boolean = true,
		setting_name = "unlock_all_levels",
		category = "Gamemode/level"
	},
	{
		description = "Unlock all difficulties in the map",
		is_boolean = true,
		setting_name = "unlock_all_difficulties",
		category = "Gamemode/level"
	},
	{
		description = "Various level debug stuff",
		is_boolean = true,
		setting_name = "debug_level",
		category = "Gamemode/level"
	},
	{
		description = "Shows debug information about Weave spawning",
		is_boolean = true,
		setting_name = "debug_weave_spawning",
		category = "Gamemode/level"
	},
	{
		description = "Save debug info for server seeded randoms, can be printed on server/client with debug_print_random_values() in console",
		is_boolean = true,
		setting_name = "debug_server_seeded_random",
		category = "Gamemode/level"
	},
	{
		description = "Normally the level_seed will be 0 when starting a map from toolcenter, but with this you will get a random level-seed.",
		is_boolean = true,
		setting_name = "random_level_seed_from_toolcenter",
		category = "Gamemode/level"
	},
	{
		description = "Enables room debuging using f1-f4",
		is_boolean = true,
		setting_name = "debug_rooms",
		category = "Gamemode/level"
	},
	{
		description = "Allows you to skip ingame cutscenes",
		is_boolean = true,
		setting_name = "skippable_cutscenes",
		category = "Gamemode/level"
	},
	{
		description = "Change which difficulty you play at. Restart required.",
		setting_name = "current_difficulty_setting",
		category = "Gamemode/level",
		item_source = DifficultySettings
	},
	{
		setting_name = "current_difficulty_tweak_setting",
		category = "Gamemode/level",
		description = "Change which difficulty tweak you play at. Restart required.",
		item_source = {},
		load_items_source_func = function (options)
			table.clear(options)

			for i = -DifficultyTweak.range, DifficultyTweak.range do
				options[#options + 1] = i
			end

			table.sort(options)

			options[#options + 1] = "[clear value]"
		end
	},
	{
		description = "Set difficulty. No restart required for most stuff, mostly used for testing enemies. Some stuff might need restart of level.",
		setting_name = "set_difficulty",
		category = "Gamemode/level",
		item_source = {},
		load_items_source_func = function (options)
			table.clear(options)

			for _, difficulty in pairs(Difficulties) do
				options[#options + 1] = difficulty
			end

			table.sort(options)
		end,
		func = function (options, index)
			local difficulty = options[index]
			local _, current_difficulty_tweak = Managers.state.difficulty:get_difficulty()

			Managers.state.difficulty:set_difficulty(difficulty, current_difficulty_tweak)

			local side = Managers.state.side:get_side_from_name("heroes")
			local player_and_bot_units = side.PLAYER_AND_BOT_UNITS

			for i = 1, #player_and_bot_units do
				local player_unit = player_and_bot_units[i]
				local player_unit_attack_intensity_extension = ScriptUnit.has_extension(player_unit, "attack_intensity_system")

				if player_unit_attack_intensity_extension then
					player_unit_attack_intensity_extension:refresh_difficulty()
				end
			end

			print("Set difficulty to " .. difficulty .. current_difficulty_tweak)
		end
	},
	{
		setting_name = "set_difficulty_tweak",
		category = "Gamemode/level",
		description = "Set difficulty tweak to make the current difficulty slightly easier/harder. " .. "No restart required for most stuff, mostly used for testing enemies. Some stuff might need restart of level.",
		item_source = {},
		load_items_source_func = function (options)
			table.clear(options)

			for i = -DifficultyTweak.range, DifficultyTweak.range do
				options[#options + 1] = i
			end

			table.sort(options)
		end,
		func = function (options, index)
			local current_difficulty, _ = Managers.state.difficulty:get_difficulty()
			local difficulty_tweak = options[index]

			Managers.state.difficulty:set_difficulty(current_difficulty, difficulty_tweak)
			print("Set difficulty to " .. current_difficulty .. difficulty_tweak)
		end
	},
	{
		description = "Enables debug options for mutators",
		is_boolean = true,
		setting_name = "debug_mutators",
		category = "Gamemode/level"
	},
	{
		description = "Debug for darkness in drachenfells castle dungeon level.",
		is_boolean = true,
		setting_name = "debug_darkness",
		category = "Gamemode/level"
	},
	{
		description = "Shows state of the game-mode and in what parties different players are.",
		is_boolean = true,
		setting_name = "show_gamemode_debug",
		category = "Gamemode/level"
	},
	{
		description = "Disable horde surge events.",
		is_boolean = true,
		setting_name = "disable_horde_surge",
		category = "Gamemode/level"
	},
	{
		description = "Displays debug info for Horde Surge events.",
		is_boolean = true,
		setting_name = "debug_horde_surge",
		category = "Gamemode/level"
	},
	{
		description = "Disables the level introduction by Lohner / Olesya",
		is_boolean = true,
		setting_name = "disable_level_intro_dialogue",
		category = "Visual/audio"
	},
	{
		description = "Debug print Hit Effects Templates",
		is_boolean = true,
		setting_name = "debug_hit_effects_templates",
		category = "Visual/audio"
	},
	{
		description = "Prints total ammount of particles currently simulated in the game world",
		is_boolean = true,
		setting_name = "debug_particle_simulation",
		category = "Visual/audio"
	},
	{
		description = "Disabled blood splatter on screen from other players' kills",
		is_boolean = true,
		setting_name = "disable_remote_blood_splatter",
		category = "Visual/audio"
	},
	{
		description = "Disabled blood splatter on screen from behind camera",
		is_boolean = true,
		setting_name = "disable_behind_blood_splatter",
		category = "Visual/audio"
	},
	{
		description = "Disable combat music",
		is_boolean = true,
		setting_name = "debug_disable_combat_music",
		category = "Visual/audio"
	},
	{
		description = "Show material effect visual debug info.",
		is_boolean = true,
		setting_name = "debug_material_effects",
		category = "Visual/audio"
	},
	{
		description = "Sound debugging",
		is_boolean = true,
		setting_name = "sound_debug",
		category = "Visual/audio"
	},
	{
		description = "Triggers breakpoint when selected cue is triggered from Lua. (Requires attached debugger). Listen will fill the list with sounds that are played this session.",
		setting_name = "sound_cue_breakpoint",
		category = "Visual/audio",
		item_source = {
			"Listen",
			"[clear value]"
		},
		load_items_source_func = function (options)
			table.clear(options)

			options[1] = "Listen"
			options[2] = "[clear value]"

			local events = rawget(_G, "_sound_cue_breakpoint_set")

			if events then
				local i = #options

				for event_name in pairs(events) do
					i = i + 1
					options[i] = event_name
				end
			end
		end
	},
	{
		description = "Shows Wwise Timestamp.",
		is_boolean = true,
		setting_name = "debug_wwise_timestamp",
		category = "Visual/audio"
	},
	{
		description = "Visual debug for the sound sector system",
		is_boolean = true,
		setting_name = "sound_sector_system_debug",
		category = "Visual/audio"
	},
	{
		description = "debug info for sound environments",
		is_boolean = true,
		setting_name = "debug_sound_environments",
		category = "Visual/audio"
	},
	{
		description = "music stuff",
		is_boolean = true,
		setting_name = "debug_music",
		category = "Visual/audio"
	},
	{
		description = "debug lua_elevation parameter sent to wwise",
		is_boolean = true,
		setting_name = "debug_wwise_elevation",
		category = "Visual/audio"
	},
	{
		description = "debug current environment blend",
		is_boolean = true,
		setting_name = "debug_environment_blend",
		category = "Visual/audio"
	},
	{
		description = "debug nav mesh pasted particle effects",
		is_boolean = true,
		setting_name = "debug_nav_mesh_vfx",
		category = "Visual/audio"
	},
	{
		description = "debug sorting for proximity dependent sfx and vfx",
		is_boolean = true,
		setting_name = "debug_proximity_fx",
		category = "Visual/audio"
	},
	{
		description = "show values sent to wwise",
		is_boolean = true,
		setting_name = "debug_drunk_sound_values",
		category = "Visual/audio"
	},
	{
		description = "maximum allowed skaven to play proximity dependent sfx and vfx settings: 5/10/12/15/20/25/30/40/60",
		setting_name = "max_allowed_proximity_fx",
		category = "Visual/audio",
		item_source = {
			nil,
			nil,
			nil,
			nil,
			true,
			nil,
			nil,
			nil,
			nil,
			true,
			nil,
			true,
			nil,
			nil,
			true,
			nil,
			nil,
			nil,
			nil,
			true,
			nil,
			nil,
			nil,
			nil,
			true,
			nil,
			nil,
			nil,
			nil,
			true,
			nil,
			nil,
			nil,
			nil,
			nil,
			nil,
			nil,
			nil,
			nil,
			true,
			nil,
			nil,
			nil,
			nil,
			nil,
			nil,
			nil,
			nil,
			nil,
			nil,
			nil,
			nil,
			nil,
			nil,
			true,
			nil,
			nil,
			nil,
			nil,
			nil,
			nil,
			nil,
			nil,
			nil,
			true
		}
	},
	{
		no_nil = true,
		description = "Stuffs",
		setting_name = "visual_debug",
		category = "Visual/audio",
		command_list = {
			{
				description = "off",
				commands = {
					{
						"renderer",
						"settings",
						"debug_rendering",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_xyz_luminance_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_xyz_luminance_clipping_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_lab_luminance_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_lab_luminance_clipping_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_normal_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_roughness_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_specular_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_metallic_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_ambient_diffuse_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_velocity_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_ao_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_sun_shadow_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"bloom_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"light_shafts_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"eye_adaptation_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"cached_shadow_atlas_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"shadow_atlas_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"sun_shadow_map_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"static_shadow_visualization",
						"false"
					}
				}
			},
			{
				description = "Albedo XYZ Luminance",
				commands = {
					{
						"renderer",
						"settings",
						"debug_rendering",
						"true"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_xyz_luminance_visualization",
						"true"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_xyz_luminance_clipping_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_lab_luminance_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_lab_luminance_clipping_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_normal_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_roughness_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_specular_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_metallic_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_ambient_diffuse_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_velocity_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_ao_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_sun_shadow_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"bloom_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"light_shafts_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"eye_adaptation_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"cached_shadow_atlas_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"shadow_atlas_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"sun_shadow_map_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"static_shadow_visualization",
						"false"
					}
				}
			},
			{
				description = "Albedo XYZ Luminance Clipping",
				commands = {
					{
						"renderer",
						"settings",
						"debug_rendering",
						"true"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_xyz_luminance_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_xyz_luminance_clipping_visualization",
						"true"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_lab_luminance_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_lab_luminance_clipping_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_normal_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_roughness_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_specular_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_metallic_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_ambient_diffuse_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_velocity_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_ao_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_sun_shadow_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"bloom_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"light_shafts_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"eye_adaptation_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"cached_shadow_atlas_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"shadow_atlas_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"sun_shadow_map_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"static_shadow_visualization",
						"false"
					}
				}
			},
			{
				description = "Albedo Lab Luminance",
				commands = {
					{
						"renderer",
						"settings",
						"debug_rendering",
						"true"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_xyz_luminance_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_xyz_luminance_clipping_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_lab_luminance_visualization",
						"true"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_lab_luminance_clipping_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_normal_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_roughness_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_specular_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_metallic_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_ambient_diffuse_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_velocity_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_ao_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_sun_shadow_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"bloom_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"light_shafts_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"eye_adaptation_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"cached_shadow_atlas_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"shadow_atlas_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"sun_shadow_map_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"static_shadow_visualization",
						"false"
					}
				}
			},
			{
				description = "Albedo Lab Luminance Clipping",
				commands = {
					{
						"renderer",
						"settings",
						"debug_rendering",
						"true"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_xyz_luminance_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_xyz_luminance_clipping_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_lab_luminance_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_lab_luminance_clipping_visualization",
						"true"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_normal_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_roughness_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_specular_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_metallic_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_ambient_diffuse_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_velocity_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_ao_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_sun_shadow_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"bloom_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"light_shafts_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"eye_adaptation_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"cached_shadow_atlas_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"shadow_atlas_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"sun_shadow_map_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"static_shadow_visualization",
						"false"
					}
				}
			},
			{
				description = "Albedo",
				commands = {
					{
						"renderer",
						"settings",
						"debug_rendering",
						"true"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_xyz_luminance_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_xyz_luminance_clipping_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_lab_luminance_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_lab_luminance_clipping_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_visualization",
						"true"
					},
					{
						"renderer",
						"settings",
						"gbuffer_normal_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_roughness_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_specular_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_metallic_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_ambient_diffuse_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_velocity_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_ao_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_sun_shadow_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"bloom_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"light_shafts_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"eye_adaptation_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"cached_shadow_atlas_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"shadow_atlas_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"sun_shadow_map_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"static_shadow_visualization",
						"false"
					}
				}
			},
			{
				description = "Normals",
				commands = {
					{
						"renderer",
						"settings",
						"debug_rendering",
						"true"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_xyz_luminance_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_xyz_luminance_clipping_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_lab_luminance_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_lab_luminance_clipping_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_normal_visualization",
						"true"
					},
					{
						"renderer",
						"settings",
						"gbuffer_roughness_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_specular_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_metallic_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_ambient_diffuse_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_velocity_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_ao_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_sun_shadow_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"bloom_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"light_shafts_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"eye_adaptation_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"cached_shadow_atlas_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"shadow_atlas_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"sun_shadow_map_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"static_shadow_visualization",
						"false"
					}
				}
			},
			{
				description = "Roughness",
				commands = {
					{
						"renderer",
						"settings",
						"debug_rendering",
						"true"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_xyz_luminance_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_xyz_luminance_clipping_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_lab_luminance_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_lab_luminance_clipping_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_normal_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_roughness_visualization",
						"true"
					},
					{
						"renderer",
						"settings",
						"gbuffer_specular_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_metallic_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_ambient_diffuse_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_velocity_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_ao_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_sun_shadow_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"bloom_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"light_shafts_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"eye_adaptation_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"cached_shadow_atlas_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"shadow_atlas_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"sun_shadow_map_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"static_shadow_visualization",
						"false"
					}
				}
			},
			{
				description = "Specular",
				commands = {
					{
						"renderer",
						"settings",
						"debug_rendering",
						"true"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_xyz_luminance_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_xyz_luminance_clipping_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_lab_luminance_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_lab_luminance_clipping_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_normal_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_roughness_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_specular_visualization",
						"true"
					},
					{
						"renderer",
						"settings",
						"gbuffer_metallic_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_ambient_diffuse_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_velocity_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_ao_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_sun_shadow_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"bloom_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"light_shafts_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"eye_adaptation_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"cached_shadow_atlas_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"shadow_atlas_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"sun_shadow_map_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"static_shadow_visualization",
						"false"
					}
				}
			},
			{
				description = "Metallic",
				commands = {
					{
						"renderer",
						"settings",
						"debug_rendering",
						"true"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_xyz_luminance_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_xyz_luminance_clipping_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_lab_luminance_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_lab_luminance_clipping_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_normal_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_roughness_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_specular_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_metallic_visualization",
						"true"
					},
					{
						"renderer",
						"settings",
						"gbuffer_ambient_diffuse_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_velocity_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_ao_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_sun_shadow_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"bloom_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"light_shafts_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"eye_adaptation_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"cached_shadow_atlas_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"shadow_atlas_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"sun_shadow_map_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"static_shadow_visualization",
						"false"
					}
				}
			},
			{
				description = "Ambient Diffuse",
				commands = {
					{
						"renderer",
						"settings",
						"debug_rendering",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_xyz_luminance_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_xyz_luminance_clipping_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_lab_luminance_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_lab_luminance_clipping_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_normal_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_roughness_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_specular_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_metallic_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_ambient_diffuse_visualization",
						"true"
					},
					{
						"renderer",
						"settings",
						"gbuffer_velocity_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_ao_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_sun_shadow_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"bloom_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"light_shafts_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"eye_adaptation_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"cached_shadow_atlas_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"shadow_atlas_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"sun_shadow_map_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"static_shadow_visualization",
						"false"
					}
				}
			},
			{
				description = "Velocity",
				commands = {
					{
						"renderer",
						"settings",
						"debug_rendering",
						"true"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_xyz_luminance_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_xyz_luminance_clipping_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_lab_luminance_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_lab_luminance_clipping_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_normal_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_roughness_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_specular_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_metallic_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_ambient_diffuse_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_velocity_visualization",
						"true"
					},
					{
						"renderer",
						"settings",
						"gbuffer_ao_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_sun_shadow_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"bloom_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"light_shafts_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"eye_adaptation_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"cached_shadow_atlas_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"shadow_atlas_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"sun_shadow_map_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"static_shadow_visualization",
						"false"
					}
				}
			},
			{
				description = "Ambient Occlusion",
				commands = {
					{
						"renderer",
						"settings",
						"debug_rendering",
						"true"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_xyz_luminance_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_xyz_luminance_clipping_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_lab_luminance_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_lab_luminance_clipping_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_normal_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_roughness_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_specular_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_metallic_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_ambient_diffuse_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_velocity_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_ao_visualization",
						"true"
					},
					{
						"renderer",
						"settings",
						"gbuffer_sun_shadow_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"bloom_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"light_shafts_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"eye_adaptation_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"cached_shadow_atlas_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"shadow_atlas_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"sun_shadow_map_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"static_shadow_visualization",
						"false"
					}
				}
			},
			{
				description = "Sun Shadow",
				commands = {
					{
						"renderer",
						"settings",
						"debug_rendering",
						"true"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_xyz_luminance_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_xyz_luminance_clipping_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_lab_luminance_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_lab_luminance_clipping_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_normal_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_roughness_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_specular_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_metallic_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_ambient_diffuse_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_velocity_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_ao_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_sun_shadow_visualization",
						"true"
					},
					{
						"renderer",
						"settings",
						"bloom_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"light_shafts_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"eye_adaptation_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"cached_shadow_atlas_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"shadow_atlas_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"sun_shadow_map_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"static_shadow_visualization",
						"false"
					}
				}
			},
			{
				description = "Bloom",
				commands = {
					{
						"renderer",
						"settings",
						"debug_rendering",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_xyz_luminance_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_xyz_luminance_clipping_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_lab_luminance_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_lab_luminance_clipping_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_normal_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_roughness_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_specular_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_metallic_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_ambient_diffuse_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_velocity_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_ao_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_sun_shadow_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"bloom_visualization",
						"true"
					},
					{
						"renderer",
						"settings",
						"light_shafts_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"eye_adaptation_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"cached_shadow_atlas_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"shadow_atlas_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"sun_shadow_map_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"static_shadow_visualization",
						"false"
					}
				}
			},
			{
				description = "Light Shafts",
				commands = {
					{
						"renderer",
						"settings",
						"debug_rendering",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_xyz_luminance_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_xyz_luminance_clipping_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_lab_luminance_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_lab_luminance_clipping_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_normal_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_roughness_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_specular_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_metallic_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_ambient_diffuse_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_velocity_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_ao_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_sun_shadow_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"bloom_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"light_shafts_visualization",
						"true"
					},
					{
						"renderer",
						"settings",
						"eye_adaptation_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"cached_shadow_atlas_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"shadow_atlas_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"sun_shadow_map_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"static_shadow_visualization",
						"false"
					}
				}
			},
			{
				description = "Eye Adaptation",
				commands = {
					{
						"renderer",
						"settings",
						"debug_rendering",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_xyz_luminance_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_xyz_luminance_clipping_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_lab_luminance_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_lab_luminance_clipping_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_normal_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_roughness_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_specular_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_metallic_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_ambient_diffuse_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_velocity_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_ao_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_sun_shadow_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"bloom_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"light_shafts_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"eye_adaptation_visualization",
						"true"
					},
					{
						"renderer",
						"settings",
						"cached_shadow_atlas_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"shadow_atlas_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"sun_shadow_map_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"static_shadow_visualization",
						"false"
					}
				}
			},
			{
				description = "Cascaded shadow map",
				commands = {
					{
						"renderer",
						"settings",
						"debug_rendering",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_xyz_luminance_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_xyz_luminance_clipping_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_lab_luminance_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_lab_luminance_clipping_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_normal_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_roughness_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_specular_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_metallic_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_ambient_diffuse_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_velocity_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_ao_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_sun_shadow_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"bloom_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"light_shafts_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"eye_adaptation_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"cached_shadow_atlas_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"shadow_atlas_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"sun_shadow_map_visualization",
						"true"
					},
					{
						"renderer",
						"settings",
						"static_shadow_visualization",
						"false"
					}
				}
			},
			{
				description = "Atlased shadow mapping",
				commands = {
					{
						"renderer",
						"settings",
						"debug_rendering",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_xyz_luminance_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_xyz_luminance_clipping_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_lab_luminance_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_lab_luminance_clipping_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_normal_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_roughness_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_specular_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_metallic_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_ambient_diffuse_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_velocity_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_ao_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_sun_shadow_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"bloom_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"light_shafts_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"eye_adaptation_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"cached_shadow_atlas_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"shadow_atlas_visualization",
						"true"
					},
					{
						"renderer",
						"settings",
						"sun_shadow_map_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"static_shadow_visualization",
						"false"
					}
				}
			},
			{
				description = "Cached atlased shadow mapping",
				commands = {
					{
						"renderer",
						"settings",
						"debug_rendering",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_xyz_luminance_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_xyz_luminance_clipping_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_lab_luminance_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_lab_luminance_clipping_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_normal_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_roughness_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_specular_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_metallic_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_ambient_diffuse_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_velocity_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_ao_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_sun_shadow_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"bloom_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"light_shafts_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"eye_adaptation_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"cached_shadow_atlas_visualization",
						"true"
					},
					{
						"renderer",
						"settings",
						"shadow_atlas_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"sun_shadow_map_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"static_shadow_visualization",
						"false"
					}
				}
			},
			{
				description = "Static Shadow Map",
				commands = {
					{
						"renderer",
						"settings",
						"debug_rendering",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_xyz_luminance_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_xyz_luminance_clipping_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_lab_luminance_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_lab_luminance_clipping_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_albedo_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_normal_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_roughness_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_specular_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_metallic_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_ambient_diffuse_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_velocity_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_ao_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"gbuffer_sun_shadow_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"bloom_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"light_shafts_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"eye_adaptation_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"cached_shadow_atlas_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"shadow_atlas_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"sun_shadow_map_visualization",
						"false"
					},
					{
						"renderer",
						"settings",
						"static_shadow_visualization",
						"true"
					}
				}
			}
		}
	},
	{
		description = "Bind to a numpad key and do it.",
		category = "Visual/audio",
		setting_name = "take_screenshot",
		func = function ()
			FrameCapture.screen_shot("console_send", 2)
		end
	},
	{
		description = "Disables all debug draws",
		is_boolean = true,
		setting_name = "disable_debug_draw",
		category = "Visual/audio"
	},
	{
		description = "Draw pretty lines for sound occlusion.",
		setting_name = "visualize_sound_occlusion",
		callback = "visualize_sound_occlusion",
		category = "Visual/audio",
		item_source = {
			["toggle sound occlusion"] = true
		}
	},
	{
		description = "Print out debugging for VoIP",
		is_boolean = true,
		setting_name = "debug_voip",
		category = "Visual/audio"
	},
	{
		description = "Disable VoIP",
		is_boolean = true,
		setting_name = "disable_voip",
		category = "Visual/audio"
	},
	{
		setting_name = "simulate_color_blindness",
		category = "Visual/audio",
		description = BUILD == "dev" and "Enables or disables different color blindness simulations." or "This is only available in dev builds for performance reasons. Switch exe to dev to see the effects of the changes.",
		item_source = {
			common_deuteranomaly = true,
			off = true,
			rare_protanomaly = true,
			very_rare_tritanomaly = true
		},
		func = function (options, index)
			local option = options[index]
			local on = true
			local mode = 0

			if option == "off" then
				on = false
			else
				mode = option == "rare_protanomaly" and 0 or option == "common_deuteranomaly" and 1 or 2
			end

			if on then
				printf("Turning on mode %d of color blindness simulation.", mode)
				Application.set_user_setting("render_settings", "color_blindness_mode", mode)
			else
				printf("Turning off color blindness simulation.")
			end

			Application.set_user_setting("render_settings", "simulate_color_blindness", on)
			Application.apply_user_settings()
			GlobalShaderFlags.apply_settings()
		end
	},
	{
		description = "This is used to turn off the fading of AI characters that collide with the camera. This is useful when recording cutscenes.",
		is_boolean = true,
		setting_name = "fade_on_camera_ai_collision",
		category = "Replay"
	},
	{
		description = "This is used to turn off the screenspace effects that is aimed at a first person view. This is useful when recording cutscenes.",
		is_boolean = true,
		setting_name = "screen_space_player_camera_reactions",
		category = "Replay"
	},
	{
		no_nil = true,
		description = "Enables chain constraints",
		setting_name = "enable_chain_constraints",
		callback = "enable_chain_constraints",
		category = "Constraints",
		is_boolean = true
	},
	{
		description = "Network debugging",
		is_boolean = true,
		setting_name = "network_debug",
		category = "Network"
	},
	{
		description = "Fakes mismatching network hash",
		is_boolean = true,
		setting_name = "fake_network_hash",
		category = "Network"
	},
	{
		description = "Keeps track of the number of times an rpc send request has been triggered from a certain code row and prints the top 5 most occurring ones. Note: Disregards exclusive local rpc send calls.",
		is_boolean = true,
		setting_name = "rpc_send_count_debug",
		category = "Network"
	},
	{
		description = "Set network logging to Network.MESSAGES on startup",
		is_boolean = true,
		setting_name = "network_log_messages",
		category = "Network"
	},
	{
		description = "Set network logging to Network.SPEW on startup",
		is_boolean = true,
		setting_name = "network_log_spew",
		category = "Network"
	},
	{
		description = "matchmaking debug logging",
		is_boolean = true,
		setting_name = "matchmaking_debug",
		category = "Network"
	},
	{
		no_nil = true,
		description = "Sets latency",
		setting_name = "network_latency",
		category = "Network",
		command_list = {
			{
				description = "off",
				commands = {
					{
						"network",
						"latency",
						"0",
						"0"
					}
				}
			},
			{
				description = "0.05-0.2 seconds",
				commands = {
					{
						"network",
						"latency",
						"0.05",
						"0.2"
					}
				}
			},
			{
				description = "0.2-0.5 seconds",
				commands = {
					{
						"network",
						"latency",
						"0.2",
						"0.5"
					}
				}
			},
			{
				description = "1 seconds",
				commands = {
					{
						"network",
						"latency",
						"1",
						"1"
					}
				}
			},
			{
				description = "1-2 seconds",
				commands = {
					{
						"network",
						"latency",
						"1",
						"2"
					}
				}
			},
			{
				description = "5 seconds",
				commands = {
					{
						"network",
						"latency",
						"5",
						"5"
					}
				}
			},
			{
				description = "15 seconds",
				commands = {
					{
						"network",
						"latency",
						"15",
						"15"
					}
				}
			},
			{
				description = "30 seconds",
				commands = {
					{
						"network",
						"latency",
						"30",
						"30"
					}
				}
			},
			{
				description = "low latency",
				commands = {
					{
						"network",
						"latency",
						"0.010",
						"0.012"
					}
				}
			},
			{
				description = "medium latency",
				commands = {
					{
						"network",
						"latency",
						"0.035",
						"0.040"
					}
				}
			},
			{
				description = "high latency",
				commands = {
					{
						"network",
						"latency",
						"0.070",
						"0.080"
					}
				}
			},
			{
				description = "very high latency",
				commands = {
					{
						"network",
						"latency",
						"0.090",
						"0.100"
					}
				}
			}
		}
	},
	{
		description = "Sets Backend Response Latency",
		setting_name = "backend_response_latency",
		category = "Network",
		item_source = {
			0,
			1,
			2,
			4,
			8,
			16
		},
		custom_item_source_order = function (item_source, options)
			for _, v in ipairs(item_source) do
				local option = v

				options[#options + 1] = option
			end
		end,
		func = function (options, index)
			local option = options[index]

			script_data.backend_response_latency = option
		end
	},
	{
		no_nil = true,
		description = "Sets packet loss",
		setting_name = "packet_loss",
		category = "Network",
		command_list = {
			{
				description = "off",
				commands = {
					{
						"network",
						"packet_loss",
						"0",
						"0"
					}
				}
			},
			{
				description = "0.5%",
				commands = {
					{
						"network",
						"packet_loss",
						"0.005"
					}
				}
			},
			{
				description = "1%",
				commands = {
					{
						"network",
						"packet_loss",
						"0.01"
					}
				}
			},
			{
				description = "2%",
				commands = {
					{
						"network",
						"packet_loss",
						"0.02"
					}
				}
			}
		}
	},
	{
		no_nil = true,
		description = "Sets bandwidth limits",
		setting_name = "network connection",
		category = "Network",
		command_list = {
			{
				description = "off",
				commands = {
					{
						"network",
						"limit"
					}
				}
			},
			{
				description = "Crappy cable 192/192",
				commands = {
					{
						"network",
						"limit",
						"192",
						"192"
					}
				}
			},
			{
				description = "Crappy cable, 128/512",
				commands = {
					{
						"network",
						"limit",
						"128",
						"512"
					}
				}
			},
			{
				description = "Crappy ADSL, 512/2048",
				commands = {
					{
						"network",
						"limit",
						"512",
						"2048"
					}
				}
			},
			{
				description = "4mbit half duplex",
				commands = {
					{
						"network",
						"limit",
						"2048",
						"2048"
					}
				}
			},
			{
				description = "10mbit half duplex",
				commands = {
					{
						"network",
						"limit",
						"5000",
						"5000"
					}
				}
			}
		}
	},
	{
		description = "Shows the current clock time",
		is_boolean = true,
		setting_name = "network_clock_debug",
		category = "Network"
	},
	{
		description = "Debug Print Profile Package Loading",
		is_boolean = true,
		setting_name = "profile_package_loading_debug",
		category = "Network"
	},
	{
		description = "Debugs connections for the network",
		is_boolean = true,
		setting_name = "network_debug_connections",
		category = "Network"
	},
	{
		description = "Debugs lobbies and matchmaking",
		is_boolean = true,
		setting_name = "debug_lobbies",
		category = "Network"
	},
	{
		description = "Shows lobby data key/values",
		is_boolean = true,
		setting_name = "debug_lobby_data",
		category = "Network"
	},
	{
		description = "Debug draw peer state machine states.",
		is_boolean = true,
		setting_name = "network_draw_peer_states",
		category = "Network"
	},
	{
		description = "Logs information about the profile synchronizer. Best used together with shared_state_debug.",
		is_boolean = true,
		setting_name = "profile_synchronizer_debug_logging",
		category = "Network"
	},
	{
		description = "Allows host to query himself. Fixes the time_left of votes to 1s.",
		is_boolean = true,
		setting_name = "debug_vote_manager",
		category = "Network"
	},
	{
		description = "Do not check the network hash when joining a game as a client.",
		is_boolean = true,
		setting_name = "do_not_check_network_hash_when_joining",
		category = "Network"
	},
	{
		description = "Do not blacklist lobbies when exiting/cancelling as a client.",
		is_boolean = true,
		setting_name = "do_not_add_broken_lobby_client",
		category = "Network"
	},
	{
		description = "Debug All Contexts",
		is_boolean = true,
		setting_name = "dialogue_debug_all_contexts",
		category = "Dialogue"
	},
	{
		description = "Debug Last Query",
		is_boolean = true,
		setting_name = "dialogue_debug_last_query",
		category = "Dialogue"
	},
	{
		description = "Debug Print Successful Queries",
		is_boolean = true,
		setting_name = "dialogue_debug_last_played_query",
		category = "Dialogue"
	},
	{
		description = "Debug Print Queries",
		is_boolean = true,
		setting_name = "dialogue_debug_queries",
		category = "Dialogue"
	},
	{
		description = "Debug show Proximities",
		is_boolean = true,
		setting_name = "dialogue_debug_proximity_system",
		category = "Dialogue"
	},
	{
		description = "Visualize lookat system",
		is_boolean = true,
		setting_name = "dialogue_debug_lookat",
		category = "Dialogue"
	},
	{
		description = "Debug subtitles",
		is_boolean = true,
		setting_name = "subtitle_debug",
		category = "Dialogue"
	},
	{
		description = "Loop through active dialogue rules and filter a single one. No other rules will be loaded. (Requires restart)",
		setting_name = "filter_single_dialogue_rule",
		category = "Dialogue",
		item_source = {
			"[clear value]"
		},
		load_items_source_func = function (options)
			table.clear(options)

			local dialogue_system = Managers.state.entity:system("dialogue_system")

			if dialogue_system then
				local tagquery_database = dialogue_system:tagquery_database()
				local rule_id_mapping = tagquery_database.rule_id_mapping

				for i = 1, #rule_id_mapping do
					local rule = rule_id_mapping[i]

					options[i] = rule.name
				end
			end

			table.insert(options, 1, "[clear value]")
		end
	},
	{
		description = "Displays loaded dialogue files and filter a single one. No other files will be loaded on level load. (Requires restart)",
		setting_name = "filter_single_dialogue_file",
		category = "Dialogue",
		item_source = {},
		load_items_source_func = function (options)
			table.clear(options)

			local dialogue_system = Managers.state.entity:system("dialogue_system")

			if dialogue_system then
				local loaded_files = Managers.state.entity:system("dialogue_system"):tagquery_loader().debug_loaded_files

				if loaded_files then
					for file_name in pairs(loaded_files) do
						options[#options + 1] = string.match(file_name, "^.+/(.+)$")
					end

					table.sort(options)
				end
			end

			table.insert(options, 1, "[clear value]")
		end
	},
	{
		setting_name = "debug_dialogue_files",
		description = "Used to debug dialog files, facial expressions and missing vo/subtitles. To skip use: DebugVo.jump_to(('line_number/line_id')",
		category = "Dialogue",
		item_source = {},
		load_items_source_func = function (options)
			table.clear(options)

			local dialogue_system = Managers.state.entity:system("dialogue_system")

			if dialogue_system then
				local loaded_files = dialogue_system:tagquery_loader().debug_loaded_files

				if loaded_files then
					for file_name in pairs(loaded_files) do
						options[#options + 1] = string.match(file_name, "^.+/(.+)$")
					end

					table.sort(options)
				end
			end

			table.insert(options, 1, "[clear value]")
		end,
		func = function (options, index)
			local dialogue_system = Managers.state.entity:system("dialogue_system")

			dialogue_system:debug_vo_by_file(options[index], false)
		end
	},
	{
		description = "Missing vo sound event triggers an error sound",
		is_boolean = true,
		setting_name = "dialogue_debug_missing_vo_trigger_error_sound",
		category = "Dialogue"
	},
	{
		description = "Enables Text-To-Speech for ALL dialogues",
		is_boolean = true,
		setting_name = "debug_text_to_speech_forced",
		category = "Dialogue"
	},
	{
		description = "Enables Text-To-Speech for dialogues with missing VO",
		is_boolean = true,
		setting_name = "debug_text_to_speech_missing",
		category = "Dialogue"
	},
	{
		description = "Disable auto block on input loss",
		is_boolean = true,
		setting_name = "disable_auto_block",
		category = "Input"
	},
	{
		description = "Debug print input device statuses",
		is_boolean = true,
		setting_name = "input_debug_device_state",
		category = "Input"
	},
	{
		description = "Debug input filters output",
		is_boolean = true,
		setting_name = "input_debug_filters",
		category = "Input"
	},
	{
		description = "Set to false to disable cursor clipping.",
		is_boolean = true,
		setting_name = "clip_cursor",
		category = "UI"
	},
	{
		description = "Enables additional assertions to help catch errors in UI code. Only has an effect when DEBUG is enabled.",
		is_boolean = true,
		setting_name = "strict_ui_checks",
		category = "UI"
	},
	{
		description = "Reverts back to the old Deus Map UI in case the new one is buggy",
		is_boolean = true,
		setting_name = "FEATURE_old_map_ui",
		category = "UI"
	},
	{
		description = "Debug UI Hover elements",
		is_boolean = true,
		setting_name = "ui_debug_hover",
		category = "UI"
	},
	{
		description = "Enable/Disable the Lorebook (need to restart level to spawn page pickups)",
		is_boolean = true,
		setting_name = "lorebook_enabled",
		category = "UI"
	},
	{
		description = "Debug UI Scenegraph Areas and Sizes",
		is_boolean = true,
		setting_name = "ui_debug_scenegraph",
		category = "UI"
	},
	{
		description = "Debug UI Pixeldistance (by keybinding",
		is_boolean = true,
		setting_name = "ui_debug_pixeldistance",
		category = "UI"
	},
	{
		description = "Debug ui textures.",
		is_boolean = true,
		setting_name = "ui_debug_draw_texture",
		category = "UI"
	},
	{
		description = "Disable UI Rendering.",
		is_boolean = true,
		setting_name = "disable_ui",
		category = "UI"
	},
	{
		description = "Disable Outlines.",
		category = "UI",
		setting_name = "disable_outlines",
		callback = "disable_outlines",
		is_boolean = true
	},
	{
		description = "Disables the screens at the end of the level, getting you directly back to the inn.",
		is_boolean = true,
		setting_name = "disable_end_screens",
		category = "UI"
	},
	{
		description = "Disable Tutorial UI Rendering.",
		is_boolean = true,
		setting_name = "disable_tutorial_ui",
		category = "UI"
	},
	{
		description = "Disable Info Slate UI Rendering.",
		is_boolean = true,
		setting_name = "disable_info_slate_ui",
		category = "UI"
	},
	{
		description = "Disables the loading icon.",
		is_boolean = true,
		setting_name = "disable_loading_icon",
		category = "UI"
	},
	{
		description = "Disables the Water Mark if present.",
		is_boolean = true,
		setting_name = "disable_water_mark",
		category = "UI"
	},
	{
		description = "Looks through all the localizations and selects the longest text for each item.",
		is_boolean = true,
		setting_name = "show_longest_localizations",
		category = "UI"
	},
	{
		description = "Disable localization and show the source strings instead. Useful to find the string being used somewhere.",
		is_boolean = true,
		setting_name = "disable_localization",
		category = "UI"
	},
	{
		description = "Disables rainbow colorization of unlocalized strings to prevent eyesore.",
		is_boolean = true,
		setting_name = "disable_colorize_unlocalized_strings",
		category = "UI"
	},
	{
		description = "Turns off positive reinforcement UI",
		is_boolean = true,
		setting_name = "disable_reinforcement_ui",
		category = "UI"
	},
	{
		description = "Switches reinforcement UI local sound",
		setting_name = "reinforcement_ui_local_sound",
		category = "UI",
		item_source = {
			hud_achievement_unlock_01 = true,
			hud_achievement_unlock_03 = true,
			hud_info = true,
			hud_achievement_unlock_02 = true
		}
	},
	{
		description = "Toggles reinforcement UI remote sound",
		is_boolean = true,
		setting_name = "enable_reinforcement_ui_remote_sound",
		category = "UI"
	},
	{
		description = "The whole menu is unlocked, there is no end to the possibilities!",
		is_boolean = true,
		setting_name = "pause_menu_full_access",
		category = "UI"
	},
	{
		description = "Enables option to give yourself lootboxes for free!",
		is_boolean = true,
		setting_name = "debug_loot_opening",
		category = "UI"
	},
	{
		description = "If inventory is open it will cycle select items automatically",
		is_boolean = true,
		setting_name = "debug_cycle_select_inventory_item",
		category = "UI"
	},
	{
		description = "Enables or disables detailed tooltips on weapns, accessable by pressing SHIFT or CTRL",
		is_boolean = true,
		setting_name = "enable_detailed_tooltips",
		category = "UI"
	},
	{
		description = "Always allow buying bundles (even if you already own them).",
		is_boolean = true,
		setting_name = "always_allow_buying_bundles",
		category = "UI"
	},
	{
		description = "Show all news feed items when entering the keep.",
		is_boolean = true,
		setting_name = "show_all_news_feed_items",
		category = "UI"
	},
	{
		description = "Marks all shop items as unseen.",
		category = "UI",
		setting_name = "mark_all_unseen",
		func = function ()
			PlayerData.seen_shop_items = {}

			Managers.save:auto_save(SaveFileName, SaveData)
		end
	},
	{
		description = "Disables position lookup validation. Can turn this on for extra performance.",
		is_boolean = true,
		setting_name = "disable_debug_position_lookup",
		category = "Misc"
	},
	{
		description = "Will paste the content and engine revision to the user's clipboard.",
		is_boolean = true,
		setting_name = "paste_revision_to_clipboard",
		category = "Misc"
	},
	{
		description = "Enable logging of telemetry debugging information.",
		is_boolean = true,
		setting_name = "debug_telemetry",
		category = "Misc"
	},
	{
		description = "Enable logging of leaderboard debugging information.",
		is_boolean = true,
		setting_name = "debug_leaderboard",
		category = "Misc"
	},
	{
		description = "Enable logging of the forge",
		is_boolean = true,
		setting_name = "forge_debug",
		category = "Misc"
	},
	{
		description = "Enables logging for the package manager",
		is_boolean = true,
		setting_name = "package_debug",
		category = "Misc"
	},
	{
		description = "Adds a delay to package loading requests",
		setting_name = "package_loading_latency",
		category = "Network",
		item_source = {
			"[clear value]",
			{
				0.05,
				0.2
			},
			{
				0.2,
				0.5
			},
			1,
			{
				1,
				2
			},
			5,
			15,
			30
		},
		custom_item_source_order = function (item_source, options)
			for i, v in ipairs(item_source) do
				local option = v

				if type(option) == "string" then
					options[i] = option
				elseif type(option) == "table" then
					options[i] = {
						option[1],
						option[2] or option[1]
					}
				else
					options[i] = {
						option,
						option
					}
				end
			end
		end,
		item_display_func = function (option, idx, options)
			if type(option) == "string" then
				return option
			elseif type(option) == "table" then
				return string.format("%s - %s seconds", option[1], option[2] or option[1])
			else
				return string.format("%s second%s", option, option == 1 and "s" or "")
			end
		end,
		func = function (options, index)
			local val = options[index]

			if val == "[clear value]" then
				script_data.package_loading_latency = nil
			else
				script_data.package_loading_latency = type(val) == "table" and val or {
					val,
					val
				}
			end
		end
	},
	{
		description = "Shows currently loaded levels and the level_seed.",
		is_boolean = true,
		setting_name = "debug_level_packages",
		category = "Misc"
	},
	{
		description = "Disable luajit ",
		category = "Misc",
		setting_name = "luajit_disabled",
		callback = "update_using_luajit",
		is_boolean = true
	},
	{
		description = "Restart the game to view dice chances",
		is_boolean = true,
		setting_name = "dice_chance_simulation",
		category = "Misc"
	},
	{
		description = "Shows a rect in topcenter of the current color of lightfx. Restart required",
		is_boolean = true,
		setting_name = "debug_lightfx",
		category = "Misc"
	},
	{
		description = "Spawns all player characters base and husk units, and prints to console if any unit is missing any hit-zone actors etc. Units will spawn in base/husk pairs at (0,0,0) upwards into the sky. They will not be removed.",
		category = "Misc",
		setting_name = "check_player_base_and_husk_hitzones",
		func = function ()
			CHECK_PLAYER_HITZONES()
		end
	},
	{
		description = "Throttles FPS to a value. Default means no throttle. Note that this doesn't automatically gets set at startup.",
		setting_name = "force_limit_fps",
		category = "Misc",
		item_source = {
			default = true,
			throttle_fps_60 = true,
			throttle_fps_15 = true,
			throttle_fps_1 = true,
			throttle_fps_10 = true,
			throttle_fps_45 = true,
			throttle_fps_25 = true,
			throttle_fps_20 = true,
			throttle_fps_30 = true,
			throttle_fps_5 = true
		},
		func = function (options, index)
			local option = options[index]
			local fps = 60

			if option == "default" then
				Application.set_time_step_policy("no_throttle")

				return
			elseif option == "throttle_fps_1" then
				fps = 1
			elseif option == "throttle_fps_5" then
				fps = 5
			elseif option == "throttle_fps_10" then
				fps = 10
			elseif option == "throttle_fps_15" then
				fps = 15
			elseif option == "throttle_fps_20" then
				fps = 20
			elseif option == "throttle_fps_25" then
				fps = 25
			elseif option == "throttle_fps_30" then
				fps = 30
			elseif option == "throttle_fps_45" then
				fps = 45
			elseif option == "throttle_fps_60" then
				fps = 60
			end

			Application.set_time_step_policy("throttle", fps)
		end
	},
	{
		description = "Don't show dark background behind debug texts.",
		is_boolean = true,
		setting_name = "hide_debug_text_background",
		category = "Misc"
	},
	{
		description = "Will log transitions fade in/fade out",
		is_boolean = true,
		setting_name = "debug_transition_manager",
		category = "Misc"
	},
	{
		description = "Disable that the vortex can attract anything / swirl anything around in the air",
		is_boolean = true,
		setting_name = "disable_vortex_attraction",
		category = "Misc"
	},
	{
		no_nil = true,
		description = "Sets the time that a stall must take in order for it to be logged. Default is 0.1 seconds.",
		setting_name = "stall_time",
		category = "Performance",
		command_list = {
			{
				description = "default",
				commands = {
					{
						"profiler",
						"stall",
						0.1
					}
				}
			},
			{
				description = "0.05",
				commands = {
					{
						"profiler",
						"stall",
						0.05
					}
				}
			},
			{
				description = "0.2",
				commands = {
					{
						"profiler",
						"stall",
						0.2
					}
				}
			},
			{
				description = "0.5",
				commands = {
					{
						"profiler",
						"stall",
						0.5
					}
				}
			},
			{
				description = "1",
				commands = {
					{
						"profiler",
						"stall",
						1
					}
				}
			},
			{
				description = "10",
				commands = {
					{
						"profiler",
						"stall",
						10
					}
				}
			}
		}
	},
	{
		description = "Enable logging of mismatched profiling scopes.",
		is_boolean = true,
		setting_name = "debug_profiling_scopes",
		category = "Performance"
	},
	{
		description = "Enable visual 'profiling' of function calls.",
		is_boolean = true,
		setting_name = "profile_function_calls",
		category = "Performance"
	},
	{
		description = "Enable asserts on mismatched profiling scopes.",
		is_boolean = true,
		setting_name = "validate_profiling_scopes",
		category = "Performance"
	},
	{
		description = "Disable lodding of animation bones.",
		is_boolean = true,
		setting_name = "bone_lod_disable",
		category = "Performance"
	},
	{
		description = "Enable floating text over AI head which states the animation that animation merge is currently enabled for.",
		is_boolean = true,
		setting_name = "animation_merge_debug",
		category = "Performance"
	},
	{
		no_nil = false,
		description = "Gamma (2.2 default)",
		setting_name = "Gamma",
		category = "Render Settings",
		bitmap = "settings_debug_gamma_correction",
		bitmap_size = 512,
		command_list = {
			{
				description = "1.0",
				commands = {
					{
						"renderer",
						"settings",
						"gamma",
						"1.0"
					}
				}
			},
			{
				description = "2.0",
				commands = {
					{
						"renderer",
						"settings",
						"gamma",
						"2.0"
					}
				}
			},
			{
				description = "2.1",
				commands = {
					{
						"renderer",
						"settings",
						"gamma",
						"2.1"
					}
				}
			},
			{
				description = "2.2",
				commands = {
					{
						"renderer",
						"settings",
						"gamma",
						"2.2"
					}
				}
			},
			{
				description = "2.3",
				commands = {
					{
						"renderer",
						"settings",
						"gamma",
						"2.3"
					}
				}
			},
			{
				description = "2.4",
				commands = {
					{
						"renderer",
						"settings",
						"gamma",
						"2.4"
					}
				}
			},
			{
				description = "3.0",
				commands = {
					{
						"renderer",
						"settings",
						"gamma",
						"3.0"
					}
				}
			},
			{
				description = "3.5",
				commands = {
					{
						"renderer",
						"settings",
						"gamma",
						"3.5"
					}
				}
			},
			{
				description = "4.0",
				commands = {
					{
						"renderer",
						"settings",
						"gamma",
						"4.0"
					}
				}
			},
			{
				description = "4.5",
				commands = {
					{
						"renderer",
						"settings",
						"gamma",
						"4.5"
					}
				}
			},
			{
				description = "5.0",
				commands = {
					{
						"renderer",
						"settings",
						"gamma",
						"5.0"
					}
				}
			}
		}
	},
	{
		no_nil = false,
		description = "Enabled is default",
		setting_name = "Global Shadows",
		category = "Render Settings",
		command_list = {
			{
				description = "Sun Shadow Enabled",
				commands = {
					{
						"renderer",
						"settings",
						"sun_shadows",
						"true"
					}
				}
			},
			{
				description = "Sun Shadow Disabled",
				commands = {
					{
						"renderer",
						"settings",
						"sun_shadows",
						"false"
					}
				}
			}
		}
	},
	{
		no_nil = false,
		description = "Enabled is default. You'll need to restart game/engine.",
		setting_name = "Local Light Shadows",
		category = "Render Settings",
		command_list = {
			{
				description = "Local Light Shadow Enabled",
				commands = {
					{
						"renderer",
						"settings",
						"deferred_local_lights_cast_shadows",
						"true"
					},
					{
						"renderer",
						"settings",
						"forward_local_lights_cast_shadows",
						"true"
					}
				}
			},
			{
				description = "Local Light Shadow Disabled",
				commands = {
					{
						"renderer",
						"settings",
						"deferred_local_lights_cast_shadows",
						"false"
					},
					{
						"renderer",
						"settings",
						"forward_local_lights_cast_shadows",
						"false"
					}
				}
			}
		}
	},
	{
		no_nil = false,
		description = "Enabled is default",
		setting_name = "AO Enable/Disable",
		category = "Render Settings",
		command_list = {
			{
				description = "Enabled",
				commands = {
					{
						"renderer",
						"settings",
						"ao_enabled",
						"true"
					}
				}
			},
			{
				description = "Disabled",
				commands = {
					{
						"renderer",
						"settings",
						"ao_enabled",
						"false"
					}
				}
			}
		}
	},
	{
		no_nil = false,
		description = "Full is default. You'll need to restart game/engine.",
		setting_name = "AO Resolution",
		category = "Render Settings",
		command_list = {
			{
				description = "Full Res",
				commands = {
					{
						"renderer",
						"settings",
						"ao_half_res",
						"false"
					}
				}
			},
			{
				description = "Half Res",
				commands = {
					{
						"renderer",
						"settings",
						"ao_half_res",
						"true"
					}
				}
			}
		}
	},
	{
		description = "You have to restart the game for the settings to take effect",
		category = "Render Settings",
		setting_name = "Set high texture quality",
		func = function ()
			DebugScreen.set_texture_quality(0)
		end
	},
	{
		description = "You have to restart the game for the settings to take effect",
		category = "Render Settings",
		setting_name = "Set low texture quality",
		func = function ()
			DebugScreen.set_texture_quality(3)
		end
	},
	{
		description = "Don't render the game if the window is not focused",
		is_boolean = true,
		setting_name = "only_render_if_window_focused",
		category = "Render Settings"
	},
	{
		description = "Show bot debug visualizers",
		is_boolean = true,
		setting_name = "ai_bots_debug",
		category = "Bots"
	},
	{
		description = "Displays statistics for bots",
		is_boolean = true,
		setting_name = "ai_bots_debug_behavior",
		category = "Bots"
	},
	{
		description = "Make bots not see/attack anyone",
		is_boolean = true,
		setting_name = "ai_bots_disable_perception",
		category = "Bots"
	},
	{
		description = "Bot won't shot at enemy players, but still attack ai enemies. Versus Specific",
		is_boolean = true,
		setting_name = "ai_bots_disable_player_range_attacks",
		category = "Bots"
	},
	{
		description = "Make bots not dodge attacks",
		is_boolean = true,
		setting_name = "ai_bots_disable_dodging",
		category = "Bots"
	},
	{
		description = "Bot won't melee at enemy players, but still attack ai enemies. Versus Specific",
		is_boolean = true,
		setting_name = "ai_bots_disable_player_melee_attacks",
		category = "Bots"
	},
	{
		description = "THis will fill the Bot won't melee at enemy players, but still attack ai enemies. Versus Specific",
		is_boolean = true,
		setting_name = "disable_versus_darkpact_bots",
		category = "Bots"
	},
	{
		description = "Writes out the spawn status of darkpact bots on screen.",
		is_boolean = true,
		setting_name = "show_versus_darkpact_bot_debug",
		category = "Bots"
	},
	{
		description = "Bots will only use ranged attacks.",
		is_boolean = true,
		setting_name = "ai_bots_disable_ranged_attacks",
		category = "Bots"
	},
	{
		description = "Bots will only use melee attacks.",
		is_boolean = true,
		setting_name = "ai_bots_disable_melee_attacks",
		category = "Bots"
	},
	{
		description = "Bots use ranged attacks as much as possible.",
		is_boolean = true,
		setting_name = "ai_bots_ranged_attack_always_valid",
		category = "Bots"
	},
	{
		description = "Enable debug printing related to bot weapons.",
		is_boolean = true,
		setting_name = "ai_bots_weapon_debug",
		category = "Bots"
	},
	{
		description = "Enable debug information related to bot orders - press t to order bot to pickup item using raycast.",
		is_boolean = true,
		setting_name = "ai_bots_order_debug",
		category = "Bots"
	},
	{
		description = "Shows which inputs that the bot is doing at the moment.",
		is_boolean = true,
		setting_name = "ai_bots_input_debug",
		category = "Bots"
	},
	{
		description = "Visualizes the AoE threat that the bots are trying to avoid.",
		is_boolean = true,
		setting_name = "ai_bots_aoe_threat_debug",
		category = "Bots"
	},
	{
		description = "Visualizes nearby breakable smart objects for the selected bot.",
		is_boolean = true,
		setting_name = "ai_bots_proximity_breakables_debug",
		category = "Bots"
	},
	{
		description = "Bots will not follow player.",
		is_boolean = true,
		setting_name = "bots_dont_follow",
		category = "Bots"
	},
	{
		description = "Disables automatic spawning of bots",
		is_boolean = true,
		setting_name = "ai_bots_disabled",
		category = "Bots"
	},
	{
		description = "Enables bots on Weaves",
		is_boolean = true,
		setting_name = "enable_bots_in_weaves",
		category = "Bots"
	},
	{
		description = "Disables bot usage of career abilities.",
		is_boolean = true,
		setting_name = "ai_bots_career_abilities_disabled",
		category = "Bots"
	},
	{
		description = "Will cap the total number of bots in game",
		setting_name = "cap_num_bots",
		category = "Bots",
		item_source = {
			0,
			1,
			2
		}
	},
	{
		description = "Next spawned bot will use this profile if available (Tip: Toggle ai_bots_disabled on/off).",
		setting_name = "wanted_bot_profile",
		category = "Bots",
		item_source = {
			witch_hunter = true,
			empire_soldier = true,
			dwarf_ranger = true,
			wood_elf = true,
			bright_wizard = true
		}
	},
	{
		description = "Next spawned bot will use this career index, clear to use the last choosen one (Tip: Toggle ai_bots_disabled on/off).",
		setting_name = "wanted_bot_career_index",
		category = "Bots",
		item_source = {
			item_source = {
				1,
				2,
				3
			}
		}
	},
	{
		description = "Only works together with wanted_bot_profile. Will make all spawned the same as defined in wanted_bot_profile. (Might need to toggle_ai_bots on/off.)",
		is_boolean = true,
		setting_name = "allow_same_bots",
		category = "Bots"
	},
	{
		no_nil = false,
		description = "",
		setting_name = "Perfhud Artist",
		category = "Perfhud",
		command_list = {
			{
				description = "Default",
				commands = {
					{
						"perfhud",
						"artist"
					}
				}
			},
			{
				description = "Objects",
				commands = {
					{
						"perfhud",
						"artist",
						"objects"
					}
				}
			},
			{
				description = "Lighting",
				commands = {
					{
						"perfhud",
						"artist",
						"lighting"
					}
				}
			},
			{
				description = "Post Processing",
				commands = {
					{
						"perfhud",
						"artist",
						"post_processing"
					}
				}
			},
			{
				description = "GUI",
				commands = {
					{
						"perfhud",
						"artist",
						"gui"
					}
				}
			}
		}
	},
	{
		no_nil = false,
		description = "",
		setting_name = "Perfhud Memory",
		category = "Perfhud",
		command_list = {
			{
				description = "Memory",
				commands = {
					{
						"perfhud",
						"memory"
					}
				}
			}
		}
	},
	{
		description = "Performance Manager Debug",
		is_boolean = true,
		setting_name = "performance_debug",
		category = "Perfhud"
	},
	{
		description = "Sets the amount of logging on the backend",
		setting_name = "backend_logging_level",
		category = "Backend",
		item_source = {
			off = true,
			verbose = true,
			normal = true
		},
		func = function ()
			Managers.backend:refresh_log_level()
		end
	},
	{
		description = "Connect to a backend running locally. Can be set to a string to use that as a URL.",
		is_boolean = true,
		setting_name = "backend_base_url",
		category = "Backend"
	},
	{
		description = "Unlock all careers",
		is_boolean = true,
		setting_name = "unlock_all_careers",
		category = "Progression"
	},
	{
		description = "You have to reload the inn for the setting to take effect",
		is_boolean = true,
		setting_name = "unlock_full_keep",
		category = "Progression"
	},
	{
		description = "Win",
		close_when_selected = true,
		setting_name = "Complete current level",
		propagate_to_server = true,
		category = "Progression",
		func = function ()
			Managers.state.game_mode:complete_level()
		end
	},
	{
		description = "End the current round (versus)",
		close_when_selected = true,
		setting_name = "End Round",
		propagate_to_server = true,
		category = "Versus",
		func = function ()
			Managers.state.game_mode:complete_level()

			script_data.disable_gamemode_end = nil
			script_data.disable_gamemode_end_hero_check = nil
		end
	},
	{
		description = "Automatically complete rounds",
		never_save = true,
		setting_name = "auto_complete_rounds",
		category = "Versus",
		propagate_to_server = true,
		is_boolean = true,
		close_when_selected = true
	},
	{
		description = "Displays information about early win",
		is_boolean = true,
		setting_name = "debug_early_win",
		category = "Versus"
	},
	{
		description = "Force start the connected dedicated server",
		close_when_selected = true,
		setting_name = "Force Start Dedicated Server",
		category = "Versus",
		func = function ()
			local mechanism_state = Managers.mechanism:get_state()

			if mechanism_state ~= "inn" then
				Debug.sticky_text("Tried force starting a dedicated server but was not in the keep.")

				return
			end

			local dedicated_server_peer_id = Managers.mechanism:dedicated_server_peer_id()

			if not PEER_ID_TO_CHANNEL[dedicated_server_peer_id] then
				Debug.sticky_text("Tried force starting a dedicated server but is not connected to one.")

				return
			end

			Managers.mechanism:game_mechanism():force_start_dedicated_server()
		end
	},
	{
		description = "Skip the startup timer and start the round immediately",
		close_when_selected = true,
		setting_name = "Start Round",
		category = "Versus",
		func = function ()
			if Managers.level_transition_handler:in_hub_level() then
				return false, "Failed to start round - Match not started"
			end

			local game_mode_manager = Managers.state.game_mode

			game_mode_manager:round_started()

			return true, "Round started!"
		end
	},
	{
		description = "Restart",
		close_when_selected = true,
		setting_name = "Retry current level",
		category = "Progression",
		func = function ()
			Managers.state.game_mode:retry_level()
		end
	},
	{
		description = "Lose",
		close_when_selected = true,
		setting_name = "Fail current level",
		category = "Progression",
		func = function ()
			Managers.state.game_mode:fail_level()
		end
	},
	{
		description = "You have to reload the inn for the setting to take effect",
		category = "Progression",
		setting_name = "Complete act \"prologue\"",
		func = function ()
			LevelUnlockUtils.debug_completed_act_levels("prologue", true)
		end
	},
	{
		description = "You have to reload the inn for the setting to take effect",
		category = "Progression",
		setting_name = "Uncomplete act \"prologue\"",
		func = function ()
			LevelUnlockUtils.debug_completed_act_levels("prologue", false)
		end
	},
	{
		description = "You have to reload the inn for the setting to take effect",
		category = "Progression",
		setting_name = "Complete act \"act_1\"",
		func = function ()
			LevelUnlockUtils.debug_completed_act_levels("act_1", true)
		end
	},
	{
		description = "You have to reload the inn for the setting to take effect",
		category = "Progression",
		setting_name = "Uncomplete act \"act_1\"",
		func = function ()
			LevelUnlockUtils.debug_completed_act_levels("act_1", false)
		end
	},
	{
		description = "You have to reload the inn for the setting to take effect",
		category = "Progression",
		setting_name = "Complete act \"act_2\"",
		func = function ()
			LevelUnlockUtils.debug_completed_act_levels("act_2", true)
		end
	},
	{
		description = "You have to reload the inn for the setting to take effect",
		category = "Progression",
		setting_name = "Uncomplete act \"act_2\"",
		func = function ()
			LevelUnlockUtils.debug_completed_act_levels("act_2", false)
		end
	},
	{
		description = "You have to reload the inn for the setting to take effect",
		category = "Progression",
		setting_name = "Complete act \"act_3\"",
		func = function ()
			LevelUnlockUtils.debug_completed_act_levels("act_3", true)
		end
	},
	{
		description = "You have to reload the inn for the setting to take effect",
		category = "Progression",
		setting_name = "Uncomplete act \"act_3\"",
		func = function ()
			LevelUnlockUtils.debug_completed_act_levels("act_3", false)
		end
	},
	{
		description = "You have to reload the inn for the setting to take effect",
		category = "Progression",
		setting_name = "Complete act \"act_4\"",
		func = function ()
			LevelUnlockUtils.debug_completed_act_levels("act_4", true)
		end
	},
	{
		description = "You have to reload the inn for the setting to take effect",
		category = "Progression",
		setting_name = "Uncomplete act \"act_4\"",
		func = function ()
			LevelUnlockUtils.debug_completed_act_levels("act_4", false)
		end
	},
	{
		description = "You have to reload the inn for the setting to take effect",
		category = "Progression",
		setting_name = "Set completed game difficulty Normal",
		func = function ()
			LevelUnlockUtils.debug_set_completed_game_difficulty(2)
		end
	},
	{
		description = "You have to reload the inn for the setting to take effect",
		category = "Progression",
		setting_name = "Set completed game difficulty Hard",
		func = function ()
			LevelUnlockUtils.debug_set_completed_game_difficulty(3)
		end
	},
	{
		description = "You have to reload the inn for the setting to take effect",
		category = "Progression",
		setting_name = "Set completed game difficulty Nightmare",
		func = function ()
			LevelUnlockUtils.debug_set_completed_game_difficulty(4)
		end
	},
	{
		description = "You have to reload the inn for the setting to take effect",
		category = "Progression",
		setting_name = "Set completed game difficulty Cataclysm",
		func = function ()
			LevelUnlockUtils.debug_set_completed_game_difficulty(5)
		end
	},
	{
		description = " ",
		category = "Progression",
		setting_name = "Complete DLC Celebrate",
		func = function ()
			LevelUnlockUtils.debug_complete_level("dlc_celebrate_crawl")

			local world = Managers.world:world("level_world")

			LevelHelper:flow_event(world, "lua_unlock_challenge_debug_event")
		end
	},
	{
		setting_name = "Add Experience",
		description = "Adds Experience to your account.",
		category = "Progression",
		item_source = {},
		load_items_source_func = function (options)
			table.clear(options)

			options[1] = 1
			options[2] = 10
			options[3] = 100
			options[4] = 1000
			options[5] = 10000
			options[6] = 60850
		end,
		func = function (options, index)
			local backend_manager = Managers.backend
			local experience = options[index] or 1
			local player = Managers.player:local_player(1)
			local profile_index = player:profile_index()
			local profile = SPProfiles[profile_index]
			local display_name = profile.display_name

			local function cb(result)
				local function_result = result.FunctionResult
				local hero_attributes = backend_manager:get_interface("hero_attributes")

				hero_attributes:set(display_name, "experience", function_result.data[display_name .. "_experience"])
				hero_attributes:set(display_name, "experience_pool", function_result.data[display_name .. "_experience_pool"])
			end

			local request = {
				FunctionName = "devAddExperience",
				FunctionParameter = {
					hero = display_name,
					experience = experience
				}
			}
			local backend_mirror = backend_manager._backend_mirror
			local request_queue = backend_mirror:request_queue()

			request_queue:enqueue(request, cb, false)
		end
	},
	{
		description = "Sets experience to 0.",
		category = "Progression",
		setting_name = "Reset Level",
		func = function ()
			local backend_manager = Managers.backend
			local player = Managers.player:local_player(1)
			local profile_index = player:profile_index()
			local profile = SPProfiles[profile_index]
			local display_name = profile.display_name
			local hero_attributes = backend_manager:get_interface("hero_attributes")

			local function cb(result)
				hero_attributes:set(display_name, "experience", 0)
			end

			local request = {
				FunctionName = "devAddExperience",
				FunctionParameter = {
					hero = display_name,
					experience = hero_attributes:get(display_name, "experience")
				}
			}
			local backend_mirror = backend_manager._backend_mirror
			local request_queue = backend_mirror:request_queue()

			request_queue:enqueue(request, cb, false)
		end
	},
	{
		description = "Will add experience to above prestige requirements",
		category = "Progression",
		setting_name = "Level up above prestige level requirements",
		func = function ()
			local backend_manager = Managers.backend
			local player = Managers.player:local_player(1)
			local profile_index = player:profile_index()
			local profile = SPProfiles[profile_index]
			local display_name = profile.display_name

			local function cb(result)
				local function_result = result.FunctionResult
				local hero_attributes = backend_manager:get_interface("hero_attributes")

				hero_attributes:set(display_name, "experience", function_result.data[display_name .. "_experience"])
				Debug.load_level("inn_level")
			end

			local request = {
				FunctionName = "devSetExperience",
				FunctionParameter = {
					experience = 1000000,
					hero = display_name
				}
			}
			local backend_mirror = backend_manager._backend_mirror
			local request_queue = backend_mirror:request_queue()

			request_queue:enqueue(request, cb, false)
		end
	},
	{
		description = "You have to reload the inn for the setting to take effect",
		category = "Progression",
		setting_name = "Reset prestige level",
		func = function ()
			local player_manager = Managers.player
			local player = player_manager:local_player(1)
			local profile_index = player:profile_index()
			local profile = SPProfiles[profile_index]
			local hero_attributes = Managers.backend:get_interface("hero_attributes")

			hero_attributes:set(profile.display_name, "prestige", 0)
			Debug.load_level("inn_level")
		end
	},
	{
		description = "You have to reload the inn for the setting to take effect",
		category = "Progression",
		setting_name = "Wipe all progression(used for prestige)",
		func = function ()
			LevelUnlockUtils.set_all_acts_incompleted()
		end
	},
	{
		description = "Set sum of best power levels, ignoring actual value in the backend",
		category = "Progression",
		setting_name = "sum_of_best_power_levels_override",
		item_source = {
			0,
			50,
			100,
			150,
			200,
			250,
			300,
			350,
			400,
			450,
			500,
			550,
			600,
			650,
			700,
			750,
			800,
			850,
			900,
			950,
			1000,
			1050,
			1100,
			1150,
			1200,
			1250,
			1300
		},
		custom_item_source_order = function (item_source, options)
			for _, v in ipairs(item_source) do
				local option = v

				options[#options + 1] = option
			end
		end
	},
	{
		description = "Override the returned value to flow node \"Leader Achievement Completed\"",
		is_boolean = true,
		setting_name = "achievement_completed_flow_override",
		category = "Progression"
	},
	{
		description = "Override the returned value to flow node \"Leader Has DLC\" when checking for the Collectors Edition (Pre Order) DLC",
		is_boolean = true,
		setting_name = "has_dlc_pre_order_flow_override",
		category = "Progression"
	},
	{
		description = "Disables the hero power requirements for difficulties",
		is_boolean = true,
		setting_name = "disable_hero_power_requirement",
		category = "Progression"
	},
	{
		description = "Completely resets all stats for local player. Requires that the player is spawned inside a level. REQUIRES RESTART AFTERWARDS!",
		category = "Progression",
		setting_name = "reset_statistics_database",
		func = function ()
			print("Starting statistics reset!")
			Managers.backend:get_interface("statistics"):reset()
		end
	},
	{
		description = "Shows test buffs in the buff tray for debugging.",
		is_boolean = true,
		setting_name = "debug_buff_ui",
		category = "HUD"
	},
	{
		description = "Show more things in the player list UI right-hand panel for debugging.",
		is_boolean = true,
		setting_name = "debug_player_list_ui",
		category = "HUD"
	},
	{
		description = "Will display all properties on the player",
		is_boolean = true,
		setting_name = "debug_show_player_properties",
		category = "HUD"
	},
	{
		description = "Will display all properties on the player, all = all properties, limited = buffs chosen by QA",
		setting_name = "debug_show_player_active_buffs",
		category = "HUD",
		is_boolean = true,
		item_source = {
			all = "all",
			limited = "limited"
		}
	},
	{
		no_nil = false,
		setting_name = "debug_hud_visibility_group",
		description = "Force activate a specific HUD visibility group",
		category = "HUD",
		item_source = {},
		load_items_source_func = function (options)
			if not options.initialized then
				table.clear(options)

				options[#options + 1] = "none"

				local definitions = local_require("scripts/ui/views/ingame_hud_definitions")
				local visibility_groups = definitions.visibility_groups

				for _, settings in ipairs(visibility_groups) do
					local name = settings.name

					options[#options + 1] = name
				end

				options.initialized = true
			end
		end,
		func = function (options, index)
			local item = options[index]

			if not item or item == "none" then
				script_data.debug_hud_visibility_group = nil
			else
				script_data.debug_hud_visibility_group = item
			end
		end
	},
	{
		description = "Used for spawning world markers on ping input",
		is_boolean = true,
		setting_name = "debug_world_marker_ping",
		category = "UI"
	},
	{
		description = "Prints the number of server controlled buffs.",
		is_boolean = true,
		setting_name = "debug_server_controlled_buffs",
		category = "Player mechanics"
	},
	{
		description = "Shows the bones of the player units",
		is_boolean = true,
		setting_name = "debug_player_skeletons",
		category = "Player mechanics"
	},
	{
		description = "Shows current career sound state",
		is_boolean = true,
		setting_name = "debug_career_sound_state",
		category = "Player mechanics"
	},
	{
		description = "Disables the weave score UI on screen",
		is_boolean = true,
		setting_name = "disable_weave_score_ui",
		category = "Player mechanics"
	},
	{
		setting_name = "Add legend end of level chest.",
		description = "Works on non-local backend. Adds a legend vault",
		category = "Progression",
		item_source = {},
		load_items_source_func = function (options)
			table.clear(options)

			options[#options + 1] = "tier_1"
			options[#options + 1] = "tier_2"
			options[#options + 1] = "tier_3"
			options[#options + 1] = "tier_4"
			options[#options + 1] = "tier_5"

			table.sort(options)
		end,
		func = function (options, index)
			local item = options[index]
			local loot_interface = Managers.backend:get_interface("loot")
			local player = Managers.player:local_player()
			local display_name = SPProfiles[player:profile_index()].display_name
			local loot_profile_name = "default"

			if item == "tier_1" then
				local end_of_level_rewards_arguments = {
					chest_upgrade_data = {
						grimoire = 0,
						tome = 0,
						game_won = true,
						loot_dice = 0
					}
				}

				loot_interface:generate_end_of_level_loot(true, true, "hardest", "bell", display_name, 0, 0, loot_profile_name, nil, nil, "adventure", 0, end_of_level_rewards_arguments)
			elseif item == "tier_2" then
				local end_of_level_rewards_arguments = {
					chest_upgrade_data = {
						grimoire = 0,
						tome = 2,
						game_won = true,
						loot_dice = 0
					}
				}

				loot_interface:generate_end_of_level_loot(true, true, "hardest", "bell", display_name, 0, 0, loot_profile_name, nil, nil, "adventure", 0, end_of_level_rewards_arguments)
			elseif item == "tier_3" then
				local end_of_level_rewards_arguments = {
					chest_upgrade_data = {
						grimoire = 1,
						tome = 2,
						game_won = true,
						loot_dice = 0
					}
				}

				loot_interface:generate_end_of_level_loot(true, true, "hardest", "bell", display_name, 0, 0, loot_profile_name, nil, nil, "adventure", 0, end_of_level_rewards_arguments)
			elseif item == "tier_4" then
				local end_of_level_rewards_arguments = {
					chest_upgrade_data = {
						grimoire = 2,
						tome = 2,
						game_won = true,
						loot_dice = 1
					}
				}

				loot_interface:generate_end_of_level_loot(true, true, "hardest", "bell", display_name, 0, 0, loot_profile_name, nil, nil, "adventure", 0, end_of_level_rewards_arguments)
			elseif item == "tier_5" then
				local end_of_level_rewards_arguments = {
					chest_upgrade_data = {
						grimoire = 3,
						tome = 2,
						game_won = true,
						loot_dice = 4
					}
				}

				loot_interface:generate_end_of_level_loot(true, true, "hardest", "bell", display_name, 0, 0, loot_profile_name, nil, nil, "adventure", 0, end_of_level_rewards_arguments)
			end
		end
	},
	{
		description = "Lists all items with functionality to add them to inventory.",
		setting_name = "Add Hat Items",
		category = "Items",
		item_source = {},
		load_items_source_func = function (options)
			table.clear(options)

			local item_master_list = ItemMasterList

			for key, item in pairs(item_master_list) do
				if item.slot_type == "hat" then
					options[#options + 1] = key
				end
			end

			table.sort(options)
		end,
		func = function (options, index)
			local item_interface = Managers.backend:get_interface("items")
			local item = options[index]

			add_items({
				{
					ItemName = item
				}
			})
		end
	},
	{
		description = "Adds all hat items to your inventory.",
		setting_name = "Add All Hat Items",
		category = "Items",
		func = function ()
			local item_master_list = ItemMasterList
			local hats = {}

			for key, item in pairs(item_master_list) do
				if item.slot_type == "hat" then
					hats[#hats + 1] = {
						ItemName = key
					}
				end
			end

			local skip_autosave = true

			add_items(hats, skip_autosave)
		end
	},
	{
		description = "Lists all items with functionality to add them to inventory.",
		setting_name = "Add Skin Items",
		category = "Items",
		item_source = {},
		load_items_source_func = function (options)
			table.clear(options)

			local item_master_list = ItemMasterList

			for key, item in pairs(item_master_list) do
				if item.slot_type == "skin" then
					options[#options + 1] = key
				end
			end

			table.sort(options)
		end,
		func = function (options, index)
			local item_interface = Managers.backend:get_interface("items")
			local item = options[index]

			add_items({
				{
					ItemName = item
				}
			})
		end
	},
	{
		description = "Lists all items with functionality to add them to inventory. (hold left shift to add x10)",
		setting_name = "Add Chest Items",
		category = "Items",
		item_source = {},
		load_items_source_func = function (options)
			table.clear(options)

			local item_master_list = ItemMasterList

			for key, item in pairs(item_master_list) do
				if item.slot_type == "loot_chest" then
					options[#options + 1] = key
				end
			end

			table.sort(options)
		end,
		func = function (options, index)
			local item_interface = Managers.backend:get_interface("items")
			local item = options[index]
			local amount = 1

			if Keyboard.button(Keyboard.button_index("left shift")) > 0 then
				amount = 10
			end

			add_items({
				{
					ItemName = item,
					Amount = amount
				}
			})
		end
	},
	{
		description = "Lists all items with functionality to add them to inventory.",
		setting_name = "Add Frame Items",
		category = "Items",
		item_source = {},
		load_items_source_func = function (options)
			table.clear(options)

			local item_master_list = ItemMasterList

			for key, item in pairs(item_master_list) do
				if item.slot_type == "frame" then
					options[#options + 1] = key
				end
			end

			table.sort(options)
		end,
		func = function (options, index)
			local item_interface = Managers.backend:get_interface("items")
			local item = options[index]

			add_items({
				{
					ItemName = item
				}
			})
		end
	},
	{
		description = "Lists all deeds with functionality to add them to inventory.",
		setting_name = "Add Deed Items",
		category = "Items",
		item_source = {},
		load_items_source_func = function (options)
			table.clear(options)

			local item_master_list = ItemMasterList

			for key, item in pairs(item_master_list) do
				if item.slot_type == "deed" then
					options[#options + 1] = key
				end
			end

			table.sort(options)
		end,
		func = function (options, index)
			local item_interface = Managers.backend:get_interface("items")
			local item = options[index]
			local item_data = ItemMasterList[item]
			local difficulty = item_data.difficulties[1]
			local level_key = "farmlands"

			add_items({
				{
					ItemName = item,
					CustomData = {
						difficulty = difficulty,
						level_key = level_key
					}
				}
			})
		end
	},
	{
		description = "Adds one weapon per skin with that skin applied.",
		setting_name = "Add All Weapon Skins",
		category = "Items",
		func = function ()
			local item_master_list = ItemMasterList
			local weapon_skins = WeaponSkins
			local item_interface = Managers.backend:get_interface("items")
			local added_skins = {}
			local weapons_to_add = {}

			for key, item in pairs(item_master_list) do
				local slot_type = item.slot_type
				local skin_combination = item.skin_combination_table

				if (slot_type == "melee" or slot_type == "ranged") and skin_combination and item.rarity ~= "magic" then
					local skin_combinations_by_rarity = weapon_skins.skin_combinations[skin_combination]

					for rarity, skins in pairs(skin_combinations_by_rarity) do
						for _, skin_name in ipairs(skins) do
							if not added_skins[skin_name] then
								added_skins[skin_name] = true
								weapons_to_add[#weapons_to_add + 1] = {
									ItemName = key,
									CustomData = {
										power_level = 5,
										skin = skin_name
									}
								}
							end
						end
					end
				end
			end

			local backend_mirror = Managers.backend._backend_mirror
			local request = {
				FunctionName = "devUnlockAllWeaponSkins",
				FunctionParameter = {}
			}
			local skip_autosave = true

			local function cb(result)
				add_items(weapons_to_add, skip_autosave)
			end

			local request_queue = backend_mirror:request_queue()

			request_queue:enqueue(request, cb, false)
		end
	},
	{
		description = "Unlocks all the weapon poses in the social_wheel",
		is_boolean = true,
		setting_name = "unlock_all_weapon_poses",
		category = "Items"
	},
	{
		description = "Lists all mutators with functionality to activate them. Requires restart of level",
		setting_name = "Activate or Deactivate Mutator",
		category = "Items",
		item_source = {},
		load_items_source_func = function (options)
			table.clear(options)

			for key, _ in pairs(MutatorTemplates) do
				options[#options + 1] = key
			end

			table.sort(options)
		end,
		func = function (options, index)
			local activated_mutators = script_data.debug_activated_mutators or {}
			local key = options[index]
			local mutator_deactivation_index

			for i = 1, #activated_mutators do
				if activated_mutators[i] == key then
					mutator_deactivation_index = i
				end
			end

			if mutator_deactivation_index then
				table.remove(activated_mutators, mutator_deactivation_index)
				Debug.sticky_text("Deactivated mutator %s", key)
			else
				activated_mutators[#activated_mutators + 1] = key

				Debug.sticky_text("Activated mutator %s", key)
			end

			if #activated_mutators > 0 then
				script_data.debug_activated_mutators = activated_mutators
			else
				script_data.debug_activated_mutators = nil
			end
		end
	},
	{
		description = "Lists all mutators with functionality to immediately start or stop them. Does not require restart of level. !! Does not work for every mutator.",
		setting_name = "Start or stop mutator",
		category = "Items",
		item_source = {},
		load_items_source_func = function (options)
			table.clear(options)

			for key, _ in pairs(MutatorTemplates) do
				options[#options + 1] = key
			end

			table.sort(options)
		end,
		func = function (options, index)
			local mutator_handler = Managers.state.game_mode:mutator_handler()
			local mutator_name = options[index]

			if not mutator_handler:has_mutator(mutator_name) then
				mutator_handler:initialize_mutators({
					mutator_name
				})
				Debug.sticky_text("Initialized mutator %s", mutator_name)
			end

			if mutator_handler:has_activated_mutator(mutator_name) then
				mutator_handler:deactivate_mutator(mutator_name)
				Debug.sticky_text("Stopped mutator %s", mutator_name)
			else
				mutator_handler:activate_mutator(mutator_name)
				Debug.sticky_text("Started mutator %s", mutator_name)
			end
		end
	},
	{
		description = "Lists all blessings with functionality to activate them. Requires restart of a deus level or loading the next one",
		setting_name = "Activate or Deactivate Blessings",
		category = "Items",
		item_source = {},
		load_items_source_func = function (options)
			table.clear(options)

			for key, _ in pairs(DeusBlessingSettings) do
				options[#options + 1] = key
			end

			table.sort(options)
		end,
		func = function (options, index)
			local activated_blessings = script_data.debug_activated_blessings or {}
			local key = options[index]
			local blessing_deactivation_index

			for i = 1, #activated_blessings do
				if activated_blessings[i] == key then
					blessing_deactivation_index = i
				end
			end

			if blessing_deactivation_index then
				table.remove(activated_blessings, blessing_deactivation_index)
				Debug.sticky_text("Deactivated blessing %s", key)
			else
				activated_blessings[#activated_blessings + 1] = key

				Debug.sticky_text("Activated blessing %s", key)
			end

			if #activated_blessings > 0 then
				script_data.debug_activated_blessings = activated_blessings
			else
				script_data.debug_activated_blessings = nil
			end
		end
	},
	{
		description = "Lists all Twitch Mode Vote Templates with functionality to activate them.",
		setting_name = "Force Twitch Mode Vote Template",
		category = "Items",
		item_source = {},
		load_items_source_func = function (options)
			table.clear(options)

			for key, _ in pairs(TwitchVoteTemplates) do
				options[#options + 1] = key
			end

			options[#options + 1] = "clear_votes"

			table.sort(options)
		end,
		func = function (options, index)
			local forced_templates = script_data.debug_activated_mutators or {}
			local key = options[index]

			if key == "clear_votes" then
				script_data.twitch_mode_force_vote_template = nil
			else
				local vote_template = TwitchVoteTemplates[key]

				script_data.twitch_mode_force_vote_template = vote_template
			end
		end
	},
	{
		description = "Show all paintings etc. You have to reload the inn for the setting to take effect.",
		is_boolean = true,
		setting_name = "debug_keep_decorations",
		category = "Keep Decorations"
	},
	{
		description = "Unlocks a Challenge by setting by incrementing the appropriate statistics.",
		setting_name = "Unlock Challenges",
		category = "Progression",
		clear_when_selected = true,
		item_source = {},
		load_items_source_func = function (options)
			table.clear(options)

			for id, achievement in pairs(AchievementTemplates.achievements) do
				if achievement.debug_unlock then
					table.insert(options, id)
				end
			end

			table.sort(options)
		end,
		func = function (options, index)
			if AchievementTemplates then
				local template = AchievementTemplates.achievements[options[index]]

				if template ~= nil then
					if template.debug_unlock then
						local stats_db = Managers.state.game_mode.statistics_db
						local stats_id = Managers.player:local_player():stats_id()

						if stats_db and stats_id then
							template.debug_unlock(stats_db, stats_id)
							print("Unlocked challenge ", options[index])

							local world = Managers.world:world("level_world")

							LevelHelper:flow_event(world, "lua_unlock_challenge_debug_event")
							save_statistics()

							return
						end
					else
						print("Missing 'debug_unlock' on challenge")
					end
				end
			end

			print("Could not unlock challenge ", options[index])
		end
	},
	{
		description = "Clears a Challenge by setting the appropriate statistics to 0.",
		setting_name = "Clear Challenges",
		category = "Progression",
		clear_when_selected = true,
		item_source = {},
		load_items_source_func = function (options)
			table.clear(options)

			for id, achievement in pairs(AchievementTemplates.achievements) do
				if achievement.debug_reset then
					table.insert(options, id)
				end
			end

			table.sort(options)
		end,
		func = function (options, index)
			if AchievementTemplates then
				local template = AchievementTemplates.achievements[options[index]]

				if template ~= nil then
					if template.debug_reset then
						local stats_db = Managers.state.game_mode.statistics_db
						local stats_id = Managers.player:local_player():stats_id()

						if stats_db and stats_id then
							template.debug_reset(stats_db, stats_id)
							print("Reset challenge ", options[index])
							save_statistics()

							return
						end
					else
						print("Missing 'debug_reset' function")
					end
				end
			end

			print("Could not reset challenge ", options[index])
		end
	},
	{
		description = "All challenges with progression will only require you to increase the progress by 1",
		is_boolean = true,
		setting_name = "simplify_challenge_progression",
		category = "Progression"
	},
	{
		description = "Sets all Okris challenges to be claimable in the UI",
		is_boolean = true,
		setting_name = "set_all_challenges_claimable",
		category = "Progression"
	},
	{
		description = "Draws debug information for each active objective",
		is_boolean = true,
		setting_name = "show_weave_objectives",
		category = "Gamemode/level"
	},
	{
		description = "Pause the objective timer for versus",
		is_boolean = true,
		setting_name = "versus_objective_timer_paused",
		category = "Versus"
	},
	{
		description = "Finishes a match after the first round",
		is_boolean = true,
		setting_name = "versus_quick_match_end",
		category = "Versus"
	},
	{
		description = "Generates fake stats to test the versus end screen",
		is_boolean = true,
		setting_name = "versus_generate_fake_stats",
		category = "Versus"
	},
	{
		description = "Generates fake players in the ceremony screen",
		is_boolean = true,
		setting_name = "versus_generate_fake_ceremony_players",
		category = "Versus"
	},
	{
		description = "Shows some information about the recharge of the horde ability.",
		is_boolean = true,
		setting_name = "vs_horde_ability_debug",
		category = "Versus"
	},
	{
		description = "Activates all objectives for the current weave",
		setting_name = "activate_all_weave_objectives",
		category = "Gamemode/level",
		func = function ()
			local world = Managers.world:world("level_world")
			local units = World.units(world)
			local objectives = {}

			for _, unit in ipairs(units) do
				if not Unit.is_frozen(unit) then
					local name = Unit.debug_name(unit)

					if name:match(".*weave_capture_point_spawner") or name:match(".*weave_interaction_spawner") or name:match(".*weave_prop_skaven_doom_wheel_01_spawner") or name:match(".*weave_limited_item_track_spawner") then
						local objective_id = Unit.get_data(unit, "weave_objective_id")
						local i = #NetworkLookup.objective_names + 1

						NetworkLookup.objective_names[i] = objective_id
						NetworkLookup.objective_names[objective_id] = i
						objectives[objective_id] = {}

						print(name)
					end
				end
			end

			local i = #NetworkLookup.objective_names + 1

			NetworkLookup.objective_names[i] = "kill_enemies"
			NetworkLookup.objective_names.kill_enemies = i
			objectives.kill_enemies = {}
			script_data.temp_objective_list_counter = (script_data.temp_objective_list_counter or 0) + 1

			local objective_list_name = "temp_objective_list_" .. script_data.temp_objective_list_counter

			ObjectiveLists[objective_list_name] = {
				objectives
			}

			local objective_system = Managers.state.entity:system("objective_system")

			objective_system:server_register_objectives(objective_list_name)
			objective_system:server_activate_first_objective()
		end
	},
	{
		description = "Sets all players max health to 5000",
		is_boolean = true,
		setting_name = "player_lots_of_max_health",
		category = "Player mechanics"
	},
	{
		description = "Sets all players max knock down health to 5000",
		is_boolean = true,
		setting_name = "player_lots_of_max_kd_health",
		category = "Player mechanics"
	},
	{
		description = "Use the standard loadout in weaves (requires restart)",
		is_boolean = true,
		setting_name = "disable_weave_loadout",
		category = "Player mechanics"
	},
	{
		description = "Use the standard talents in weaves (requires restart)",
		is_boolean = true,
		setting_name = "disable_weave_talents",
		category = "Player mechanics"
	},
	{
		description = "sets the weave timer to 1 sec",
		setting_name = "deplete_weave_timer",
		category = "Player mechanics",
		func = function ()
			Managers.weave:_set_time_left(1)
		end
	},
	{
		description = "Adds 10 Weave Essence to your account",
		setting_name = "10 Weave Essence",
		category = "Gamemode/level",
		func = function ()
			Managers.backend:get_interface("weaves"):debug_grant_essence(10)
		end
	},
	{
		description = "Adds 100 Weave Essence to your account",
		setting_name = "100 Weave Essence",
		category = "Gamemode/level",
		func = function ()
			Managers.backend:get_interface("weaves"):debug_grant_essence(100)
		end
	},
	{
		description = "Adds 1000 Weave Essence to your account",
		setting_name = "1,000 Weave Essence",
		category = "Gamemode/level",
		func = function ()
			Managers.backend:get_interface("weaves"):debug_grant_essence(1000)
		end
	},
	{
		description = "Adds 10000 Weave Essence to your account",
		setting_name = "10,000 Weave Essence",
		category = "Gamemode/level",
		func = function ()
			Managers.backend:get_interface("weaves"):debug_grant_essence(10000)
		end
	},
	{
		description = "Adds $$$ ONE MILLION $$$ Weave Essence to your account",
		setting_name = "1,000,000 Weave Essence",
		category = "Gamemode/level",
		func = function ()
			Managers.backend:get_interface("weaves"):debug_grant_essence(1000000)
		end
	},
	{
		description = "Removes all magic weave weapons from the inventory except for default weapons equipped ones",
		setting_name = "Remove Magic Weave Weapons",
		category = "Gamemode/level",
		func = function ()
			Managers.backend:get_interface("weaves"):debug_remove_magic_items()
		end
	},
	{
		setting_name = "Weave Onboarding",
		description = "change onboarding stat",
		category = "Onboarding",
		item_source = {},
		load_items_source_func = function (options)
			table.clear(options)

			options[#options + 1] = "1"
			options[#options + 1] = "2"
			options[#options + 1] = "3"
			options[#options + 1] = "4"
			options[#options + 1] = "5"
			options[#options + 1] = "6"
			options[#options + 1] = "7"
			options[#options + 1] = "8"
			options[#options + 1] = "9"
			options[#options + 1] = "clear"

			table.sort(options)
		end,
		func = function (options, index)
			local chosen_state = options[index]
			local statistics_db = Managers.player:statistics_db()
			local local_player = Managers.player:local_player()
			local stats_id = local_player:stats_id()

			if chosen_state == "clear" then
				statistics_db:set_stat(stats_id, "scorpion_onboarding_step", 0)
			else
				statistics_db:set_stat(stats_id, "scorpion_onboarding_step", tonumber(chosen_state))
			end

			save_statistics()
		end
	},
	{
		description = "complete the weave onboarding ui tutorial",
		setting_name = "Weave Onboarding UI",
		category = "Onboarding",
		func = function ()
			local statistics_db = Managers.player:statistics_db()
			local local_player = Managers.player:local_player()
			local stats_id = local_player:stats_id()

			statistics_db:set_stat(stats_id, "scorpion_ui_onboarding_state", -1)
			save_statistics()
		end
	},
	{
		description = "resets weave onboarding ui tutorial",
		setting_name = "Weave Onboarding UI Reset",
		category = "Onboarding",
		func = function ()
			local statistics_db = Managers.player:statistics_db()
			local local_player = Managers.player:local_player()
			local stats_id = local_player:stats_id()

			statistics_db:set_stat(stats_id, "scorpion_ui_onboarding_state", 0)
			save_statistics()
		end
	},
	{
		description = "resets the flag keeps track of Olesya's VO that is played when player first fails a weave.",
		setting_name = "Clear Olesya Failed VO Played Flag ",
		category = "Onboarding",
		func = function ()
			local statistics_db = Managers.player:statistics_db()
			local local_player = Managers.player:local_player()
			local stats_id = local_player:stats_id()

			statistics_db:set_stat(stats_id, "scorpion_onboarding_weave_first_fail_vo_played", 0)
			save_statistics()
		end
	},
	{
		description = "Will make it so \"first_time_store_release\" is always triggered when players start the game and enter the keep",
		is_boolean = true,
		setting_name = "always_first_time_store_release",
		category = "Onboarding"
	},
	{
		description = "Will make it so \"store_new_items\" is always triggered when players start the game and enter the keep",
		is_boolean = true,
		setting_name = "always_store_new_items",
		category = "Onboarding"
	},
	{
		description = "Will make it so \"shop_closed_item_bought\" is always triggered when players close the store. Exclusive with other \"shop_closed\" events",
		is_boolean = true,
		setting_name = "always_shop_closed_item_bought",
		category = "Onboarding"
	},
	{
		description = "Will make it so \"shop_closed_golden_key_redeemed\" is always triggered when players close the store. Exclusive with other \"shop_closed\" events",
		is_boolean = true,
		setting_name = "always_shop_closed_golden_key_redeemed",
		category = "Onboarding"
	},
	{
		description = "Will make it so \"shop_closed_login_reward_claimed\" is always triggered when players close the store. Exclusive with other \"shop_closed\" events",
		is_boolean = true,
		setting_name = "always_shop_closed_login_reward_claimed",
		category = "Onboarding"
	},
	{
		description = "Trigger the \"first_time_store_release\" level flow event",
		setting_name = "Trigger \"first_time_store_release\"",
		category = "Onboarding",
		func = function ()
			local world = Managers.world:world("level_world")

			LevelHelper:flow_event(world, "first_time_store_release")
		end
	},
	{
		description = "Trigger the \"store_new_items\" level flow event",
		setting_name = "Trigger \"store_new_items\"",
		category = "Onboarding",
		func = function ()
			local world = Managers.world:world("level_world")

			LevelHelper:flow_event(world, "store_new_items")
		end
	},
	{
		description = "Trigger the \"first_time_started_game\" level flow event",
		setting_name = "Trigger \"first_time_started_game\"",
		category = "Onboarding",
		func = function ()
			local world = Managers.world:world("level_world")

			LevelHelper:flow_event(world, "first_time_started_game")
			LevelHelper:flow_event(world, "first_time_started_deus_game")
			LevelHelper:flow_event(world, "first_time_started_versus_game")
		end
	},
	{
		description = "Clears the seen_handbook_pages table, allowing all popups to trigger again.",
		setting_name = "Clear seen_handbook_pages",
		category = "Onboarding",
		func = function ()
			local seen_handbook_pages = SaveData.seen_handbook_pages

			if seen_handbook_pages then
				table.clear(seen_handbook_pages)
			end

			local seen_handbook_popups = SaveData.seen_handbook_popups

			if seen_handbook_popups then
				table.clear(seen_handbook_popups)
			end
		end
	},
	{
		description = "Disregard the store items set by the backend",
		is_boolean = true,
		setting_name = "disregard_backend_store_items",
		category = "Store"
	},
	{
		description = "Prints out the current discounted items on screen",
		is_boolean = true,
		setting_name = "show_discounted_store_items",
		category = "Store"
	},
	{
		description = "Randomizes a bunch of items on sale",
		is_boolean = true,
		setting_name = "fake_store_sale",
		category = "Store"
	},
	{
		description = "Count owned DLCs as installed. Makes it easier to test DLCs through steam console with enable/disable_license",
		is_boolean = true,
		setting_name = "count_owned_dlc_as_installed",
		category = "DLC"
	},
	{
		description = "Displays the diorama prototype",
		close_when_selected = true,
		setting_name = "Run Diorama Prototype",
		category = "Diorama",
		func = function ()
			Managers.ui:handle_transition("diorama_prototype", {})
		end
	},
	{
		description = "Starts a Deus run directly on a map",
		setting_name = "Run Deus Map Node",
		category = "Deus",
		func = function ()
			local mechanism = Managers.mechanism:game_mechanism()

			if mechanism.debug_load_map then
				mechanism:debug_load_map()
			end
		end
	},
	{
		description = "Starts a Deus run directly on a shrine",
		setting_name = "Run Deus Shrine Node",
		category = "Deus",
		func = function ()
			local mechanism = Managers.mechanism:game_mechanism()

			if mechanism.debug_load_shrine_node then
				mechanism:debug_load_shrine_node()
			end
		end
	},
	{
		description = "Clears a finished a journey",
		setting_name = "Clear Finished Journey",
		category = "Deus",
		item_source = {},
		load_items_source_func = function (options)
			table.clear(options)

			for name, settings in pairs(DeusJourneySettings) do
				options[#options + 1] = name
			end

			table.sort(options)
		end,
		func = function (options, index)
			local journey = options[index]

			LevelUnlockUtils.debug_set_completed_journey_difficulty(journey, 0)
		end
	},
	{
		description = "Sets the completed difficulty for the selected journey temporary.",
		setting_name = "Set completed journey difficulty",
		category = "Deus",
		item_source = {},
		load_items_source_func = function (options)
			table.clear(options)

			for _, journey_name in ipairs(AvailableJourneyOrder) do
				for _, difficulty_name in ipairs(DefaultDifficulties) do
					options[#options + 1] = journey_name .. "/" .. difficulty_name
				end
			end
		end,
		func = function (options, index)
			local journey_and_difficulty = string.split_deprecated(options[index], "/")
			local journey_name = journey_and_difficulty[1]
			local difficulty_name = journey_and_difficulty[2]
			local difficulty_id = table.index_of(DefaultDifficulties, difficulty_name)

			LevelUnlockUtils.debug_set_completed_journey_difficulty(journey_name, difficulty_id)
		end
	},
	{
		description = "Sets the hero completed difficulty for the selected journey temporary.",
		setting_name = "Set completed hero journey difficulty",
		category = "Deus",
		item_source = {},
		load_items_source_func = function (options)
			local journey_name = "journey_citadel"

			table.clear(options)

			for _, hero in ipairs(SPProfilesAbbreviation) do
				for _, difficulty_name in ipairs(DefaultDifficulties) do
					options[#options + 1] = hero .. "/" .. journey_name .. "/" .. difficulty_name
				end
			end
		end,
		func = function (options, index)
			local hero_journey_and_difficulty = string.split_deprecated(options[index], "/")
			local hero = hero_journey_and_difficulty[1]
			local journey_name = hero_journey_and_difficulty[2]
			local difficulty_name = hero_journey_and_difficulty[3]
			local difficulty_id = table.index_of(DefaultDifficulties, difficulty_name)

			LevelUnlockUtils.debug_set_completed_hero_journey_difficulty(hero, journey_name, difficulty_id)
		end
	},
	{
		description = "Clears all deus meta progression, which is just rolled over coins at the moment.",
		setting_name = "Clear Deus meta progression",
		category = "Deus",
		func = function ()
			local deus_interface = Managers.backend:get_interface("deus")

			deus_interface:debug_clear_meta_progression()
		end
	},
	{
		description = "Lists all powerups with functionality to activate them. Needs to be in a deus run.",
		setting_name = "Activate Deus PowerUp",
		category = "Deus",
		item_source = {},
		load_items_source_func = function (options)
			table.clear(options)

			for rarity, powerups_for_rarity in pairs(DeusPowerUps) do
				for power_up_name, powerup in pairs(powerups_for_rarity) do
					options[#options + 1] = rarity .. "/" .. power_up_name
				end
			end

			table.sort(options)
		end,
		func = function (options, index)
			if not Managers.mechanism:current_mechanism_name() == "deus" then
				return
			end

			local mechanism = Managers.mechanism:game_mechanism()
			local deus_run_controller = mechanism:get_deus_run_controller()

			if not deus_run_controller then
				return
			end

			local local_player = Managers.player:local_player()
			local local_player_id = local_player:local_player_id()
			local option = options[index]
			local rarity_and_power_up_name = string.split_deprecated(option, "/")
			local rarity = rarity_and_power_up_name[1]
			local power_up_name = rarity_and_power_up_name[2]
			local existing_power_ups = deus_run_controller:get_player_power_ups(local_player.peer_id, local_player_id)
			local already_added

			for _, existing_power_up in ipairs(existing_power_ups) do
				if existing_power_up.name == power_up_name then
					already_added = true

					break
				end
			end

			if not already_added then
				local power_up = DeusPowerUpUtils.generate_specific_power_up(power_up_name, rarity)

				deus_run_controller:add_power_ups({
					power_up
				}, local_player_id, false)
			end
		end
	},
	{
		description = "Adds 10.000 deus soft currency",
		setting_name = "add_soft_currency",
		category = "Deus",
		func = function (options, index)
			local deus_run_controller = Managers.mechanism:game_mechanism():get_deus_run_controller()
			local own_peer_id = deus_run_controller._run_state:get_own_peer_id()

			deus_run_controller:_add_soft_currency_to_peer(own_peer_id, 10000)
		end
	},
	{
		description = "Adds a random boon, the type obtained from boon shrines",
		setting_name = "add_random_boon",
		category = "Deus",
		func = function (options, index)
			local deus_run_controller = Managers.mechanism:game_mechanism():get_deus_run_controller()
			local power_ups = deus_run_controller:generate_random_power_ups(DeusPowerUpSettings.weapon_chest_choice_amount, DeusPowerUpAvailabilityTypes.weapon_chest, math.random_seed())
			local power_up = power_ups[1]
			local local_player = Managers.player:local_player()
			local local_player_id = local_player:local_player_id()

			deus_run_controller:add_power_ups({
				power_up
			}, local_player_id, true)
			Managers.state.event:trigger("present_rewards", {
				{
					type = "deus_power_up",
					power_up = power_up
				}
			})
		end
	},
	{
		description = "Activates all Deus PowerUps ",
		setting_name = "Activate all Deus PowerUps",
		category = "Deus",
		item_source = {},
		func = function (options, index)
			if not Managers.mechanism:current_mechanism_name() == "deus" then
				return
			end

			local mechanism = Managers.mechanism:game_mechanism()
			local deus_run_controller = mechanism:get_deus_run_controller()

			if not deus_run_controller then
				return
			end

			local local_player = Managers.player:local_player()
			local local_player_id = local_player:local_player_id()
			local local_peer_id = local_player:network_id()
			local existing_power_ups = deus_run_controller:get_player_power_ups(local_peer_id, local_player_id)
			local stride = 50
			local num = 0
			local power_ups = {}

			for rarity, power_ups_for_rarity in pairs(DeusPowerUps) do
				for power_up_name, power_up in pairs(power_ups_for_rarity) do
					local already_added

					for _, existing_power_up in ipairs(existing_power_ups) do
						if existing_power_up.name == power_up_name then
							already_added = true

							break
						end
					end

					local mutators = power_up.mutators
					local mutator_valid = table.is_empty(mutators)

					for i = 1, #mutators do
						if Managers.state.game_mode:has_activated_mutator(mutators[i]) then
							mutator_valid = true

							break
						end
					end

					if mutator_valid and not already_added then
						num = num + 1

						local idx = math.ceil(num / stride)

						power_ups[idx] = power_ups[idx] or {}
						power_ups[idx][#power_ups[idx] + 1] = DeusPowerUpUtils.generate_specific_power_up(power_up_name, rarity)
					end
				end
			end

			for i = 1, #power_ups do
				deus_run_controller:add_power_ups(power_ups[i], local_player_id, false)
			end
		end
	},
	{
		description = "Draw the positions of the weapons as a path",
		setting_name = "Draw Weapon Position",
		category = "Weapons",
		item_source = {},
		load_items_source_func = function (options)
			table.clear(options)
			table.insert(options, "all")
			table.insert(options, "right_hand")
			table.insert(options, "left_hand")
			table.insert(options, "right_hand_ammo")
			table.insert(options, "left_hand_ammo")
			table.insert(options, "[clear value]")
			table.sort(options)
		end,
		func = function (options, index)
			script_data.debug_draw_weapon_position = options[index]
		end
	},
	{
		description = "Unlocks every deus chest aka weapon shrine",
		is_boolean = true,
		setting_name = "unlock_all_deus_chests",
		category = "Deus"
	},
	{
		description = "debug any changes to the deus shared state.",
		is_boolean = true,
		setting_name = "shared_state_debug",
		category = "Deus"
	},
	{
		description = "log any relevant event in the deus run controller.",
		is_boolean = true,
		setting_name = "deus_run_controller_debug",
		category = "Deus"
	},
	{
		description = "draw a map with debug ui. This will draw either the current run seed being played, or the seed set by imgui_deus_map_gen",
		is_boolean = true,
		setting_name = "deus_debug_draw_map",
		category = "Deus"
	},
	{
		description = "test fog without saving already seen nodes, essentially everything not accessed is fully foggy",
		is_boolean = true,
		setting_name = "deus_fog_with_no_memory",
		category = "Deus"
	},
	{
		setting_name = "deus_force_load_run_progress",
		category = "Deus",
		description = "override the run progress when using this menu's load level. 900 == 0.9 ",
		item_source = {},
		load_items_source_func = function (options)
			table.clear(options)

			for i = 0, 999, 10 do
				options[#options + 1] = i
			end

			table.sort(options)

			options[#options + 1] = "[clear value]"
		end
	},
	{
		setting_name = "deus_seed",
		category = "Deus",
		description = "Force a default graph seed",
		item_source = {},
		load_items_source_func = function (options)
			table.clear(options)

			for key, _ in pairs(DeusDefaultGraphs) do
				options[#options + 1] = key
			end

			options[#options + 1] = "[clear value]"

			table.sort(options)
		end
	},
	{
		setting_name = "deus_journey",
		category = "Deus",
		description = "Force a deus journey",
		item_source = {},
		load_items_source_func = function (options)
			table.clear(options)

			for _, val in pairs(AvailableJourneyOrder) do
				options[#options + 1] = val
			end

			options[#options + 1] = "[clear value]"

			table.sort(options)
		end
	},
	{
		setting_name = "deus_dominant_god",
		category = "Deus",
		description = "Force a deus dominant god",
		item_source = {},
		load_items_source_func = function (options)
			table.clear(options)

			for _, val in pairs(DEUS_GOD_INDEX) do
				options[#options + 1] = val
			end

			options[#options + 1] = "[clear value]"

			table.sort(options)
		end
	},
	{
		description = "Journeys will work in 10minute cycles for debugging. Only works in local backend.",
		is_boolean = true,
		setting_name = "deus_journey_ten_minute_cycle",
		category = "Deus"
	},
	{
		description = "Shows how many enemies are marked by a curse",
		is_boolean = true,
		setting_name = "debug_deus_marked_enemies",
		category = "Deus"
	},
	{
		description = "Check how the curse UI looks with all the different curses. Use left shift + q in order to cycle all the variations",
		is_boolean = true,
		setting_name = "deus_curse_ui",
		category = "Deus"
	},
	{
		description = "Requires a restart/loading the next level/switching career. Unlocks all weapons in the pool used for generating random weapon at reliquaries.",
		is_boolean = true,
		setting_name = "deus_full_weapon_pool",
		category = "Deus"
	},
	{
		description = "When active the next run you will start will consist only of shops (except start node and arena)",
		is_boolean = true,
		setting_name = "deus_shoppify_run",
		category = "Deus"
	},
	{
		description = "Force only the new boons to be in the pool",
		is_boolean = true,
		setting_name = "belakor_force_new_boons",
		category = "Deus"
	},
	{
		description = "Force a specific map layout on the belakor journey for the vertical slice build",
		is_boolean = true,
		setting_name = "belakor_force_vertical_slice_seed",
		category = "Deus"
	},
	{
		description = "Forces all levels to be cursed by belakor where applicable",
		is_boolean = true,
		setting_name = "belakor_force_curses_on_map",
		category = "Deus"
	},
	{
		description = "Hides the belakor journey from the UI",
		is_boolean = true,
		setting_name = "belakor_hide_journey",
		category = "Deus"
	},
	{
		description = "While playing a belakor level, all possible positions for a Locus will be occupied by one",
		is_boolean = true,
		setting_name = "belakor_force_locus_on_all_positions",
		category = "Deus"
	},
	{
		description = "Primes your user setting to trigger the new UI popup",
		category = "New UI Popup",
		setting_name = "Activate New Popup UI Prompt",
		func = function ()
			Application.set_user_setting("use_pc_menu_layout", false)
			Application.set_user_setting("use_gamepad_menu_layout", false)
			Managers.save:auto_save(SaveFileName, SaveData)
			Application.save_user_settings()
		end
	},
	{
		description = "Displays career counters",
		is_boolean = true,
		setting_name = "debug_dark_pact_delegator",
		category = "Versus"
	},
	{
		description = "",
		setting_name = "Number of Crafted Items",
		category = "Crafting",
		item_source = {
			0,
			10,
			20,
			30,
			40,
			50,
			60,
			70,
			80,
			90,
			100,
			200,
			300,
			400,
			500,
			600,
			700,
			800,
			900,
			1000,
			2000,
			3000,
			4000,
			5000
		},
		custom_item_source_order = function (item_source, options)
			for _, v in ipairs(item_source) do
				local option = v

				options[#options + 1] = option
			end
		end,
		func = function (options, index)
			local option = options[index]

			Managers.state.crafting:debug_set_crafted_items_stat(option)
		end
	},
	{
		description = "",
		setting_name = "Number of Salvaged Items",
		category = "Crafting",
		item_source = {
			0,
			10,
			20,
			30,
			40,
			50,
			60,
			70,
			80,
			90,
			100,
			200,
			300,
			400,
			500,
			600,
			700,
			800,
			900,
			1000,
			2000,
			3000,
			4000,
			5000
		},
		custom_item_source_order = function (item_source, options)
			for _, v in ipairs(item_source) do
				local option = v

				options[#options + 1] = option
			end
		end,
		func = function (options, index)
			local option = options[index]

			Managers.state.crafting:debug_set_salvaged_items_stat(option)
		end
	},
	{
		description = "Debug crafting crafting recipes",
		is_boolean = true,
		setting_name = "craft_recipe_debug",
		category = "Crafting"
	},
	{
		description = "Allows the player to force start a versus game with only one player",
		is_boolean = true,
		setting_name = "allow_versus_force_start_single_player",
		category = "Versus"
	},
	{
		description = "starts the round",
		setting_name = "start_player_hosted_round",
		category = "Versus",
		func = function (options, index)
			local game_mode_manager = Managers.state.game_mode

			game_mode_manager:round_started()
			printf("Round started!")
		end
	},
	{
		description = "Trigger boss terror event",
		setting_name = "inject_playable_boss_into_main_path",
		category = "Versus",
		func = function (options, index)
			print("Playable boss patrols injected into the main path now")
			Managers.state.conflict.level_analysis:inject_playable_boss_into_main_path()
		end
	},
	{
		description = "Trigger boss terror event",
		setting_name = "trigger_playable_boss_event",
		category = "Versus",
		func = function (options, index)
			print("[DEBUG] Triggered Playable boss")

			local game_mode = Managers.state.game_mode:game_mode()

			game_mode:set_playable_boss_can_be_picked(true)
		end
	},
	{
		description = "Trigger boss terror event",
		is_boolean = true,
		setting_name = "debug_playable_boss",
		category = "Versus"
	},
	{
		description = "Debug versus chaos troll puke sweep",
		is_boolean = true,
		setting_name = "versus_debug_chaos_troll_sweep",
		category = "AI"
	},
	{
		description = "starts the round",
		setting_name = "end_player_hosted_round",
		category = "Versus",
		func = function (options, index)
			if Managers.level_transition_handler:in_hub_level() then
				printf("Failed to end round - Match not started")

				return false
			end

			if not Managers.mechanism:game_mechanism().win_conditions then
				printf("Wrong game-mode, cannot end round here")

				return false
			end

			local game_mode_manager = Managers.state.game_mode

			game_mode_manager:round_started()

			local win_conditions = Managers.mechanism:game_mechanism():win_conditions()

			win_conditions:set_time(0)

			DebugScreen.active = false

			printf("Round ended!")

			return true
		end
	}
}

local function add_melee_preset(rarity)
	return {
		{
			description = "Lists all items with functionality to add them to inventory.",
			category = "Items",
			setting_name = "Add Melee Items (" .. rarity .. ")",
			item_source = {},
			load_items_source_func = function (options)
				table.clear(options)

				local item_master_list = ItemMasterList

				for key, item in pairs(item_master_list) do
					if item.slot_type == "melee" then
						options[#options + 1] = key
					end
				end

				table.sort(options)
			end,
			func = function (options, index)
				local item_interface = Managers.backend:get_interface("items")
				local item = options[index]

				if item then
					item_interface:award_item(item, nil, nil, rarity)
				end
			end
		}
	}
end

local function add_ranged_preset(rarity)
	return {
		{
			description = "Lists all items with functionality to add them to inventory.",
			category = "Items",
			setting_name = "Add Ranged Items (" .. rarity .. ")",
			item_source = {},
			load_items_source_func = function (options)
				table.clear(options)

				local item_master_list = ItemMasterList

				for key, item in pairs(item_master_list) do
					if item.slot_type == "ranged" then
						options[#options + 1] = key
					end
				end

				table.sort(options)
			end,
			func = function (options, index)
				local item_interface = Managers.backend:get_interface("items")
				local item = options[index]

				if item then
					item_interface:award_item(item, nil, nil, rarity)
				end
			end
		}
	}
end

local function add_ring_preset(rarity)
	return {
		{
			description = "Lists all items with functionality to add them to inventory.",
			category = "Items",
			setting_name = "Add Ring Items (" .. rarity .. ")",
			item_source = {},
			load_items_source_func = function (options)
				table.clear(options)

				local item_master_list = ItemMasterList

				for key, item in pairs(item_master_list) do
					if item.slot_type == "ring" then
						options[#options + 1] = key
					end
				end

				table.sort(options)
			end,
			func = function (options, index)
				local item_interface = Managers.backend:get_interface("items")
				local item = options[index]

				if item then
					item_interface:award_item(item, nil, nil, rarity)
				end
			end
		}
	}
end

local function add_necklace_preset(rarity)
	return {
		{
			no_nil = true,
			description = "Lists all items with functionality to add them to inventory.",
			category = "Items",
			setting_name = "Add Necklace Items (" .. rarity .. ")",
			item_source = {},
			load_items_source_func = function (options)
				table.clear(options)

				local item_master_list = ItemMasterList

				for key, item in pairs(item_master_list) do
					if item.slot_type == "necklace" then
						options[#options + 1] = key
					end
				end

				table.sort(options)
			end,
			func = function (options, index)
				local item_interface = Managers.backend:get_interface("items")
				local item = options[index]

				if item then
					item_interface:award_item(item, nil, nil, rarity)
				end
			end
		}
	}
end

local function add_trinket_preset(rarity)
	return {
		{
			description = "Lists all items with functionality to add them to inventory.",
			category = "Items",
			setting_name = "Add Trinket Items (" .. rarity .. ")",
			item_source = {},
			load_items_source_func = function (options)
				table.clear(options)

				local item_master_list = ItemMasterList

				for key, item in pairs(item_master_list) do
					if item.slot_type == "trinket" then
						options[#options + 1] = key
					end
				end

				table.sort(options)
			end,
			func = function (options, index)
				local item_interface = Managers.backend:get_interface("items")
				local item = options[index]

				if item then
					item_interface:award_item(item, nil, nil, rarity)
				end
			end
		}
	}
end

local item_rarities = {
	"plentiful",
	"common",
	"rare",
	"exotic",
	"unique"
}

for _, rarity in ipairs(item_rarities) do
	table.append(settings, add_melee_preset(rarity))
end

for _, rarity in ipairs(item_rarities) do
	table.append(settings, add_ranged_preset(rarity))
end

for _, rarity in ipairs(item_rarities) do
	table.append(settings, add_ring_preset(rarity))
end

for _, rarity in ipairs(item_rarities) do
	table.append(settings, add_necklace_preset(rarity))
end

for _, rarity in ipairs(item_rarities) do
	table.append(settings, add_trinket_preset(rarity))
end

local function equip_preset(slot_type, rarity)
	local function load_items_preset(options)
		table.clear(options)

		local player_manager = Managers.player
		local player = player_manager:local_player()
		local profile_index = player:profile_index()
		local profile = SPProfiles[profile_index]
		local career_index = player:career_index()
		local career_data = profile.careers[career_index]
		local career_name = career_data.name
		local item_master_list = ItemMasterList
		local backend_common = Managers.backend:get_interface("common")

		for item_name, item_data in pairs(item_master_list) do
			if item_data.slot_type == slot_type and backend_common:can_wield(career_name, item_data) then
				options[#options + 1] = item_name
			end
		end

		table.sort(options)
	end

	local function equip_item_preset(options, index)
		local item_name = options[index]

		if not item_name then
			return
		end

		local item_interface = Managers.backend:get_interface("items")
		local item = item_interface:get_item_from_key(item_name)

		if not item then
			item_interface:award_item(item_name, nil, nil, rarity)

			item = item_interface:get_item_from_key(item_name)
		end

		if not item then
			return
		end

		local item_data = ItemMasterList[item_name]
		local player_manager = Managers.player
		local player = player_manager:local_player()
		local player_unit = player.player_unit
		local inventory_extension = ScriptUnit.extension(player_unit, "inventory_system")
		local resyncing_loadout = inventory_extension:resyncing_loadout()

		if resyncing_loadout then
			return
		end

		local backend_id = item.backend_id
		local slot_type = item_data.slot_type
		local slots = InventorySettings.slots_by_slot_index
		local slot_name

		for _, slot in pairs(slots) do
			if slot_type == slot.type then
				slot_name = slot.name

				break
			end
		end

		local profile_index = player:profile_index()
		local profile = SPProfiles[profile_index]
		local display_name = profile.display_name
		local hero_attributes = Managers.backend:get_interface("hero_attributes")
		local career_index = hero_attributes:get(display_name, "career")
		local career_data = profile.careers[career_index]
		local career_name = career_data.name

		BackendUtils.set_loadout_item(backend_id, career_name, slot_name)
		inventory_extension:create_equipment_in_slot(slot_name, backend_id)
	end

	return {
		{
			description = "Lists all items for current career to equip them, adding to inventory if necessary.",
			category = "Items",
			setting_name = "Equip " .. slot_type .. " Items (" .. rarity .. ")",
			item_source = {},
			load_items_source_func = load_items_preset,
			func = equip_item_preset
		}
	}
end

for _, rarity in ipairs(item_rarities) do
	table.append(settings, equip_preset("melee", rarity))
end

for _, rarity in ipairs(item_rarities) do
	table.append(settings, equip_preset("ranged", rarity))
end

local platform = PLATFORM

if IS_PS4 then
	local settings_ps4 = {
		{
			description = "Debug PSN Features",
			is_boolean = true,
			setting_name = "debug_psn",
			category = "PS4"
		}
	}

	table.append(settings, settings_ps4)
end

if IS_CONSOLE then
	local settings_console = {
		{
			setting_name = "Spawn/Unspawn",
			description = "",
			category = "Breed",
			item_source = {},
			load_items_source_func = function (options)
				table.clear(options)

				options[1] = "Switch Breed"
				options[2] = "Spawn Breed"
				options[3] = "Spawn Group"
				options[4] = "Spawn Horde"
				options[5] = "Unspawn All Breed"
				options[6] = "Unspawn Nearby Breed"
				options[7] = "Unspawn Specials"
			end,
			func = function (options, index)
				local conflict_director = Managers.state.conflict

				if conflict_director then
					local selected_value = options[index]

					if selected_value == "Switch Breed" then
						local t = Managers.time:time("main")

						conflict_director:debug_spawn_switch_breed(t)
					elseif selected_value == "Spawn Breed" then
						local t = Managers.time:time("main")

						conflict_director:debug_spawn_breed(t)
					elseif selected_value == "Spawn Group" then
						local t = Managers.time:time("main")

						conflict_director:debug_spawn_group(t)
					elseif selected_value == "Spawn Horde" then
						conflict_director:debug_spawn_horde()
					elseif selected_value == "Unspawn All Breed" then
						conflict_director:destroy_all_units()
					elseif selected_value == "Unspawn Nearby Breed" then
						conflict_director:destroy_close_units(nil, nil, 144)
					elseif selected_value == "Unspawn Specials" then
						conflict_director:destroy_specials()
					end
				end
			end
		},
		{
			setting_name = "Set Time Scale (%)",
			description = "",
			category = "Time",
			item_source = {},
			load_items_source_func = function (options)
				table.clear(options)

				options[1] = 1
				options[2] = 50
				options[3] = 100
				options[4] = 200
			end,
			func = function (options, index)
				local debug_manager = Managers.state.debug

				if debug_manager then
					local time_scale_value = options[index]
					local time_scale_index = table.find(debug_manager.time_scale_list, time_scale_value)

					assert(time_scale_index, "[DebugScreen] Selected time scale not found in Managers.state.debug.time_scale_list")
					debug_manager:set_time_scale(time_scale_index)
				end
			end
		}
	}

	table.append(settings, settings_console)
end

for _, settings_value in pairs(settings) do
	if settings_value.preset then
		for preset_key, preset_value in pairs(settings_value.preset) do
			settings_value.description = string.format("%s\xC2\xA4 %s = %s \n", settings_value.description, preset_key, tostring(preset_value))
		end
	end
end

local callbacks = {
	visualize_sound_occlusion = function (option)
		World.visualize_sound_occlusion()
	end,
	enable_chain_constraints = function (option)
		World.enable_chain_constraints(option)
	end,
	update_using_luajit = function (option)
		if script_data.luajit_disabled then
			jit.off()
			print("lua jit is disabled")
		else
			jit.on()
			print("lua jit is enabled")
		end
	end,
	enable_navigation_visual_debug = function (option)
		if option and not VISUAL_DEBUGGING_ENABLED and Managers.state.entity then
			VISUAL_DEBUGGING_ENABLED = true

			local nav_world = Managers.state.entity:system("ai_system"):nav_world()

			GwNavWorld.init_visual_debug_server(nav_world, 4888)
		end
	end,
	disable_outlines = function (option)
		if Managers.state and Managers.state.entity then
			Managers.state.entity:system("outline_system"):set_disabled(option)
		end
	end
}
local data = {
	settings = settings,
	callbacks = callbacks
}

return data
