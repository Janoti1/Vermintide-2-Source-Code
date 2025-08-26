require("scripts/settings/store_dlc_settings")

if not StoreLayoutConfig then
	StoreLayoutConfig = {
		base_filter = "( not is_event_item or is_active_event_item )",
		menu_options = {
			"featured",
			"cosmetics",
			"bundles",
			"dlc",
			"versus"
		},
		pages = {},
		structure = {},
		global_shader_flag_overrides = {
			NECROMANCER_CAREER_REMAP = false
		}
	}
	StoreLayoutConfig.structure = {
		bundles = 1,
		dlc = 1,
		featured = 1,
		cosmetics = {
			frames = "item_details",
			bardin = {
				ranger = {
					weapon_skins = "item_details",
					hats = "item_details",
					skins = "item_details"
				},
				ironbreaker = {
					weapon_skins = "item_details",
					hats = "item_details",
					skins = "item_details"
				},
				slayer = {
					weapon_skins = "item_details",
					hats = "item_details",
					skins = "item_details"
				},
				engineer = {
					weapon_skins = "item_details",
					hats = "item_details",
					skins = "item_details"
				}
			},
			kruber = {
				mercenary = {
					weapon_skins = "item_details",
					hats = "item_details",
					skins = "item_details"
				},
				huntsman = {
					weapon_skins = "item_details",
					hats = "item_details",
					skins = "item_details"
				},
				knight = {
					weapon_skins = "item_details",
					hats = "item_details",
					skins = "item_details"
				},
				questingknight = {
					weapon_skins = "item_details",
					hats = "item_details",
					skins = "item_details"
				}
			},
			kerillian = {
				waywatcher = {
					weapon_skins = "item_details",
					hats = "item_details",
					skins = "item_details"
				},
				maidenguard = {
					weapon_skins = "item_details",
					hats = "item_details",
					skins = "item_details"
				},
				shade = {
					weapon_skins = "item_details",
					hats = "item_details",
					skins = "item_details"
				}
			},
			victor = {
				captain = {
					weapon_skins = "item_details",
					hats = "item_details",
					skins = "item_details"
				},
				bountyhunter = {
					weapon_skins = "item_details",
					hats = "item_details",
					skins = "item_details"
				},
				zealot = {
					weapon_skins = "item_details",
					hats = "item_details",
					skins = "item_details"
				},
				priest = {
					weapon_skins = "item_details",
					hats = "item_details",
					skins = "item_details"
				}
			},
			sienna = {
				scholar = {
					weapon_skins = "item_details",
					hats = "item_details",
					skins = "item_details"
				},
				adept = {
					weapon_skins = "item_details",
					hats = "item_details",
					skins = "item_details"
				},
				unchained = {
					weapon_skins = "item_details",
					hats = "item_details",
					skins = "item_details"
				}
			},
			event = {
				weapon_skins = "item_details",
				hats = "item_details",
				skins = "item_details",
				frames = "item_details"
			}
		},
		versus = {
			frames = "item_details",
			pactsworn = "item_details",
			weapon_skins_versus = {
				sienna_versus = "item_list",
				bardin_versus = "item_list",
				kruber_versus = "item_list",
				victor_versus = "item_list",
				kerillian_versus = "item_list"
			},
			poses = {
				kruber_poses = "pose_items",
				sienna_poses = "pose_items",
				kerillian_poses = "pose_items",
				bardin_poses = "pose_items",
				victor_poses = "pose_items"
			}
		}
	}
	StoreLayoutConfig.pages.featured = {
		sound_event_enter = "Play_hud_store_category_front",
		layout = "featured",
		display_name = "menu_store_panel_title_featured",
		rotation_timer = false,
		slideshow = {},
		grid = {}
	}
	StoreLayoutConfig.pages.cosmetics = {
		sound_event_enter = "Play_hud_store_category_cosmetics",
		layout = "category",
		item_filter = "item_type ~= bundle and default_selection",
		display_name = "menu_store_panel_title_cosmetics",
		global_shader_flag_overrides = {
			NECROMANCER_CAREER_REMAP = false
		}
	}
	StoreLayoutConfig.pages.discount_tab = {
		sound_event_enter = "Play_hud_store_category_cosmetics",
		layout = "item_list",
		item_filter = "discounted_items",
		type = "item",
		display_name = "menu_store_panel_title_discounts"
	}

	local dlc_content = {}
	local bundle_dlc_content = {}
	local bundle_lookup_table = {}
	local platform = PLATFORM

	for _, settings in ipairs(StoreDlcSettings) do
		local available_platforms = settings.available_platforms

		if not available_platforms or table.find(available_platforms, platform) then
			if settings.is_bundle then
				bundle_dlc_content[#bundle_dlc_content + 1] = settings.dlc_name
				bundle_lookup_table[settings.dlc_name] = settings
			else
				dlc_content[#dlc_content + 1] = settings.dlc_name
			end
		end
	end

	if IS_CONSOLE then
		StoreLayoutConfig.pages.bundles = {
			sound_event_enter = "Play_hud_store_category_button",
			layout = "dlc_list",
			display_name = "menu_store_category_title_bundles",
			type = "dlc",
			category_button_texture = "store_category_icon_weapons",
			sort_order = 3,
			content = bundle_dlc_content
		}

		for bundle_dlc_name, dlc_settings in pairs(bundle_lookup_table) do
			StoreLayoutConfig.pages[bundle_dlc_name] = {
				layout = "item_list",
				type = "bundle_items",
				sort_order = 1,
				dlc_name = dlc_settings.dlc_name,
				bundle_contains = dlc_settings.bundle_contains,
				display_name = dlc_settings.name
			}
		end
	else
		StoreLayoutConfig.pages.bundles = {
			sound_event_enter = "Play_hud_store_category_button",
			layout = "bundle_list",
			display_name = "menu_store_category_title_bundles",
			type = "item",
			item_filter = "item_type == bundle",
			sort_order = 3,
			category_button_texture = "store_category_icon_weapons"
		}
	end

	StoreLayoutConfig.pages.dlc = {
		sound_event_enter = "Play_hud_store_category_dlc",
		layout = "dlc_list",
		display_name = "menu_store_panel_title_dlcs",
		type = "dlc",
		content = dlc_content
	}

	if not IS_CONSOLE then
		StoreLayoutConfig.pages.versus = {
			sound_event_enter = "Play_hud_store_category_cosmetics",
			layout = "category",
			item_filter = "selection == versus and item_type ~= weapon_pose_bundle",
			display_name = "menu_store_panel_title_versus",
			global_shader_flag_overrides = {
				NECROMANCER_CAREER_REMAP = false
			}
		}
	end

	StoreLayoutConfig.pages.item_details = {
		layout = "item_detailed",
		display_name = "item_details",
		type = "item"
	}
	StoreLayoutConfig.pages.all_items = {
		layout = "item_list",
		display_name = "menu_store_category_title_all",
		type = "item"
	}
	StoreLayoutConfig.pages.hats = {
		sound_event_enter = "Play_hud_store_category_button",
		layout = "item_list",
		display_name = "menu_store_category_title_character_hats",
		type = "item",
		item_filter = "item_type == hat",
		sort_order = 1,
		category_button_texture = "store_category_icon_hats"
	}
	StoreLayoutConfig.pages.skins = {
		sound_event_enter = "Play_hud_store_category_button",
		layout = "item_list",
		display_name = "menu_store_category_title_character_skins",
		type = "item",
		item_filter = "item_type == skin and not is_pactsworn_item",
		sort_order = 2,
		category_button_texture = "store_category_icon_skins"
	}
	StoreLayoutConfig.pages.weapon_skins = {
		sound_event_enter = "Play_hud_store_category_button",
		layout = "item_list",
		display_name = "menu_store_category_title_weapon_illusions",
		type = "item",
		item_filter = "item_type == weapon_skin",
		sort_order = 3,
		category_button_texture = "store_category_icon_weapons"
	}
	StoreLayoutConfig.pages.frames = {
		sound_event_enter = "Play_hud_store_category_button",
		layout = "item_list",
		display_name = "frame",
		type = "item",
		item_filter = "item_type == frame",
		sort_order = 99,
		category_button_texture = "store_category_icon_portrait_frames"
	}

	if not IS_CONSOLE then
		StoreLayoutConfig.pages.pose_items = {
			sound_event_enter = "Play_hud_store_category_button",
			layout = "category",
			display_name = "weapon_pose",
			type = "collection_item",
			item_filter = "item_type == weapon_pose_bundle and selection == versus",
			sort_order = 6,
			category_button_texture = "store_category_icon_poses",
			exclusive_filter = true
		}
		StoreLayoutConfig.pages.weapon_skins_versus = {
			sound_event_enter = "Play_hud_store_category_button",
			layout = "category",
			display_name = "menu_store_category_title_weapon_illusions",
			type = "item",
			item_filter = "item_type == weapon_skin and selection == versus",
			sort_order = 3,
			category_button_texture = "store_category_icon_weapons"
		}
		StoreLayoutConfig.pages.poses = {
			sound_event_enter = "Play_hud_store_category_button",
			layout = "category",
			display_name = "weapon_pose",
			item_filter = "item_type == weapon_pose_bundle and selection == versus",
			category_button_texture = "store_category_icon_poses",
			exclusive_filter = true,
			global_shader_flag_overrides = {
				NECROMANCER_CAREER_REMAP = false
			}
		}
		StoreLayoutConfig.pages.kerillian_poses = {
			sound_event_enter = "Play_hud_store_kerillian",
			layout = "category",
			item_filter = "item_type == weapon_pose_bundle and selection == versus and can_wield_wood_elf",
			type = "collection_item",
			display_name = "inventory_name_wood_elf",
			sort_order = 3,
			category_button_texture = "store_category_icon_kerillian_waystalker"
		}
		StoreLayoutConfig.pages.kruber_poses = {
			sound_event_enter = "Play_hud_store_kruber",
			layout = "category",
			item_filter = "item_type == weapon_pose_bundle and selection == versus and can_wield_empire_soldier",
			type = "collection_item",
			display_name = "inventory_name_empire_soldier",
			sort_order = 1,
			category_button_texture = "store_category_icon_kruber_mercenary"
		}
		StoreLayoutConfig.pages.bardin_poses = {
			sound_event_enter = "Play_hud_store_bardin",
			layout = "category",
			item_filter = "item_type == weapon_pose_bundle and selection == versus and can_wield_dwarf_ranger",
			type = "collection_item",
			display_name = "inventory_name_dwarf_ranger",
			sort_order = 2,
			category_button_texture = "store_category_icon_bardin_ranger"
		}
		StoreLayoutConfig.pages.victor_poses = {
			sound_event_enter = "Play_hud_store_saltzpyre",
			layout = "category",
			item_filter = "item_type == weapon_pose_bundle and selection == versus and can_wield_witch_hunter",
			type = "collection_item",
			display_name = "inventory_name_witch_hunter",
			sort_order = 4,
			category_button_texture = "store_category_icon_victor_captain"
		}
		StoreLayoutConfig.pages.sienna_poses = {
			sound_event_enter = "Play_hud_store_sienna",
			layout = "category",
			item_filter = "item_type == weapon_pose_bundle and selection == versus and can_wield_bright_wizard",
			type = "collection_item",
			display_name = "inventory_name_bright_wizard",
			sort_order = 5,
			category_button_texture = "store_category_icon_sienna_scholar"
		}
		StoreLayoutConfig.pages.kerillian_versus = {
			sound_event_enter = "Play_hud_store_kerillian",
			layout = "item_list",
			item_filter = "item_type == weapon_skin and selection == versus and can_wield_wood_elf",
			type = "item",
			display_name = "inventory_name_wood_elf",
			sort_order = 3,
			category_button_texture = "store_category_icon_kerillian_waystalker"
		}
		StoreLayoutConfig.pages.kruber_versus = {
			sound_event_enter = "Play_hud_store_kruber",
			layout = "item_list",
			item_filter = "item_type == weapon_skin and selection == versus and can_wield_empire_soldier",
			type = "item",
			display_name = "inventory_name_empire_soldier",
			sort_order = 1,
			category_button_texture = "store_category_icon_kruber_mercenary"
		}
		StoreLayoutConfig.pages.bardin_versus = {
			sound_event_enter = "Play_hud_store_bardin",
			layout = "item_list",
			item_filter = "item_type == weapon_skin and selection == versus and can_wield_dwarf_ranger",
			type = "item",
			display_name = "inventory_name_dwarf_ranger",
			sort_order = 2,
			category_button_texture = "store_category_icon_bardin_ranger"
		}
		StoreLayoutConfig.pages.victor_versus = {
			sound_event_enter = "Play_hud_store_saltzpyre",
			layout = "item_list",
			item_filter = "item_type == weapon_skin and selection == versus and can_wield_witch_hunter",
			type = "item",
			display_name = "inventory_name_witch_hunter",
			sort_order = 4,
			category_button_texture = "store_category_icon_victor_captain"
		}
		StoreLayoutConfig.pages.sienna_versus = {
			sound_event_enter = "Play_hud_store_sienna",
			layout = "item_list",
			item_filter = "item_type == weapon_skin and selection == versus and can_wield_bright_wizard",
			type = "item",
			display_name = "inventory_name_bright_wizard",
			sort_order = 5,
			category_button_texture = "store_category_icon_sienna_scholar"
		}
		StoreLayoutConfig.pages.pactsworn = {
			sound_event_enter = "Play_hud_store_category_button",
			layout = "item_list",
			display_name = "dark_pact_skin",
			type = "item",
			item_filter = "is_pactsworn_item",
			sort_order = 5,
			category_button_texture = "store_category_icon_pactsworn"
		}
	end

	StoreLayoutConfig.pages.event = {
		sound_event_enter = "Play_hud_store_category_button",
		layout = "item_list",
		display_name = "achv_menu_event_category_title",
		type = "item",
		item_filter = "is_active_event_item",
		sort_order = 100,
		category_button_texture = "store_category_icon_event",
		exclusive_filter = true
	}
	StoreLayoutConfig.pages.bardin = {
		sound_event_enter = "Play_hud_store_bardin",
		layout = "category",
		display_name = "inventory_name_dwarf_ranger",
		item_filter = "can_wield_dwarf_ranger and item_type ~= frame",
		sort_order = 2,
		category_button_texture = "store_category_icon_bardin_ranger"
	}
	StoreLayoutConfig.pages.ironbreaker = {
		sound_event_enter = "Play_hud_store_category_button",
		layout = "category",
		display_name = "dr_ironbreaker",
		item_filter = "can_wield_dr_ironbreaker",
		sort_order = 2,
		category_button_texture = "store_category_icon_bardin_ironbreaker"
	}
	StoreLayoutConfig.pages.slayer = {
		sound_event_enter = "Play_hud_store_category_button",
		layout = "category",
		display_name = "dr_slayer",
		item_filter = "can_wield_dr_slayer",
		sort_order = 3,
		category_button_texture = "store_category_icon_bardin_slayer"
	}
	StoreLayoutConfig.pages.ranger = {
		sound_event_enter = "Play_hud_store_category_button",
		layout = "category",
		display_name = "dr_ranger",
		item_filter = "can_wield_dr_ranger",
		sort_order = 1,
		category_button_texture = "store_category_icon_bardin_ranger"
	}
	StoreLayoutConfig.pages.engineer = {
		sound_event_enter = "Play_hud_store_category_button",
		layout = "category",
		display_name = "dr_engineer",
		item_filter = "can_wield_dr_engineer",
		sort_order = 4,
		category_button_texture = "store_category_icon_bardin_engineer"
	}
	StoreLayoutConfig.pages.kruber = {
		sound_event_enter = "Play_hud_store_kruber",
		layout = "category",
		display_name = "inventory_name_empire_soldier",
		item_filter = "can_wield_empire_soldier and item_type ~= frame",
		sort_order = 1,
		category_button_texture = "store_category_icon_kruber_mercenary"
	}
	StoreLayoutConfig.pages.huntsman = {
		sound_event_enter = "Play_hud_store_category_button",
		layout = "category",
		display_name = "es_huntsman",
		item_filter = "can_wield_es_huntsman",
		sort_order = 2,
		category_button_texture = "store_category_icon_kruber_huntsman"
	}
	StoreLayoutConfig.pages.knight = {
		sound_event_enter = "Play_hud_store_category_button",
		layout = "category",
		display_name = "es_knight",
		item_filter = "can_wield_es_knight",
		sort_order = 3,
		category_button_texture = "store_category_icon_kruber_knight"
	}
	StoreLayoutConfig.pages.mercenary = {
		sound_event_enter = "Play_hud_store_category_button",
		layout = "category",
		display_name = "es_mercenary",
		item_filter = "can_wield_es_mercenary",
		sort_order = 1,
		category_button_texture = "store_category_icon_kruber_mercenary"
	}
	StoreLayoutConfig.pages.questingknight = {
		sound_event_enter = "Play_hud_store_category_button",
		layout = "category",
		display_name = "es_questingknight",
		item_filter = "can_wield_es_questingknight",
		sort_order = 4,
		category_button_texture = "store_category_icon_kruber_questingknight"
	}
	StoreLayoutConfig.pages.kerillian = {
		sound_event_enter = "Play_hud_store_kerillian",
		layout = "category",
		display_name = "inventory_name_wood_elf",
		item_filter = "can_wield_wood_elf and item_type ~= frame",
		sort_order = 3,
		category_button_texture = "store_category_icon_kerillian_waystalker"
	}
	StoreLayoutConfig.pages.waywatcher = {
		sound_event_enter = "Play_hud_store_category_button",
		layout = "category",
		display_name = "we_waywatcher",
		item_filter = "can_wield_we_waywatcher",
		sort_order = 1,
		category_button_texture = "store_category_icon_kerillian_waystalker"
	}
	StoreLayoutConfig.pages.maidenguard = {
		sound_event_enter = "Play_hud_store_category_button",
		layout = "category",
		display_name = "we_maidenguard",
		item_filter = "can_wield_we_maidenguard",
		sort_order = 2,
		category_button_texture = "store_category_icon_kerillian_handmaiden"
	}
	StoreLayoutConfig.pages.shade = {
		sound_event_enter = "Play_hud_store_category_button",
		layout = "category",
		display_name = "we_shade",
		item_filter = "can_wield_we_shade",
		sort_order = 3,
		category_button_texture = "store_category_icon_kerillian_shade"
	}
	StoreLayoutConfig.pages.thornsister = {
		sound_event_enter = "Play_hud_store_category_button",
		layout = "category",
		display_name = "we_thornsister",
		item_filter = "can_wield_we_thornsister",
		sort_order = 4,
		category_button_texture = "store_category_icon_kerillian_thornsister"
	}
	StoreLayoutConfig.pages.victor = {
		sound_event_enter = "Play_hud_store_saltzpyre",
		layout = "category",
		display_name = "inventory_name_witch_hunter",
		item_filter = "can_wield_witch_hunter and item_type ~= frame",
		sort_order = 4,
		category_button_texture = "store_category_icon_victor_captain"
	}
	StoreLayoutConfig.pages.captain = {
		sound_event_enter = "Play_hud_store_category_button",
		layout = "category",
		display_name = "wh_captain",
		item_filter = "can_wield_wh_captain",
		sort_order = 1,
		category_button_texture = "store_category_icon_victor_captain"
	}
	StoreLayoutConfig.pages.bountyhunter = {
		sound_event_enter = "Play_hud_store_category_button",
		layout = "category",
		display_name = "wh_bountyhunter",
		item_filter = "can_wield_wh_bountyhunter",
		sort_order = 2,
		category_button_texture = "store_category_icon_victor_bountyhunter"
	}
	StoreLayoutConfig.pages.zealot = {
		sound_event_enter = "Play_hud_store_category_button",
		layout = "category",
		display_name = "wh_zealot",
		item_filter = "can_wield_wh_zealot",
		sort_order = 3,
		category_button_texture = "store_category_icon_victor_zealot"
	}
	StoreLayoutConfig.pages.priest = {
		sound_event_enter = "Play_hud_store_category_button",
		layout = "category",
		display_name = "wh_priest",
		item_filter = "can_wield_wh_priest",
		sort_order = 4,
		category_button_texture = "store_category_icon_priest"
	}
	StoreLayoutConfig.pages.sienna = {
		sound_event_enter = "Play_hud_store_sienna",
		layout = "category",
		display_name = "inventory_name_bright_wizard",
		item_filter = "can_wield_bright_wizard and item_type ~= frame",
		sort_order = 5,
		category_button_texture = "store_category_icon_sienna_scholar"
	}
	StoreLayoutConfig.pages.scholar = {
		sound_event_enter = "Play_hud_store_category_button",
		layout = "category",
		display_name = "bw_scholar",
		item_filter = "can_wield_bw_scholar",
		sort_order = 2,
		category_button_texture = "store_category_icon_sienna_scholar"
	}
	StoreLayoutConfig.pages.adept = {
		sound_event_enter = "Play_hud_store_category_button",
		layout = "category",
		display_name = "bw_adept",
		item_filter = "can_wield_bw_adept",
		sort_order = 1,
		category_button_texture = "store_category_icon_sienna_adept"
	}
	StoreLayoutConfig.pages.unchained = {
		sound_event_enter = "Play_hud_store_category_button",
		layout = "category",
		display_name = "bw_unchained",
		item_filter = "can_wield_bw_unchained",
		sort_order = 3,
		category_button_texture = "store_category_icon_sienna_unchained"
	}
	StoreLayoutConfig.pages.discounts = {
		sound_event_enter = "Play_hud_store_kruber",
		layout = "category",
		display_name = "inventory_discounts",
		item_filter = "discounted_items",
		sort_order = 6,
		category_button_texture = "store_category_icon_kruber_mercenary"
	}

	for dlc_name, dlc_settings in pairs(DLCSettings) do
		local store_layout = dlc_settings.store_layout

		if store_layout then
			table.append_recursive(StoreLayoutConfig, store_layout)
		end
	end
end

StoreLayoutConfig.make_sort_key = function (item)
	local backend_items = Managers.backend:get_interface("items")
	local data = item.data
	local key = item.key
	local item_type = key
	local prio = item.prio or 0
	local price = 0
	local rarity = item.rarity or "plentiful"
	local part_of_active_event = ""
	local owned = not (not backend_items:has_item(key) and not backend_items:has_weapon_illusion(key)) and 2 or 0

	if data then
		local live_events_interface = Managers.backend:get_interface("live_events")
		local live_events = live_events_interface and live_events_interface:get_active_events()

		if live_events then
			local best_event

			if data and data.events then
				live_events = table.mirror_array_inplace(live_events)

				for i = 1, #data.events do
					local event = data.events[i]

					if table.contains(live_events, event) then
						best_event = math.min(best_event or math.huge, live_events[event])
					end
				end
			end

			part_of_active_event = (best_event or #live_events + 1) .. ".event"
		end

		item_type = data.item_type or item.item_type

		if item_type == "weapon_skin" then
			item_type = data.matching_item_key or "weapon_skin"
		else
			item_type = item_type == "bundle" and "2.bundle" or item_type == "skin" and "1.skin" or item_type == "hat" and "0.hat" or key
		end

		prio = data.prio or prio
		rarity = data.rarity or rarity

		local current_prices = item.current_prices

		if current_prices then
			price = current_prices.SM or 0
		end

		if not owned and backend_items:has_bundle_contents(data.bundle_contains) then
			owned = 1
		end
	end

	prio = 65536 - prio

	if prio <= 0 then
		prio = 1
	end

	local sort_key = string.format("%01x%s%-16.16s%03x%04x%01x", owned, part_of_active_event, item_type, prio, price, ORDER_RARITY[rarity] or 0)

	return sort_key
end

StoreLayoutConfig.compare_sort_key = function (a, b)
	return a.sort_key < b.sort_key
end

StoreLayoutConfig.get_item_filter = function (path, temporary_page_func)
	local structure = StoreLayoutConfig.structure
	local pages = StoreLayoutConfig.pages
	local item_filter = StoreLayoutConfig.base_filter
	local added_filters = item_filter == "" and 0 or 1

	for index, path_name in ipairs(path) do
		local page = pages[path_name] or temporary_page_func(path_name)
		local page_item_filter = page.item_filter
		local page_exclusive_filter = page.exclusive_filter

		if page_exclusive_filter then
			item_filter = StoreLayoutConfig.base_filter .. " and " .. page_item_filter
			added_filters = 1
		elseif page_item_filter then
			item_filter = item_filter .. " and " .. page_item_filter
			added_filters = added_filters + 1
		end

		if type(structure) == "table" then
			structure = structure[path_name]
		end
	end

	if type(structure) == "table" then
		local sub_filter = StoreLayoutConfig._get_sub_filter(structure)

		if sub_filter then
			item_filter = item_filter .. " and ( " .. sub_filter .. " ) "
		end
	end

	return item_filter
end

StoreLayoutConfig._get_sub_filter = function (structure)
	local pages = StoreLayoutConfig.pages
	local sub_filter

	for path_name, sub_structure_or_string in pairs(structure) do
		local page_filter
		local page = pages[path_name]

		if page then
			page_filter = page.item_filter
		end

		if type(sub_structure_or_string) == "table" then
			local sub_sub_filter = StoreLayoutConfig._get_sub_filter(sub_structure_or_string)

			if sub_sub_filter then
				if page_filter then
					page_filter = page_filter .. " and ( " .. sub_sub_filter .. " ) "
				else
					page_filter = sub_sub_filter
				end
			end
		end

		if page_filter then
			if sub_filter then
				sub_filter = sub_filter .. " or ( " .. page_filter .. " ) "
			else
				sub_filter = " ( " .. page_filter .. " ) "
			end
		end
	end

	return sub_filter
end
