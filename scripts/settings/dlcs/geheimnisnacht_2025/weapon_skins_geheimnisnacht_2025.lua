local skins = {
	{
		name = "dw_2h_pick_skin_04_runed_03",
		data = {
			description = "dw_2h_pick_skin_04_runed_03_description",
			rarity = "unique",
			right_hand_unit = "units/weapons/player/wpn_dw_pick_01_t4/wpn_dw_pick_01_t4_runed_01",
			hud_icon = "weapon_generic_icon_staff_3",
			inventory_icon = "icon_wpn_dw_pick_01_t4",
			display_name = "dw_2h_pick_skin_04_runed_03_name",
			template = "two_handed_picks_template_1",
			display_unit = "units/weapons/weapon_display/display_2h_picks",
			material_settings = WeaponMaterialSettingsTemplates.golden_glow
		}
	},
	{
		name = "we_2h_sword_skin_06_runed_03",
		data = {
			description = "we_2h_sword_skin_06_runed_03_description",
			rarity = "unique",
			right_hand_unit = "units/weapons/player/wpn_we_2h_sword_03_t2/wpn_we_2h_sword_03_t2_runed_01",
			hud_icon = "weapon_generic_icon_staff_3",
			inventory_icon = "icon_wpn_we_2h_sword_03_t2",
			display_name = "we_2h_sword_skin_06_runed_03_name",
			template = "two_handed_swords_wood_elf_template",
			display_unit = "units/weapons/weapon_display/display_2h_swords_wood_elf",
			material_settings = WeaponMaterialSettingsTemplates.golden_glow
		}
	},
	{
		name = "es_1h_sword_skin_02_runed_03",
		data = {
			description = "es_1h_sword_skin_02_runed_03_description",
			rarity = "unique",
			right_hand_unit = "units/weapons/player/wpn_emp_sword_02_t2/wpn_emp_sword_02_t2_runed_01",
			hud_icon = "weapon_generic_icon_staff_3",
			inventory_icon = "icon_wpn_emp_sword_02_t2",
			display_name = "es_1h_sword_skin_02_runed_03_name",
			template = "one_handed_swords_template_1",
			display_unit = "units/weapons/weapon_display/display_1h_swords",
			material_settings = WeaponMaterialSettingsTemplates.golden_glow
		}
	},
	{
		name = "bw_conflagration_staff_skin_02_runed_03",
		data = {
			description = "bw_conflagration_staff_skin_02_runed_03_description",
			rarity = "unique",
			right_hand_unit = "units/weapons/player/wpn_brw_staff_04/wpn_brw_staff_04_runed_01",
			display_name = "bw_conflagration_staff_skin_02_runed_03_name",
			inventory_icon = "icon_wpn_brw_staff_04",
			left_hand_unit = "units/weapons/player/wpn_fireball/wpn_fireball",
			template = "staff_fireball_geiser_template_1",
			hud_icon = "weapon_generic_icon_staff_3",
			display_unit = "units/weapons/weapon_display/display_staff",
			material_settings = WeaponMaterialSettingsTemplates.golden_glow
		}
	},
	{
		name = "wh_1h_axe_skin_04_runed_03",
		data = {
			description = "wh_1h_axe_skin_04_runed_03_description",
			rarity = "unique",
			right_hand_unit = "units/weapons/player/wpn_axe_03_t2/wpn_axe_03_t2_runed_01",
			hud_icon = "weapon_generic_icon_axe1h",
			inventory_icon = "icon_wpn_axe_03_t2",
			display_name = "wh_1h_axe_skin_04_runed_03_name",
			template = "one_hand_axe_template_1",
			display_unit = "units/weapons/weapon_display/display_1h_axes",
			material_settings = WeaponMaterialSettingsTemplates.golden_glow
		}
	}
}
local skin_combinations = {
	dr_2h_pick_skins = {
		unique = {
			"dw_2h_pick_skin_04_runed_03"
		}
	},
	we_2h_sword_skins = {
		unique = {
			"we_2h_sword_skin_06_runed_03"
		}
	},
	es_1h_sword_skins = {
		unique = {
			"es_1h_sword_skin_02_runed_03"
		}
	},
	bw_skullstaff_geiser_skins = {
		unique = {
			"bw_conflagration_staff_skin_02_runed_03"
		}
	},
	wh_1h_axe_skins = {
		unique = {
			"wh_1h_axe_skin_04_runed_03"
		}
	}
}

for _, skin in ipairs(skins) do
	WeaponSkins.skins[skin.name] = skin.data
end

for weapon_name, skin_data in pairs(skin_combinations) do
	if not WeaponSkins.skin_combinations[weapon_name] then
		WeaponSkins.skin_combinations[weapon_name] = {}
	end

	for weapon_rarity, skin_names in pairs(skin_data) do
		if not WeaponSkins.skin_combinations[weapon_name][weapon_rarity] then
			WeaponSkins.skin_combinations[weapon_name][weapon_rarity] = {}
		end

		for _, skin_name in ipairs(skin_names) do
			WeaponSkins.skin_combinations[weapon_name][weapon_rarity][#WeaponSkins.skin_combinations[weapon_name][weapon_rarity] + 1] = skin_name
		end
	end
end
