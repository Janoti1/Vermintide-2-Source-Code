CareerActionNames.wood_elf[#CareerActionNames.wood_elf + 1] = "action_career_we_thornsister"
CareerSettings.we_thornsister = {
	profile_name = "wood_elf",
	display_name = "we_thornsister",
	package_name = "resource_packages/careers/we_thornsister",
	name = "we_thornsister",
	preview_idle_animation = "career_idle_04",
	preview_animation = "career_select_04",
	icon = "icons_placeholder",
	base_skin = "skin_ww_thornsister",
	picking_image = "medium_unit_frame_portrait_kerillian_thornsister",
	preview_wield_slot = "ranged",
	playfab_name = "we_thornsister",
	category_image = "icons_placeholder",
	sound_character = "wood_elf_sister",
	portrait_image_picking = "picking_portrait_kerillian_thornsister",
	talent_tree_index = 4,
	description = "kerillian_4_desc",
	portrait_image = "unit_frame_portrait_kerillian_thornsister",
	portrait_thumbnail = "portrait_kerillian_thornsister_thumbnail",
	sort_order = 4,
	required_dlc = "woods",
	breed = PlayerBreeds.hero_we_thornsister,
	item_types = {},
	activated_ability = ActivatedAbilitySettings.we_thornsister,
	passive_ability = PassiveAbilitySettings.we_thornsister,
	attributes = {
		base_critical_strike_chance = 0.05,
		max_hp = 125
	},
	video = {
		material_name = "we_thornsister",
		resource = "video/career_videos/kerillian/we_thornsister"
	},
	unique_subtitles = {
		"st_",
		4
	},
	preview_items = {
		{
			item_name = "we_life_staff"
		},
		{
			item_name = "thornsister_hat_0000"
		}
	},
	is_unlocked_function = function (career, hero_name, hero_level)
		local unlocked, reason = career:override_available_for_mechanism()

		if not unlocked then
			return unlocked, reason
		end

		local dlc_name

		unlocked, reason, dlc_name = career:is_dlc_unlocked()

		if not unlocked then
			return false, reason, dlc_name
		end

		return true, reason, dlc_name
	end,
	is_dlc_unlocked = function (career)
		if Managers.unlock:is_dlc_unlocked("woods") then
			return true, nil, "woods"
		else
			return false, "dlc_not_owned", "woods"
		end
	end,
	override_available_for_mechanism = function (career)
		local settings = Managers.mechanism:mechanism_setting_for_title("override_career_availability")
		local career_name = career.display_name

		if settings and settings[career_name] == false then
			return false, "disabled_for_mechanism"
		end

		return true
	end,
	requires_packages = {
		wall_units = {
			"units/beings/player/way_watcher_thornsister/abilities/ww_thornsister_thorn_wall_01"
		}
	},
	item_slot_types_by_slot_name = {
		slot_melee = {
			"melee"
		},
		slot_ranged = {
			"ranged"
		},
		slot_necklace = {
			"necklace"
		},
		slot_ring = {
			"ring"
		},
		slot_trinket_1 = {
			"trinket"
		},
		slot_hat = {
			"hat"
		},
		slot_skin = {
			"skin"
		},
		slot_frame = {
			"frame"
		},
		slot_pose = {
			"weapon_pose"
		}
	},
	loadout_equipment_slots = {
		"melee",
		"ranged",
		"necklace",
		"ring",
		"trinket",
		"weapon_pose"
	}
}
OverchargeData = OverchargeData or {}
OverchargeData.we_thornsister = {
	overcharge_value_decrease_rate = 1,
	overcharge_warning_critical_sound_event = "weapon_life_staff_overcharge_warning_critical",
	no_forced_movement = true,
	overcharge_explosion_time = 0.1,
	percent_health_lost = 0.4,
	overcharge_threshold = 10,
	overcharge_warning_high_sound_event = "weapon_life_staff_overcharge_warning_high",
	onscreen_particles_id = "fx/thornsister_overcharge",
	no_explosion = true,
	critical_onscreen_particles_id = "fx/thornsister_overcharge",
	overcharge_warning_med_sound_event = "weapon_life_staff_overcharge_warning_medium",
	time_until_overcharge_decreases = 0.5,
	hit_overcharge_threshold_sound = "ui_special_attack_ready",
	lockout_overcharge_decay_rate = 4,
	explode_vfx_name = "fx/thornsister_overcharge_explosion_3p",
	overcharge_ui = {
		material = "overcharge_bar",
		color_normal = {
			255,
			180,
			195,
			182
		},
		color_medium = {
			255,
			0,
			255,
			165
		},
		color_high = {
			255,
			0,
			255,
			0
		}
	}
}
PlayerUnitStatusSettings = PlayerUnitStatusSettings or {}
PlayerUnitStatusSettings.overcharge_values = table.merge(PlayerUnitStatusSettings.overcharge_values or {}, {
	life_staff_light = 4
})
CareerNameAchievementMapping.we_thornsister = "thornsister"
