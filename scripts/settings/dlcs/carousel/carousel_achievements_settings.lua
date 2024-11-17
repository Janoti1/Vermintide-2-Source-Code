local settings = DLCSettings.carousel

settings.achievement_categories = {
	{
		name = "area_selection_carousel_name",
		entries = {
			"vs_disable_reviving_hero",
			"vs_kill_invisible_hero"
		},
		categories = {
			{
				sorting = 1,
				name = "achv_menu_heroes_category_title",
				entries = {
					"vs_hero_eliminations_01",
					"vs_hero_eliminations_02",
					"vs_hero_eliminations_03",
					"vs_hero_eliminations_04",
					"vs_hero_eliminations_05",
					"vs_hero_monster_kills",
					"vs_hero_obj_barrels",
					"vs_hero_obj_chains",
					"vs_hero_obj_capture",
					"vs_wins_01",
					"vs_wins_02",
					"vs_wins_03",
					"vs_wins_04",
					"vs_wins_05",
					"vs_hero_obj_safezone",
					"vs_hero_revive",
					"vs_hero_obj_reach",
					"vs_hero_rescue",
					"vs_air_gutter_runner",
					"vs_clutch_revive"
				}
			},
			{
				sorting = 2,
				name = "vs_packmaster",
				entries = {
					"vs_packmaster_eliminations_01",
					"vs_packmaster_eliminations_02",
					"vs_packmaster_eliminations_03",
					"vs_packmaster_eliminations_04",
					"vs_packmaster_eliminations_05",
					"vs_hoist_heroes",
					"vs_drag_heroes"
				}
			},
			{
				sorting = 3,
				name = "vs_gutter_runner",
				entries = {
					"vs_gutter_runner_eliminations_01",
					"vs_gutter_runner_eliminations_02",
					"vs_gutter_runner_eliminations_03",
					"vs_gutter_runner_eliminations_04",
					"vs_gutter_runner_eliminations_05",
					"vs_pounce_heroes",
					"vs_gas_combo_pounce"
				}
			},
			{
				sorting = 4,
				name = "vs_warpfire_thrower",
				entries = {
					"vs_warpfire_thrower_damage_01",
					"vs_warpfire_thrower_damage_02",
					"vs_warpfire_thrower_damage_03",
					"vs_warpfire_thrower_damage_04",
					"vs_warpfire_thrower_damage_05",
					"vs_push_hero_off_map",
					"vs_kill_hoisted_hero"
				}
			},
			{
				sorting = 5,
				name = "vs_ratling_gunner",
				entries = {
					"vs_ratling_gunner_damage_01",
					"vs_ratling_gunner_damage_02",
					"vs_ratling_gunner_damage_03",
					"vs_ratling_gunner_damage_04",
					"vs_ratling_gunner_damage_05",
					"vs_break_hero_shield",
					"vs_kill_ko_hero"
				}
			},
			{
				sorting = 6,
				name = "vs_poison_wind_globadier",
				entries = {
					"vs_poison_wind_globadier_damage_01",
					"vs_poison_wind_globadier_damage_02",
					"vs_poison_wind_globadier_damage_03",
					"vs_poison_wind_globadier_damage_04",
					"vs_poison_wind_globadier_damage_05",
					"vs_gas_combo",
					"vs_globe_damage"
				}
			},
			{
				sorting = 7,
				name = "vs_chaos_troll",
				entries = {
					"vs_chaos_troll_damage_01",
					"vs_chaos_troll_damage_02",
					"vs_chaos_troll_damage_03",
					"vs_bile_troll_vomit"
				}
			}
		}
	}
}
settings.achievement_template_file_names = {
	"scripts/managers/achievements/achievement_templates_carousel"
}
settings.achievement_events = {}
