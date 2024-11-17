ItemMasterList = ItemMasterList or {}
ItemMasterList.vs_packmaster_claw = {
	description = "dw_1h_axe_skin_01_description",
	rarity = "plentiful",
	right_hand_unit = "units/weapons/player/dark_pact/wpn_skaven_packmaster_claw/wpn_skaven_packmaster_claw",
	inventory_icon = "icon_wpn_dw_axe_01_t1",
	slot_type = "melee",
	display_name = "dw_1h_axe_skin_01_name",
	hud_icon = "weapon_generic_icon_axe1h",
	has_power_level = true,
	template = "vs_packmaster_claw",
	property_table_name = "melee",
	item_type = "we_spear",
	trait_table_name = "melee",
	can_wield = {
		"vs_packmaster"
	},
	mechanisms = {
		"versus"
	}
}
ItemMasterList.vs_poison_wind_globadier_orb = {
	description = "dw_1h_axe_skin_01_description",
	rarity = "plentiful",
	right_hand_unit = "units/weapons/player/dark_pact/wpn_poison_wind_globe/wpn_poison_wind_globe",
	inventory_icon = "icon_wpn_dw_axe_01_t1",
	slot_type = "melee",
	display_name = "dw_1h_axe_skin_01_name",
	hud_icon = "weapon_generic_icon_axe1h",
	has_power_level = true,
	template = "vs_poison_wind_globadier_orb",
	property_table_name = "melee",
	item_type = "dr_1h_axes",
	trait_table_name = "melee",
	can_wield = {
		"vs_poison_wind_globadier"
	},
	mechanisms = {
		"versus"
	}
}
ItemMasterList.vs_ratling_gunner_gun = {
	description = "dw_1h_axe_skin_01_description",
	rarity = "plentiful",
	display_name = "dw_1h_axe_skin_01_name",
	inventory_icon = "icon_wpn_dw_axe_01_t1",
	slot_type = "melee",
	hud_icon = "weapon_generic_icon_axe1h",
	left_hand_unit = "units/weapons/player/dark_pact/wpn_skaven_ratlinggun/wpn_skaven_ratlinggun",
	has_power_level = true,
	template = "vs_ratling_gunner_gun",
	property_table_name = "melee",
	item_type = "dr_drakegun",
	trait_table_name = "melee",
	can_wield = {
		"vs_ratling_gunner"
	},
	mechanisms = {
		"versus"
	}
}
ItemMasterList.vs_warpfire_thrower_gun = {
	description = "dw_1h_axe_skin_01_description",
	rarity = "plentiful",
	display_name = "dw_1h_axe_skin_01_name",
	inventory_icon = "icon_wpn_dw_axe_01_t1",
	slot_type = "melee",
	hud_icon = "weapon_generic_icon_axe1h",
	left_hand_unit = "units/weapons/player/dark_pact/wpn_skaven_warpfiregun/wpn_skaven_warpfiregun",
	has_power_level = true,
	template = "vs_warpfire_thrower_gun",
	property_table_name = "melee",
	item_type = "dr_drakegun",
	trait_table_name = "melee",
	can_wield = {
		"vs_warpfire_thrower"
	},
	mechanisms = {
		"versus"
	}
}
ItemMasterList.vs_chaos_troll_axe = {
	description = "dw_1h_axe_skin_01_description",
	rarity = "plentiful",
	right_hand_unit = "units/weapons/player/wpn_invisible_weapon",
	inventory_icon = "icon_wpn_dw_axe_01_t1",
	slot_type = "melee",
	display_name = "dw_1h_axe_skin_01_name",
	left_hand_unit = "units/weapons/player/dark_pact/wpn_chaos_troll/wpn_chaos_troll_01",
	has_power_level = true,
	template = "vs_chaos_troll_axe",
	property_table_name = "melee",
	item_type = "dr_1h_axes",
	hud_icon = "weapon_generic_icon_axe1h",
	trait_table_name = "melee",
	can_wield = {
		"vs_chaos_troll"
	},
	mechanisms = {
		"versus"
	}
}
ItemMasterList.vs_gutter_runner_claws = {
	description = "dw_1h_axe_skin_01_description",
	rarity = "plentiful",
	right_hand_unit = "units/weapons/player/dark_pact/wpn_skaven_gutter_runner_claws/wpn_right_claw",
	inventory_icon = "icon_wpn_dw_axe_01_t1",
	slot_type = "melee",
	display_name = "dw_1h_axe_skin_01_name",
	left_hand_unit = "units/weapons/player/dark_pact/wpn_skaven_gutter_runner_claws/wpn_left_claw",
	has_power_level = true,
	template = "vs_gutter_runner_claws",
	property_table_name = "melee",
	item_type = "we_dual_wield_daggers",
	hud_icon = "weapon_generic_icon_axe1h",
	trait_table_name = "melee",
	can_wield = {
		"vs_gutter_runner"
	},
	mechanisms = {
		"versus"
	}
}
ItemMasterList.packmaster_claw_combo = {
	temporary_template = "packmaster_claw",
	right_hand_unit = "units/weapons/player/wpn_packmaster_claw_combo/wpn_packmaster_claw_combo",
	is_local = true,
	item_type = "inventory_item",
	slot_type = "slot_packmaster_claw",
	rarity = "plentiful",
	can_wield = CanWieldAllItemTemplates
}
ItemMasterList.vs_es_1h_sword = {
	description = "es_1h_sword_skin_01_description",
	rarity = "plentiful",
	right_hand_unit = "units/weapons/player/wpn_emp_sword_02_t1/wpn_emp_sword_02_t1",
	skin_combination_table = "es_1h_sword_skins",
	slot_type = "melee",
	inventory_icon = "icon_wpn_emp_sword_02_t1",
	display_name = "es_1h_sword_skin_01_name",
	has_power_level = true,
	template = "one_handed_swords_template_1",
	property_table_name = "melee",
	item_type = "es_1h_sword",
	hud_icon = "weapon_generic_icon_sword",
	trait_table_name = "melee",
	can_wield = {
		"es_huntsman",
		"es_knight",
		"es_mercenary",
		"es_questingknight"
	},
	mechanisms = {
		"versus"
	}
}
ItemMasterList.vs_es_1h_mace = {
	description = "es_1h_mace_skin_01_description",
	rarity = "plentiful",
	right_hand_unit = "units/weapons/player/wpn_emp_mace_02_t1/wpn_emp_mace_02_t1",
	skin_combination_table = "es_1h_mace_skins",
	slot_type = "melee",
	inventory_icon = "icon_wpn_emp_mace_02_t1",
	display_name = "es_1h_mace_skin_01_name",
	has_power_level = true,
	template = "one_handed_hammer_template_1",
	property_table_name = "melee",
	item_type = "es_1h_mace",
	hud_icon = "weapon_generic_icon_mace",
	trait_table_name = "melee",
	can_wield = {
		"es_huntsman",
		"es_knight",
		"es_mercenary",
		"es_questingknight"
	},
	mechanisms = {
		"versus"
	}
}
ItemMasterList.vs_es_2h_sword_executioner = {
	description = "es_2h_sword_exe_skin_01_description",
	rarity = "plentiful",
	right_hand_unit = "units/weapons/player/wpn_emp_sword_exe_01_t1/wpn_emp_sword_exe_01_t1",
	skin_combination_table = "es_2h_sword_executioner_skins",
	slot_type = "melee",
	inventory_icon = "icon_wpn_emp_sword_exe_01_t1",
	display_name = "es_2h_sword_exe_skin_01_name",
	has_power_level = true,
	template = "two_handed_swords_executioner_template_1",
	property_table_name = "melee",
	item_type = "es_2h_sword_executioner",
	hud_icon = "weapon_generic_icon_sword",
	trait_table_name = "melee",
	can_wield = {
		"es_huntsman",
		"es_knight",
		"es_mercenary",
		"es_questingknight"
	},
	mechanisms = {
		"versus"
	}
}
ItemMasterList.vs_es_2h_sword = {
	description = "es_2h_sword_skin_01_description",
	rarity = "plentiful",
	right_hand_unit = "units/weapons/player/wpn_empire_2h_sword_01_t1/wpn_2h_sword_01_t1",
	skin_combination_table = "es_2h_sword_skins",
	slot_type = "melee",
	inventory_icon = "icon_wpn_empire_2h_sword_01_t1",
	display_name = "es_2h_sword_skin_01_name",
	has_power_level = true,
	template = "two_handed_swords_template_1",
	property_table_name = "melee",
	item_type = "es_2h_sword",
	hud_icon = "weapon_generic_icon_sword",
	trait_table_name = "melee",
	can_wield = {
		"es_huntsman",
		"es_knight",
		"es_mercenary",
		"es_questingknight"
	},
	mechanisms = {
		"versus"
	}
}
ItemMasterList.vs_es_2h_hammer = {
	description = "es_2h_hammer_skin_05_description",
	rarity = "plentiful",
	right_hand_unit = "units/weapons/player/wpn_empire_2h_hammer_03_t1/wpn_2h_hammer_03_t1",
	skin_combination_table = "es_2h_hammer_skins",
	slot_type = "melee",
	inventory_icon = "icon_wpn_empire_2h_hammer_03_t1",
	display_name = "es_2h_hammer_skin_05_name",
	has_power_level = true,
	template = "two_handed_hammers_template_1",
	property_table_name = "melee",
	item_type = "es_2h_war_hammer",
	hud_icon = "weapon_generic_icon_hammer2h",
	trait_table_name = "melee",
	can_wield = {
		"es_huntsman",
		"es_knight",
		"es_mercenary",
		"es_questingknight"
	},
	mechanisms = {
		"versus"
	}
}
ItemMasterList.vs_es_sword_shield = {
	description = "es_1h_sword_shield_skin_02_description",
	rarity = "plentiful",
	right_hand_unit = "units/weapons/player/wpn_emp_sword_02_t2/wpn_emp_sword_02_t2",
	skin_combination_table = "es_sword_shield_skins",
	slot_type = "melee",
	hud_icon = "weapon_generic_icon_sword_and_sheild",
	display_name = "es_1h_sword_shield_skin_02_name",
	has_power_level = true,
	template = "one_handed_sword_shield_template_1",
	property_table_name = "melee",
	item_type = "es_1h_sword_shield",
	left_hand_unit = "units/weapons/player/wpn_empire_shield_02/wpn_emp_shield_02",
	trait_table_name = "melee",
	inventory_icon = "icon_wpn_empire_shield_02_sword",
	can_wield = {
		"es_huntsman",
		"es_knight",
		"es_mercenary",
		"es_questingknight"
	},
	mechanisms = {
		"versus"
	}
}
ItemMasterList.vs_es_mace_shield = {
	description = "es_1h_mace_shield_skin_02_description",
	rarity = "plentiful",
	right_hand_unit = "units/weapons/player/wpn_emp_mace_02_t2/wpn_emp_mace_02_t2",
	skin_combination_table = "es_mace_shield_skins",
	slot_type = "melee",
	hud_icon = "weapon_generic_icon_mace_and_sheild",
	display_name = "es_1h_mace_shield_skin_02_name",
	has_power_level = true,
	template = "one_handed_hammer_shield_template_1",
	property_table_name = "melee",
	item_type = "es_1h_mace_shield",
	left_hand_unit = "units/weapons/player/wpn_empire_shield_02/wpn_emp_shield_02",
	trait_table_name = "melee",
	inventory_icon = "icon_wpn_empire_shield_02_mace",
	can_wield = {
		"es_huntsman",
		"es_knight",
		"es_mercenary",
		"es_questingknight"
	},
	mechanisms = {
		"versus"
	}
}
ItemMasterList.vs_es_1h_flail = {
	description = "es_1h_flail_skin_01_description",
	rarity = "plentiful",
	right_hand_unit = "units/weapons/player/wpn_emp_flail_01_t1/wpn_emp_flail_01_t1",
	skin_combination_table = "es_1h_flail_skins",
	slot_type = "melee",
	inventory_icon = "icon_wpn_emp_flail_01_t1",
	display_name = "es_1h_flail_skin_01_name",
	has_power_level = true,
	template = "one_handed_flail_template_1",
	property_table_name = "melee",
	item_type = "es_flail",
	hud_icon = "weapon_generic_icon_mace",
	trait_table_name = "melee",
	can_wield = {
		"wh_zealot",
		"wh_captain",
		"wh_bountyhunter"
	},
	mechanisms = {
		"versus"
	}
}
ItemMasterList.vs_es_halberd = {
	description = "es_halberd_skin_01_description",
	rarity = "plentiful",
	right_hand_unit = "units/weapons/player/wpn_wh_halberd_01/wpn_wh_halberd_01",
	skin_combination_table = "es_halberd_skins",
	slot_type = "melee",
	inventory_icon = "icon_wpn_wh_halberd_01",
	display_name = "es_halberd_skin_01_name",
	has_power_level = true,
	template = "two_handed_halberds_template_1",
	property_table_name = "melee",
	item_type = "es_2h_halberd",
	hud_icon = "weapon_generic_icon_hammer2h",
	trait_table_name = "melee",
	can_wield = {
		"es_huntsman",
		"es_knight",
		"es_mercenary"
	},
	mechanisms = {
		"versus"
	}
}
ItemMasterList.vs_es_longbow_tutorial = {
	description = "description_plentiful_empire_soldier_es_longbow",
	ammo_unit = "units/weapons/player/wpn_emp_arrows/wpn_es_arrow_t1",
	display_name = "display_name_plentiful_empire_soldier_es_longbow",
	inventory_icon = "icon_wpn_empire_bow_tutorial",
	slot_type = "ranged",
	rarity = "plentiful",
	template = "longbow_empire_tutorial_template",
	left_hand_unit = "units/weapons/player/wpn_empire_bow_tutorial/wpn_empire_bow_tutorial",
	has_power_level = true,
	property_table_name = "ranged",
	item_type = "ww_longbow",
	hud_icon = "weapon_generic_icon_bow",
	trait_table_name = "ranged_ammo",
	can_wield = {
		"empire_soldier_tutorial"
	},
	mechanisms = {
		"versus"
	}
}
ItemMasterList.vs_es_2h_hammer_tutorial = {
	description = "description_plentiful_empire_soldier_es_2h_war_hammer",
	rarity = "plentiful",
	right_hand_unit = "units/weapons/player/wpn_empire_2h_hammer_tutorial/wpn_empire_2h_hammer_tut_01",
	inventory_icon = "icon_wpn_empire_2h_hammer_01_t1",
	slot_type = "melee",
	display_name = "display_name_plentiful_empire_soldier_es_2h_war_hammer",
	hud_icon = "weapon_generic_icon_hammer2h",
	has_power_level = true,
	template = "two_handed_hammers_template_1",
	property_table_name = "melee",
	item_type = "es_2h_war_hammer",
	trait_table_name = "melee",
	can_wield = {
		"empire_soldier_tutorial"
	},
	mechanisms = {
		"versus"
	}
}
ItemMasterList.vs_es_longbow = {
	description = "es_longbow_skin_01_description",
	ammo_unit = "units/weapons/player/wpn_emp_arrows/wpn_es_arrow_t1",
	display_name = "es_longbow_skin_01_name",
	skin_combination_table = "es_longbow_skins",
	slot_type = "ranged",
	hud_icon = "weapon_generic_icon_bow",
	rarity = "plentiful",
	template = "longbow_empire_template",
	has_power_level = true,
	property_table_name = "ranged",
	item_type = "ww_longbow",
	left_hand_unit = "units/weapons/player/wpn_emp_bow_01/wpn_emp_bow_01",
	trait_table_name = "ranged_ammo",
	inventory_icon = "icon_wpn_emp_bow_01",
	can_wield = {
		"es_huntsman"
	},
	mechanisms = {
		"versus"
	}
}
ItemMasterList.vs_es_blunderbuss = {
	description = "es_blunderbuss_skin_03_description",
	rarity = "plentiful",
	right_hand_unit = "units/weapons/player/wpn_empire_blunderbuss_t1/wpn_empire_blunderbuss_t1",
	skin_combination_table = "es_blunderbuss_skins",
	slot_type = "ranged",
	inventory_icon = "icon_wpn_empire_blunderbuss_t1",
	display_name = "es_blunderbuss_skin_03_name",
	has_power_level = true,
	template = "blunderbuss_template_1_vs",
	property_table_name = "ranged",
	item_type = "es_blunderbuss",
	hud_icon = "weapon_generic_icon_blunderbuss",
	trait_table_name = "ranged_ammo",
	can_wield = {
		"es_huntsman",
		"es_knight",
		"es_mercenary"
	},
	mechanisms = {
		"versus"
	}
}
ItemMasterList.vs_es_handgun = {
	description = "es_handgun_skin_03_description",
	rarity = "plentiful",
	right_hand_unit = "units/weapons/player/wpn_empire_handgun_t1/wpn_empire_handgun_t1",
	skin_combination_table = "es_handgun_skins",
	slot_type = "ranged",
	inventory_icon = "icon_wpn_empire_handgun_t1",
	display_name = "es_handgun_skin_03_name",
	has_power_level = true,
	template = "handgun_template_1_vs",
	property_table_name = "ranged",
	item_type = "es_handgun",
	hud_icon = "weapon_generic_icon_units/weapons/weapon_display/display_rifle",
	trait_table_name = "ranged_ammo",
	can_wield = {
		"es_huntsman",
		"es_knight",
		"es_mercenary"
	},
	mechanisms = {
		"versus"
	}
}
ItemMasterList.vs_es_repeating_handgun = {
	description = "es_repeating_handgun_skin_01_description",
	rarity = "plentiful",
	right_hand_unit = "units/weapons/player/wpn_emp_handgun_repeater_t1/wpn_emp_handgun_repeater_t1",
	skin_combination_table = "es_repeating_handgun_skins",
	slot_type = "ranged",
	inventory_icon = "icon_wpn_emp_handgun_repeater_t1",
	display_name = "es_repeating_handgun_skin_01_name",
	has_power_level = true,
	template = "repeating_handgun_template_1",
	property_table_name = "ranged",
	item_type = "es_repeating_handgun",
	hud_icon = "weapon_generic_icon_repeating_handgun",
	trait_table_name = "ranged_ammo",
	can_wield = {
		"es_huntsman",
		"es_knight",
		"es_mercenary"
	},
	mechanisms = {
		"versus"
	}
}
ItemMasterList.vs_es_2h_heavy_spear = {
	description = "es_2h_heavy_spear_skin_01_description",
	rarity = "plentiful",
	right_hand_unit = "units/weapons/player/wpn_emp_boar_spear_01/wpn_emp_boar_spear_01",
	skin_combination_table = "es_2h_heavy_spear_skins",
	slot_type = "melee",
	display_name = "es_2h_heavy_spear_skin_01_name",
	inventory_icon = "icon_emp_boar_spear_01",
	has_power_level = true,
	template = "two_handed_heavy_spears_template",
	property_table_name = "melee",
	item_type = "es_2h_heavy_spear",
	hud_icon = "weapon_generic_icon_falken",
	trait_table_name = "melee",
	required_dlc = "scorpion",
	can_wield = {
		"es_huntsman",
		"es_mercenary"
	},
	mechanisms = {
		"versus"
	}
}
ItemMasterList.vs_es_dual_wield_hammer_sword = {
	left_hand_unit = "units/weapons/player/wpn_emp_sword_06_t1/wpn_emp_sword_06_t1",
	display_name = "es_dual_wield_hammer_sword_skin_01_name",
	skin_combination_table = "es_dual_wield_hammer_sword_skins",
	slot_type = "melee",
	hud_icon = "weapon_generic_icon_falken",
	item_type = "es_dual_wield_hammer_sword",
	trait_table_name = "melee",
	description = "es_dual_wield_hammer_sword_skin_01_description",
	rarity = "plentiful",
	right_hand_unit = "units/weapons/player/wpn_emp_mace_04_t2/wpn_emp_mace_04_t2",
	inventory_icon = "icon_es_dual_wield_hammer_sword_01",
	has_power_level = true,
	template = "dual_wield_hammer_sword_template",
	property_table_name = "melee",
	required_dlc = "holly",
	can_wield = {
		"es_huntsman",
		"es_knight",
		"es_mercenary",
		"es_questingknight"
	},
	mechanisms = {
		"versus"
	}
}
ItemMasterList.vs_es_bastard_sword = {
	description = "es_bastard_sword_skin_01_description",
	rarity = "plentiful",
	right_hand_unit = "units/weapons/player/wpn_emp_gk_sword_01_t1/wpn_emp_gk_sword_01_t1",
	skin_combination_table = "es_bastard_sword_skins",
	slot_type = "melee",
	inventory_icon = "icon_wpn_emp_gk_sword_01_t1",
	display_name = "es_bastard_sword_skin_01_name",
	has_power_level = true,
	template = "bastard_sword_template_vs",
	property_table_name = "melee",
	item_type = "es_bastard_sword",
	hud_icon = "weapon_generic_icon_sword",
	trait_table_name = "melee",
	required_dlc = "lake",
	can_wield = {
		"es_huntsman",
		"es_knight",
		"es_mercenary",
		"es_questingknight"
	},
	mechanisms = {
		"versus"
	}
}
ItemMasterList.vs_es_sword_shield_breton = {
	slot_type = "melee",
	display_name = "es_sword_shield_breton_skin_01_name",
	skin_combination_table = "es_sword_shield_breton_skins",
	left_hand_unit = "units/weapons/player/wpn_emp_gk_shield_03/wpn_emp_gk_shield_03",
	hud_icon = "weapon_generic_icon_sword_and_sheild",
	item_type = "es_1h_sword_shield_breton",
	trait_table_name = "melee",
	description = "es_sword_shield_breton_skin_01_description",
	rarity = "plentiful",
	right_hand_unit = "units/weapons/player/wpn_emp_gk_sword_01_t1/wpn_emp_gk_sword_01_t1",
	inventory_icon = "icon_wpn_emp_gk_sword_01_t1_wpn_emp_gk_shield_03",
	has_power_level = true,
	template = "one_handed_sword_shield_template_2",
	property_table_name = "melee",
	required_dlc = "lake",
	can_wield = {
		"es_questingknight"
	},
	mechanisms = {
		"versus"
	}
}
ItemMasterList.vs_es_deus_01 = {
	left_hand_unit = "units/weapons/player/wpn_empire_shield_02/wpn_emp_shield_02",
	display_name = "es_deus_01_name",
	skin_combination_table = "es_deus_01_skins",
	slot_type = "melee",
	hud_icon = "weapon_generic_icon_falken",
	item_type = "es_deus_01",
	trait_table_name = "melee",
	description = "es_deus_01_description",
	rarity = "plentiful",
	right_hand_unit = "units/weapons/player/wpn_es_deus_spear_01/wpn_es_deus_spear_01",
	inventory_icon = "icon_wpn_empire_spearshield_t1",
	has_power_level = true,
	template = "es_deus_01_template",
	property_table_name = "melee",
	required_dlc = "grass",
	can_wield = {
		"es_huntsman",
		"es_knight",
		"es_mercenary"
	},
	mechanisms = {
		"versus"
	}
}
ItemMasterList.vs_we_spear = {
	description = "we_spear_skin_01_description",
	rarity = "plentiful",
	right_hand_unit = "units/weapons/player/wpn_we_spear_01/wpn_we_spear_01",
	skin_combination_table = "we_spear_skins",
	slot_type = "melee",
	inventory_icon = "icon_wpn_we_spear_01",
	display_name = "we_spear_skin_01_name",
	has_power_level = true,
	template = "two_handed_spears_elf_template_1",
	property_table_name = "melee",
	item_type = "we_2h_spear",
	hud_icon = "weapon_generic_icon_hammer2h",
	trait_table_name = "melee",
	can_wield = {
		"we_shade",
		"we_maidenguard",
		"we_waywatcher",
		"we_thornsister"
	},
	mechanisms = {
		"versus"
	}
}
ItemMasterList.vs_we_dual_wield_daggers = {
	description = "we_dual_dagger_skin_01_description",
	rarity = "plentiful",
	right_hand_unit = "units/weapons/player/wpn_we_dagger_01_t1/wpn_we_dagger_01_t1",
	skin_combination_table = "we_dual_wield_daggers_skins",
	slot_type = "melee",
	hud_icon = "weapon_generic_icon_daggers",
	display_name = "we_dual_dagger_skin_01_name",
	has_power_level = true,
	template = "dual_wield_daggers_template_1",
	property_table_name = "melee",
	item_type = "ww_dual_daggers",
	left_hand_unit = "units/weapons/player/wpn_we_dagger_01_t1/wpn_we_dagger_01_t1",
	trait_table_name = "melee",
	inventory_icon = "icon_wpn_we_dagger_01_t1_dual",
	can_wield = {
		"we_shade",
		"we_maidenguard",
		"we_waywatcher",
		"we_thornsister"
	},
	mechanisms = {
		"versus"
	}
}
ItemMasterList.vs_we_dual_wield_swords = {
	description = "we_dual_sword_skin_04_description",
	rarity = "plentiful",
	right_hand_unit = "units/weapons/player/wpn_we_sword_01_t1/wpn_we_sword_01_t1",
	skin_combination_table = "we_dual_wield_swords_skins",
	slot_type = "melee",
	hud_icon = "weapon_generic_icon_dual_elf_sword",
	display_name = "we_dual_sword_skin_04_name",
	has_power_level = true,
	template = "dual_wield_swords_template_1",
	property_table_name = "melee",
	item_type = "ww_dual_swords",
	left_hand_unit = "units/weapons/player/wpn_we_sword_01_t1/wpn_we_sword_01_t1",
	trait_table_name = "melee",
	inventory_icon = "icon_wpn_we_sword_01_t1_dual",
	can_wield = {
		"we_shade",
		"we_maidenguard",
		"we_waywatcher",
		"we_thornsister"
	},
	mechanisms = {
		"versus"
	}
}
ItemMasterList.vs_we_1h_sword = {
	description = "we_sword_skin_01_description",
	rarity = "plentiful",
	right_hand_unit = "units/weapons/player/wpn_we_sword_01_t1/wpn_we_sword_01_t1",
	skin_combination_table = "we_1h_sword_skins",
	slot_type = "melee",
	inventory_icon = "icon_wpn_we_sword_01_t1",
	display_name = "we_sword_skin_01_name",
	has_power_level = true,
	template = "we_one_hand_sword_template_1",
	property_table_name = "melee",
	item_type = "ww_1h_sword",
	hud_icon = "weapon_generic_icon_elf_sword",
	trait_table_name = "melee",
	can_wield = {
		"we_shade",
		"we_maidenguard",
		"we_waywatcher",
		"we_thornsister"
	},
	mechanisms = {
		"versus"
	}
}
ItemMasterList.vs_we_dual_wield_sword_dagger = {
	description = "we_dual_sword_dagger_skin_04_description",
	rarity = "plentiful",
	right_hand_unit = "units/weapons/player/wpn_we_sword_01_t1/wpn_we_sword_01_t1",
	skin_combination_table = "we_dual_wield_sword_dagger_skins",
	slot_type = "melee",
	hud_icon = "weapon_generic_icon_elf_sword_and_dagger",
	display_name = "we_dual_sword_dagger_skin_04_name",
	has_power_level = true,
	template = "dual_wield_sword_dagger_template_1",
	property_table_name = "melee",
	item_type = "ww_sword_and_dagger",
	left_hand_unit = "units/weapons/player/wpn_we_dagger_01_t1/wpn_we_dagger_01_t1",
	trait_table_name = "melee",
	inventory_icon = "icon_wpn_we_sword_01_t1_dagger_dual",
	can_wield = {
		"we_shade",
		"we_maidenguard",
		"we_waywatcher",
		"we_thornsister"
	},
	mechanisms = {
		"versus"
	}
}
ItemMasterList.vs_we_shortbow = {
	description = "we_shortbow_skin_01_description",
	ammo_unit = "units/weapons/player/wpn_we_quiver_t1/wpn_we_arrow_t1",
	display_name = "we_shortbow_skin_01_name",
	skin_combination_table = "we_shortbow_skins",
	slot_type = "ranged",
	hud_icon = "weapon_generic_icon_bow",
	rarity = "plentiful",
	template = "shortbow_template_1",
	has_power_level = true,
	property_table_name = "ranged",
	item_type = "ww_shortbow",
	left_hand_unit = "units/weapons/player/wpn_we_bow_short_01/wpn_we_bow_short_01",
	trait_table_name = "ranged_ammo",
	inventory_icon = "icon_wpn_we_bow_short_01",
	can_wield = {
		"we_shade",
		"we_maidenguard",
		"we_waywatcher",
		"we_thornsister"
	},
	mechanisms = {
		"versus"
	}
}
ItemMasterList.vs_we_shortbow_hagbane = {
	description = "we_hagbane_skin_01_description",
	ammo_unit = "units/weapons/player/wpn_we_quiver_t1/wpn_we_poison_arrow_t1",
	display_name = "we_hagbane_skin_01_name",
	skin_combination_table = "we_shortbow_hagbane_skins",
	slot_type = "ranged",
	hud_icon = "weapon_generic_icon_bow",
	rarity = "plentiful",
	template = "shortbow_hagbane_template_1",
	has_power_level = true,
	property_table_name = "ranged",
	item_type = "ww_hagbane",
	left_hand_unit = "units/weapons/player/wpn_we_bow_short_01/wpn_we_bow_short_01",
	trait_table_name = "ranged_ammo",
	inventory_icon = "icon_wpn_we_bow_short_01",
	can_wield = {
		"we_shade",
		"we_maidenguard",
		"we_waywatcher",
		"we_thornsister"
	},
	mechanisms = {
		"versus"
	}
}
ItemMasterList.vs_we_longbow = {
	description = "we_longbow_skin_05_description",
	ammo_unit = "units/weapons/player/wpn_we_quiver_t1/wpn_we_arrow_t1",
	display_name = "we_longbow_skin_05_name",
	skin_combination_table = "we_longbow_skins",
	slot_type = "ranged",
	hud_icon = "weapon_generic_icon_bow",
	rarity = "plentiful",
	template = "longbow_template_1",
	has_power_level = true,
	property_table_name = "ranged",
	item_type = "ww_longbow",
	left_hand_unit = "units/weapons/player/wpn_we_bow_01_t1/wpn_we_bow_01_t1",
	trait_table_name = "ranged_ammo",
	inventory_icon = "icon_wpn_we_bow_01_t1",
	can_wield = {
		"we_shade",
		"we_maidenguard",
		"we_waywatcher",
		"we_thornsister"
	},
	mechanisms = {
		"versus"
	}
}
ItemMasterList.vs_we_2h_axe = {
	description = "we_2h_axe_skin_07_description",
	rarity = "plentiful",
	right_hand_unit = "units/weapons/player/wpn_we_2h_axe_01_t1/wpn_we_2h_axe_01_t1",
	skin_combination_table = "we_2h_axe_skins",
	slot_type = "melee",
	inventory_icon = "icon_wpn_we_2h_axe_01_t1",
	display_name = "we_2h_axe_skin_07_name",
	has_power_level = true,
	template = "two_handed_axes_template_2",
	property_table_name = "melee",
	item_type = "ww_2h_axe",
	hud_icon = "weapon_generic_icon_elf_axe2h",
	trait_table_name = "melee",
	can_wield = {
		"we_shade",
		"we_maidenguard",
		"we_waywatcher",
		"we_thornsister"
	},
	mechanisms = {
		"versus"
	}
}
ItemMasterList.vs_we_2h_sword = {
	description = "we_2h_sword_skin_01_description",
	rarity = "plentiful",
	right_hand_unit = "units/weapons/player/wpn_we_2h_sword_01_t1/wpn_we_2h_sword_01_t1",
	skin_combination_table = "we_2h_sword_skins",
	slot_type = "melee",
	inventory_icon = "icon_wpn_we_2h_sword_01_t1",
	display_name = "we_2h_sword_skin_01_name",
	has_power_level = true,
	template = "two_handed_swords_wood_elf_template",
	property_table_name = "melee",
	item_type = "ww_2h_sword",
	hud_icon = "weapon_generic_icon_elf_axe2h",
	trait_table_name = "melee",
	can_wield = {
		"we_shade",
		"we_maidenguard",
		"we_waywatcher",
		"we_thornsister"
	},
	mechanisms = {
		"versus"
	}
}
ItemMasterList.vs_we_crossbow_repeater = {
	template = "repeating_crossbow_elf_template_vs",
	ammo_unit = "units/weapons/player/wpn_crossbow_quiver/wpn_crossbow_bolt_pile",
	display_name = "we_crossbow_skin_01_name",
	skin_combination_table = "we_crossbow_repeater_skins",
	left_hand_unit = "units/weapons/player/wpn_we_repeater_crossbow_t1/wpn_we_repeater_crossbow_t1",
	slot_type = "ranged",
	ammo_unit_3p = "units/weapons/player/wpn_crossbow_quiver/wpn_crossbow_bolt_3p",
	hud_icon = "weapon_generic_icon_repeating_crossbow",
	item_type = "wh_repeating_crossbow",
	trait_table_name = "ranged_ammo",
	description = "we_crossbow_skin_01_description",
	rarity = "plentiful",
	inventory_icon = "icon_wpn_we_repeater_crossbow_t1",
	has_power_level = true,
	property_table_name = "ranged",
	can_wield = {
		"we_shade"
	},
	mechanisms = {
		"versus"
	}
}
ItemMasterList.vs_we_1h_axe = {
	description = "we_1h_axe_skin_01_description",
	rarity = "plentiful",
	right_hand_unit = "units/weapons/player/wpn_we_axe_01_t2/wpn_we_axe_01_t2",
	skin_combination_table = "we_1h_axe_skins",
	slot_type = "melee",
	display_name = "we_1h_axe_skin_01_name",
	inventory_icon = "icon_we_1h_axe_01",
	has_power_level = true,
	template = "we_one_hand_axe_template",
	property_table_name = "melee",
	item_type = "we_1h_axe",
	hud_icon = "weapon_generic_icon_falken",
	trait_table_name = "melee",
	required_dlc = "holly",
	can_wield = {
		"we_shade",
		"we_maidenguard",
		"we_waywatcher",
		"we_thornsister"
	},
	mechanisms = {
		"versus"
	}
}
ItemMasterList.vs_we_1h_spears_shield = {
	left_hand_unit = "units/weapons/player/wpn_we_shield_01/wpn_we_shield_01",
	display_name = "we_1h_spears_shield_skin_01_name",
	skin_combination_table = "we_1h_spears_shield_skins",
	slot_type = "melee",
	hud_icon = "weapon_generic_icon_falken",
	item_type = "we_1h_spears_shield",
	trait_table_name = "melee",
	description = "we_1h_spears_shield_skin_01_description",
	rarity = "plentiful",
	right_hand_unit = "units/weapons/player/wpn_we_spear_01/wpn_we_spear_01",
	inventory_icon = "icon_we_spear_01_icon_we_shield_01",
	has_power_level = true,
	template = "one_handed_spears_shield_template",
	property_table_name = "melee",
	required_dlc = "scorpion",
	can_wield = {
		"we_maidenguard"
	},
	mechanisms = {
		"versus"
	}
}
ItemMasterList.vs_we_deus_01 = {
	ammo_unit = "units/weapons/player/wpn_we_quiver_t1/wpn_we_deus_arrow_01",
	display_name = "we_deus_01_name",
	skin_combination_table = "we_deus_01_skins",
	left_hand_unit = "units/weapons/player/wpn_we_deus_01/wpn_we_deus_01",
	slot_type = "ranged",
	ammo_unit_3p = "units/weapons/player/wpn_we_quiver_t1/wpn_we_deus_arrow_01_3p",
	hud_icon = "weapon_generic_icon_bow",
	item_type = "we_deus_01",
	trait_table_name = "ranged_energy",
	description = "we_deus_01_description",
	rarity = "plentiful",
	inventory_icon = "icon_wpn_we_moonfire_t1",
	has_power_level = true,
	template = "we_deus_01_template_1",
	property_table_name = "ranged",
	required_dlc = "grass",
	can_wield = {
		"we_shade",
		"we_maidenguard",
		"we_waywatcher",
		"we_thornsister"
	},
	mechanisms = {
		"versus"
	}
}
ItemMasterList.vs_we_javelin = {
	ammo_unit = "units/weapons/player/wpn_we_javelin_01/wpn_we_javelin_01",
	display_name = "we_javelin_skin_01_name",
	skin_combination_table = "we_javelin_skins",
	slot_type = "ranged",
	right_hand_unit = "units/weapons/player/wpn_invisible_weapon",
	left_hand_unit = "units/weapons/player/wpn_we_javelin_01/wpn_we_javelin_01",
	hud_icon = "weapon_generic_icon_hammer2h",
	item_type = "we_javelin",
	trait_table_name = "ranged_ammo",
	description = "we_javelin_skin_01_description",
	rarity = "plentiful",
	is_ammo_weapon = true,
	inventory_icon = "icon_wpn_we_javelin_01",
	has_power_level = true,
	template = "javelin_template_vs",
	property_table_name = "ranged",
	projectile_units_template = "javelin",
	required_dlc = "woods",
	can_wield = {
		"we_thornsister",
		"we_shade",
		"we_maidenguard",
		"we_waywatcher"
	},
	mechanisms = {
		"versus"
	}
}
ItemMasterList.vs_we_life_staff = {
	description = "we_life_staff_skin_01_description",
	rarity = "plentiful",
	display_name = "we_life_staff_skin_01_name",
	skin_combination_table = "life_staff_skins",
	left_hand_unit = "units/weapons/player/wpn_we_life_staff_01/wpn_we_life_staff_01",
	inventory_icon = "icon_wpn_we_life_staff_01",
	slot_type = "ranged",
	has_power_level = true,
	template = "staff_life_vs",
	property_table_name = "ranged",
	item_type = "we_life_staff",
	hud_icon = "weapon_generic_icon_hammer2h",
	trait_table_name = "ranged_heat",
	required_dlc = "woods",
	can_wield = {
		"we_thornsister"
	},
	mechanisms = {
		"versus"
	}
}
ItemMasterList.vs_bw_1h_mace = {
	description = "bw_1h_mace_skin_01_description",
	rarity = "plentiful",
	right_hand_unit = "units/weapons/player/wpn_brw_mace_01/wpn_brw_mace_01",
	skin_combination_table = "bw_1h_mace_skins",
	slot_type = "melee",
	inventory_icon = "icon_wpn_brw_mace_01",
	display_name = "bw_1h_mace_skin_01_name",
	has_power_level = true,
	template = "one_handed_hammer_wizard_template_1",
	property_table_name = "melee",
	item_type = "bw_morningstar",
	hud_icon = "weapon_generic_icon_mace",
	trait_table_name = "melee",
	can_wield = {
		"bw_scholar",
		"bw_adept",
		"bw_unchained",
		"bw_necromancer"
	},
	mechanisms = {
		"versus"
	}
}
ItemMasterList.vs_bw_flame_sword = {
	description = "bw_1h_flaming_sword_skin_01_description",
	rarity = "plentiful",
	right_hand_unit = "units/weapons/player/wpn_brw_sword_01_t1/wpn_brw_flaming_sword_01_t1",
	skin_combination_table = "bw_flame_sword_skins",
	slot_type = "melee",
	inventory_icon = "icon_wpn_brw_flaming_sword_01_t1",
	display_name = "bw_1h_flaming_sword_skin_01_name",
	has_power_level = true,
	template = "flaming_sword_template_1",
	property_table_name = "melee",
	item_type = "bw_flame_sword",
	hud_icon = "weapon_generic_icon_flaming_sword",
	trait_table_name = "melee",
	can_wield = {
		"bw_scholar",
		"bw_adept",
		"bw_unchained",
		"bw_necromancer"
	},
	mechanisms = {
		"versus"
	}
}
ItemMasterList.vs_bw_sword = {
	description = "bw_1h_sword_skin_01_description",
	rarity = "plentiful",
	right_hand_unit = "units/weapons/player/wpn_brw_sword_01_t1/wpn_brw_sword_01_t1",
	skin_combination_table = "bw_sword_skins",
	slot_type = "melee",
	inventory_icon = "icon_wpn_brw_sword_01_t1",
	display_name = "bw_1h_sword_skin_01_name",
	has_power_level = true,
	template = "one_handed_swords_template_1",
	property_table_name = "melee",
	item_type = "bw_1h_sword",
	hud_icon = "weapon_generic_icon_sword",
	trait_table_name = "melee",
	can_wield = {
		"bw_scholar",
		"bw_adept",
		"bw_unchained",
		"bw_necromancer"
	},
	mechanisms = {
		"versus"
	}
}
ItemMasterList.vs_bw_dagger = {
	description = "bw_dagger_skin_01_description",
	rarity = "plentiful",
	right_hand_unit = "units/weapons/player/wpn_brw_dagger_01/wpn_brw_dagger_01",
	skin_combination_table = "bw_dagger_skins",
	slot_type = "melee",
	inventory_icon = "icon_wpn_brw_dagger_01",
	display_name = "bw_dagger_skin_01_name",
	has_power_level = true,
	template = "one_handed_daggers_template_1",
	property_table_name = "melee",
	item_type = "bw_1h_dagger",
	hud_icon = "weapon_generic_icon_sword",
	trait_table_name = "melee",
	can_wield = {
		"bw_scholar",
		"bw_adept",
		"bw_unchained",
		"bw_necromancer"
	},
	mechanisms = {
		"versus"
	}
}
ItemMasterList.vs_bw_skullstaff_fireball = {
	description = "bw_fireball_staff_skin_01_description",
	rarity = "plentiful",
	right_hand_unit = "units/weapons/player/wpn_brw_staff_02/wpn_brw_staff_02",
	skin_combination_table = "bw_skullstaff_fireball_skins",
	slot_type = "ranged",
	hud_icon = "weapon_generic_icon_staff_2",
	display_name = "bw_fireball_staff_skin_01_name",
	has_power_level = true,
	template = "staff_fireball_fireball_template_1_vs",
	property_table_name = "ranged",
	item_type = "bw_staff_firball",
	left_hand_unit = "units/weapons/player/wpn_fireball/wpn_fireball",
	trait_table_name = "ranged_heat",
	inventory_icon = "icon_wpn_brw_staff_02",
	can_wield = {
		"bw_scholar",
		"bw_adept",
		"bw_unchained",
		"bw_necromancer"
	},
	mechanisms = {
		"versus"
	}
}
ItemMasterList.vs_bw_skullstaff_beam = {
	description = "bw_beam_staff_skin_01_description",
	rarity = "plentiful",
	right_hand_unit = "units/weapons/player/wpn_brw_beam_staff_01/wpn_brw_beam_staff_01",
	skin_combination_table = "bw_skullstaff_beam_skins",
	slot_type = "ranged",
	hud_icon = "weapon_generic_icon_staff_4",
	display_name = "bw_beam_staff_skin_01_name",
	has_power_level = true,
	template = "staff_blast_beam_template_1_vs",
	property_table_name = "ranged",
	item_type = "bw_staff_beam",
	left_hand_unit = "units/weapons/player/wpn_fireball/wpn_fireball",
	trait_table_name = "ranged_heat",
	inventory_icon = "icon_wpn_brw_beam_staff_01",
	can_wield = {
		"bw_scholar",
		"bw_adept",
		"bw_unchained",
		"bw_necromancer"
	},
	mechanisms = {
		"versus"
	}
}
ItemMasterList.vs_bw_skullstaff_geiser = {
	description = "bw_conflagration_staff_skin_01_description",
	rarity = "plentiful",
	right_hand_unit = "units/weapons/player/wpn_brw_staff_03/wpn_brw_staff_03",
	skin_combination_table = "bw_skullstaff_geiser_skins",
	slot_type = "ranged",
	hud_icon = "weapon_generic_icon_staff_3",
	display_name = "bw_conflagration_staff_skin_01_name",
	has_power_level = true,
	template = "staff_fireball_geiser_template_1_vs",
	property_table_name = "ranged",
	item_type = "bw_staff_geiser",
	left_hand_unit = "units/weapons/player/wpn_fireball/wpn_fireball",
	trait_table_name = "ranged_heat",
	inventory_icon = "icon_wpn_brw_staff_03",
	can_wield = {
		"bw_scholar",
		"bw_adept",
		"bw_unchained",
		"bw_necromancer"
	},
	mechanisms = {
		"versus"
	}
}
ItemMasterList.vs_bw_skullstaff_spear = {
	description = "bw_spear_staff_skin_01_description",
	rarity = "plentiful",
	right_hand_unit = "units/weapons/player/wpn_brw_spear_staff_01/wpn_brw_spear_staff_01",
	skin_combination_table = "bw_skullstaff_spear_skins",
	slot_type = "ranged",
	hud_icon = "weapon_generic_icon_staff_5",
	display_name = "bw_spear_staff_skin_01_name",
	has_power_level = true,
	template = "staff_spark_spear_template_1_vs",
	property_table_name = "ranged",
	item_type = "bw_staff_spear",
	left_hand_unit = "units/weapons/player/wpn_fireball/wpn_fireball",
	trait_table_name = "ranged_heat",
	inventory_icon = "icon_wpn_brw_spear_staff_01",
	can_wield = {
		"bw_scholar",
		"bw_adept",
		"bw_unchained",
		"bw_necromancer"
	},
	mechanisms = {
		"versus"
	}
}
ItemMasterList.vs_bw_skullstaff_flamethrower = {
	description = "bw_flamethrower_staff_skin_01_description",
	rarity = "plentiful",
	right_hand_unit = "units/weapons/player/wpn_brw_flame_staff_01/wpn_brw_flame_staff_01",
	skin_combination_table = "bw_skullstaff_flamethrower_skins",
	slot_type = "ranged",
	hud_icon = "weapon_generic_icon_staff_5",
	display_name = "bw_flamethrower_staff_skin_01_name",
	has_power_level = true,
	template = "staff_flamethrower_template_vs",
	property_table_name = "ranged",
	item_type = "bw_staff_flamethrower",
	left_hand_unit = "units/weapons/player/wpn_fireball/wpn_fireball",
	trait_table_name = "ranged_heat",
	inventory_icon = "icon_wpn_brw_flame_staff_01",
	can_wield = {
		"bw_scholar",
		"bw_adept",
		"bw_unchained"
	},
	mechanisms = {
		"versus"
	}
}
ItemMasterList.vs_bw_1h_crowbill = {
	description = "bw_1h_crowbill_skin_01_description",
	rarity = "plentiful",
	right_hand_unit = "units/weapons/player/wpn_brw_crowbill_01/wpn_brw_crowbill_01",
	skin_combination_table = "bw_1h_crowbill_skins",
	slot_type = "melee",
	display_name = "bw_1h_crowbill_skin_01_name",
	inventory_icon = "icon_bw_1h_crowbill_01",
	has_power_level = true,
	template = "one_handed_crowbill",
	property_table_name = "melee",
	item_type = "bw_1h_crowbill",
	hud_icon = "weapon_generic_icon_falken",
	trait_table_name = "melee",
	required_dlc = "holly",
	can_wield = {
		"bw_scholar",
		"bw_adept",
		"bw_unchained",
		"bw_necromancer"
	},
	mechanisms = {
		"versus"
	}
}
ItemMasterList.vs_bw_1h_flail_flaming = {
	description = "bw_1h_flail_flaming_skin_01_description",
	rarity = "plentiful",
	right_hand_unit = "units/weapons/player/wpn_brw_flaming_flail_01/wpn_brw_flaming_flail_01",
	skin_combination_table = "bw_1h_flail_flaming_skins",
	slot_type = "melee",
	display_name = "bw_1h_flail_flaming_skin_01_name",
	inventory_icon = "icon_brw_flaming_flail_01",
	has_power_level = true,
	template = "one_handed_flails_flaming_template",
	property_table_name = "melee",
	item_type = "bw_1h_flail_flaming",
	hud_icon = "weapon_generic_icon_falken",
	trait_table_name = "melee",
	required_dlc = "scorpion",
	can_wield = {
		"bw_scholar",
		"bw_adept",
		"bw_unchained",
		"bw_necromancer"
	},
	mechanisms = {
		"versus"
	}
}
ItemMasterList.vs_bw_deus_01 = {
	slot_type = "ranged",
	display_name = "bw_deus_01_name",
	skin_combination_table = "bw_deus_01_skins",
	left_hand_unit = "units/weapons/player/wpn_fireball/wpn_fireball",
	hud_icon = "weapon_generic_icon_staff_5",
	item_type = "bw_deus_01",
	trait_table_name = "ranged_heat",
	description = "bw_deus_01_description",
	rarity = "plentiful",
	right_hand_unit = "units/weapons/player/wpn_bw_deus_01/wpn_bw_deus_01",
	inventory_icon = "icon_wpn_brw_magmastaff_t1",
	has_power_level = true,
	template = "bw_deus_01_template_1",
	property_table_name = "ranged",
	required_dlc = "grass",
	can_wield = {
		"bw_scholar",
		"bw_adept",
		"bw_unchained",
		"bw_necromancer"
	},
	mechanisms = {
		"versus"
	}
}
ItemMasterList.vs_bw_necromancy_staff = {
	slot_type = "ranged",
	display_name = "bw_necromancy_staff_skin_01_name",
	skin_combination_table = "bw_necromancy_staff_skins",
	left_hand_unit = "units/weapons/player/wpn_invisible_weapon",
	hud_icon = "hud_icon_default",
	item_type = "bw_necromancy_staff",
	trait_table_name = "ranged_heat",
	description = "bw_necromancy_staff_skin_01_description",
	rarity = "plentiful",
	right_hand_unit = "units/weapons/player/wpn_bw_necromancy_staff_01/wpn_bw_necromancy_staff_01",
	inventory_icon = "icon_wpn_bw_necromancy_staff_01",
	has_power_level = true,
	template = "staff_death_vs",
	property_table_name = "ranged",
	required_dlc = "shovel",
	can_wield = {
		"bw_necromancer"
	},
	mechanisms = {
		"versus"
	}
}
ItemMasterList.vs_bw_ghost_scythe = {
	property_table_name = "melee",
	display_name = "bw_ghost_scythe_skin_01_name",
	skin_combination_table = "bw_ghost_scythe_skins",
	slot_type = "melee",
	hud_icon = "hud_icon_default",
	item_type = "bw_ghost_scythe",
	trait_table_name = "melee",
	description = "bw_ghost_scythe_skin_01_description",
	rarity = "plentiful",
	right_hand_unit = "units/weapons/player/wpn_bw_ghost_scythe_01/wpn_bw_ghost_scythe_01",
	inventory_icon = "icon_wpn_bw_ghost_scythe_01",
	has_power_level = true,
	template = "staff_scythe",
	display_unit = "units/weapons/weapon_display/display_staff",
	required_dlc = "shovel",
	can_wield = {
		"bw_scholar",
		"bw_adept",
		"bw_unchained",
		"bw_necromancer"
	},
	right_hand_unit_override = {
		bw_unchained = "units/weapons/player/wpn_bw_ghost_scythe_01/wpn_bw_ghost_scythe_01_fire",
		bw_scholar = "units/weapons/player/wpn_bw_ghost_scythe_01/wpn_bw_ghost_scythe_01_fire",
		bw_adept = "units/weapons/player/wpn_bw_ghost_scythe_01/wpn_bw_ghost_scythe_01_fire"
	},
	mechanisms = {
		"versus"
	}
}
ItemMasterList.vs_dr_1h_axe = {
	description = "dw_1h_axe_skin_01_description",
	rarity = "plentiful",
	right_hand_unit = "units/weapons/player/wpn_dw_axe_01_t1/wpn_dw_axe_01_t1",
	skin_combination_table = "dr_1h_axe_skins",
	slot_type = "melee",
	inventory_icon = "icon_wpn_dw_axe_01_t1",
	display_name = "dw_1h_axe_skin_01_name",
	has_power_level = true,
	template = "one_hand_axe_template_2",
	property_table_name = "melee",
	item_type = "dr_1h_axes",
	hud_icon = "weapon_generic_icon_axe1h",
	trait_table_name = "melee",
	can_wield = {
		"dr_ironbreaker",
		"dr_slayer",
		"dr_ranger",
		"dr_engineer"
	},
	mechanisms = {
		"versus"
	}
}
ItemMasterList.vs_dr_dual_wield_axes = {
	description = "dw_dual_axe_skin_01_description",
	rarity = "plentiful",
	right_hand_unit = "units/weapons/player/wpn_dw_axe_01_t1/wpn_dw_axe_01_t1",
	skin_combination_table = "dr_dual_wield_axes_skins",
	slot_type = "melee",
	hud_icon = "weapon_generic_icon_axe1h",
	display_name = "dw_dual_axe_skin_01_name",
	has_power_level = true,
	template = "dual_wield_axes_template_1",
	property_table_name = "melee",
	item_type = "dr_dual_axes",
	left_hand_unit = "units/weapons/player/wpn_dw_axe_01_t1/wpn_dw_axe_01_t1",
	trait_table_name = "melee",
	inventory_icon = "icon_wpn_dw_axe_01_t1_dual",
	can_wield = {
		"dr_slayer"
	},
	mechanisms = {
		"versus"
	}
}
ItemMasterList.vs_dr_2h_axe = {
	description = "dw_2h_axe_skin_01_description",
	rarity = "plentiful",
	right_hand_unit = "units/weapons/player/wpn_dw_2h_axe_01_t1/wpn_dw_2h_axe_01_t1",
	skin_combination_table = "dr_2h_axe_skins",
	slot_type = "melee",
	inventory_icon = "icon_wpn_dw_2h_axe_01_t1",
	display_name = "dw_2h_axe_skin_01_name",
	has_power_level = true,
	template = "two_handed_axes_template_1",
	property_table_name = "melee",
	item_type = "dr_2h_axes",
	hud_icon = "weapon_generic_icon_axe2h",
	trait_table_name = "melee",
	can_wield = {
		"dr_ironbreaker",
		"dr_slayer",
		"dr_ranger",
		"dr_engineer"
	},
	mechanisms = {
		"versus"
	}
}
ItemMasterList.vs_dr_2h_hammer = {
	description = "dw_2h_hammer_skin_01_description",
	rarity = "plentiful",
	right_hand_unit = "units/weapons/player/wpn_dw_2h_hammer_01_t1/wpn_dw_2h_hammer_01_t1",
	skin_combination_table = "dr_2h_hammer_skins",
	slot_type = "melee",
	inventory_icon = "icon_wpn_dw_2h_hammer_01_t1",
	display_name = "dw_2h_hammer_skin_01_name",
	has_power_level = true,
	template = "two_handed_hammers_template_1",
	property_table_name = "melee",
	item_type = "dr_2h_hammer",
	hud_icon = "weapon_generic_icon_hammer2h",
	trait_table_name = "melee",
	can_wield = {
		"dr_ironbreaker",
		"dr_slayer",
		"dr_ranger",
		"dr_engineer"
	},
	mechanisms = {
		"versus"
	}
}
ItemMasterList.vs_dr_1h_hammer = {
	description = "dw_1h_hammer_skin_01_description",
	rarity = "plentiful",
	right_hand_unit = "units/weapons/player/wpn_dw_hammer_01_t1/wpn_dw_hammer_01_t1",
	skin_combination_table = "dr_1h_hammer_skins",
	slot_type = "melee",
	inventory_icon = "icon_wpn_dw_hammer_01_t1",
	display_name = "dw_1h_hammer_skin_01_name",
	has_power_level = true,
	template = "one_handed_hammer_template_2",
	property_table_name = "melee",
	item_type = "dr_1h_hammer",
	hud_icon = "weapon_generic_icon_hammer1h",
	trait_table_name = "melee",
	can_wield = {
		"dr_ironbreaker",
		"dr_slayer",
		"dr_ranger",
		"dr_engineer"
	},
	mechanisms = {
		"versus"
	}
}
ItemMasterList.vs_dr_shield_axe = {
	description = "dw_1h_axe_shield_skin_01_description",
	rarity = "plentiful",
	right_hand_unit = "units/weapons/player/wpn_dw_axe_01_t1/wpn_dw_axe_01_t1",
	skin_combination_table = "dr_shield_axe_skins",
	slot_type = "melee",
	hud_icon = "weapon_generic_icon_axe_and_sheild",
	display_name = "dw_1h_axe_shield_skin_01_name",
	has_power_level = true,
	template = "one_hand_axe_shield_template_1",
	property_table_name = "melee",
	item_type = "dr_1h_axe_shield",
	left_hand_unit = "units/weapons/player/wpn_dw_shield_01_t1/wpn_dw_shield_01",
	trait_table_name = "melee",
	inventory_icon = "icon_wpn_dw_shield_01_axe",
	can_wield = {
		"dr_ironbreaker",
		"dr_ranger",
		"dr_engineer"
	},
	mechanisms = {
		"versus"
	}
}
ItemMasterList.vs_dr_shield_hammer = {
	description = "dw_1h_hammer_shield_skin_01_description",
	rarity = "plentiful",
	right_hand_unit = "units/weapons/player/wpn_dw_hammer_01_t1/wpn_dw_hammer_01_t1",
	skin_combination_table = "dr_shield_hammer_skins",
	slot_type = "melee",
	hud_icon = "weapon_generic_icon_hammer_and_sheild",
	display_name = "dw_1h_hammer_shield_skin_01_name",
	has_power_level = true,
	template = "one_handed_hammer_shield_template_2",
	property_table_name = "melee",
	item_type = "dr_1h_hammer_shield",
	left_hand_unit = "units/weapons/player/wpn_dw_shield_01_t1/wpn_dw_shield_01",
	trait_table_name = "melee",
	inventory_icon = "icon_wpn_dw_shield_01_hammer",
	can_wield = {
		"dr_ironbreaker",
		"dr_ranger",
		"dr_engineer"
	},
	mechanisms = {
		"versus"
	}
}
ItemMasterList.vs_dr_crossbow = {
	description = "dw_crossbow_skin_01_description",
	ammo_unit = "units/weapons/player/wpn_crossbow_quiver/wpn_crossbow_bolt",
	display_name = "dw_crossbow_skin_01_name",
	skin_combination_table = "dr_crossbow_skins",
	slot_type = "ranged",
	hud_icon = "weapon_generic_icon_crossbow",
	rarity = "plentiful",
	template = "crossbow_template_1_vs",
	has_power_level = true,
	property_table_name = "ranged",
	item_type = "dr_crossbow",
	left_hand_unit = "units/weapons/player/wpn_dw_xbow_01_t1/wpn_dw_xbow_01_t1",
	trait_table_name = "ranged_ammo",
	inventory_icon = "icon_wpn_dw_xbox_01_t1",
	can_wield = {
		"dr_ironbreaker",
		"dr_ranger"
	},
	mechanisms = {
		"versus"
	}
}
ItemMasterList.vs_dr_rakegun = {
	description = "dw_grudge_raker_skin_01_description",
	rarity = "plentiful",
	right_hand_unit = "units/weapons/player/wpn_dw_rakegun_t1/wpn_dw_rakegun_t1",
	skin_combination_table = "dr_rakegun_skins",
	slot_type = "ranged",
	inventory_icon = "icon_wpn_dw_rakegun_t1",
	display_name = "dw_grudge_raker_skin_01_name",
	has_power_level = true,
	template = "grudge_raker_template_1_vs",
	property_table_name = "ranged",
	item_type = "dr_grudgeraker",
	hud_icon = "weapon_generic_icon_grudgeraker",
	trait_table_name = "ranged_ammo",
	can_wield = {
		"dr_ironbreaker",
		"dr_ranger",
		"dr_engineer"
	},
	mechanisms = {
		"versus"
	}
}
ItemMasterList.vs_dr_handgun = {
	description = "dw_handgun_skin_01_description",
	rarity = "plentiful",
	right_hand_unit = "units/weapons/player/wpn_dw_handgun_01_t1/wpn_dw_handgun_01_t1",
	skin_combination_table = "dr_handgun_skins",
	slot_type = "ranged",
	inventory_icon = "icon_wpn_dw_handgun_01_t1",
	display_name = "dw_handgun_skin_01_name",
	has_power_level = true,
	template = "handgun_template_2_vs",
	property_table_name = "ranged",
	item_type = "dr_handgun",
	hud_icon = "weapon_generic_icon_units/weapons/weapon_display/display_rifle",
	trait_table_name = "ranged_ammo",
	can_wield = {
		"dr_ironbreaker",
		"dr_ranger",
		"dr_engineer"
	},
	mechanisms = {
		"versus"
	}
}
ItemMasterList.vs_dr_drakegun = {
	description = "dw_drakegun_skin_02_description",
	rarity = "plentiful",
	right_hand_unit = "units/weapons/player/wpn_dw_iron_drake_02/wpn_dw_iron_drake_02",
	skin_combination_table = "dr_drakegun_skins",
	slot_type = "ranged",
	inventory_icon = "icon_wpn_dw_iron_drake_02",
	display_name = "dw_drakegun_skin_02_name",
	has_power_level = true,
	template = "drakegun_template_1_vs",
	property_table_name = "ranged",
	item_type = "dr_drakegun",
	hud_icon = "weapon_generic_icon_units/weapons/weapon_display/display_rifle",
	trait_table_name = "ranged_heat",
	can_wield = {
		"dr_ironbreaker",
		"dr_engineer"
	},
	mechanisms = {
		"versus"
	}
}
ItemMasterList.vs_dr_drake_pistol = {
	description = "dw_drake_pistol_skin_01_description",
	rarity = "plentiful",
	right_hand_unit = "units/weapons/player/wpn_dw_drake_pistol_01_t1/wpn_dw_drake_pistol_01_t1",
	skin_combination_table = "dr_drake_pistol_skins",
	slot_type = "ranged",
	hud_icon = "weapon_generic_icon_drakefire_pistols",
	display_name = "dw_drake_pistol_skin_01_name",
	has_power_level = true,
	template = "brace_of_drakefirepistols_template_1",
	property_table_name = "ranged",
	item_type = "dr_drakefire_pistols",
	left_hand_unit = "units/weapons/player/wpn_dw_drake_pistol_01_t1/wpn_dw_drake_pistol_01_t1",
	trait_table_name = "ranged_heat",
	inventory_icon = "icon_wpn_dw_drake_pistol_01_t1",
	can_wield = {
		"dr_ironbreaker",
		"dr_engineer"
	},
	mechanisms = {
		"versus"
	}
}
ItemMasterList.vs_dr_2h_pick = {
	description = "dw_2h_pick_skin_01_description",
	rarity = "plentiful",
	right_hand_unit = "units/weapons/player/wpn_dw_pick_01_t1/wpn_dw_pick_01_t1",
	skin_combination_table = "dr_2h_pick_skins",
	slot_type = "melee",
	inventory_icon = "icon_wpn_dw_pick_01_t1",
	display_name = "dw_2h_pick_skin_01_name",
	has_power_level = true,
	template = "two_handed_picks_template_1",
	property_table_name = "melee",
	item_type = "dr_2h_picks",
	hud_icon = "weapon_generic_icon_pick",
	trait_table_name = "melee",
	can_wield = {
		"dr_ironbreaker",
		"dr_slayer",
		"dr_ranger",
		"dr_engineer"
	},
	mechanisms = {
		"versus"
	}
}
ItemMasterList.vs_dr_1h_throwing_axes = {
	template = "one_handed_throwing_axes_template_vs",
	ammo_unit = "units/weapons/player/wpn_dw_thrown_axe_01_t1/wpn_dw_thrown_axe_01_t1",
	display_name = "dr_1h_throwing_axes_skin_01_name",
	skin_combination_table = "dr_1h_throwing_axes_skins",
	slot_type = "ranged",
	link_pickup_template_name = "link_ammo_throwing_axe_01_t1",
	is_ammo_weapon = true,
	hud_icon = "weapon_generic_icon_falken",
	item_type = "dr_1h_throwing_axes",
	trait_table_name = "ranged_ammo",
	description = "dr_1h_throwing_axes_skin_01_description",
	rarity = "plentiful",
	right_hand_unit = "units/weapons/player/wpn_invisible_weapon",
	inventory_icon = "icon_dw_thrown_axe_01_t1",
	pickup_template_name = "ammo_throwing_axe_01_t1",
	has_power_level = true,
	property_table_name = "ranged",
	projectile_units_template = "throwing_axe_01_t1",
	required_dlc = "scorpion",
	can_wield = {
		"dr_slayer",
		"dr_ranger"
	},
	mechanisms = {
		"versus"
	}
}
ItemMasterList.vs_dr_dual_wield_hammers = {
	left_hand_unit = "units/weapons/player/wpn_dw_hammer_03_t1/wpn_dw_hammer_03_t1",
	display_name = "dr_dual_wield_hammers_skin_01_name",
	skin_combination_table = "dr_dual_wield_hammers_skins",
	slot_type = "melee",
	hud_icon = "weapon_generic_icon_falken",
	item_type = "dr_dual_wield_hammers",
	trait_table_name = "melee",
	description = "dr_dual_wield_hammers_skin_01_description",
	rarity = "plentiful",
	right_hand_unit = "units/weapons/player/wpn_dw_hammer_03_t1/wpn_dw_hammer_03_t1",
	inventory_icon = "icon_dr_dual_wield_hammers_01",
	has_power_level = true,
	template = "dual_wield_hammers_template",
	property_table_name = "melee",
	required_dlc = "holly",
	can_wield = {
		"dr_ironbreaker",
		"dr_slayer",
		"dr_ranger",
		"dr_engineer"
	},
	mechanisms = {
		"versus"
	}
}
ItemMasterList.vs_dr_2h_cog_hammer = {
	description = "dr_cog_hammer_skin_01_description",
	rarity = "plentiful",
	right_hand_unit = "units/weapons/player/wpn_dw_coghammer_01_t1/wpn_dw_coghammer_01_t1",
	skin_combination_table = "dr_2h_cog_hammer_skins",
	slot_type = "melee",
	inventory_icon = "icon_wpn_dw_coghammer_01_t1",
	display_name = "dr_cog_hammer_skin_01_name",
	has_power_level = true,
	template = "two_handed_cog_hammers_template_1",
	property_table_name = "melee",
	item_type = "dr_cog_hammer",
	hud_icon = "weapon_generic_icon_hammer2h",
	trait_table_name = "melee",
	required_dlc = "cog",
	can_wield = {
		"dr_engineer",
		"dr_ranger",
		"dr_ironbreaker",
		"dr_slayer"
	},
	mechanisms = {
		"versus"
	}
}
ItemMasterList.vs_dr_deus_01 = {
	ammo_unit = "units/weapons/player/wpn_dr_deus_projectile_01/wpn_dr_deus_projectile_01",
	display_name = "dr_deus_01_name",
	skin_combination_table = "dr_deus_01_skins",
	left_hand_unit = "units/weapons/player/wpn_dr_deus_01/wpn_dr_deus_01",
	slot_type = "ranged",
	ammo_unit_3p = "units/weapons/player/wpn_dr_deus_projectile_01/wpn_dr_deus_projectile_01_3p",
	hud_icon = "weapon_generic_icon_crossbow",
	item_type = "dr_deus_01",
	trait_table_name = "trollhammer_torpedo",
	description = "dr_deus_01_description",
	rarity = "plentiful",
	inventory_icon = "icon_wpn_dw_trollhammer_t1",
	has_power_level = true,
	template = "dr_deus_01_template_1_vs",
	property_table_name = "ranged",
	required_dlc = "grass",
	can_wield = {
		"dr_ironbreaker",
		"dr_engineer"
	},
	mechanisms = {
		"versus"
	}
}
ItemMasterList.vs_dr_steam_pistol = {
	description = "dr_steam_pistol_skin_01_description",
	rarity = "plentiful",
	right_hand_unit = "units/weapons/player/wpn_dw_steam_pistol_01_t1/wpn_dw_steam_pistol_01_t1",
	skin_combination_table = "dr_steam_pistol_skins",
	slot_type = "ranged",
	inventory_icon = "icon_wpn_dw_steam_pistol_01_t1",
	display_name = "dr_steam_pistol_skin_01_name",
	has_power_level = true,
	template = "heavy_steam_pistol_template_1_vs",
	property_table_name = "ranged",
	item_type = "dr_steam_pistol",
	hud_icon = "weapon_generic_icon_hammer2h",
	trait_table_name = "ranged_ammo",
	required_dlc = "cog",
	can_wield = {
		"dr_engineer",
		"dr_ranger",
		"dr_ironbreaker"
	},
	mechanisms = {
		"versus"
	}
}
ItemMasterList.vs_wh_1h_axe = {
	description = "wh_1h_axe_skin_05_description",
	rarity = "plentiful",
	right_hand_unit = "units/weapons/player/wpn_axe_hatchet_t1/wpn_axe_hatchet_t1",
	skin_combination_table = "wh_1h_axe_skins",
	slot_type = "melee",
	inventory_icon = "icon_wpn_axe_hatchet_t1",
	display_name = "wh_1h_axe_skin_05_name",
	has_power_level = true,
	template = "one_hand_axe_template_1",
	property_table_name = "melee",
	item_type = "wh_1h_axes",
	hud_icon = "weapon_generic_icon_axe1h",
	trait_table_name = "melee",
	can_wield = {
		"wh_zealot",
		"wh_bountyhunter",
		"wh_captain"
	},
	mechanisms = {
		"versus"
	}
}
ItemMasterList.vs_wh_2h_sword = {
	description = "wh_2h_sword_skin_01_description",
	rarity = "plentiful",
	right_hand_unit = "units/weapons/player/wpn_empire_2h_sword_02_t1/wpn_2h_sword_02_t1",
	skin_combination_table = "wh_2h_sword_skins",
	slot_type = "melee",
	inventory_icon = "icon_wpn_empire_2h_sword_02_t1",
	display_name = "wh_2h_sword_skin_01_name",
	has_power_level = true,
	template = "two_handed_swords_template_1",
	property_table_name = "melee",
	item_type = "wh_2h_sword",
	hud_icon = "weapon_generic_icon_sword",
	trait_table_name = "melee",
	can_wield = {
		"wh_zealot",
		"wh_bountyhunter",
		"wh_captain"
	},
	mechanisms = {
		"versus"
	}
}
ItemMasterList.vs_wh_fencing_sword = {
	description = "wh_fencing_sword_skin_01_description",
	rarity = "plentiful",
	right_hand_unit = "units/weapons/player/wpn_fencingsword_01_t1/wpn_fencingsword_01_t1",
	skin_combination_table = "wh_fencing_sword_skins",
	slot_type = "melee",
	hud_icon = "weapon_generic_icon_fencing_sword",
	display_name = "wh_fencing_sword_skin_01_name",
	has_power_level = true,
	template = "fencing_sword_template_1",
	property_table_name = "melee",
	item_type = "wh_fencing_sword",
	left_hand_unit = "units/weapons/player/wpn_emp_pistol_01_t1/wpn_emp_pistol_01_t1",
	trait_table_name = "melee",
	inventory_icon = "icon_wpn_fencingsword_01_t1",
	can_wield = {
		"wh_bountyhunter",
		"wh_captain",
		"wh_zealot"
	},
	mechanisms = {
		"versus"
	}
}
ItemMasterList.vs_wh_brace_of_pistols = {
	description = "wh_brace_of_pistols_skin_01_description",
	rarity = "plentiful",
	right_hand_unit = "units/weapons/player/wpn_emp_pistol_01_t1/wpn_emp_pistol_01_t1",
	skin_combination_table = "wh_brace_of_pistols_skins",
	slot_type = "ranged",
	hud_icon = "weapon_generic_icon_brace_of_pistol",
	display_name = "wh_brace_of_pistols_skin_01_name",
	has_power_level = true,
	template = "brace_of_pistols_template_1",
	property_table_name = "ranged",
	item_type = "wh_brace_of_pisols",
	left_hand_unit = "units/weapons/player/wpn_emp_pistol_01_t1/wpn_emp_pistol_01_t1",
	trait_table_name = "ranged_ammo",
	inventory_icon = "icon_wpn_emp_pistol_01_t1",
	can_wield = {
		"wh_zealot",
		"wh_bountyhunter",
		"wh_captain"
	},
	mechanisms = {
		"versus"
	}
}
ItemMasterList.vs_wh_repeating_pistols = {
	description = "wh_repeating_pistol_skin_04_description",
	rarity = "plentiful",
	right_hand_unit = "units/weapons/player/wpn_empire_pistol_repeater_02/wpn_empire_pistol_repeater_02_t1",
	skin_combination_table = "wh_repeating_pistols_skins",
	slot_type = "ranged",
	inventory_icon = "icon_wpn_empire_pistol_repeater_02_t1",
	display_name = "wh_repeating_pistol_skin_04_name",
	has_power_level = true,
	template = "repeating_pistol_template_1_vs",
	property_table_name = "ranged",
	item_type = "wh_repeating_pistol",
	hud_icon = "weapon_generic_icon_repeating_pistol",
	trait_table_name = "ranged_ammo",
	can_wield = {
		"wh_zealot",
		"wh_bountyhunter",
		"wh_captain"
	},
	mechanisms = {
		"versus"
	}
}
ItemMasterList.vs_wh_crossbow = {
	description = "wh_crossbow_skin_05_description",
	ammo_unit = "units/weapons/player/wpn_crossbow_quiver/wpn_crossbow_bolt",
	display_name = "wh_crossbow_skin_05_name",
	skin_combination_table = "wh_crossbow_skins",
	slot_type = "ranged",
	hud_icon = "weapon_generic_icon_crossbow",
	rarity = "plentiful",
	template = "crossbow_template_1_vs",
	has_power_level = true,
	property_table_name = "ranged",
	item_type = "wh_crossbow",
	left_hand_unit = "units/weapons/player/wpn_empire_crossbow_t1/wpn_empire_crossbow_tier1",
	trait_table_name = "ranged_ammo",
	inventory_icon = "icon_wpn_empire_crossbow_t1",
	can_wield = {
		"wh_zealot",
		"wh_bountyhunter",
		"wh_captain"
	},
	mechanisms = {
		"versus"
	}
}
ItemMasterList.vs_wh_crossbow_repeater = {
	description = "wh_repeating_crossbow_skin_01_description",
	rarity = "plentiful",
	display_name = "wh_repeating_crossbow_skin_01_name",
	skin_combination_table = "wh_crossbow_repeater_skins",
	left_hand_unit = "units/weapons/player/wpn_wh_repeater_crossbow_t1/wpn_wh_repeater_crossbow_t1",
	inventory_icon = "icon_wpn_wh_repeater_crossbow_t1",
	slot_type = "ranged",
	has_power_level = true,
	template = "repeating_crossbow_template_1_vs",
	property_table_name = "ranged",
	item_type = "wh_repeating_crossbow",
	hud_icon = "weapon_generic_icon_repeating_crossbow",
	trait_table_name = "ranged_ammo",
	can_wield = {
		"wh_zealot",
		"wh_bountyhunter",
		"wh_captain"
	},
	mechanisms = {
		"versus"
	}
}
ItemMasterList.vs_wh_1h_falchion = {
	description = "wh_1h_falchion_skin_01_description",
	rarity = "plentiful",
	right_hand_unit = "units/weapons/player/wpn_emp_sword_04_t1/wpn_emp_sword_04_t1",
	skin_combination_table = "wh_1h_falchion_skins",
	slot_type = "melee",
	inventory_icon = "icon_wpn_emp_sword_04_t1",
	display_name = "wh_1h_falchion_skin_01_name",
	has_power_level = true,
	template = "one_hand_falchion_template_1",
	property_table_name = "melee",
	item_type = "wh_1h_falchions",
	hud_icon = "weapon_generic_icon_falken",
	trait_table_name = "melee",
	can_wield = {
		"wh_zealot",
		"wh_bountyhunter",
		"wh_captain"
	},
	mechanisms = {
		"versus"
	}
}
ItemMasterList.vs_wh_2h_billhook = {
	description = "wh_2h_billhook_skin_01_description",
	rarity = "plentiful",
	right_hand_unit = "units/weapons/player/wpn_wh_billhook_01/wpn_wh_billhook_01",
	skin_combination_table = "wh_2h_billhook_skins",
	slot_type = "melee",
	display_name = "wh_2h_billhook_skin_01_name",
	inventory_icon = "icon_wh_billhook_01",
	has_power_level = true,
	template = "two_handed_billhooks_template",
	property_table_name = "melee",
	item_type = "wh_2h_billhook",
	hud_icon = "weapon_generic_icon_falken",
	trait_table_name = "melee",
	required_dlc = "scorpion",
	can_wield = {
		"wh_zealot",
		"wh_bountyhunter",
		"wh_captain"
	},
	mechanisms = {
		"versus"
	}
}
ItemMasterList.vs_wh_dual_wield_axe_falchion = {
	left_hand_unit = "units/weapons/player/wpn_emp_sword_05_t2/wpn_emp_sword_05_t2",
	display_name = "wh_dual_wield_axe_falchion_skin_01_name",
	skin_combination_table = "wh_dual_wield_axe_falchion_skins",
	slot_type = "melee",
	hud_icon = "weapon_generic_icon_falken",
	item_type = "wh_dual_wield_axe_falchion",
	trait_table_name = "melee",
	description = "wh_dual_wield_axe_falchion_skin_01_description",
	rarity = "plentiful",
	right_hand_unit = "units/weapons/player/wpn_axe_hatchet_t2/wpn_axe_hatchet_t2",
	inventory_icon = "icon_wh_dual_wield_axe_falchion_01",
	has_power_level = true,
	template = "dual_wield_axe_falchion_template",
	property_table_name = "melee",
	required_dlc = "holly",
	can_wield = {
		"wh_zealot",
		"wh_bountyhunter",
		"wh_captain"
	},
	mechanisms = {
		"versus"
	}
}
ItemMasterList.vs_wh_1h_hammer = {
	description = "wh_1h_hammer_skin_01_description",
	rarity = "plentiful",
	right_hand_unit = "units/weapons/player/wpn_wh_1h_hammer_01/wpn_wh_1h_hammer_01",
	skin_combination_table = "wh_1h_hammer_skins",
	slot_type = "melee",
	inventory_icon = "icon_wpn_wh_1h_hammer_01",
	display_name = "wh_1h_hammer_skin_01_name",
	has_power_level = true,
	template = "one_handed_hammer_priest_template",
	property_table_name = "melee",
	item_type = "wh_1h_hammer",
	hud_icon = "hud_icon_default",
	trait_table_name = "melee",
	required_dlc = "bless",
	can_wield = {
		"wh_priest",
		"wh_zealot"
	},
	mechanisms = {
		"versus"
	}
}
ItemMasterList.vs_wh_2h_hammer = {
	description = "wh_2h_hammer_skin_01_description",
	rarity = "plentiful",
	right_hand_unit = "units/weapons/player/wpn_wh_2h_hammer_01/wpn_wh_2h_hammer_01",
	skin_combination_table = "wh_2h_hammer_skins",
	slot_type = "melee",
	inventory_icon = "icon_wpn_wh_2h_hammer_01",
	display_name = "wh_2h_hammer_skin_01_name",
	has_power_level = true,
	template = "two_handed_hammer_priest_template",
	property_table_name = "melee",
	item_type = "wh_2h_hammer",
	hud_icon = "hud_icon_default",
	trait_table_name = "melee",
	required_dlc = "bless",
	can_wield = {
		"wh_priest",
		"wh_zealot"
	},
	mechanisms = {
		"versus"
	}
}
ItemMasterList.vs_wh_deus_01 = {
	slot_type = "ranged",
	display_name = "wh_deus_01_name",
	skin_combination_table = "wh_deus_01_skins",
	left_hand_unit = "units/weapons/player/wpn_wh_deus_01/wpn_wh_deus_01",
	hud_icon = "weapon_generic_icon_fencing_sword",
	item_type = "wh_deus_01",
	trait_table_name = "ranged_ammo",
	description = "wh_deus_01_description",
	rarity = "plentiful",
	right_hand_unit = "units/weapons/player/wpn_wh_deus_01/wpn_wh_deus_01",
	inventory_icon = "icon_wpn_emp_duckfoot_t1",
	has_power_level = true,
	template = "wh_deus_01_template_1",
	property_table_name = "ranged",
	required_dlc = "grass",
	can_wield = {
		"wh_bountyhunter",
		"wh_captain",
		"wh_zealot"
	},
	mechanisms = {
		"versus"
	}
}
ItemMasterList.vs_wh_dual_hammer = {
	slot_type = "melee",
	display_name = "wh_dual_hammer_skin_01_name",
	skin_combination_table = "wh_dual_hammer_skins",
	left_hand_unit = "units/weapons/player/wpn_wh_1h_hammer_01/wpn_wh_1h_hammer_01",
	hud_icon = "hud_icon_default",
	item_type = "wh_dual_hammer",
	trait_table_name = "melee",
	description = "wh_dual_hammer_skin_01_description",
	rarity = "plentiful",
	right_hand_unit = "units/weapons/player/wpn_wh_1h_hammer_01/wpn_wh_1h_hammer_01",
	inventory_icon = "icon_wpn_wh_dual_hammer_skin_01_t1",
	has_power_level = true,
	template = "dual_wield_hammers_priest_template",
	property_table_name = "melee",
	required_dlc = "bless",
	can_wield = {
		"wh_priest",
		"wh_zealot"
	},
	mechanisms = {
		"versus"
	}
}
ItemMasterList.vs_wh_flail_shield = {
	slot_type = "melee",
	display_name = "wh_flail_shield_skin_01_name",
	skin_combination_table = "wh_flail_shield_skins",
	left_hand_unit = "units/weapons/player/wpn_wh_shield_01/wpn_wh_shield_01_t1",
	hud_icon = "hud_icon_default",
	item_type = "wh_flail_shield",
	trait_table_name = "melee",
	description = "wh_flail_shield_skin_01_description",
	rarity = "plentiful",
	right_hand_unit = "units/weapons/player/wpn_emp_flail_01_t1/wpn_emp_flail_01_t1",
	inventory_icon = "icon_wpn_wh_flail_shield_skin_01_t1",
	has_power_level = true,
	template = "one_handed_flail_shield_template",
	property_table_name = "melee",
	required_dlc = "bless",
	can_wield = {
		"wh_priest"
	},
	mechanisms = {
		"versus"
	}
}
ItemMasterList.vs_wh_hammer_book = {
	slot_type = "melee",
	display_name = "wh_hammer_book_skin_01_name",
	skin_combination_table = "wh_hammer_book_skins",
	left_hand_unit = "units/weapons/player/wpn_wh_1h_hammer_01/wpn_wh_1h_hammer_01",
	hud_icon = "hud_icon_default",
	item_type = "wh_hammer_book",
	trait_table_name = "melee",
	description = "wh_hammer_book_skin_01_description",
	rarity = "plentiful",
	right_hand_unit = "units/weapons/player/wpn_wh_book_02/wpn_wh_book_02",
	inventory_icon = "icon_wpn_wh_hammer_book_skin_01_t1",
	has_power_level = true,
	template = "one_handed_hammer_book_priest_template",
	property_table_name = "melee",
	required_dlc = "bless",
	can_wield = {
		"wh_priest"
	},
	mechanisms = {
		"versus"
	}
}
ItemMasterList.vs_wh_hammer_shield = {
	slot_type = "melee",
	display_name = "wh_hammer_shield_skin_01_name",
	skin_combination_table = "wh_hammer_shield_skins",
	left_hand_unit = "units/weapons/player/wpn_wh_shield_01/wpn_wh_shield_01_t1",
	hud_icon = "hud_icon_default",
	item_type = "wh_hammer_shield",
	trait_table_name = "melee",
	description = "wh_hammer_shield_skin_01_description",
	rarity = "plentiful",
	right_hand_unit = "units/weapons/player/wpn_wh_1h_hammer_01/wpn_wh_1h_hammer_01",
	inventory_icon = "icon_wpn_wh_shield_01_t1",
	has_power_level = true,
	template = "one_handed_hammer_shield_priest_template",
	property_table_name = "melee",
	required_dlc = "bless",
	can_wield = {
		"wh_priest"
	},
	mechanisms = {
		"versus"
	}
}
ItemMasterList.markus_questingknight_career_skill_weapon_vs = {
	right_hand_unit = "units/weapons/player/wpn_emp_gk_sword_ability/wpn_emp_gk_sword_ability",
	rarity = "plentiful",
	template = "markus_questingknight_career_skill_weapon_vs",
	is_local = true,
	slot_type = "melee",
	can_wield = {},
	mechanisms = {
		"versus"
	}
}
ItemMasterList.bardin_engineer_career_skill_weapon_vs = {
	right_hand_unit = "units/weapons/player/wpn_dw_rotary_gun_01_t1/wpn_dw_rotary_gun_01_t1",
	rarity = "plentiful",
	is_local = true,
	item_type = "bardin_engineer_career_skill_weapon",
	template = "bardin_engineer_career_skill_weapon_vs",
	can_wield = {},
	mechanisms = {
		"versus"
	}
}
ItemMasterList.bardin_engineer_career_skill_weapon_heavy_vs = {
	right_hand_unit = "units/weapons/player/wpn_dw_rotary_gun_01_t2/wpn_dw_rotary_gun_01_t2",
	rarity = "plentiful",
	is_local = true,
	item_type = "bardin_engineer_career_skill_weapon_heavy",
	template = "bardin_engineer_career_skill_weapon_special_vs",
	can_wield = {},
	mechanisms = {
		"versus"
	}
}
ItemMasterList.victor_bountyhunter_career_skill_weapon_vs = {
	template = "victor_bountyhunter_career_skill_weapon_vs",
	rarity = "plentiful",
	is_local = true,
	left_hand_unit = "units/weapons/player/wpn_emp_shotgun/wpn_emp_shotgun",
	can_wield = {},
	mechanisms = {
		"versus"
	}
}
ItemMasterList.skaven_gutter_runner_skin_0000 = {
	description = "description_skaven_gutter_runner_skin_0000",
	temporary_template = "skaven_gutter_runner_skin_0000",
	display_name = "skaven_gutter_runner_skin_0000",
	name = "skaven_gutter_runner_skin_0000",
	inventory_icon = "icon_skaven_gutter_runner_skin_0000",
	slot_type = "skin",
	information_text = "information_text_character_skin",
	hud_icon = "unit_frame_portrait_witch_hunter",
	rarity = "plentiful",
	linked_weapon = "vs_gutter_runner_claws",
	skin_type = "unit",
	item_type = "skin",
	can_wield = {
		"vs_gutter_runner"
	}
}
ItemMasterList.skaven_pack_master_skin_0000 = {
	description = "description_skaven_packmaster_skin_0000",
	temporary_template = "skaven_pack_master_skin_0000",
	display_name = "skaven_packmaster_skin_0000",
	name = "skaven_pack_master_skin_0000",
	inventory_icon = "icon_skaven_pack_master_skin_0000",
	slot_type = "skin",
	information_text = "information_text_character_skin",
	hud_icon = "unit_frame_portrait_witch_hunter",
	rarity = "plentiful",
	linked_weapon = "vs_packmaster_claw",
	skin_type = "unit",
	item_type = "skin",
	can_wield = {
		"vs_packmaster"
	}
}
ItemMasterList.skaven_wind_globadier_skin_0000 = {
	description = "description_skaven_wind_globadier_skin_0000",
	temporary_template = "skaven_wind_globadier_skin_0000",
	display_name = "skaven_wind_globadier_skin_0000",
	name = "skaven_wind_globadier_skin_0000",
	inventory_icon = "icon_skaven_wind_globadier_skin_0000",
	slot_type = "skin",
	information_text = "information_text_character_skin",
	hud_icon = "unit_frame_portrait_witch_hunter",
	rarity = "plentiful",
	linked_weapon = "vs_poison_wind_globadier_orb",
	skin_type = "unit",
	item_type = "skin",
	can_wield = {
		"vs_poison_wind_globadier"
	}
}
ItemMasterList.skaven_ratling_gunner_skin_0000 = {
	description = "description_skaven_ratling_gunner_skin_0000",
	temporary_template = "skaven_ratling_gunner_skin_0000",
	display_name = "skaven_ratling_gunner_skin_0000",
	name = "skaven_ratling_gunner_skin_0000",
	inventory_icon = "icon_skaven_ratling_gunner_skin_0000",
	slot_type = "skin",
	information_text = "information_text_character_skin",
	hud_icon = "unit_frame_portrait_witch_hunter",
	rarity = "plentiful",
	linked_weapon = "vs_ratling_gunner_gun",
	skin_type = "unit",
	item_type = "skin",
	can_wield = {
		"vs_ratling_gunner"
	}
}
ItemMasterList.skaven_warpfire_thrower_skin_0000 = {
	description = "description_skaven_warpfire_thrower_skin_0000",
	temporary_template = "skaven_warpfire_thrower_skin_0000",
	display_name = "skaven_warpfire_thrower_skin_0000",
	name = "skaven_warpfire_thrower_skin_0000",
	inventory_icon = "icon_skaven_warpfire_thrower_skin_0000",
	slot_type = "skin",
	information_text = "information_text_character_skin",
	hud_icon = "unit_frame_portrait_witch_hunter",
	rarity = "plentiful",
	linked_weapon = "vs_warpfire_thrower_gun",
	skin_type = "unit",
	item_type = "skin",
	can_wield = {
		"vs_warpfire_thrower"
	}
}
ItemMasterList.chaos_troll_skin_0000 = {
	description = "description_chaos_troll_skin_0000",
	temporary_template = "chaos_troll_skin_0000",
	display_name = "chaos_troll_skin_0000",
	name = "chaos_troll_skin_0000",
	inventory_icon = "icon_chaos_troll_skin_0000",
	slot_type = "skin",
	information_text = "information_text_character_skin",
	hud_icon = "unit_frame_portrait_witch_hunter",
	rarity = "plentiful",
	linked_weapon = "vs_chaos_troll_axe",
	skin_type = "unit",
	item_type = "skin",
	can_wield = {
		"vs_chaos_troll"
	}
}
ItemMasterList.frame_globadier_01 = {
	description = "frame_versus_portrait_globadier_01_description",
	temporary_template = "frame_globadier_01",
	display_name = "frame_versus_portrait_globadier_01_name",
	hud_icon = "unit_frame_02",
	inventory_icon = "icon_portrait_frame_globadier_01",
	slot_type = "frame",
	information_text = "information_text_frame",
	rarity = "promo",
	item_type = "frame",
	can_wield = CanWieldAllItemTemplates
}
ItemMasterList.frame_globadier_02 = {
	description = "frame_versus_portrait_globadier_02_description",
	temporary_template = "frame_globadier_02",
	display_name = "frame_versus_portrait_globadier_02_name",
	hud_icon = "unit_frame_02",
	inventory_icon = "icon_portrait_frame_globadier_02",
	slot_type = "frame",
	information_text = "information_text_frame",
	rarity = "promo",
	item_type = "frame",
	can_wield = CanWieldAllItemTemplates
}
ItemMasterList.frame_gutter_runner_01 = {
	description = "frame_versus_portrait_gutter_runner_01_description",
	temporary_template = "frame_gutter_runner_01",
	display_name = "frame_versus_portrait_gutter_runner_01_name",
	hud_icon = "unit_frame_02",
	inventory_icon = "icon_portrait_frame_gutter_runner_01",
	slot_type = "frame",
	information_text = "information_text_frame",
	rarity = "promo",
	item_type = "frame",
	can_wield = CanWieldAllItemTemplates
}
ItemMasterList.frame_gutter_runner_02 = {
	description = "frame_versus_portrait_gutter_runner_02_description",
	temporary_template = "frame_gutter_runner_02",
	display_name = "frame_versus_portrait_gutter_runner_02_name",
	hud_icon = "unit_frame_02",
	inventory_icon = "icon_portrait_frame_gutter_runner_02",
	slot_type = "frame",
	information_text = "information_text_frame",
	rarity = "promo",
	item_type = "frame",
	can_wield = CanWieldAllItemTemplates
}
ItemMasterList.frame_packmaster_01 = {
	description = "frame_versus_portrait_packmaster_01_description",
	temporary_template = "frame_packmaster_01",
	display_name = "frame_versus_portrait_packmaster_01_name",
	hud_icon = "unit_frame_02",
	inventory_icon = "icon_portrait_frame_packmaster_01",
	slot_type = "frame",
	information_text = "information_text_frame",
	rarity = "promo",
	item_type = "frame",
	can_wield = CanWieldAllItemTemplates
}
ItemMasterList.frame_packmaster_02 = {
	description = "frame_versus_portrait_packmaster_02_description",
	temporary_template = "frame_packmaster_02",
	display_name = "frame_versus_portrait_packmaster_02_name",
	hud_icon = "unit_frame_02",
	inventory_icon = "icon_portrait_frame_packmaster_02",
	slot_type = "frame",
	information_text = "information_text_frame",
	rarity = "promo",
	item_type = "frame",
	can_wield = CanWieldAllItemTemplates
}
ItemMasterList.frame_ratling_gunner_01 = {
	description = "frame_versus_portrait_ratling_gunner_01_description",
	temporary_template = "frame_ratling_gunner_01",
	display_name = "frame_versus_portrait_ratling_gunner_01_name",
	hud_icon = "unit_frame_02",
	inventory_icon = "icon_portrait_frame_ratling_gunner_01",
	slot_type = "frame",
	information_text = "information_text_frame",
	rarity = "promo",
	item_type = "frame",
	can_wield = CanWieldAllItemTemplates
}
ItemMasterList.frame_ratling_gunner_02 = {
	description = "frame_versus_portrait_ratling_gunner_02_description",
	temporary_template = "frame_ratling_gunner_02",
	display_name = "frame_versus_portrait_ratling_gunner_02_name",
	hud_icon = "unit_frame_02",
	inventory_icon = "icon_portrait_frame_ratling_gunner_02",
	slot_type = "frame",
	information_text = "information_text_frame",
	rarity = "promo",
	item_type = "frame",
	can_wield = CanWieldAllItemTemplates
}
ItemMasterList.frame_troll_01 = {
	description = "frame_versus_portrait_troll_01_description",
	temporary_template = "frame_troll_01",
	display_name = "frame_versus_portrait_troll_01_name",
	hud_icon = "unit_frame_02",
	inventory_icon = "icon_portrait_frame_troll_01",
	slot_type = "frame",
	information_text = "information_text_frame",
	rarity = "promo",
	item_type = "frame",
	can_wield = CanWieldAllItemTemplates
}
ItemMasterList.frame_troll_02 = {
	description = "frame_versus_portrait_troll_02_description",
	temporary_template = "frame_troll_02",
	display_name = "frame_versus_portrait_troll_02_name",
	hud_icon = "unit_frame_02",
	inventory_icon = "icon_portrait_frame_troll_02",
	slot_type = "frame",
	information_text = "information_text_frame",
	rarity = "promo",
	item_type = "frame",
	can_wield = CanWieldAllItemTemplates
}
ItemMasterList.frame_warpfire_thrower_01 = {
	description = "frame_versus_portrait_warpfire_thrower_01_description",
	temporary_template = "frame_warpfire_thrower_01",
	display_name = "frame_versus_portrait_warpfire_thrower_01_name",
	hud_icon = "unit_frame_02",
	inventory_icon = "icon_portrait_frame_warpfire_thrower_01",
	slot_type = "frame",
	information_text = "information_text_frame",
	rarity = "promo",
	item_type = "frame",
	can_wield = CanWieldAllItemTemplates
}
ItemMasterList.frame_warpfire_thrower_02 = {
	description = "frame_versus_portrait_warpfire_thrower_02_description",
	temporary_template = "frame_warpfire_thrower_02",
	display_name = "frame_versus_portrait_warpfire_thrower_02_name",
	hud_icon = "unit_frame_02",
	inventory_icon = "icon_portrait_frame_warpfire_thrower_02",
	slot_type = "frame",
	information_text = "information_text_frame",
	rarity = "promo",
	item_type = "frame",
	can_wield = CanWieldAllItemTemplates
}
ItemMasterList.frame_versus_01 = {
	description = "frame_versus_portrait_01_description",
	temporary_template = "frame_versus_01",
	display_name = "frame_versus_portrait_01_name",
	hud_icon = "unit_frame_02",
	inventory_icon = "icon_portrait_frame_versus_01",
	slot_type = "frame",
	information_text = "information_text_frame",
	rarity = "promo",
	selection = "versus",
	display_unit = "units/weapons/weapon_display/display_portrait_frame",
	item_type = "frame",
	can_wield = CanWieldAllItemTemplates
}
ItemMasterList.frame_versus_02 = {
	description = "frame_versus_portrait_02_description",
	temporary_template = "frame_versus_02",
	display_name = "frame_versus_portrait_02_name",
	hud_icon = "unit_frame_02",
	inventory_icon = "icon_portrait_frame_versus_02",
	slot_type = "frame",
	information_text = "information_text_frame",
	rarity = "promo",
	selection = "versus",
	display_unit = "units/weapons/weapon_display/display_portrait_frame",
	item_type = "frame",
	can_wield = CanWieldAllItemTemplates
}
ItemMasterList.weapon_pose_pack_kerillian_dual_wield = {
	description = "weapon_pose_pack_kerillian_dual_wield_description",
	rarity = "promo",
	display_name = "weapon_pose_pack_kerillian_dual_wield_name",
	slot_type = "weapon_pose_bundle",
	information_text = "information_weapon_pose",
	selection = "versus",
	name = "weapon_pose_pack_kerillian_dual_wield_name",
	hud_icon = "",
	template = "",
	item_type = "weapon_pose_bundle",
	can_wield = {
		"we_shade",
		"we_maidenguard",
		"we_waywatcher",
		"we_thornsister"
	},
	icon_size = {
		160,
		160
	},
	bundle = {
		BundledItems = {
			"we_dual_wield_sword_dagger_weapon_pose_01",
			"we_dual_wield_sword_dagger_weapon_pose_02",
			"we_dual_wield_sword_dagger_weapon_pose_03",
			"we_dual_wield_sword_dagger_weapon_pose_04",
			"we_dual_wield_sword_dagger_weapon_pose_05",
			"we_dual_wield_sword_dagger_weapon_pose_06",
			"we_dual_wield_swords_weapon_pose_01",
			"we_dual_wield_swords_weapon_pose_02",
			"we_dual_wield_swords_weapon_pose_03",
			"we_dual_wield_swords_weapon_pose_04",
			"we_dual_wield_swords_weapon_pose_05",
			"we_dual_wield_swords_weapon_pose_06",
			"we_dual_wield_daggers_weapon_pose_01",
			"we_dual_wield_daggers_weapon_pose_02",
			"we_dual_wield_daggers_weapon_pose_03",
			"we_dual_wield_daggers_weapon_pose_04",
			"we_dual_wield_daggers_weapon_pose_05",
			"we_dual_wield_daggers_weapon_pose_06"
		}
	}
}
ItemMasterList.weapon_pose_pack_kerillian_bow = {
	description = "weapon_pose_pack_kerillian_bow_description",
	rarity = "promo",
	display_name = "weapon_pose_pack_kerillian_bow_name",
	slot_type = "weapon_pose_bundle",
	information_text = "information_weapon_pose",
	selection = "versus",
	name = "weapon_pose_pack_kerillian_bow_name",
	hud_icon = "",
	template = "",
	item_type = "weapon_pose_bundle",
	can_wield = {
		"we_shade",
		"we_maidenguard",
		"we_waywatcher",
		"we_thornsister"
	},
	icon_size = {
		160,
		160
	},
	bundle = {
		BundledItems = {
			"we_longbow_weapon_pose_01",
			"we_longbow_weapon_pose_02",
			"we_longbow_weapon_pose_03",
			"we_longbow_weapon_pose_04",
			"we_longbow_weapon_pose_05",
			"we_longbow_weapon_pose_06",
			"we_shortbow_weapon_pose_01",
			"we_shortbow_weapon_pose_02",
			"we_shortbow_weapon_pose_03",
			"we_shortbow_weapon_pose_04",
			"we_shortbow_weapon_pose_05",
			"we_shortbow_weapon_pose_06",
			"we_shortbow_hagbane_weapon_pose_01",
			"we_shortbow_hagbane_weapon_pose_02",
			"we_shortbow_hagbane_weapon_pose_03",
			"we_shortbow_hagbane_weapon_pose_04",
			"we_shortbow_hagbane_weapon_pose_05",
			"we_shortbow_hagbane_weapon_pose_06"
		}
	}
}
ItemMasterList.weapon_pose_pack_kerillian_2h_glaive = {
	description = "weapon_pose_pack_kerillian_2h_glaive_description",
	rarity = "promo",
	display_name = "weapon_pose_pack_kerillian_2h_glaive_name",
	slot_type = "weapon_pose_bundle",
	information_text = "information_weapon_pose",
	selection = "versus",
	name = "weapon_pose_pack_kerillian_2h_glaive_name",
	hud_icon = "",
	template = "",
	item_type = "weapon_pose_bundle",
	can_wield = {
		"we_shade",
		"we_maidenguard",
		"we_waywatcher",
		"we_thornsister"
	},
	icon_size = {
		160,
		160
	},
	bundle = {
		BundledItems = {
			"we_2h_axe_weapon_pose_01",
			"we_2h_axe_weapon_pose_02",
			"we_2h_axe_weapon_pose_03",
			"we_2h_axe_weapon_pose_04",
			"we_2h_axe_weapon_pose_05",
			"we_2h_axe_weapon_pose_06"
		}
	}
}
ItemMasterList.weapon_pose_pack_kerillian_spear_shield = {
	description = "weapon_pose_pack_kerillian_spear_shield_description",
	rarity = "promo",
	display_name = "weapon_pose_pack_kerillian_spear_shield_name",
	slot_type = "weapon_pose_bundle",
	information_text = "information_weapon_pose",
	selection = "versus",
	name = "weapon_pose_pack_kerillian_spear_shield_name",
	hud_icon = "",
	template = "",
	item_type = "weapon_pose_bundle",
	can_wield = {
		"we_shade",
		"we_maidenguard",
		"we_waywatcher",
		"we_thornsister"
	},
	icon_size = {
		160,
		160
	},
	bundle = {
		BundledItems = {
			"we_1h_spears_shield_weapon_pose_01",
			"we_1h_spears_shield_weapon_pose_02",
			"we_1h_spears_shield_weapon_pose_03",
			"we_1h_spears_shield_weapon_pose_04",
			"we_1h_spears_shield_weapon_pose_05",
			"we_1h_spears_shield_weapon_pose_06"
		}
	}
}
ItemMasterList.weapon_pose_pack_kerillian_life_staff = {
	description = "weapon_pose_pack_kerillian_life_staff_description",
	rarity = "promo",
	display_name = "weapon_pose_pack_kerillian_life_staff_name",
	slot_type = "weapon_pose_bundle",
	information_text = "information_weapon_pose",
	selection = "versus",
	name = "weapon_pose_pack_kerillian_life_staff_name",
	hud_icon = "",
	template = "",
	item_type = "weapon_pose_bundle",
	can_wield = {
		"we_shade",
		"we_maidenguard",
		"we_waywatcher",
		"we_thornsister"
	},
	icon_size = {
		160,
		160
	},
	bundle = {
		BundledItems = {
			"we_life_staff_weapon_pose_01",
			"we_life_staff_weapon_pose_02",
			"we_life_staff_weapon_pose_03",
			"we_life_staff_weapon_pose_04",
			"we_life_staff_weapon_pose_05",
			"we_life_staff_weapon_pose_06"
		}
	}
}
ItemMasterList.weapon_pose_pack_kerillian_spear = {
	description = "weapon_pose_pack_kerillian_spear_description",
	rarity = "promo",
	display_name = "weapon_pose_pack_kerillian_spear_name",
	slot_type = "weapon_pose_bundle",
	information_text = "information_weapon_pose",
	selection = "versus",
	name = "weapon_pose_pack_kerillian_spear_name",
	hud_icon = "",
	template = "",
	item_type = "weapon_pose_bundle",
	can_wield = {
		"we_shade",
		"we_maidenguard",
		"we_waywatcher",
		"we_thornsister"
	},
	icon_size = {
		160,
		160
	},
	bundle = {
		BundledItems = {
			"we_spear_weapon_pose_01",
			"we_spear_weapon_pose_02",
			"we_spear_weapon_pose_03",
			"we_spear_weapon_pose_04",
			"we_spear_weapon_pose_05",
			"we_spear_weapon_pose_06",
			"we_javelin_weapon_pose_01",
			"we_javelin_weapon_pose_02",
			"we_javelin_weapon_pose_03",
			"we_javelin_weapon_pose_04",
			"we_javelin_weapon_pose_05",
			"we_javelin_weapon_pose_06"
		}
	}
}
ItemMasterList.weapon_pose_pack_saltzpyre_brace_of_pistols = {
	description = "weapon_pose_pack_saltzpyre_brace_of_pistols_description",
	rarity = "promo",
	display_name = "weapon_pose_pack_saltzpyre_brace_of_pistols_name",
	slot_type = "weapon_pose_bundle",
	information_text = "information_weapon_pose",
	selection = "versus",
	name = "weapon_pose_pack_saltzpyre_brace_of_pistols_name",
	hud_icon = "",
	template = "",
	item_type = "weapon_pose_bundle",
	can_wield = {
		"wh_bountyhunter",
		"wh_captain",
		"wh_zealot"
	},
	icon_size = {
		160,
		160
	},
	bundle = {
		BundledItems = {
			"wh_brace_of_pistols_weapon_pose_01",
			"wh_brace_of_pistols_weapon_pose_02",
			"wh_brace_of_pistols_weapon_pose_03",
			"wh_brace_of_pistols_weapon_pose_04",
			"wh_brace_of_pistols_weapon_pose_05",
			"wh_brace_of_pistols_weapon_pose_06"
		}
	}
}
ItemMasterList.weapon_pose_pack_saltzpyre_fencing_sword = {
	description = "weapon_pose_pack_saltzpyre_fencing_sword_description",
	rarity = "promo",
	display_name = "weapon_pose_pack_saltzpyre_fencing_sword_name",
	slot_type = "weapon_pose_bundle",
	information_text = "information_weapon_pose",
	selection = "versus",
	name = "weapon_pose_pack_saltzpyre_fencing_sword_name",
	hud_icon = "",
	template = "",
	item_type = "weapon_pose_bundle",
	can_wield = {
		"wh_bountyhunter",
		"wh_captain",
		"wh_zealot"
	},
	icon_size = {
		160,
		160
	},
	bundle = {
		BundledItems = {
			"wh_fencing_sword_weapon_pose_01",
			"wh_fencing_sword_weapon_pose_02",
			"wh_fencing_sword_weapon_pose_03",
			"wh_fencing_sword_weapon_pose_04",
			"wh_fencing_sword_weapon_pose_05",
			"wh_fencing_sword_weapon_pose_06"
		}
	}
}
ItemMasterList.weapon_pose_pack_saltzpyre_dual_wield = {
	description = "weapon_pose_pack_saltzpyre_dual_wield_description",
	rarity = "promo",
	display_name = "weapon_pose_pack_saltzpyre_dual_wield_name",
	slot_type = "weapon_pose_bundle",
	information_text = "information_weapon_pose",
	selection = "versus",
	name = "weapon_pose_pack_saltzpyre_dual_wield_name",
	hud_icon = "",
	template = "",
	item_type = "weapon_pose_bundle",
	can_wield = {
		"wh_bountyhunter",
		"wh_captain",
		"wh_zealot"
	},
	icon_size = {
		160,
		160
	},
	bundle = {
		BundledItems = {
			"wh_dual_wield_axe_falchion_weapon_pose_01",
			"wh_dual_wield_axe_falchion_weapon_pose_02",
			"wh_dual_wield_axe_falchion_weapon_pose_03",
			"wh_dual_wield_axe_falchion_weapon_pose_04",
			"wh_dual_wield_axe_falchion_weapon_pose_05",
			"wh_dual_wield_axe_falchion_weapon_pose_06"
		}
	}
}
ItemMasterList.weapon_pose_pack_saltzpyre_crossbow = {
	description = "weapon_pose_pack_saltzpyre_crossbow_description",
	rarity = "promo",
	display_name = "weapon_pose_pack_saltzpyre_crossbow_name",
	slot_type = "weapon_pose_bundle",
	information_text = "information_weapon_pose",
	selection = "versus",
	name = "weapon_pose_pack_saltzpyre_crossbow_name",
	hud_icon = "",
	template = "",
	item_type = "weapon_pose_bundle",
	can_wield = {
		"wh_bountyhunter",
		"wh_captain",
		"wh_zealot"
	},
	icon_size = {
		160,
		160
	},
	bundle = {
		BundledItems = {
			"wh_crossbow_weapon_pose_01",
			"wh_crossbow_weapon_pose_02",
			"wh_crossbow_weapon_pose_03",
			"wh_crossbow_weapon_pose_04",
			"wh_crossbow_weapon_pose_05",
			"wh_crossbow_weapon_pose_06",
			"wh_crossbow_repeater_weapon_pose_01",
			"wh_crossbow_repeater_weapon_pose_02",
			"wh_crossbow_repeater_weapon_pose_03",
			"wh_crossbow_repeater_weapon_pose_04",
			"wh_crossbow_repeater_weapon_pose_05",
			"wh_crossbow_repeater_weapon_pose_06"
		}
	}
}
ItemMasterList.weapon_pose_pack_saltzpyre_dual_wield_hammers = {
	description = "weapon_pose_pack_saltzpyre_dual_wield_hammer_description",
	rarity = "promo",
	display_name = "weapon_pose_pack_saltzpyre_dual_wield_hammer_name",
	slot_type = "weapon_pose_bundle",
	information_text = "information_weapon_pose",
	selection = "versus",
	name = "weapon_pose_pack_saltzpyre_dual_wield_hammer_name",
	hud_icon = "",
	template = "",
	item_type = "weapon_pose_bundle",
	can_wield = {
		"wh_priest",
		"wh_zealot"
	},
	icon_size = {
		160,
		160
	},
	bundle = {
		BundledItems = {
			"wh_dual_hammer_weapon_pose_01",
			"wh_dual_hammer_weapon_pose_02",
			"wh_dual_hammer_weapon_pose_03",
			"wh_dual_hammer_weapon_pose_04",
			"wh_dual_hammer_weapon_pose_05",
			"wh_dual_hammer_weapon_pose_06"
		}
	}
}
ItemMasterList.weapon_pose_pack_saltzpyre_1h_weapon = {
	description = "weapon_pose_pack_saltzpyre_1h_weapon_description",
	rarity = "promo",
	display_name = "weapon_pose_pack_saltzpyre_1h_weapon_name",
	slot_type = "weapon_pose_bundle",
	information_text = "information_weapon_pose",
	selection = "versus",
	name = "weapon_pose_pack_saltzpyre_1h_weapon_name",
	hud_icon = "",
	template = "",
	item_type = "weapon_pose_bundle",
	can_wield = {
		"wh_bountyhunter",
		"wh_captain",
		"wh_zealot"
	},
	icon_size = {
		160,
		160
	},
	bundle = {
		BundledItems = {
			"wh_1h_hammer_weapon_pose_01",
			"wh_1h_hammer_weapon_pose_02",
			"wh_1h_hammer_weapon_pose_03",
			"wh_1h_hammer_weapon_pose_04",
			"wh_1h_hammer_weapon_pose_05",
			"wh_1h_hammer_weapon_pose_06",
			"wh_1h_axe_weapon_pose_01",
			"wh_1h_axe_weapon_pose_02",
			"wh_1h_axe_weapon_pose_03",
			"wh_1h_axe_weapon_pose_04",
			"wh_1h_axe_weapon_pose_05",
			"wh_1h_axe_weapon_pose_06",
			"wh_1h_falchion_weapon_pose_01",
			"wh_1h_falchion_weapon_pose_02",
			"wh_1h_falchion_weapon_pose_03",
			"wh_1h_falchion_weapon_pose_04",
			"wh_1h_falchion_weapon_pose_05",
			"wh_1h_falchion_weapon_pose_06"
		}
	}
}
ItemMasterList.weapon_pose_pack_bardin_rifle = {
	description = "weapon_pose_pack_bardin_rifle_description",
	rarity = "promo",
	display_name = "weapon_pose_pack_bardin_rifle_name",
	slot_type = "weapon_pose_bundle",
	information_text = "information_weapon_pose",
	selection = "versus",
	name = "weapon_pose_pack_bardin_rifle_name",
	hud_icon = "",
	template = "",
	item_type = "weapon_pose_bundle",
	can_wield = {
		"dr_ironbreaker",
		"dr_ranger",
		"dr_engineer"
	},
	icon_size = {
		160,
		160
	},
	bundle = {
		BundledItems = {
			"dr_handgun_weapon_pose_01",
			"dr_handgun_weapon_pose_02",
			"dr_handgun_weapon_pose_03",
			"dr_handgun_weapon_pose_04",
			"dr_handgun_weapon_pose_05",
			"dr_handgun_weapon_pose_06"
		}
	}
}
ItemMasterList.weapon_pose_pack_bardin_dual_wield = {
	description = "weapon_pose_pack_bardin_dual_wield_description",
	rarity = "promo",
	display_name = "weapon_pose_pack_bardin_dual_wield_name",
	slot_type = "weapon_pose_bundle",
	information_text = "information_weapon_pose",
	selection = "versus",
	name = "weapon_pose_pack_bardin_dual_wield_name",
	hud_icon = "",
	template = "",
	item_type = "weapon_pose_bundle",
	can_wield = {
		"dr_ironbreaker",
		"dr_slayer",
		"dr_ranger",
		"dr_engineer"
	},
	icon_size = {
		160,
		160
	},
	bundle = {
		BundledItems = {
			"dr_dual_wield_hammers_weapon_pose_01",
			"dr_dual_wield_hammers_weapon_pose_02",
			"dr_dual_wield_hammers_weapon_pose_03",
			"dr_dual_wield_hammers_weapon_pose_04",
			"dr_dual_wield_hammers_weapon_pose_05",
			"dr_dual_wield_hammers_weapon_pose_06",
			"dr_dual_wield_axes_weapon_pose_01",
			"dr_dual_wield_axes_weapon_pose_02",
			"dr_dual_wield_axes_weapon_pose_03",
			"dr_dual_wield_axes_weapon_pose_04",
			"dr_dual_wield_axes_weapon_pose_05",
			"dr_dual_wield_axes_weapon_pose_06"
		}
	}
}
ItemMasterList.weapon_pose_pack_bardin_crossbow = {
	description = "weapon_pose_pack_bardin_crossbow_description",
	rarity = "promo",
	display_name = "weapon_pose_pack_bardin_crossbow_name",
	slot_type = "weapon_pose_bundle",
	information_text = "information_weapon_pose",
	selection = "versus",
	name = "weapon_pose_pack_bardin_crossbow_name",
	hud_icon = "",
	template = "",
	item_type = "weapon_pose_bundle",
	can_wield = {
		"dr_ironbreaker",
		"dr_ranger"
	},
	icon_size = {
		160,
		160
	},
	bundle = {
		BundledItems = {
			"dr_crossbow_weapon_pose_01",
			"dr_crossbow_weapon_pose_02",
			"dr_crossbow_weapon_pose_03",
			"dr_crossbow_weapon_pose_04",
			"dr_crossbow_weapon_pose_05",
			"dr_crossbow_weapon_pose_06"
		}
	}
}
ItemMasterList.weapon_pose_pack_bardin_1h_shield = {
	description = "weapon_pose_pack_bardin_1h_shield_description",
	rarity = "promo",
	display_name = "weapon_pose_pack_bardin_1h_shield_name",
	slot_type = "weapon_pose_bundle",
	information_text = "information_weapon_pose",
	selection = "versus",
	name = "weapon_pose_pack_bardin_1h_shield_name",
	hud_icon = "",
	template = "",
	item_type = "weapon_pose_bundle",
	can_wield = {
		"dr_ironbreaker",
		"dr_ranger",
		"dr_engineer"
	},
	icon_size = {
		160,
		160
	},
	bundle = {
		BundledItems = {
			"dr_shield_hammer_weapon_pose_01",
			"dr_shield_hammer_weapon_pose_02",
			"dr_shield_hammer_weapon_pose_03",
			"dr_shield_hammer_weapon_pose_04",
			"dr_shield_hammer_weapon_pose_05",
			"dr_shield_hammer_weapon_pose_06",
			"dr_shield_axe_weapon_pose_01",
			"dr_shield_axe_weapon_pose_02",
			"dr_shield_axe_weapon_pose_03",
			"dr_shield_axe_weapon_pose_04",
			"dr_shield_axe_weapon_pose_05",
			"dr_shield_axe_weapon_pose_06"
		}
	}
}
ItemMasterList.weapon_pose_pack_bardin_steam_pistol = {
	description = "weapon_pose_pack_bardin_steam_pistol_description",
	rarity = "promo",
	display_name = "weapon_pose_pack_bardin_steam_pistol_name",
	slot_type = "weapon_pose_bundle",
	information_text = "information_weapon_pose",
	selection = "versus",
	name = "weapon_pose_pack_bardin_steam_pistol_name",
	hud_icon = "",
	template = "",
	item_type = "weapon_pose_bundle",
	can_wield = {
		"dr_engineer",
		"dr_ranger",
		"dr_ironbreaker"
	},
	icon_size = {
		160,
		160
	},
	bundle = {
		BundledItems = {
			"dr_steam_pistol_weapon_pose_01",
			"dr_steam_pistol_weapon_pose_02",
			"dr_steam_pistol_weapon_pose_03",
			"dr_steam_pistol_weapon_pose_04",
			"dr_steam_pistol_weapon_pose_05",
			"dr_steam_pistol_weapon_pose_06"
		}
	}
}
ItemMasterList.weapon_pose_pack_bardin_2h_weapon = {
	description = "weapon_pose_pack_bardin_2h_weapon_description",
	rarity = "promo",
	display_name = "weapon_pose_pack_bardin_2h_weapon_name",
	slot_type = "weapon_pose_bundle",
	information_text = "information_weapon_pose",
	selection = "versus",
	name = "weapon_pose_pack_bardin_2h_weapon_name",
	hud_icon = "",
	template = "",
	item_type = "weapon_pose_bundle",
	can_wield = {
		"dr_ironbreaker",
		"dr_slayer",
		"dr_ranger",
		"dr_engineer"
	},
	icon_size = {
		160,
		160
	},
	bundle = {
		BundledItems = {
			"dr_2h_hammer_weapon_pose_01",
			"dr_2h_hammer_weapon_pose_02",
			"dr_2h_hammer_weapon_pose_03",
			"dr_2h_hammer_weapon_pose_04",
			"dr_2h_hammer_weapon_pose_05",
			"dr_2h_hammer_weapon_pose_06",
			"dr_2h_axe_weapon_pose_01",
			"dr_2h_axe_weapon_pose_02",
			"dr_2h_axe_weapon_pose_03",
			"dr_2h_axe_weapon_pose_04",
			"dr_2h_axe_weapon_pose_05",
			"dr_2h_axe_weapon_pose_06",
			"dr_2h_pick_weapon_pose_01",
			"dr_2h_pick_weapon_pose_02",
			"dr_2h_pick_weapon_pose_03",
			"dr_2h_pick_weapon_pose_04",
			"dr_2h_pick_weapon_pose_05",
			"dr_2h_pick_weapon_pose_06",
			"dr_2h_cog_hammer_weapon_pose_01",
			"dr_2h_cog_hammer_weapon_pose_02",
			"dr_2h_cog_hammer_weapon_pose_03",
			"dr_2h_cog_hammer_weapon_pose_04",
			"dr_2h_cog_hammer_weapon_pose_05",
			"dr_2h_cog_hammer_weapon_pose_06"
		}
	}
}
ItemMasterList.weapon_pose_pack_kruber_handgun = {
	description = "weapon_pose_pack_kruber_handgun_description",
	rarity = "promo",
	display_name = "weapon_pose_pack_kruber_handgun_name",
	slot_type = "weapon_pose_bundle",
	information_text = "information_weapon_pose",
	selection = "versus",
	name = "weapon_pose_pack_kruber_handgun_name",
	hud_icon = "",
	template = "",
	item_type = "weapon_pose_bundle",
	can_wield = {
		"es_huntsman",
		"es_knight",
		"es_mercenary"
	},
	icon_size = {
		160,
		160
	},
	bundle = {
		BundledItems = {
			"es_handgun_weapon_pose_01",
			"es_handgun_weapon_pose_02",
			"es_handgun_weapon_pose_03",
			"es_handgun_weapon_pose_04",
			"es_handgun_weapon_pose_05",
			"es_handgun_weapon_pose_06"
		}
	}
}
ItemMasterList.weapon_pose_pack_kruber_2h_sword = {
	description = "weapon_pose_pack_kruber_2h_sword_description",
	rarity = "promo",
	display_name = "weapon_pose_pack_kruber_2h_sword_name",
	slot_type = "weapon_pose_bundle",
	information_text = "information_weapon_pose",
	selection = "versus",
	name = "weapon_pose_pack_kruber_2h_sword_name",
	hud_icon = "",
	template = "",
	item_type = "weapon_pose_bundle",
	can_wield = {
		"es_huntsman",
		"es_knight",
		"es_mercenary",
		"es_questingknight"
	},
	icon_size = {
		160,
		160
	},
	bundle = {
		BundledItems = {
			"es_2h_sword_executioner_weapon_pose_01",
			"es_2h_sword_executioner_weapon_pose_02",
			"es_2h_sword_executioner_weapon_pose_03",
			"es_2h_sword_executioner_weapon_pose_04",
			"es_2h_sword_executioner_weapon_pose_05",
			"es_2h_sword_executioner_weapon_pose_06",
			"es_2h_sword_weapon_pose_01",
			"es_2h_sword_weapon_pose_02",
			"es_2h_sword_weapon_pose_03",
			"es_2h_sword_weapon_pose_04",
			"es_2h_sword_weapon_pose_05",
			"es_2h_sword_weapon_pose_06"
		}
	}
}
ItemMasterList.weapon_pose_pack_kruber_shotgun = {
	description = "weapon_pose_pack_kruber_shotgun_description",
	rarity = "promo",
	display_name = "weapon_pose_pack_kruber_shotgun_name",
	slot_type = "weapon_pose_bundle",
	information_text = "information_weapon_pose",
	selection = "versus",
	name = "weapon_pose_pack_kruber_shotgun_name",
	hud_icon = "",
	template = "",
	item_type = "weapon_pose_bundle",
	can_wield = {
		"es_huntsman",
		"es_knight",
		"es_mercenary"
	},
	icon_size = {
		160,
		160
	},
	bundle = {
		BundledItems = {
			"es_blunderbuss_weapon_pose_01",
			"es_blunderbuss_weapon_pose_02",
			"es_blunderbuss_weapon_pose_03",
			"es_blunderbuss_weapon_pose_04",
			"es_blunderbuss_weapon_pose_05",
			"es_blunderbuss_weapon_pose_06"
		}
	}
}
ItemMasterList.weapon_pose_pack_kruber_1h_shield = {
	description = "weapon_pose_pack_kruber_1h_shield_description",
	rarity = "promo",
	display_name = "weapon_pose_pack_kruber_1h_shield_name",
	slot_type = "weapon_pose_bundle",
	information_text = "information_weapon_pose",
	selection = "versus",
	name = "weapon_pose_pack_kruber_1h_shield_name",
	hud_icon = "",
	template = "",
	item_type = "weapon_pose_bundle",
	can_wield = {
		"es_huntsman",
		"es_knight",
		"es_mercenary",
		"es_questingknight"
	},
	icon_size = {
		160,
		160
	},
	bundle = {
		BundledItems = {
			"es_sword_shield_weapon_pose_01",
			"es_sword_shield_weapon_pose_02",
			"es_sword_shield_weapon_pose_03",
			"es_sword_shield_weapon_pose_04",
			"es_sword_shield_weapon_pose_05",
			"es_sword_shield_weapon_pose_06",
			"es_sword_shield_breton_weapon_pose_01",
			"es_sword_shield_breton_weapon_pose_02",
			"es_sword_shield_breton_weapon_pose_03",
			"es_sword_shield_breton_weapon_pose_04",
			"es_sword_shield_breton_weapon_pose_05",
			"es_sword_shield_breton_weapon_pose_06",
			"es_mace_shield_weapon_pose_01",
			"es_mace_shield_weapon_pose_02",
			"es_mace_shield_weapon_pose_03",
			"es_mace_shield_weapon_pose_04",
			"es_mace_shield_weapon_pose_05",
			"es_mace_shield_weapon_pose_06",
			"es_deus_01_weapon_pose_01",
			"es_deus_01_weapon_pose_02",
			"es_deus_01_weapon_pose_03",
			"es_deus_01_weapon_pose_04",
			"es_deus_01_weapon_pose_05",
			"es_deus_01_weapon_pose_06"
		}
	}
}
ItemMasterList.weapon_pose_pack_kruber_bastard_sword = {
	description = "weapon_pose_pack_kruber_bastard_sword_description",
	rarity = "promo",
	display_name = "weapon_pose_pack_kruber_bastard_sword_name",
	slot_type = "weapon_pose_bundle",
	information_text = "information_weapon_pose",
	selection = "versus",
	name = "weapon_pose_pack_kruber_bastard_sword_name",
	hud_icon = "",
	template = "",
	item_type = "weapon_pose_bundle",
	can_wield = {
		"es_huntsman",
		"es_knight",
		"es_mercenary",
		"es_questingknight"
	},
	icon_size = {
		160,
		160
	},
	bundle = {
		BundledItems = {
			"es_bastard_sword_weapon_pose_01",
			"es_bastard_sword_weapon_pose_02",
			"es_bastard_sword_weapon_pose_03",
			"es_bastard_sword_weapon_pose_04",
			"es_bastard_sword_weapon_pose_05",
			"es_bastard_sword_weapon_pose_06"
		}
	}
}
ItemMasterList.weapon_pose_pack_kruber_2h_hammer = {
	description = "weapon_pose_pack_kruber_2h_hammer_description",
	rarity = "promo",
	display_name = "weapon_pose_pack_kruber_2h_hammer_name",
	slot_type = "weapon_pose_bundle",
	information_text = "information_weapon_pose",
	selection = "versus",
	name = "weapon_pose_pack_kruber_2h_hammer_name",
	hud_icon = "",
	template = "",
	item_type = "weapon_pose_bundle",
	can_wield = {
		"es_huntsman",
		"es_knight",
		"es_mercenary",
		"es_questingknight"
	},
	icon_size = {
		160,
		160
	},
	bundle = {
		BundledItems = {
			"es_2h_hammer_weapon_pose_01",
			"es_2h_hammer_weapon_pose_02",
			"es_2h_hammer_weapon_pose_03",
			"es_2h_hammer_weapon_pose_04",
			"es_2h_hammer_weapon_pose_05",
			"es_2h_hammer_weapon_pose_06"
		}
	}
}
ItemMasterList.weapon_pose_pack_sienna_staff_a = {
	description = "weapon_pose_pack_sienna_staff_a_description",
	rarity = "promo",
	display_name = "weapon_pose_pack_sienna_staff_a_name",
	slot_type = "weapon_pose_bundle",
	information_text = "information_weapon_pose",
	selection = "versus",
	name = "weapon_pose_pack_sienna_staff_a_name",
	hud_icon = "",
	template = "",
	item_type = "weapon_pose_bundle",
	can_wield = {
		"bw_scholar",
		"bw_adept",
		"bw_unchained",
		"bw_necromancer"
	},
	icon_size = {
		160,
		160
	},
	bundle = {
		BundledItems = {
			"bw_necromancy_staff_weapon_pose_01",
			"bw_necromancy_staff_weapon_pose_02",
			"bw_necromancy_staff_weapon_pose_03",
			"bw_necromancy_staff_weapon_pose_04",
			"bw_necromancy_staff_weapon_pose_05",
			"bw_necromancy_staff_weapon_pose_06",
			"bw_skullstaff_spear_weapon_pose_01",
			"bw_skullstaff_spear_weapon_pose_02",
			"bw_skullstaff_spear_weapon_pose_03",
			"bw_skullstaff_spear_weapon_pose_04",
			"bw_skullstaff_spear_weapon_pose_05",
			"bw_skullstaff_spear_weapon_pose_06",
			"bw_skullstaff_beam_weapon_pose_01",
			"bw_skullstaff_beam_weapon_pose_02",
			"bw_skullstaff_beam_weapon_pose_03",
			"bw_skullstaff_beam_weapon_pose_04",
			"bw_skullstaff_beam_weapon_pose_05",
			"bw_skullstaff_beam_weapon_pose_06",
			"bw_skullstaff_flamethrower_weapon_pose_01",
			"bw_skullstaff_flamethrower_weapon_pose_02",
			"bw_skullstaff_flamethrower_weapon_pose_03",
			"bw_skullstaff_flamethrower_weapon_pose_04",
			"bw_skullstaff_flamethrower_weapon_pose_05",
			"bw_skullstaff_flamethrower_weapon_pose_06",
			"bw_skullstaff_geiser_weapon_pose_01",
			"bw_skullstaff_geiser_weapon_pose_02",
			"bw_skullstaff_geiser_weapon_pose_03",
			"bw_skullstaff_geiser_weapon_pose_04",
			"bw_skullstaff_geiser_weapon_pose_05",
			"bw_skullstaff_geiser_weapon_pose_06",
			"bw_skullstaff_spear_weapon_pose_01",
			"bw_skullstaff_spear_weapon_pose_02",
			"bw_skullstaff_spear_weapon_pose_03",
			"bw_skullstaff_spear_weapon_pose_04",
			"bw_skullstaff_spear_weapon_pose_05",
			"bw_skullstaff_spear_weapon_pose_06",
			"bw_skullstaff_fireball_weapon_pose_01",
			"bw_skullstaff_fireball_weapon_pose_02",
			"bw_skullstaff_fireball_weapon_pose_03",
			"bw_skullstaff_fireball_weapon_pose_04",
			"bw_skullstaff_fireball_weapon_pose_05",
			"bw_skullstaff_fireball_weapon_pose_06",
			"bw_deus_01_weapon_pose_01",
			"bw_deus_01_weapon_pose_02",
			"bw_deus_01_weapon_pose_03",
			"bw_deus_01_weapon_pose_04",
			"bw_deus_01_weapon_pose_05",
			"bw_deus_01_weapon_pose_06"
		}
	}
}
ItemMasterList.weapon_pose_pack_sienna_1h = {
	description = "weapon_pose_pack_sienna_1h_description",
	rarity = "promo",
	display_name = "weapon_pose_pack_sienna_1h_name",
	slot_type = "weapon_pose_bundle",
	information_text = "information_weapon_pose",
	selection = "versus",
	name = "weapon_pose_pack_sienna_1h_name",
	hud_icon = "",
	template = "",
	item_type = "weapon_pose_bundle",
	can_wield = {
		"bw_scholar",
		"bw_adept",
		"bw_unchained",
		"bw_necromancer"
	},
	icon_size = {
		160,
		160
	},
	bundle = {
		BundledItems = {
			"bw_1h_crowbill_weapon_pose_01",
			"bw_1h_crowbill_weapon_pose_02",
			"bw_1h_crowbill_weapon_pose_03",
			"bw_1h_crowbill_weapon_pose_04",
			"bw_1h_crowbill_weapon_pose_05",
			"bw_1h_crowbill_weapon_pose_06",
			"bw_1h_flail_flaming_weapon_pose_01",
			"bw_1h_flail_flaming_weapon_pose_02",
			"bw_1h_flail_flaming_weapon_pose_03",
			"bw_1h_flail_flaming_weapon_pose_04",
			"bw_1h_flail_flaming_weapon_pose_05",
			"bw_1h_flail_flaming_weapon_pose_06",
			"bw_sword_weapon_pose_01",
			"bw_sword_weapon_pose_02",
			"bw_sword_weapon_pose_03",
			"bw_sword_weapon_pose_04",
			"bw_sword_weapon_pose_05",
			"bw_sword_weapon_pose_06"
		}
	}
}
ItemMasterList.weapon_pose_pack_sienna_1h_dagger = {
	description = "weapon_pose_pack_sienna_1h_description",
	rarity = "promo",
	display_name = "weapon_pose_pack_sienna_1h_dagger_name",
	slot_type = "weapon_pose_bundle",
	information_text = "information_weapon_pose",
	selection = "versus",
	name = "weapon_pose_pack_sienna_1h_dagger_name",
	hud_icon = "",
	template = "",
	item_type = "weapon_pose_bundle",
	can_wield = {
		"bw_scholar",
		"bw_adept",
		"bw_unchained",
		"bw_necromancer"
	},
	icon_size = {
		160,
		160
	},
	bundle = {
		BundledItems = {
			"bw_dagger_weapon_pose_01",
			"bw_dagger_weapon_pose_02",
			"bw_dagger_weapon_pose_03",
			"bw_dagger_weapon_pose_04",
			"bw_dagger_weapon_pose_05",
			"bw_dagger_weapon_pose_06"
		}
	}
}
ItemMasterList.weapon_pose_pack_sienna_1h_spells = {
	description = "weapon_pose_pack_sienna_1h_spells_description",
	rarity = "promo",
	display_name = "weapon_pose_pack_sienna_1h_spells_name",
	slot_type = "weapon_pose_bundle",
	information_text = "information_weapon_pose",
	selection = "versus",
	name = "weapon_pose_pack_sienna_1h_spells_name",
	hud_icon = "",
	template = "",
	item_type = "weapon_pose_bundle",
	can_wield = {
		"bw_scholar",
		"bw_adept",
		"bw_unchained",
		"bw_necromancer"
	},
	icon_size = {
		160,
		160
	},
	bundle = {
		BundledItems = {
			"bw_flame_sword_weapon_pose_01",
			"bw_flame_sword_weapon_pose_02",
			"bw_flame_sword_weapon_pose_03",
			"bw_flame_sword_weapon_pose_04",
			"bw_flame_sword_weapon_pose_05",
			"bw_flame_sword_weapon_pose_06"
		}
	}
}
ItemMasterList.weapon_pose_pack_sienna_ghost_scythe = {
	description = "weapon_pose_pack_sienna_ghost_scythe_description",
	rarity = "promo",
	display_name = "weapon_pose_pack_sienna_ghost_scythe_name",
	slot_type = "weapon_pose_bundle",
	information_text = "information_weapon_pose",
	selection = "versus",
	name = "weapon_pose_pack_sienna_ghost_scythe_name",
	hud_icon = "",
	template = "",
	item_type = "weapon_pose_bundle",
	can_wield = {
		"bw_scholar",
		"bw_adept",
		"bw_unchained",
		"bw_necromancer"
	},
	icon_size = {
		160,
		160
	},
	bundle = {
		BundledItems = {
			"bw_ghost_scythe_weapon_pose_01",
			"bw_ghost_scythe_weapon_pose_02",
			"bw_ghost_scythe_weapon_pose_03",
			"bw_ghost_scythe_weapon_pose_04",
			"bw_ghost_scythe_weapon_pose_05",
			"bw_ghost_scythe_weapon_pose_06"
		}
	}
}
ItemMasterList.weapon_pose_pack_sienna_1h_mace = {
	description = "weapon_pose_pack_sienna_1h_mace_description",
	rarity = "promo",
	display_name = "weapon_pose_pack_sienna_1h_mace_name",
	slot_type = "weapon_pose_bundle",
	information_text = "information_weapon_pose",
	selection = "versus",
	name = "weapon_pose_pack_sienna_1h_mace_name",
	hud_icon = "",
	template = "",
	item_type = "weapon_pose_bundle",
	can_wield = {
		"bw_scholar",
		"bw_adept",
		"bw_unchained",
		"bw_necromancer"
	},
	icon_size = {
		160,
		160
	},
	bundle = {
		BundledItems = {
			"bw_1h_mace_weapon_pose_01",
			"bw_1h_mace_weapon_pose_02",
			"bw_1h_mace_weapon_pose_03",
			"bw_1h_mace_weapon_pose_04",
			"bw_1h_mace_weapon_pose_05",
			"bw_1h_mace_weapon_pose_06"
		}
	}
}

UpdateItemMasterList({}, "vs_warpfire_thrower")
UpdateItemMasterList({}, "vs_packmaster")
UpdateItemMasterList({}, "vs_ratling_gunner")
UpdateItemMasterList({}, "vs_poison_wind_globadier")
UpdateItemMasterList({}, "vs_gutter_runner")
UpdateItemMasterList({}, "vs_chaos_troll")
