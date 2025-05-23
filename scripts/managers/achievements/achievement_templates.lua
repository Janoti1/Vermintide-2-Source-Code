require("scripts/settings/progression_unlocks")

AchievementTemplates = {}

local ExperienceSettings = rawget(_G, "ExperienceSettings")
local LevelSettings = rawget(_G, "LevelSettings")
local LevelUnlockUtils = rawget(_G, "LevelUnlockUtils")
local ProgressionUnlocks = rawget(_G, "ProgressionUnlocks")
local UnlockableLevels = rawget(_G, "UnlockableLevels")
local DifficultySettings = rawget(_G, "DifficultySettings")

require("scripts/settings/quest_settings")
require("scripts/managers/achievements/achievement_template_helper")

local check_level = AchievementTemplateHelper.check_level
local check_level_difficulty = AchievementTemplateHelper.check_level_difficulty
local check_level_list = AchievementTemplateHelper.check_level_list
local check_level_list_difficulty = AchievementTemplateHelper.check_level_list_difficulty
local hero_level = AchievementTemplateHelper.hero_level
local equipped_items_of_rarity = AchievementTemplateHelper.equipped_items_of_rarity
local rarity_index = AchievementTemplateHelper.rarity_index
local AVAILABLE_BOGENHAFEN_COSMETICS = 84

AchievementTemplates.end_of_level_achievement_evaluations = {
	no_ratling_damage = {
		stat_to_increment = "bogenhafen_slum_no_ratling_damage",
		levels = {
			"dlc_bogenhafen_slum"
		},
		evaluation_func = function (statistics_db, stats_id)
			return statistics_db:get_stat(stats_id, "damage_taken_from_ratling_gunner") == 0
		end,
		allowed_difficulties = {
			hardest = true
		}
	}
}
AchievementTemplates.achievements = {}
AchievementTemplates.achievements.complete_tutorial = {
	ID_XB1 = 2,
	name = "achv_complete_tutorial_name",
	ID_PS4 = "001",
	ID_STEAM = "complete_tutorial",
	icon = "achievement_trophy_01",
	desc = "achv_complete_tutorial_desc",
	completed = function (statistics_db, stats_id)
		return check_level_list(statistics_db, stats_id, {
			LevelSettings.prologue.level_id
		})
	end
}
AchievementTemplates.achievements.complete_act_one = {
	ID_XB1 = 3,
	name = "achv_complete_act_one_name",
	desc = "achv_complete_act_one_desc",
	ID_STEAM = "complete_act_one",
	ID_PS4 = "002",
	icon = "achievement_trophy_02",
	completed = function (statistics_db, stats_id)
		return LevelUnlockUtils.act_completed(statistics_db, stats_id, "act_1")
	end,
	progress = function (statistics_db, stats_id)
		local count = 0

		if check_level(statistics_db, stats_id, LevelSettings.military.level_id) then
			count = count + 1
		end

		if check_level(statistics_db, stats_id, LevelSettings.catacombs.level_id) then
			count = count + 1
		end

		if check_level(statistics_db, stats_id, LevelSettings.mines.level_id) then
			count = count + 1
		end

		if check_level(statistics_db, stats_id, LevelSettings.ground_zero.level_id) then
			count = count + 1
		end

		return {
			count,
			4
		}
	end,
	requirements = function (statistics_db, stats_id)
		local complete_military = check_level(statistics_db, stats_id, LevelSettings.military.level_id)
		local complete_catacombs = check_level(statistics_db, stats_id, LevelSettings.catacombs.level_id)
		local complete_mines = check_level(statistics_db, stats_id, LevelSettings.mines.level_id)
		local complete_ground_zero = check_level(statistics_db, stats_id, LevelSettings.ground_zero.level_id)

		return {
			{
				name = "level_name_military",
				completed = complete_military
			},
			{
				name = "level_name_catacombs",
				completed = complete_catacombs
			},
			{
				name = "level_name_mines",
				completed = complete_mines
			},
			{
				name = "level_name_ground_zero",
				completed = complete_ground_zero
			}
		}
	end
}
AchievementTemplates.achievements.complete_act_one_veteran = {
	name = "achv_complete_act_one_veteran_name",
	icon = "icons_placeholder",
	desc = "achv_complete_act_one_veteran_desc",
	completed = function (statistics_db, stats_id)
		local count = 0
		local diff = DifficultySettings.hard.rank

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.military.level_id, diff) then
			count = count + 1
		end

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.catacombs.level_id, diff) then
			count = count + 1
		end

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.mines.level_id, diff) then
			count = count + 1
		end

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.ground_zero.level_id, diff) then
			count = count + 1
		end

		return count >= 4
	end,
	progress = function (statistics_db, stats_id)
		local count = 0
		local diff = DifficultySettings.hard.rank

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.military.level_id, diff) then
			count = count + 1
		end

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.catacombs.level_id, diff) then
			count = count + 1
		end

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.mines.level_id, diff) then
			count = count + 1
		end

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.ground_zero.level_id, diff) then
			count = count + 1
		end

		return {
			count,
			4
		}
	end,
	requirements = function (statistics_db, stats_id)
		local diff = DifficultySettings.hard.rank
		local complete_military = check_level_difficulty(statistics_db, stats_id, LevelSettings.military.level_id, diff)
		local complete_catacombs = check_level_difficulty(statistics_db, stats_id, LevelSettings.catacombs.level_id, diff)
		local complete_mines = check_level_difficulty(statistics_db, stats_id, LevelSettings.mines.level_id, diff)
		local complete_ground_zero = check_level_difficulty(statistics_db, stats_id, LevelSettings.ground_zero.level_id, diff)

		return {
			{
				name = "level_name_military",
				completed = complete_military
			},
			{
				name = "level_name_catacombs",
				completed = complete_catacombs
			},
			{
				name = "level_name_mines",
				completed = complete_mines
			},
			{
				name = "level_name_ground_zero",
				completed = complete_ground_zero
			}
		}
	end
}
AchievementTemplates.achievements.complete_bogenhafen_slum_recruit = {
	required_dlc = "bogenhafen",
	name = "achv_bogenhafen_slum_recruit_name",
	icon = "achievement_trophy_bogenhafen_slum_recruit",
	desc = "achv_bogenhafen_slum_recruit_desc",
	completed = function (statistics_db, stats_id)
		local count = 0
		local diff = DifficultySettings.normal.rank

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.dlc_bogenhafen_slum.level_id, diff) then
			count = count + 1
		end

		return count >= 1
	end
}
AchievementTemplates.achievements.complete_bogenhafen_slum_veteran = {
	required_dlc = "bogenhafen",
	name = "achv_bogenhafen_slum_veteran_name",
	icon = "achievement_trophy_bogenhafen_slum_veteran",
	desc = "achv_bogenhafen_slum_veteran_desc",
	completed = function (statistics_db, stats_id)
		local count = 0
		local diff = DifficultySettings.hard.rank

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.dlc_bogenhafen_slum.level_id, diff) then
			count = count + 1
		end

		return count >= 1
	end
}
AchievementTemplates.achievements.complete_bogenhafen_slum_champion = {
	required_dlc = "bogenhafen",
	name = "achv_bogenhafen_slum_champion_name",
	icon = "achievement_trophy_bogenhafen_slum_champion",
	desc = "achv_bogenhafen_slum_champion_desc",
	completed = function (statistics_db, stats_id)
		local count = 0
		local diff = DifficultySettings.harder.rank

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.dlc_bogenhafen_slum.level_id, diff) then
			count = count + 1
		end

		return count >= 1
	end
}
AchievementTemplates.achievements.complete_bogenhafen_slum_legend = {
	required_dlc = "bogenhafen",
	name = "achv_bogenhafen_slum_legend_name",
	icon = "achievement_trophy_bogenhafen_slum_legend",
	desc = "achv_bogenhafen_slum_legend_desc",
	completed = function (statistics_db, stats_id)
		local count = 0
		local diff = DifficultySettings.hardest.rank

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.dlc_bogenhafen_slum.level_id, diff) then
			count = count + 1
		end

		return count >= 1
	end
}
AchievementTemplates.achievements.complete_bogenhafen_city_recruit = {
	required_dlc = "bogenhafen",
	name = "achv_bogenhafen_city_recruit_name",
	icon = "achievement_trophy_bogenhafen_city_recruit",
	desc = "achv_bogenhafen_city_recruit_desc",
	completed = function (statistics_db, stats_id)
		local count = 0
		local diff = DifficultySettings.normal.rank

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.dlc_bogenhafen_city.level_id, diff) then
			count = count + 1
		end

		return count >= 1
	end
}
AchievementTemplates.achievements.complete_bogenhafen_city_veteran = {
	required_dlc = "bogenhafen",
	name = "achv_bogenhafen_city_veteran_name",
	icon = "achievement_trophy_bogenhafen_city_veteran",
	desc = "achv_bogenhafen_city_veteran_desc",
	completed = function (statistics_db, stats_id)
		local count = 0
		local diff = DifficultySettings.hard.rank

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.dlc_bogenhafen_city.level_id, diff) then
			count = count + 1
		end

		return count >= 1
	end
}
AchievementTemplates.achievements.complete_bogenhafen_city_champion = {
	required_dlc = "bogenhafen",
	name = "achv_bogenhafen_city_champion_name",
	icon = "achievement_trophy_bogenhafen_city_champion",
	desc = "achv_bogenhafen_city_champion_desc",
	completed = function (statistics_db, stats_id)
		local count = 0
		local diff = DifficultySettings.harder.rank

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.dlc_bogenhafen_city.level_id, diff) then
			count = count + 1
		end

		return count >= 1
	end
}
AchievementTemplates.achievements.complete_bogenhafen_city_legend = {
	required_dlc = "bogenhafen",
	name = "achv_bogenhafen_city_legend_name",
	icon = "achievement_trophy_bogenhafen_city_legend",
	desc = "achv_bogenhafen_city_legend_desc",
	completed = function (statistics_db, stats_id)
		local count = 0
		local diff = DifficultySettings.hardest.rank

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.dlc_bogenhafen_city.level_id, diff) then
			count = count + 1
		end

		return count >= 1
	end
}
AchievementTemplates.achievements.complete_bogenhafen_recruit = {
	ID_XB1 = 52,
	name = "achv_bogenhafen_complete_recruit_name",
	desc = "achv_bogenhafen_complete_recruit_desc",
	ID_PS4 = "051",
	icon = "achievement_trophy_bogenhafen_complete_recruit",
	required_dlc = "bogenhafen",
	completed = function (statistics_db, stats_id)
		local count = 0
		local diff = DifficultySettings.normal.rank

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.dlc_bogenhafen_slum.level_id, diff) then
			count = count + 1
		end

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.dlc_bogenhafen_city.level_id, diff) then
			count = count + 1
		end

		return count >= 2
	end,
	progress = function (statistics_db, stats_id)
		local count = 0
		local diff = DifficultySettings.normal.rank

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.dlc_bogenhafen_slum.level_id, diff) then
			count = count + 1
		end

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.dlc_bogenhafen_city.level_id, diff) then
			count = count + 1
		end

		return {
			count,
			2
		}
	end,
	requirements = function (statistics_db, stats_id)
		local diff = DifficultySettings.normal.rank
		local complete_bogenhafen_slum = check_level_difficulty(statistics_db, stats_id, LevelSettings.dlc_bogenhafen_slum.level_id, diff)
		local complete_bogenhafen_city = check_level_difficulty(statistics_db, stats_id, LevelSettings.dlc_bogenhafen_city.level_id, diff)

		return {
			{
				name = "level_name_bogenhafen_slum",
				completed = complete_bogenhafen_slum
			},
			{
				name = "level_name_bogenhafen_city",
				completed = complete_bogenhafen_city
			}
		}
	end
}
AchievementTemplates.achievements.complete_bogenhafen_veteran = {
	ID_XB1 = 53,
	name = "achv_bogenhafen_complete_veteran_name",
	desc = "achv_bogenhafen_complete_veteran_desc",
	ID_PS4 = "052",
	icon = "achievement_trophy_bogenhafen_complete_veteran",
	required_dlc = "bogenhafen",
	completed = function (statistics_db, stats_id)
		local count = 0
		local diff = DifficultySettings.hard.rank

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.dlc_bogenhafen_slum.level_id, diff) then
			count = count + 1
		end

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.dlc_bogenhafen_city.level_id, diff) then
			count = count + 1
		end

		return count >= 2
	end,
	progress = function (statistics_db, stats_id)
		local count = 0
		local diff = DifficultySettings.hard.rank

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.dlc_bogenhafen_slum.level_id, diff) then
			count = count + 1
		end

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.dlc_bogenhafen_city.level_id, diff) then
			count = count + 1
		end

		return {
			count,
			2
		}
	end,
	requirements = function (statistics_db, stats_id)
		local diff = DifficultySettings.hard.rank
		local complete_bogenhafen_slum = check_level_difficulty(statistics_db, stats_id, LevelSettings.dlc_bogenhafen_slum.level_id, diff)
		local complete_bogenhafen_city = check_level_difficulty(statistics_db, stats_id, LevelSettings.dlc_bogenhafen_city.level_id, diff)

		return {
			{
				name = "level_name_bogenhafen_slum",
				completed = complete_bogenhafen_slum
			},
			{
				name = "level_name_bogenhafen_city",
				completed = complete_bogenhafen_city
			}
		}
	end
}
AchievementTemplates.achievements.complete_bogenhafen_champion = {
	ID_XB1 = 54,
	name = "achv_bogenhafen_complete_champion_name",
	desc = "achv_bogenhafen_complete_champion_desc",
	ID_PS4 = "053",
	icon = "achievement_trophy_bogenhafen_complete_champion",
	required_dlc = "bogenhafen",
	completed = function (statistics_db, stats_id)
		local count = 0
		local diff = DifficultySettings.harder.rank

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.dlc_bogenhafen_slum.level_id, diff) then
			count = count + 1
		end

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.dlc_bogenhafen_city.level_id, diff) then
			count = count + 1
		end

		return count >= 2
	end,
	progress = function (statistics_db, stats_id)
		local count = 0
		local diff = DifficultySettings.harder.rank

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.dlc_bogenhafen_slum.level_id, diff) then
			count = count + 1
		end

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.dlc_bogenhafen_city.level_id, diff) then
			count = count + 1
		end

		return {
			count,
			2
		}
	end,
	requirements = function (statistics_db, stats_id)
		local diff = DifficultySettings.harder.rank
		local complete_bogenhafen_slum = check_level_difficulty(statistics_db, stats_id, LevelSettings.dlc_bogenhafen_slum.level_id, diff)
		local complete_bogenhafen_city = check_level_difficulty(statistics_db, stats_id, LevelSettings.dlc_bogenhafen_city.level_id, diff)

		return {
			{
				name = "level_name_bogenhafen_slum",
				completed = complete_bogenhafen_slum
			},
			{
				name = "level_name_bogenhafen_city",
				completed = complete_bogenhafen_city
			}
		}
	end
}
AchievementTemplates.achievements.complete_bogenhafen_legend = {
	ID_XB1 = 55,
	name = "achv_bogenhafen_complete_legend_name",
	desc = "achv_bogenhafen_complete_legend_desc",
	ID_PS4 = "054",
	icon = "achievement_trophy_bogenhafen_complete_legend",
	required_dlc = "bogenhafen",
	completed = function (statistics_db, stats_id)
		local count = 0
		local diff = DifficultySettings.hardest.rank

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.dlc_bogenhafen_slum.level_id, diff) then
			count = count + 1
		end

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.dlc_bogenhafen_city.level_id, diff) then
			count = count + 1
		end

		return count >= 2
	end,
	progress = function (statistics_db, stats_id)
		local count = 0
		local diff = DifficultySettings.hardest.rank

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.dlc_bogenhafen_slum.level_id, diff) then
			count = count + 1
		end

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.dlc_bogenhafen_city.level_id, diff) then
			count = count + 1
		end

		return {
			count,
			2
		}
	end,
	requirements = function (statistics_db, stats_id)
		local diff = DifficultySettings.hardest.rank
		local complete_bogenhafen_slum = check_level_difficulty(statistics_db, stats_id, LevelSettings.dlc_bogenhafen_slum.level_id, diff)
		local complete_bogenhafen_city = check_level_difficulty(statistics_db, stats_id, LevelSettings.dlc_bogenhafen_city.level_id, diff)

		return {
			{
				name = "level_name_bogenhafen_slum",
				completed = complete_bogenhafen_slum
			},
			{
				name = "level_name_bogenhafen_city",
				completed = complete_bogenhafen_city
			}
		}
	end
}
AchievementTemplates.achievements.complete_act_one_champion = {
	name = "achv_complete_act_one_champion_name",
	icon = "icons_placeholder",
	desc = "achv_complete_act_one_champion_desc",
	completed = function (statistics_db, stats_id)
		local count = 0
		local diff = DifficultySettings.harder.rank

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.military.level_id, diff) then
			count = count + 1
		end

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.catacombs.level_id, diff) then
			count = count + 1
		end

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.mines.level_id, diff) then
			count = count + 1
		end

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.ground_zero.level_id, diff) then
			count = count + 1
		end

		return count >= 4
	end,
	progress = function (statistics_db, stats_id)
		local count = 0
		local diff = DifficultySettings.harder.rank

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.military.level_id, diff) then
			count = count + 1
		end

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.catacombs.level_id, diff) then
			count = count + 1
		end

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.mines.level_id, diff) then
			count = count + 1
		end

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.ground_zero.level_id, diff) then
			count = count + 1
		end

		return {
			count,
			4
		}
	end,
	requirements = function (statistics_db, stats_id)
		local diff = DifficultySettings.harder.rank
		local complete_military = check_level_difficulty(statistics_db, stats_id, LevelSettings.military.level_id, diff)
		local complete_catacombs = check_level_difficulty(statistics_db, stats_id, LevelSettings.catacombs.level_id, diff)
		local complete_mines = check_level_difficulty(statistics_db, stats_id, LevelSettings.mines.level_id, diff)
		local complete_ground_zero = check_level_difficulty(statistics_db, stats_id, LevelSettings.ground_zero.level_id, diff)

		return {
			{
				name = "level_name_military",
				completed = complete_military
			},
			{
				name = "level_name_catacombs",
				completed = complete_catacombs
			},
			{
				name = "level_name_mines",
				completed = complete_mines
			},
			{
				name = "level_name_ground_zero",
				completed = complete_ground_zero
			}
		}
	end
}
AchievementTemplates.achievements.complete_act_one_legend = {
	name = "achv_complete_act_one_legend_name",
	icon = "icons_placeholder",
	desc = "achv_complete_act_one_legend_desc",
	completed = function (statistics_db, stats_id)
		local count = 0
		local diff = DifficultySettings.hardest.rank

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.military.level_id, diff) then
			count = count + 1
		end

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.catacombs.level_id, diff) then
			count = count + 1
		end

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.mines.level_id, diff) then
			count = count + 1
		end

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.ground_zero.level_id, diff) then
			count = count + 1
		end

		return count >= 4
	end,
	progress = function (statistics_db, stats_id)
		local count = 0
		local diff = DifficultySettings.hardest.rank

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.military.level_id, diff) then
			count = count + 1
		end

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.catacombs.level_id, diff) then
			count = count + 1
		end

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.mines.level_id, diff) then
			count = count + 1
		end

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.ground_zero.level_id, diff) then
			count = count + 1
		end

		return {
			count,
			4
		}
	end,
	requirements = function (statistics_db, stats_id)
		local diff = DifficultySettings.hardest.rank
		local complete_military = check_level_difficulty(statistics_db, stats_id, LevelSettings.military.level_id, diff)
		local complete_catacombs = check_level_difficulty(statistics_db, stats_id, LevelSettings.catacombs.level_id, diff)
		local complete_mines = check_level_difficulty(statistics_db, stats_id, LevelSettings.mines.level_id, diff)
		local complete_ground_zero = check_level_difficulty(statistics_db, stats_id, LevelSettings.ground_zero.level_id, diff)

		return {
			{
				name = "level_name_military",
				completed = complete_military
			},
			{
				name = "level_name_catacombs",
				completed = complete_catacombs
			},
			{
				name = "level_name_mines",
				completed = complete_mines
			},
			{
				name = "level_name_ground_zero",
				completed = complete_ground_zero
			}
		}
	end
}
AchievementTemplates.achievements.complete_act_two = {
	ID_XB1 = 4,
	name = "achv_complete_act_two_name",
	desc = "achv_complete_act_two_desc",
	ID_STEAM = "complete_act_two",
	ID_PS4 = "003",
	icon = "achievement_trophy_03",
	completed = function (statistics_db, stats_id)
		return LevelUnlockUtils.act_completed(statistics_db, stats_id, "act_2")
	end,
	progress = function (statistics_db, stats_id)
		local count = 0

		if check_level_list(statistics_db, stats_id, {
			LevelSettings.elven_ruins.level_id
		}) then
			count = count + 1
		end

		if check_level_list(statistics_db, stats_id, {
			LevelSettings.bell.level_id
		}) then
			count = count + 1
		end

		if check_level_list(statistics_db, stats_id, {
			LevelSettings.fort.level_id
		}) then
			count = count + 1
		end

		if check_level_list(statistics_db, stats_id, {
			LevelSettings.skaven_stronghold.level_id
		}) then
			count = count + 1
		end

		return {
			count,
			4
		}
	end,
	requirements = function (statistics_db, stats_id)
		local complete_elven_ruins = check_level_list(statistics_db, stats_id, {
			LevelSettings.elven_ruins.level_id
		})
		local complete_bell = check_level_list(statistics_db, stats_id, {
			LevelSettings.bell.level_id
		})
		local complete_fort = check_level_list(statistics_db, stats_id, {
			LevelSettings.fort.level_id
		})
		local complete_skaven_stronghold = check_level_list(statistics_db, stats_id, {
			LevelSettings.skaven_stronghold.level_id
		})

		return {
			{
				name = "level_name_elven_ruins",
				completed = complete_elven_ruins
			},
			{
				name = "level_name_bell",
				completed = complete_bell
			},
			{
				name = "level_name_forest_fort",
				completed = complete_fort
			},
			{
				name = "level_name_skaven_stronghold",
				completed = complete_skaven_stronghold
			}
		}
	end
}
AchievementTemplates.achievements.complete_act_two_veteran = {
	name = "achv_complete_act_two_veteran_name",
	icon = "icons_placeholder",
	desc = "achv_complete_act_two_veteran_desc",
	completed = function (statistics_db, stats_id)
		local count = 0
		local diff = DifficultySettings.hard.rank

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.elven_ruins.level_id, diff) then
			count = count + 1
		end

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.bell.level_id, diff) then
			count = count + 1
		end

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.fort.level_id, diff) then
			count = count + 1
		end

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.skaven_stronghold.level_id, diff) then
			count = count + 1
		end

		return count >= 4
	end,
	progress = function (statistics_db, stats_id)
		local count = 0
		local diff = DifficultySettings.hard.rank

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.elven_ruins.level_id, diff) then
			count = count + 1
		end

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.bell.level_id, diff) then
			count = count + 1
		end

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.fort.level_id, diff) then
			count = count + 1
		end

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.skaven_stronghold.level_id, diff) then
			count = count + 1
		end

		return {
			count,
			4
		}
	end,
	requirements = function (statistics_db, stats_id)
		local diff = DifficultySettings.hard.rank
		local complete_elven_ruins = check_level_difficulty(statistics_db, stats_id, LevelSettings.elven_ruins.level_id, diff)
		local complete_bell = check_level_difficulty(statistics_db, stats_id, LevelSettings.bell.level_id, diff)
		local complete_fort = check_level_difficulty(statistics_db, stats_id, LevelSettings.fort.level_id, diff)
		local complete_skaven_stronghold = check_level_difficulty(statistics_db, stats_id, LevelSettings.skaven_stronghold.level_id, diff)

		return {
			{
				name = "level_name_elven_ruins",
				completed = complete_elven_ruins
			},
			{
				name = "level_name_bell",
				completed = complete_bell
			},
			{
				name = "level_name_forest_fort",
				completed = complete_fort
			},
			{
				name = "level_name_skaven_stronghold",
				completed = complete_skaven_stronghold
			}
		}
	end
}
AchievementTemplates.achievements.complete_act_two_champion = {
	name = "achv_complete_act_two_champion_name",
	icon = "icons_placeholder",
	desc = "achv_complete_act_two_champion_desc",
	completed = function (statistics_db, stats_id)
		local count = 0
		local diff = DifficultySettings.harder.rank

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.elven_ruins.level_id, diff) then
			count = count + 1
		end

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.bell.level_id, diff) then
			count = count + 1
		end

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.fort.level_id, diff) then
			count = count + 1
		end

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.skaven_stronghold.level_id, diff) then
			count = count + 1
		end

		return count >= 4
	end,
	progress = function (statistics_db, stats_id)
		local count = 0
		local diff = DifficultySettings.harder.rank

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.elven_ruins.level_id, diff) then
			count = count + 1
		end

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.bell.level_id, diff) then
			count = count + 1
		end

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.fort.level_id, diff) then
			count = count + 1
		end

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.skaven_stronghold.level_id, diff) then
			count = count + 1
		end

		return {
			count,
			4
		}
	end,
	requirements = function (statistics_db, stats_id)
		local diff = DifficultySettings.harder.rank
		local complete_elven_ruins = check_level_difficulty(statistics_db, stats_id, LevelSettings.elven_ruins.level_id, diff)
		local complete_bell = check_level_difficulty(statistics_db, stats_id, LevelSettings.bell.level_id, diff)
		local complete_fort = check_level_difficulty(statistics_db, stats_id, LevelSettings.fort.level_id, diff)
		local complete_skaven_stronghold = check_level_difficulty(statistics_db, stats_id, LevelSettings.skaven_stronghold.level_id, diff)

		return {
			{
				name = "level_name_elven_ruins",
				completed = complete_elven_ruins
			},
			{
				name = "level_name_bell",
				completed = complete_bell
			},
			{
				name = "level_name_forest_fort",
				completed = complete_fort
			},
			{
				name = "level_name_skaven_stronghold",
				completed = complete_skaven_stronghold
			}
		}
	end
}
AchievementTemplates.achievements.complete_act_two_legend = {
	name = "achv_complete_act_two_legend_name",
	icon = "icons_placeholder",
	desc = "achv_complete_act_two_legend_desc",
	completed = function (statistics_db, stats_id)
		local count = 0
		local diff = DifficultySettings.hardest.rank

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.elven_ruins.level_id, diff) then
			count = count + 1
		end

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.bell.level_id, diff) then
			count = count + 1
		end

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.fort.level_id, diff) then
			count = count + 1
		end

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.skaven_stronghold.level_id, diff) then
			count = count + 1
		end

		return count >= 4
	end,
	progress = function (statistics_db, stats_id)
		local count = 0
		local diff = DifficultySettings.hardest.rank

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.elven_ruins.level_id, diff) then
			count = count + 1
		end

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.bell.level_id, diff) then
			count = count + 1
		end

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.fort.level_id, diff) then
			count = count + 1
		end

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.skaven_stronghold.level_id, diff) then
			count = count + 1
		end

		return {
			count,
			4
		}
	end,
	requirements = function (statistics_db, stats_id)
		local diff = DifficultySettings.hardest.rank
		local complete_elven_ruins = check_level_difficulty(statistics_db, stats_id, LevelSettings.elven_ruins.level_id, diff)
		local complete_bell = check_level_difficulty(statistics_db, stats_id, LevelSettings.bell.level_id, diff)
		local complete_fort = check_level_difficulty(statistics_db, stats_id, LevelSettings.fort.level_id, diff)
		local complete_skaven_stronghold = check_level_difficulty(statistics_db, stats_id, LevelSettings.skaven_stronghold.level_id, diff)

		return {
			{
				name = "level_name_elven_ruins",
				completed = complete_elven_ruins
			},
			{
				name = "level_name_bell",
				completed = complete_bell
			},
			{
				name = "level_name_forest_fort",
				completed = complete_fort
			},
			{
				name = "level_name_skaven_stronghold",
				completed = complete_skaven_stronghold
			}
		}
	end
}
AchievementTemplates.achievements.complete_act_three = {
	ID_XB1 = 5,
	name = "achv_complete_act_three_name",
	desc = "achv_complete_act_three_desc",
	ID_STEAM = "complete_act_three",
	ID_PS4 = "004",
	icon = "achievement_trophy_04",
	completed = function (statistics_db, stats_id)
		return LevelUnlockUtils.act_completed(statistics_db, stats_id, "act_3")
	end,
	progress = function (statistics_db, stats_id)
		local count = 0

		if check_level_list(statistics_db, stats_id, {
			LevelSettings.farmlands.level_id
		}) then
			count = count + 1
		end

		if check_level_list(statistics_db, stats_id, {
			LevelSettings.ussingen.level_id
		}) then
			count = count + 1
		end

		if check_level_list(statistics_db, stats_id, {
			LevelSettings.nurgle.level_id
		}) then
			count = count + 1
		end

		if check_level_list(statistics_db, stats_id, {
			LevelSettings.warcamp.level_id
		}) then
			count = count + 1
		end

		return {
			count,
			4
		}
	end,
	requirements = function (statistics_db, stats_id)
		local complete_farmlands = check_level_list(statistics_db, stats_id, {
			LevelSettings.farmlands.level_id
		})
		local complete_ussingen = check_level_list(statistics_db, stats_id, {
			LevelSettings.ussingen.level_id
		})
		local complete_nurgle = check_level_list(statistics_db, stats_id, {
			LevelSettings.nurgle.level_id
		})
		local complete_warcamp = check_level_list(statistics_db, stats_id, {
			LevelSettings.warcamp.level_id
		})

		return {
			{
				name = "level_name_farmlands",
				completed = complete_farmlands
			},
			{
				name = "level_name_ussingen",
				completed = complete_ussingen
			},
			{
				name = "level_name_nurgle",
				completed = complete_nurgle
			},
			{
				name = "level_name_warcamp",
				completed = complete_warcamp
			}
		}
	end
}
AchievementTemplates.achievements.complete_act_three_veteran = {
	name = "achv_complete_act_three_veteran_name",
	icon = "icons_placeholder",
	desc = "achv_complete_act_three_veteran_desc",
	completed = function (statistics_db, stats_id)
		local count = 0
		local diff = DifficultySettings.hard.rank

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.farmlands.level_id, diff) then
			count = count + 1
		end

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.ussingen.level_id, diff) then
			count = count + 1
		end

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.nurgle.level_id, diff) then
			count = count + 1
		end

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.warcamp.level_id, diff) then
			count = count + 1
		end

		return count >= 4
	end,
	progress = function (statistics_db, stats_id)
		local count = 0
		local diff = DifficultySettings.hard.rank

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.farmlands.level_id, diff) then
			count = count + 1
		end

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.ussingen.level_id, diff) then
			count = count + 1
		end

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.nurgle.level_id, diff) then
			count = count + 1
		end

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.warcamp.level_id, diff) then
			count = count + 1
		end

		return {
			count,
			4
		}
	end,
	requirements = function (statistics_db, stats_id)
		local diff = DifficultySettings.hard.rank
		local complete_farmlands = check_level_difficulty(statistics_db, stats_id, LevelSettings.farmlands.level_id, diff)
		local complete_ussingen = check_level_difficulty(statistics_db, stats_id, LevelSettings.ussingen.level_id, diff)
		local complete_nurgle = check_level_difficulty(statistics_db, stats_id, LevelSettings.nurgle.level_id, diff)
		local complete_warcamp = check_level_difficulty(statistics_db, stats_id, LevelSettings.warcamp.level_id, diff)

		return {
			{
				name = "level_name_farmlands",
				completed = complete_farmlands
			},
			{
				name = "level_name_ussingen",
				completed = complete_ussingen
			},
			{
				name = "level_name_nurgle",
				completed = complete_nurgle
			},
			{
				name = "level_name_warcamp",
				completed = complete_warcamp
			}
		}
	end
}
AchievementTemplates.achievements.complete_act_three_champion = {
	name = "achv_complete_act_three_champion_name",
	icon = "icons_placeholder",
	desc = "achv_complete_act_three_champion_desc",
	completed = function (statistics_db, stats_id)
		local count = 0
		local diff = DifficultySettings.harder.rank

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.farmlands.level_id, diff) then
			count = count + 1
		end

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.ussingen.level_id, diff) then
			count = count + 1
		end

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.nurgle.level_id, diff) then
			count = count + 1
		end

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.warcamp.level_id, diff) then
			count = count + 1
		end

		return count >= 4
	end,
	progress = function (statistics_db, stats_id)
		local count = 0
		local diff = DifficultySettings.harder.rank

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.farmlands.level_id, diff) then
			count = count + 1
		end

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.ussingen.level_id, diff) then
			count = count + 1
		end

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.nurgle.level_id, diff) then
			count = count + 1
		end

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.warcamp.level_id, diff) then
			count = count + 1
		end

		return {
			count,
			4
		}
	end,
	requirements = function (statistics_db, stats_id)
		local diff = DifficultySettings.harder.rank
		local complete_farmlands = check_level_difficulty(statistics_db, stats_id, LevelSettings.farmlands.level_id, diff)
		local complete_ussingen = check_level_difficulty(statistics_db, stats_id, LevelSettings.ussingen.level_id, diff)
		local complete_nurgle = check_level_difficulty(statistics_db, stats_id, LevelSettings.nurgle.level_id, diff)
		local complete_warcamp = check_level_difficulty(statistics_db, stats_id, LevelSettings.warcamp.level_id, diff)

		return {
			{
				name = "level_name_farmlands",
				completed = complete_farmlands
			},
			{
				name = "level_name_ussingen",
				completed = complete_ussingen
			},
			{
				name = "level_name_nurgle",
				completed = complete_nurgle
			},
			{
				name = "level_name_warcamp",
				completed = complete_warcamp
			}
		}
	end
}
AchievementTemplates.achievements.complete_act_three_legend = {
	name = "achv_complete_act_three_legend_name",
	icon = "icons_placeholder",
	desc = "achv_complete_act_three_legend_desc",
	completed = function (statistics_db, stats_id)
		local count = 0
		local diff = DifficultySettings.hardest.rank

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.farmlands.level_id, diff) then
			count = count + 1
		end

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.ussingen.level_id, diff) then
			count = count + 1
		end

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.nurgle.level_id, diff) then
			count = count + 1
		end

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.warcamp.level_id, diff) then
			count = count + 1
		end

		return count >= 4
	end,
	progress = function (statistics_db, stats_id)
		local count = 0
		local diff = DifficultySettings.hardest.rank

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.farmlands.level_id, diff) then
			count = count + 1
		end

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.ussingen.level_id, diff) then
			count = count + 1
		end

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.nurgle.level_id, diff) then
			count = count + 1
		end

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.warcamp.level_id, diff) then
			count = count + 1
		end

		return {
			count,
			4
		}
	end,
	requirements = function (statistics_db, stats_id)
		local diff = DifficultySettings.hardest.rank
		local complete_farmlands = check_level_difficulty(statistics_db, stats_id, LevelSettings.farmlands.level_id, diff)
		local complete_ussingen = check_level_difficulty(statistics_db, stats_id, LevelSettings.ussingen.level_id, diff)
		local complete_nurgle = check_level_difficulty(statistics_db, stats_id, LevelSettings.nurgle.level_id, diff)
		local complete_warcamp = check_level_difficulty(statistics_db, stats_id, LevelSettings.warcamp.level_id, diff)

		return {
			{
				name = "level_name_farmlands",
				completed = complete_farmlands
			},
			{
				name = "level_name_ussingen",
				completed = complete_ussingen
			},
			{
				name = "level_name_nurgle",
				completed = complete_nurgle
			},
			{
				name = "level_name_warcamp",
				completed = complete_warcamp
			}
		}
	end
}
AchievementTemplates.achievements.complete_skittergate_recruit = {
	ID_XB1 = 6,
	name = "achv_complete_skittergate_normal_name",
	ID_PS4 = "005",
	ID_STEAM = "complete_skittergate_recruit",
	icon = "achievement_trophy_05",
	desc = "achv_complete_skittergate_normal_desc",
	completed = function (statistics_db, stats_id)
		local diff = DifficultySettings.normal.rank

		return check_level_difficulty(statistics_db, stats_id, LevelSettings.skittergate.level_id, diff)
	end
}
AchievementTemplates.achievements.complete_skittergate_veteran = {
	ID_XB1 = 7,
	name = "achv_complete_skittergate_hard_name",
	ID_PS4 = "006",
	ID_STEAM = "complete_skittergate_veteran",
	icon = "achievement_trophy_06",
	desc = "achv_complete_skittergate_hard_desc",
	completed = function (statistics_db, stats_id)
		local diff = DifficultySettings.hard.rank

		return check_level_difficulty(statistics_db, stats_id, LevelSettings.skittergate.level_id, diff)
	end
}
AchievementTemplates.achievements.complete_skittergate_champion = {
	ID_XB1 = 8,
	name = "achv_complete_skittergate_nightmare_name",
	ID_PS4 = "007",
	ID_STEAM = "complete_skittergate_champion",
	icon = "achievement_trophy_07",
	desc = "achv_complete_skittergate_nightmare_desc",
	completed = function (statistics_db, stats_id)
		local diff = DifficultySettings.harder.rank

		return check_level_difficulty(statistics_db, stats_id, LevelSettings.skittergate.level_id, diff)
	end
}
AchievementTemplates.achievements.complete_skittergate_legend = {
	ID_XB1 = 9,
	name = "achv_complete_skittergate_cataclysm_name",
	ID_PS4 = "008",
	ID_STEAM = "complete_skittergate_legend",
	icon = "achievement_trophy_08",
	desc = "achv_complete_skittergate_cataclysm_desc",
	completed = function (statistics_db, stats_id)
		local diff = DifficultySettings.hardest.rank

		return check_level_difficulty(statistics_db, stats_id, LevelSettings.skittergate.level_id, diff)
	end
}
AchievementTemplates.achievements.bogenhafen_complete_recruit = {
	required_dlc = "bogenhafen",
	name = "achv_bogenhafen_complete_recruit_name",
	icon = "icons_placeholder",
	desc = "achv_bogenhafen_complete_recruit_desc",
	completed = function (statistics_db, stats_id)
		local count = 0
		local diff = DifficultySettings.normal.rank

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.dlc_bogenhafen_slum.level_id, diff) then
			count = count + 1
		end

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.dlc_bogenhafen_city.level_id, diff) then
			count = count + 1
		end

		return count >= 2
	end,
	progress = function (statistics_db, stats_id)
		local count = 0
		local diff = DifficultySettings.normal.rank

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.dlc_bogenhafen_slum.level_id, diff) then
			count = count + 1
		end

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.dlc_bogenhafen_city.level_id, diff) then
			count = count + 1
		end

		return {
			count,
			2
		}
	end,
	requirements = function (statistics_db, stats_id)
		local diff = DifficultySettings.normal.rank
		local complete_slum = check_level_difficulty(statistics_db, stats_id, LevelSettings.dlc_bogenhafen_slum.level_id, diff)
		local complete_city = check_level_difficulty(statistics_db, stats_id, LevelSettings.dlc_bogenhafen_city.level_id, diff)

		return {
			{
				name = "level_name_slum",
				completed = complete_slum
			},
			{
				name = "level_name_city",
				completed = complete_city
			}
		}
	end
}
AchievementTemplates.achievements.bogenhafen_complete_veteran = {
	required_dlc = "bogenhafen",
	name = "achv_bogenhafen_complete_veteran_name",
	icon = "icons_placeholder",
	desc = "achv_bogenhafen_complete_veteran_desc",
	completed = function (statistics_db, stats_id)
		local count = 0
		local diff = DifficultySettings.hard.rank

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.dlc_bogenhafen_slum.level_id, diff) then
			count = count + 1
		end

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.dlc_bogenhafen_city.level_id, diff) then
			count = count + 1
		end

		return count >= 2
	end,
	progress = function (statistics_db, stats_id)
		local count = 0
		local diff = DifficultySettings.hard.rank

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.dlc_bogenhafen_slum.level_id, diff) then
			count = count + 1
		end

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.dlc_bogenhafen_city.level_id, diff) then
			count = count + 1
		end

		return {
			count,
			2
		}
	end,
	requirements = function (statistics_db, stats_id)
		local diff = DifficultySettings.hard.rank
		local complete_slum = check_level_difficulty(statistics_db, stats_id, LevelSettings.dlc_bogenhafen_slum.level_id, diff)
		local complete_city = check_level_difficulty(statistics_db, stats_id, LevelSettings.dlc_bogenhafen_city.level_id, diff)

		return {
			{
				name = "level_name_slum",
				completed = complete_slum
			},
			{
				name = "level_name_city",
				completed = complete_city
			}
		}
	end
}
AchievementTemplates.achievements.bogenhafen_complete_champion = {
	required_dlc = "bogenhafen",
	name = "achv_bogenhafen_complete_champion_name",
	icon = "icons_placeholder",
	desc = "achv_bogenhafen_complete_champion_desc",
	completed = function (statistics_db, stats_id)
		local count = 0
		local diff = DifficultySettings.harder.rank

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.dlc_bogenhafen_slum.level_id, diff) then
			count = count + 1
		end

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.dlc_bogenhafen_city.level_id, diff) then
			count = count + 1
		end

		return count >= 2
	end,
	progress = function (statistics_db, stats_id)
		local count = 0
		local diff = DifficultySettings.harder.rank

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.dlc_bogenhafen_slum.level_id, diff) then
			count = count + 1
		end

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.dlc_bogenhafen_city.level_id, diff) then
			count = count + 1
		end

		return {
			count,
			2
		}
	end,
	requirements = function (statistics_db, stats_id)
		local diff = DifficultySettings.harder.rank
		local complete_slum = check_level_difficulty(statistics_db, stats_id, LevelSettings.dlc_bogenhafen_slum.level_id, diff)
		local complete_city = check_level_difficulty(statistics_db, stats_id, LevelSettings.dlc_bogenhafen_city.level_id, diff)

		return {
			{
				name = "level_name_slum",
				completed = complete_slum
			},
			{
				name = "level_name_city",
				completed = complete_city
			}
		}
	end
}
AchievementTemplates.achievements.bogenhafen_complete_legend = {
	required_dlc = "bogenhafen",
	name = "achv_bogenhafen_complete_legend_name",
	icon = "icons_placeholder",
	desc = "achv_bogenhafen_complete_legend_desc",
	completed = function (statistics_db, stats_id)
		local count = 0
		local diff = DifficultySettings.hardest.rank

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.dlc_bogenhafen_slum.level_id, diff) then
			count = count + 1
		end

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.dlc_bogenhafen_city.level_id, diff) then
			count = count + 1
		end

		return count >= 2
	end,
	progress = function (statistics_db, stats_id)
		local count = 0
		local diff = DifficultySettings.hardest.rank

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.dlc_bogenhafen_slum.level_id, diff) then
			count = count + 1
		end

		if check_level_difficulty(statistics_db, stats_id, LevelSettings.dlc_bogenhafen_city.level_id, diff) then
			count = count + 1
		end

		return {
			count,
			2
		}
	end,
	requirements = function (statistics_db, stats_id)
		local diff = DifficultySettings.hardest.rank
		local complete_slum = check_level_difficulty(statistics_db, stats_id, LevelSettings.dlc_bogenhafen_slum.level_id, diff)
		local complete_city = check_level_difficulty(statistics_db, stats_id, LevelSettings.dlc_bogenhafen_city.level_id, diff)

		return {
			{
				name = "level_name_slum",
				completed = complete_slum
			},
			{
				name = "level_name_city",
				completed = complete_city
			}
		}
	end
}
AchievementTemplates.achievements.bogenhafen_city_no_braziers_lit = {
	ID_XB1 = 56,
	name = "achv_bogenhafen_city_no_braziers_lit_name",
	required_dlc = "bogenhafen",
	ID_PS4 = "055",
	icon = "achievement_trophy_bogenhafen_city_no_braziers_lit",
	display_completion_ui = true,
	desc = "achv_bogenhafen_city_no_braziers_lit_desc",
	completed = function (statistics_db, stats_id, template_data)
		return statistics_db:get_persistent_stat(stats_id, "bogenhafen_city_no_braziers_lit") > 0
	end
}
AchievementTemplates.achievements.bogenhafen_city_torch_not_picked_up = {
	required_dlc = "bogenhafen",
	name = "achv_bogenhafen_city_torch_not_picked_up_name",
	display_completion_ui = true,
	icon = "achievement_trophy_bogenhafen_city_torch_not_picked_up",
	desc = "achv_bogenhafen_city_torch_not_picked_up_desc",
	completed = function (statistics_db, stats_id)
		return statistics_db:get_persistent_stat(stats_id, "bogenhafen_city_torch_not_picked_up") > 0
	end
}
AchievementTemplates.achievements.bogenhafen_city_fast_switches = {
	ID_XB1 = 57,
	name = "achv_bogenhafen_city_fast_switches_name",
	required_dlc = "bogenhafen",
	ID_PS4 = "056",
	icon = "achievement_trophy_bogenhafen_city_fast_switches",
	display_completion_ui = true,
	desc = "achv_bogenhafen_city_fast_switches_desc",
	completed = function (statistics_db, stats_id)
		return statistics_db:get_persistent_stat(stats_id, "bogenhafen_city_fast_switches") > 0
	end
}
AchievementTemplates.achievements.bogenhafen_city_all_wine_collected = {
	ID_XB1 = 58,
	name = "achv_bogenhafen_city_all_wine_collected_name",
	required_dlc = "bogenhafen",
	ID_PS4 = "057",
	icon = "achievement_trophy_bogenhafen_city_all_wine_collected",
	display_completion_ui = true,
	desc = "achv_bogenhafen_city_all_wine_collected_desc",
	completed = function (statistics_db, stats_id)
		return statistics_db:get_persistent_stat(stats_id, "bogenhafen_city_all_wine_collected") > 0
	end
}
AchievementTemplates.achievements.bogenhafen_city_jumping_puzzle = {
	required_dlc = "bogenhafen",
	name = "achv_bogenhafen_city_jumping_puzzle_name",
	display_completion_ui = true,
	icon = "achievement_trophy_bogenhafen_city_jumping_puzzle",
	desc = "achv_bogenhafen_city_jumping_puzzle_desc",
	completed = function (statistics_db, stats_id)
		return statistics_db:get_persistent_stat(stats_id, "bogenhafen_city_jumping_puzzle") > 0
	end
}
AchievementTemplates.achievements.bogenhafen_slum_no_ratling_damage = {
	ID_XB1 = 59,
	name = "achv_bogenhafen_slum_no_ratling_damage_name",
	required_dlc = "bogenhafen",
	ID_PS4 = "058",
	icon = "achievement_trophy_bogenhafen_slum_no_ratling_damage",
	display_completion_ui = true,
	desc = "achv_bogenhafen_slum_no_ratling_damage_desc",
	completed = function (statistics_db, stats_id)
		return statistics_db:get_persistent_stat(stats_id, "bogenhafen_slum_no_ratling_damage") > 0
	end
}
AchievementTemplates.achievements.bogenhafen_slum_no_windows_broken = {
	required_dlc = "bogenhafen",
	name = "achv_bogenhafen_slum_no_windows_broken_name",
	display_completion_ui = true,
	icon = "achievement_trophy_bogenhafen_slum_no_windows_broken",
	desc = "achv_bogenhafen_slum_no_windows_broken_desc",
	completed = function (statistics_db, stats_id)
		return statistics_db:get_persistent_stat(stats_id, "bogenhafen_slum_no_windows_broken") > 0
	end
}
AchievementTemplates.achievements.bogenhafen_slum_find_hidden_stash = {
	ID_XB1 = 60,
	name = "achv_bogenhafen_slum_find_hidden_stash_name",
	required_dlc = "bogenhafen",
	ID_PS4 = "059",
	icon = "achievement_trophy_bogenhafen_slum_find_hidden_stash",
	display_completion_ui = true,
	desc = "achv_bogenhafen_slum_find_hidden_stash_desc",
	completed = function (statistics_db, stats_id)
		return statistics_db:get_persistent_stat(stats_id, "bogenhafen_slum_find_hidden_stash") > 0
	end
}
AchievementTemplates.achievements.bogenhafen_slum_jumping_puzzle = {
	required_dlc = "bogenhafen",
	name = "achv_bogenhafen_slum_jumping_puzzle_name",
	display_completion_ui = true,
	icon = "achievement_trophy_bogenhafen_slum_jumping_puzzle",
	desc = "achv_bogenhafen_slum_jumping_puzzle_desc",
	completed = function (statistics_db, stats_id)
		return statistics_db:get_persistent_stat(stats_id, "bogenhafen_slum_jumping_puzzle") > 0
	end
}
AchievementTemplates.achievements.bogenhafen_slum_event_speedrun = {
	ID_XB1 = 61,
	name = "achv_bogenhafen_slum_event_speedrun_name",
	required_dlc = "bogenhafen",
	ID_PS4 = "060",
	icon = "achievement_trophy_bogenhafen_slum_event_speedrun",
	display_completion_ui = true,
	desc = "achv_bogenhafen_slum_event_speedrun_desc",
	completed = function (statistics_db, stats_id)
		return statistics_db:get_persistent_stat(stats_id, "bogenhafen_slum_event_speedrun") > 0
	end
}
AchievementTemplates.achievements.bogenhafen_collect_all_cosmetics = {
	required_dlc = "bogenhafen",
	name = "achv_bogenhafen_collect_all_cosmetics_name",
	icon = "achievement_trophy_bogenhafen_collect_all_cosmetics",
	desc = "achv_bogenhafen_collect_all_cosmetics_desc",
	completed = function (statistics_db, stats_id)
		return statistics_db:get_persistent_stat(stats_id, "collected_bogenhafen_cosmetics") >= AVAILABLE_BOGENHAFEN_COSMETICS
	end,
	progress = function (statistics_db, stats_id)
		local count = statistics_db:get_persistent_stat(stats_id, "collected_bogenhafen_cosmetics")

		return {
			count,
			AVAILABLE_BOGENHAFEN_COSMETICS
		}
	end
}

local function remove_prologue(levels)
	local prologue_index

	for i, level in ipairs(levels) do
		if level == "prologue" then
			prologue_index = i
		end
	end

	local ret = levels

	if prologue_index then
		table.remove(ret, prologue_index)
	end

	return ret
end

local main_game_levels = remove_prologue(MainGameLevels)
local completed_all_levels = {}

AchievementTemplates.achievements.completed_all_levels = {
	name = "achv_complete_all_levels_name",
	desc = "achv_complete_all_levels_desc",
	completed = function (statistics_db, stats_id)
		return check_level_list(statistics_db, stats_id, main_game_levels)
	end,
	progress = function (statistics_db, stats_id)
		local count = 0

		for _, level in ipairs(main_game_levels) do
			if check_level_list(statistics_db, stats_id, {
				level
			}) then
				count = count + 1
			end
		end

		return {
			count,
			#main_game_levels
		}
	end,
	requirements = function (statistics_db, stats_id)
		table.clear(completed_all_levels)

		for _, level in ipairs(main_game_levels) do
			local completed = check_level_list(statistics_db, stats_id, {
				level
			})

			table.insert(completed_all_levels, {
				name = LevelSettings[level].display_name,
				completed = completed
			})
		end

		return completed_all_levels
	end
}
AchievementTemplates.achievements.achievement_bardin_level_1 = {
	name = "achv_achievement_bardin_level_1_name",
	icon = "achievement_trophy_bardin_level_1",
	desc = "achv_achievement_bardin_level_1_desc",
	completed = function (statistics_db, stats_id)
		return hero_level("dwarf_ranger") >= 17
	end,
	progress = function (statistics_db, stats_id)
		local level = hero_level("dwarf_ranger")

		if level > 17 then
			level = 17
		end

		return {
			level,
			17
		}
	end
}
AchievementTemplates.achievements.achievement_bardin_level_2 = {
	name = "achv_achievement_bardin_level_2_name",
	icon = "achievement_trophy_bardin_level_2",
	desc = "achv_achievement_bardin_level_2_desc",
	completed = function (statistics_db, stats_id)
		return hero_level("dwarf_ranger") >= 22
	end,
	progress = function (statistics_db, stats_id)
		local level = hero_level("dwarf_ranger")

		if level > 22 then
			level = 22
		end

		return {
			level,
			22
		}
	end
}
AchievementTemplates.achievements.achievement_bardin_level_3 = {
	name = "achv_achievement_bardin_level_3_name",
	icon = "achievement_trophy_bardin_level_3",
	desc = "achv_achievement_bardin_level_3_desc",
	completed = function (statistics_db, stats_id)
		return hero_level("dwarf_ranger") >= 27
	end,
	progress = function (statistics_db, stats_id)
		local level = hero_level("dwarf_ranger")

		if level > 27 then
			level = 27
		end

		return {
			level,
			27
		}
	end
}
AchievementTemplates.achievements.achievement_markus_level_1 = {
	name = "achv_achievement_markus_level_1_name",
	icon = "achievement_trophy_markus_level_1",
	desc = "achv_achievement_markus_level_1_desc",
	completed = function (statistics_db, stats_id)
		return hero_level("empire_soldier") >= 17
	end,
	progress = function (statistics_db, stats_id)
		local level = hero_level("empire_soldier")

		if level > 17 then
			level = 17
		end

		return {
			level,
			17
		}
	end
}
AchievementTemplates.achievements.achievement_markus_level_2 = {
	name = "achv_achievement_markus_level_2_name",
	icon = "achievement_trophy_markus_level_2",
	desc = "achv_achievement_markus_level_2_desc",
	completed = function (statistics_db, stats_id)
		return hero_level("empire_soldier") >= 22
	end,
	progress = function (statistics_db, stats_id)
		local level = hero_level("empire_soldier")

		if level > 22 then
			level = 22
		end

		return {
			level,
			22
		}
	end
}
AchievementTemplates.achievements.achievement_markus_level_3 = {
	name = "achv_achievement_markus_level_3_name",
	icon = "achievement_trophy_markus_level_3",
	desc = "achv_achievement_markus_level_3_desc",
	completed = function (statistics_db, stats_id)
		return hero_level("empire_soldier") >= 27
	end,
	progress = function (statistics_db, stats_id)
		local level = hero_level("empire_soldier")

		if level > 27 then
			level = 27
		end

		return {
			level,
			27
		}
	end
}
AchievementTemplates.achievements.achievement_kerillian_level_1 = {
	name = "achv_achievement_kerillian_level_1_name",
	icon = "achievement_trophy_kerillian_level_1",
	desc = "achv_achievement_kerillian_level_1_desc",
	completed = function (statistics_db, stats_id)
		return hero_level("wood_elf") >= 17
	end,
	progress = function (statistics_db, stats_id)
		local level = hero_level("wood_elf")

		if level > 17 then
			level = 17
		end

		return {
			level,
			17
		}
	end
}
AchievementTemplates.achievements.achievement_kerillian_level_2 = {
	name = "achv_achievement_kerillian_level_2_name",
	icon = "achievement_trophy_kerillian_level_2",
	desc = "achv_achievement_kerillian_level_2_desc",
	completed = function (statistics_db, stats_id)
		return hero_level("wood_elf") >= 22
	end,
	progress = function (statistics_db, stats_id)
		local level = hero_level("wood_elf")

		if level > 22 then
			level = 22
		end

		return {
			level,
			22
		}
	end
}
AchievementTemplates.achievements.achievement_kerillian_level_3 = {
	name = "achv_achievement_kerillian_level_3_name",
	icon = "achievement_trophy_kerillian_level_3",
	desc = "achv_achievement_kerillian_level_3_desc",
	completed = function (statistics_db, stats_id)
		return hero_level("wood_elf") >= 27
	end,
	progress = function (statistics_db, stats_id)
		local level = hero_level("wood_elf")

		if level > 27 then
			level = 27
		end

		return {
			level,
			27
		}
	end
}
AchievementTemplates.achievements.achievement_sienna_level_1 = {
	name = "achv_achievement_sienna_level_1_name",
	icon = "achievement_trophy_sienna_level_1",
	desc = "achv_achievement_sienna_level_1_desc",
	completed = function (statistics_db, stats_id)
		return hero_level("bright_wizard") >= 17
	end,
	progress = function (statistics_db, stats_id)
		local level = hero_level("bright_wizard")

		if level > 17 then
			level = 17
		end

		return {
			level,
			17
		}
	end
}
AchievementTemplates.achievements.achievement_sienna_level_2 = {
	name = "achv_achievement_sienna_level_2_name",
	icon = "achievement_trophy_sienna_level_2",
	desc = "achv_achievement_sienna_level_2_desc",
	completed = function (statistics_db, stats_id)
		return hero_level("bright_wizard") >= 22
	end,
	progress = function (statistics_db, stats_id)
		local level = hero_level("bright_wizard")

		if level > 22 then
			level = 22
		end

		return {
			level,
			22
		}
	end
}
AchievementTemplates.achievements.achievement_sienna_level_3 = {
	name = "achv_achievement_sienna_level_3_name",
	icon = "achievement_trophy_sienna_level_3",
	desc = "achv_achievement_sienna_level_3_desc",
	completed = function (statistics_db, stats_id)
		return hero_level("bright_wizard") >= 27
	end,
	progress = function (statistics_db, stats_id)
		local level = hero_level("bright_wizard")

		if level > 27 then
			level = 27
		end

		return {
			level,
			27
		}
	end
}
AchievementTemplates.achievements.achievement_victor_level_1 = {
	name = "achv_achievement_victor_level_1_name",
	icon = "achievement_trophy_victor_level_1",
	desc = "achv_achievement_victor_level_1_desc",
	completed = function (statistics_db, stats_id)
		return hero_level("witch_hunter") >= 17
	end,
	progress = function (statistics_db, stats_id)
		local level = hero_level("witch_hunter")

		if level > 17 then
			level = 17
		end

		return {
			level,
			17
		}
	end
}
AchievementTemplates.achievements.achievement_victor_level_2 = {
	name = "achv_achievement_victor_level_2_name",
	icon = "achievement_trophy_victor_level_2",
	desc = "achv_achievement_victor_level_2_desc",
	completed = function (statistics_db, stats_id)
		return hero_level("witch_hunter") >= 22
	end,
	progress = function (statistics_db, stats_id)
		local level = hero_level("witch_hunter")

		if level > 22 then
			level = 22
		end

		return {
			level,
			22
		}
	end
}
AchievementTemplates.achievements.achievement_victor_level_3 = {
	name = "achv_achievement_victor_level_3_name",
	icon = "achievement_trophy_victor_level_3",
	desc = "achv_achievement_victor_level_3_desc",
	completed = function (statistics_db, stats_id)
		return hero_level("witch_hunter") >= 27
	end,
	progress = function (statistics_db, stats_id)
		local level = hero_level("witch_hunter")

		if level > 27 then
			level = 27
		end

		return {
			level,
			27
		}
	end
}
AchievementTemplates.achievements.level_thirty_wood_elf = {
	ID_XB1 = 10,
	name = "achv_level_thirty_wood_elf_name",
	ID_PS4 = "009",
	icon = "achievement_trophy_09",
	ID_STEAM = "level_thirty_wood_elf",
	desc = "achv_level_thirty_wood_elf_desc",
	completed = function (statistics_db, stats_id)
		return hero_level("wood_elf") >= 30
	end,
	progress = function (statistics_db, stats_id)
		local level = hero_level("wood_elf")

		if level > 30 then
			level = 30
		end

		return {
			level,
			30
		}
	end
}
AchievementTemplates.achievements.level_thirty_witch_hunter = {
	ID_XB1 = 11,
	name = "achv_level_thirty_witch_hunter_name",
	ID_PS4 = "010",
	icon = "achievement_trophy_10",
	ID_STEAM = "level_thirty_witch_hunter",
	desc = "achv_level_thirty_witch_hunter_desc",
	completed = function (statistics_db, stats_id)
		return hero_level("witch_hunter") >= 30
	end,
	progress = function (statistics_db, stats_id)
		local level = hero_level("witch_hunter")

		if level > 30 then
			level = 30
		end

		return {
			level,
			30
		}
	end
}
AchievementTemplates.achievements.level_thirty_empire_soldier = {
	ID_XB1 = 12,
	name = "achv_level_thirty_empire_soldier_name",
	ID_PS4 = "011",
	icon = "achievement_trophy_11",
	ID_STEAM = "level_thirty_empire_soldier",
	desc = "achv_level_thirty_empire_soldier_desc",
	completed = function (statistics_db, stats_id)
		return hero_level("empire_soldier") >= 30
	end,
	progress = function (statistics_db, stats_id)
		local level = hero_level("empire_soldier")

		if level > 30 then
			level = 30
		end

		return {
			level,
			30
		}
	end
}
AchievementTemplates.achievements.level_thirty_bright_wizard = {
	ID_XB1 = 13,
	name = "achv_level_thirty_bright_wizard_name",
	ID_PS4 = "012",
	icon = "achievement_trophy_12",
	ID_STEAM = "level_thirty_bright_wizard",
	desc = "achv_level_thirty_bright_wizard_desc",
	completed = function (statistics_db, stats_id)
		return hero_level("bright_wizard") >= 30
	end,
	progress = function (statistics_db, stats_id)
		local level = hero_level("bright_wizard")

		if level > 30 then
			level = 30
		end

		return {
			level,
			30
		}
	end
}
AchievementTemplates.achievements.level_thirty_dwarf_ranger = {
	ID_XB1 = 14,
	name = "achv_level_thirty_dwarf_ranger_name",
	ID_PS4 = "013",
	icon = "achievement_trophy_13",
	ID_STEAM = "level_thirty_dwarf_ranger",
	desc = "achv_level_thirty_dwarf_ranger_desc",
	completed = function (statistics_db, stats_id)
		return hero_level("dwarf_ranger") >= 30
	end,
	progress = function (statistics_db, stats_id)
		local level = hero_level("dwarf_ranger")

		if level > 30 then
			level = 30
		end

		return {
			level,
			30
		}
	end
}
AchievementTemplates.achievements.level_thirty_all = {
	ID_XB1 = 15,
	name = "achv_level_thirty_all_name",
	desc = "achv_level_thirty_all_desc",
	ID_STEAM = "level_thirty_all",
	ID_PS4 = "014",
	icon = "achievement_trophy_14",
	completed = function (statistics_db, stats_id)
		return hero_level("wood_elf") >= 30 and hero_level("witch_hunter") >= 30 and hero_level("empire_soldier") >= 30 and hero_level("bright_wizard") >= 30 and hero_level("dwarf_ranger") >= 30
	end,
	progress = function (statistics_db, stats_id)
		local count = 0

		if hero_level("wood_elf") >= 30 then
			count = count + 1
		end

		if hero_level("witch_hunter") >= 30 then
			count = count + 1
		end

		if hero_level("empire_soldier") >= 30 then
			count = count + 1
		end

		if hero_level("bright_wizard") >= 30 then
			count = count + 1
		end

		if hero_level("dwarf_ranger") >= 30 then
			count = count + 1
		end

		return {
			count,
			5
		}
	end,
	requirements = function (statistics_db, stats_id)
		local wood_elf = hero_level("wood_elf")
		local witch_hunter = hero_level("witch_hunter")
		local empire_soldier = hero_level("empire_soldier")
		local bright_wizard = hero_level("bright_wizard")
		local dwarf_ranger = hero_level("dwarf_ranger")

		return {
			{
				name = "wood_elf_short",
				completed = wood_elf >= 30
			},
			{
				name = "witch_hunter_short",
				completed = witch_hunter >= 30
			},
			{
				name = "empire_soldier_short",
				completed = empire_soldier >= 30
			},
			{
				name = "bright_wizard_short",
				completed = bright_wizard >= 30
			},
			{
				name = "dwarf_ranger_short",
				completed = dwarf_ranger >= 30
			}
		}
	end
}
AchievementTemplates.achievements.unlock_first_talent_point = {
	ID_XB1 = 16,
	name = "achv_unlock_first_talent_point_name",
	ID_PS4 = "015",
	ID_STEAM = "unlock_first_talent_point",
	icon = "achievement_trophy_15",
	desc = "achv_unlock_first_talent_point_desc",
	completed = function (statistics_db, stats_id)
		local is_versus = Managers.mechanism:current_mechanism_name() == "versus"

		if is_versus then
			return false
		end

		local heroes = {
			"wood_elf",
			"witch_hunter",
			"empire_soldier",
			"bright_wizard",
			"dwarf_ranger"
		}

		for _, hero in ipairs(heroes) do
			if ProgressionUnlocks.get_num_talent_points(hero) >= 1 then
				return true
			end
		end

		return false
	end
}
AchievementTemplates.achievements.unlock_all_talent_points = {
	ID_XB1 = 17,
	name = "achv_unlock_all_talent_points_name",
	ID_PS4 = "016",
	ID_STEAM = "unlock_all_talent_points",
	icon = "achievement_trophy_16",
	desc = "achv_unlock_all_talent_points_desc",
	completed = function (statistics_db, stats_id)
		local is_versus = Managers.mechanism:current_mechanism_name() == "versus"

		if is_versus then
			return false
		end

		local heroes = {
			"wood_elf",
			"witch_hunter",
			"empire_soldier",
			"bright_wizard",
			"dwarf_ranger"
		}

		for _, hero in ipairs(heroes) do
			if ProgressionUnlocks.get_num_talent_points(hero) == 6 then
				return true
			end
		end

		return false
	end
}
AchievementTemplates.achievements.craft_item = {
	ID_XB1 = 18,
	name = "achv_craft_item_name",
	ID_PS4 = "017",
	ID_STEAM = "craft_item",
	icon = "achievement_trophy_17",
	desc = "achv_craft_item_desc",
	completed = function (statistics_db, stats_id)
		local crafted_items = statistics_db:get_persistent_stat(stats_id, "crafted_items")

		return crafted_items >= 1
	end
}
AchievementTemplates.achievements.craft_fifty_items = {
	ID_XB1 = 19,
	name = "achv_craft_fifty_items_name",
	ID_PS4 = "018",
	icon = "achievement_trophy_18",
	ID_STEAM = "craft_fifty_items",
	desc = "achv_craft_fifty_items_desc",
	completed = function (statistics_db, stats_id)
		local crafted_items = statistics_db:get_persistent_stat(stats_id, "crafted_items")

		return crafted_items >= 50
	end,
	progress = function (statistics_db, stats_id)
		local crafted_items = statistics_db:get_persistent_stat(stats_id, "crafted_items")

		if crafted_items > 50 then
			crafted_items = 50
		end

		return {
			crafted_items,
			50
		}
	end
}
AchievementTemplates.achievements.salvage_item = {
	ID_XB1 = 20,
	name = "achv_salvage_item_name",
	ID_PS4 = "019",
	ID_STEAM = "salvage_item",
	icon = "achievement_trophy_19",
	desc = "achv_salvage_item_desc",
	completed = function (statistics_db, stats_id)
		local crafted_items = statistics_db:get_persistent_stat(stats_id, "salvaged_items")

		return crafted_items >= 1
	end
}
AchievementTemplates.achievements.salvage_hundred_items = {
	ID_XB1 = 21,
	name = "achv_salvage_hundred_items_name",
	ID_PS4 = "020",
	icon = "achievement_trophy_20",
	ID_STEAM = "salvage_hundred_items",
	desc = "achv_salvage_hundred_items_desc",
	completed = function (statistics_db, stats_id)
		local crafted_items = statistics_db:get_persistent_stat(stats_id, "salvaged_items")

		return crafted_items >= 100
	end,
	progress = function (statistics_db, stats_id)
		local crafted_items = statistics_db:get_persistent_stat(stats_id, "salvaged_items")

		if crafted_items > 100 then
			crafted_items = 100
		end

		return {
			crafted_items,
			100
		}
	end
}
AchievementTemplates.achievements.equip_common_quality = {
	ID_XB1 = 22,
	name = "achv_equip_common_quality_name",
	ID_PS4 = "021",
	ID_STEAM = "equip_common_quality",
	icon = "achievement_trophy_21",
	desc = "achv_equip_common_quality_desc",
	completed = function (statistics_db, stats_id)
		local items = equipped_items_of_rarity(statistics_db, stats_id, "common")

		return items >= 1
	end
}
AchievementTemplates.achievements.equip_rare_quality = {
	ID_XB1 = 23,
	name = "achv_equip_rare_quality_name",
	ID_PS4 = "022",
	ID_STEAM = "equip_rare_quality",
	icon = "achievement_trophy_22",
	desc = "achv_equip_rare_quality_desc",
	completed = function (statistics_db, stats_id)
		local items = equipped_items_of_rarity(statistics_db, stats_id, "rare")

		return items >= 1
	end
}
AchievementTemplates.achievements.equip_exotic_quality = {
	ID_XB1 = 24,
	name = "achv_equip_exotic_quality_name",
	ID_PS4 = "023",
	ID_STEAM = "equip_exotic_quality",
	icon = "achievement_trophy_23",
	desc = "achv_equip_exotic_quality_desc",
	completed = function (statistics_db, stats_id)
		local items = equipped_items_of_rarity(statistics_db, stats_id, "exotic")

		return items >= 1
	end
}
AchievementTemplates.achievements.equip_all_exotic_quality = {
	ID_XB1 = 25,
	name = "achv_equip_all_exotic_quality_name",
	desc = "achv_equip_all_exotic_quality_desc",
	ID_STEAM = "equip_all_exotic_quality",
	ID_PS4 = "024",
	icon = "achievement_trophy_24",
	completed = function (statistics_db, stats_id)
		local items = equipped_items_of_rarity(statistics_db, stats_id, "exotic")

		return items == 5
	end,
	progress = function (statistics_db, stats_id)
		local items = equipped_items_of_rarity(statistics_db, stats_id, "exotic")

		return {
			items,
			5
		}
	end,
	requirements = function (statistics_db, stats_id)
		local melee = statistics_db:get_persistent_stat(stats_id, "highest_equipped_rarity", "melee")
		local ranged = statistics_db:get_persistent_stat(stats_id, "highest_equipped_rarity", "ranged")
		local necklace = statistics_db:get_persistent_stat(stats_id, "highest_equipped_rarity", "necklace")
		local ring = statistics_db:get_persistent_stat(stats_id, "highest_equipped_rarity", "ring")
		local trinket = statistics_db:get_persistent_stat(stats_id, "highest_equipped_rarity", "trinket")
		local required_rarity = rarity_index.exotic

		return {
			{
				name = "melee",
				completed = required_rarity <= melee
			},
			{
				name = "ranged",
				completed = required_rarity <= ranged
			},
			{
				name = "necklace",
				completed = required_rarity <= necklace
			},
			{
				name = "ring",
				completed = required_rarity <= ring
			},
			{
				name = "trinket",
				completed = required_rarity <= trinket
			}
		}
	end
}
AchievementTemplates.achievements.equip_veteran_quality = {
	ID_XB1 = 26,
	name = "achv_equip_veteran_quality_name",
	ID_PS4 = "025",
	ID_STEAM = "equip_veteran_quality",
	icon = "achievement_trophy_25",
	desc = "achv_equip_veteran_quality_desc",
	completed = function (statistics_db, stats_id)
		local items = equipped_items_of_rarity(statistics_db, stats_id, "unique")

		return items >= 1
	end
}
AchievementTemplates.achievements.equip_all_veteran_quality = {
	name = "achv_equip_all_veteran_quality_name",
	icon = "achievement_trophy_equip_all_veteran_quality",
	desc = "achv_equip_all_veteran_quality_desc",
	completed = function (statistics_db, stats_id)
		local items = equipped_items_of_rarity(statistics_db, stats_id, "unique")

		return items == 5
	end,
	progress = function (statistics_db, stats_id)
		local items = equipped_items_of_rarity(statistics_db, stats_id, "unique")

		return {
			items,
			5
		}
	end,
	requirements = function (statistics_db, stats_id)
		local melee = statistics_db:get_persistent_stat(stats_id, "highest_equipped_rarity", "melee")
		local ranged = statistics_db:get_persistent_stat(stats_id, "highest_equipped_rarity", "ranged")
		local necklace = statistics_db:get_persistent_stat(stats_id, "highest_equipped_rarity", "necklace")
		local ring = statistics_db:get_persistent_stat(stats_id, "highest_equipped_rarity", "ring")
		local trinket = statistics_db:get_persistent_stat(stats_id, "highest_equipped_rarity", "trinket")
		local required_rarity = rarity_index.unique

		return {
			{
				name = "melee",
				completed = required_rarity <= melee
			},
			{
				name = "ranged",
				completed = required_rarity <= ranged
			},
			{
				name = "necklace",
				completed = required_rarity <= necklace
			},
			{
				name = "ring",
				completed = required_rarity <= ring
			},
			{
				name = "trinket",
				completed = required_rarity <= trinket
			}
		}
	end
}
AchievementTemplates.achievements.complete_level_all = {
	ID_XB1 = 27,
	name = "achv_complete_level_all_name",
	ID_PS4 = "026",
	ID_STEAM = "complete_level_all",
	icon = "achievement_trophy_26",
	desc = "achv_complete_level_all_desc",
	completed = function (statistics_db, stats_id)
		local heroes = {
			"bright_wizard",
			"wood_elf",
			"empire_soldier",
			"dwarf_ranger",
			"witch_hunter"
		}

		for i = 1, #UnlockableLevels do
			local level_key = UnlockableLevels[i]
			local all_heroes_completed_level = true

			for j = 1, #heroes do
				local hero = heroes[j]
				local completed = statistics_db:get_persistent_stat(stats_id, "completed_levels_" .. hero, level_key)

				if completed == 0 then
					all_heroes_completed_level = false

					break
				end
			end

			if all_heroes_completed_level then
				return true
			end
		end

		return false
	end
}
AchievementTemplates.completed_deed_limits = {
	10,
	25,
	50,
	100,
	200,
	300,
	400,
	500
}

for i, limit in ipairs(AchievementTemplates.completed_deed_limits) do
	local id = "complete_deeds_" .. i

	AchievementTemplates.achievements[id] = {
		name = "achv_complete_deeds_" .. i .. "_name",
		desc = function ()
			return string.format(Localize("achv_complete_deeds_desc"), limit)
		end,
		icon = "achievement_trophy_deeds_" .. i,
		completed = function (statistics_db, stats_id)
			return statistics_db:get_persistent_stat(stats_id, "completed_heroic_deeds") >= limit
		end,
		progress = function (statistics_db, stats_id)
			local deeds = statistics_db:get_persistent_stat(stats_id, "completed_heroic_deeds")

			deeds = math.min(deeds, limit)

			return {
				deeds,
				limit
			}
		end
	}
end

AchievementTemplates.difficulties = {
	"normal",
	"hard",
	"harder",
	"hardest"
}

for _, diff_key in ipairs(AchievementTemplates.difficulties) do
	local diff_id = DifficultyMapping[diff_key]
	local id = "complete_all_helmgart_levels_" .. diff_id

	AchievementTemplates.achievements[id] = {
		name = "achv_complete_all_helmgart_levels_" .. diff_id .. "_name",
		desc = "achv_complete_all_helmgart_levels_" .. diff_id .. "_desc",
		icon = "achievement_trophy_complete_all_helmgart_levels_" .. diff_id,
		completed = function (statistics_db, stats_id)
			return check_level_list_difficulty(statistics_db, stats_id, main_game_levels, DifficultySettings[diff_key].rank)
		end,
		progress = function (statistics_db, stats_id)
			local num_completed = 0

			for _, level in ipairs(main_game_levels) do
				if check_level_difficulty(statistics_db, stats_id, level, DifficultySettings[diff_key].rank) then
					num_completed = num_completed + 1
				end
			end

			return {
				num_completed,
				#main_game_levels
			}
		end,
		requirements = function (statistics_db, stats_id)
			local reqs = {}

			for _, level in ipairs(main_game_levels) do
				local completed = check_level_difficulty(statistics_db, stats_id, level, DifficultySettings[diff_key].rank)

				table.insert(reqs, {
					name = LevelSettings[level].display_name,
					completed = completed
				})
			end

			return reqs
		end
	}
end

local hero_careers = {}

for _, profile in ipairs(SPProfiles) do
	if profile.affiliation == "heroes" then
		for _, career in ipairs(profile.careers) do
			hero_careers[#hero_careers + 1] = career.name
		end
	end
end

AchievementTemplates.hero_careers = hero_careers

for _, career_name in ipairs(hero_careers) do
	fassert(CareerSettings[career_name] ~= nil, "No career with such name (%s)", career_name)

	for _, diff_key in ipairs(AchievementTemplates.difficulties) do
		local diff_id = DifficultyMapping[diff_key]
		local id = "complete_all_helmgart_levels_" .. diff_id .. "_" .. career_name

		AchievementTemplates.achievements[id] = {
			name = "achv_complete_all_helmgart_levels_" .. diff_id .. "_" .. career_name .. "_name",
			desc = "achv_complete_all_helmgart_levels_" .. diff_id .. "_" .. career_name .. "_desc",
			icon = "achievement_trophy_" .. diff_id .. "_" .. career_name,
			completed = function (statistics_db, stats_id)
				return check_level_list_difficulty(statistics_db, stats_id, main_game_levels, DifficultySettings[diff_key].rank, career_name)
			end,
			progress = function (statistics_db, stats_id)
				local num_completed = 0

				for _, level in ipairs(main_game_levels) do
					if check_level_difficulty(statistics_db, stats_id, level, DifficultySettings[diff_key].rank, career_name) then
						num_completed = num_completed + 1
					end
				end

				return {
					num_completed,
					#main_game_levels
				}
			end,
			requirements = function (statistics_db, stats_id)
				local reqs = {}

				for _, level in ipairs(main_game_levels) do
					local completed = check_level_difficulty(statistics_db, stats_id, level, DifficultySettings[diff_key].rank, career_name)

					table.insert(reqs, {
						name = LevelSettings[level].display_name,
						completed = completed
					})
				end

				return reqs
			end
		}
	end
end

for _, diff_key in ipairs(AchievementTemplates.difficulties) do
	local diff_id = DifficultyMapping[diff_key]
	local id = "complete_all_helmgart_levels_all_careers_" .. diff_id

	AchievementTemplates.achievements[id] = {
		name = "achv_complete_all_helmgart_levels_all_careers_" .. diff_id .. "_name",
		desc = "achv_complete_all_helmgart_levels_all_careers_" .. diff_id .. "_desc",
		icon = "achievement_trophy_all_careers_" .. diff_id,
		completed = function (statistics_db, stats_id)
			for _, career_name in ipairs(hero_careers) do
				local completed = check_level_list_difficulty(statistics_db, stats_id, main_game_levels, DifficultySettings[diff_key].rank, career_name)

				if not completed then
					return false
				end
			end

			return true
		end,
		progress = function (statistics_db, stats_id)
			local num_completed = 0
			local total = 0

			for _, career_name in ipairs(hero_careers) do
				total = total + 1

				local completed = check_level_list_difficulty(statistics_db, stats_id, main_game_levels, DifficultySettings[diff_key].rank, career_name)

				if completed then
					num_completed = num_completed + 1
				end
			end

			return {
				num_completed,
				total
			}
		end,
		requirements = function (statistics_db, stats_id)
			local reqs = {}

			for _, career_name in ipairs(hero_careers) do
				local completed = check_level_list_difficulty(statistics_db, stats_id, main_game_levels, DifficultySettings[diff_key].rank, career_name)

				table.insert(reqs, {
					name = career_name,
					completed = completed
				})
			end

			return reqs
		end
	}
end

for _, career_name in ipairs(hero_careers) do
	fassert(CareerSettings[career_name] ~= nil, "No such career (%s)", career_name)

	local id = "complete_100_missions_champion_" .. career_name

	AchievementTemplates.achievements[id] = {
		name = "achv_complete_100_missions_champion_" .. career_name .. "_name",
		desc = "achv_complete_100_missions_champion_" .. career_name .. "_desc",
		icon = "achievement_trophy_100_missions_champion_" .. career_name,
		completed = function (statistics_db, stats_id)
			local wins = 0

			for _, level in ipairs(UnlockableLevels) do
				wins = wins + statistics_db:get_persistent_stat(stats_id, "completed_career_levels", career_name, level, "harder")
				wins = wins + statistics_db:get_persistent_stat(stats_id, "completed_career_levels", career_name, level, "hardest")
				wins = wins + statistics_db:get_persistent_stat(stats_id, "completed_career_levels", career_name, level, "cataclysm")
			end

			return wins >= 100
		end,
		progress = function (statistics_db, stats_id)
			local wins = 0

			for _, level in ipairs(UnlockableLevels) do
				wins = wins + statistics_db:get_persistent_stat(stats_id, "completed_career_levels", career_name, level, "harder")
				wins = wins + statistics_db:get_persistent_stat(stats_id, "completed_career_levels", career_name, level, "hardest")
				wins = wins + statistics_db:get_persistent_stat(stats_id, "completed_career_levels", career_name, level, "cataclysm")
			end

			if wins > 100 then
				wins = 100
			end

			return {
				wins,
				100
			}
		end
	}
end

AchievementTemplates.achievements.elven_ruins_align_leylines_timed = {
	ID_XB1 = 28,
	ID_PS4 = "027",
	name = "achv_elven_ruins_align_leylines_timed_name",
	display_completion_ui = true,
	icon = "achievement_trophy_elven_ruins_align_leylines_timed",
	desc = function ()
		return string.format(Localize("achv_elven_ruins_align_leylines_timed_desc"), QuestSettings.elven_ruins_speed_event)
	end,
	completed = function (statistics_db, stats_id)
		return statistics_db:get_persistent_stat(stats_id, "elven_ruins_speed_event") > 0
	end
}
AchievementTemplates.achievements.farmlands_rescue_prisoners_timed = {
	ID_XB1 = 29,
	ID_PS4 = "028",
	name = "achv_farmlands_rescue_prisoners_timed_name",
	display_completion_ui = true,
	icon = "achievement_trophy_farmlands_rescue_prisoners_timed",
	desc = function ()
		return string.format(Localize("achv_farmlands_rescue_prisoners_timed_desc"), QuestSettings.farmlands_speed_event)
	end,
	completed = function (statistics_db, stats_id)
		return statistics_db:get_persistent_stat(stats_id, "farmlands_speed_event") > 0
	end
}
AchievementTemplates.achievements.military_kill_chaos_warriors_in_event = {
	ID_XB1 = 30,
	ID_PS4 = "029",
	name = "achv_military_kill_chaos_warriors_in_event_name",
	display_completion_ui = true,
	icon = "achievement_trophy_military_kill_chaos_warriors_in_event",
	desc = function ()
		return string.format(Localize("achv_military_kill_chaos_warriors_in_event_desc"), 3)
	end,
	completed = function (statistics_db, stats_id)
		return statistics_db:get_persistent_stat(stats_id, "military_statue_kill_chaos_warriors") > 0
	end
}
AchievementTemplates.achievements.ground_zero_burblespew_tornado_enemies = {
	ID_XB1 = 31,
	ID_PS4 = "030",
	name = "achv_ground_zero_burblespew_tornado_enemies_name",
	display_completion_ui = true,
	icon = "achievement_trophy_ground_zero_burblespew_tornado_enemies",
	desc = function ()
		return string.format(Localize("achv_ground_zero_burblespew_tornado_enemies_desc"), QuestSettings.halescourge_tornado_enemies_cata)
	end,
	completed = function (statistics_db, stats_id)
		return statistics_db:get_persistent_stat(stats_id, "halescourge_tornado_enemies") > 0
	end
}
AchievementTemplates.achievements.fort_kill_enemies_cannonball = {
	ID_XB1 = 32,
	ID_PS4 = "031",
	name = "achv_fort_kill_enemies_cannonball_name",
	display_completion_ui = true,
	icon = "achievement_trophy_fort_kill_enemies_cannonball",
	desc = function ()
		return string.format(Localize("achv_fort_kill_enemies_cannonball_desc"), QuestSettings.forest_fort_kill_cannonball)
	end,
	completed = function (statistics_db, stats_id)
		return statistics_db:get_persistent_stat(stats_id, "forest_fort_kill_cannonball") > 0
	end
}
AchievementTemplates.achievements.nurgle_player_showered_in_pus = {
	ID_XB1 = 33,
	ID_PS4 = "032",
	name = "achv_nurgle_player_showered_in_pus_name",
	display_completion_ui = true,
	icon = "achievement_trophy_nurgle_player_showered_in_pus",
	desc = function ()
		return string.format(Localize("achv_nurgle_player_showered_in_pus_desc"), QuestSettings.nurgle_bathed_all_cata)
	end,
	completed = function (statistics_db, stats_id)
		return statistics_db:get_persistent_stat(stats_id, "nurgle_bathed_all") > 0
	end
}
AchievementTemplates.achievements.bell_destroy_bell_flee_timed = {
	ID_XB1 = 34,
	ID_PS4 = "033",
	name = "achv_bell_destroy_bell_flee_timed_name",
	display_completion_ui = true,
	icon = "achievement_trophy_bell_destroy_bell_flee_timed",
	desc = function ()
		return string.format(Localize("achv_bell_destroy_bell_flee_timed_desc"), QuestSettings.bell_speed_event)
	end,
	completed = function (statistics_db, stats_id)
		return statistics_db:get_persistent_stat(stats_id, "bell_speed_event") > 0
	end
}
AchievementTemplates.achievements.catacombs_stay_inside_ritual_pool = {
	ID_XB1 = 35,
	ID_PS4 = "034",
	name = "achv_catacombs_stay_inside_ritual_pool_name",
	display_completion_ui = true,
	icon = "achievement_trophy_catacombs_stay_inside_ritual_pool",
	desc = function ()
		return string.format(Localize("achv_catacombs_stay_inside_ritual_pool_desc"), QuestSettings.volume_corpse_pit_damage)
	end,
	completed = function (statistics_db, stats_id)
		return statistics_db:get_persistent_stat(stats_id, "catacombs_added_souls") > 0
	end
}
AchievementTemplates.achievements.mines_kill_final_troll_timed = {
	ID_XB1 = 36,
	ID_PS4 = "035",
	name = "achv_mines_kill_final_troll_timed_name",
	display_completion_ui = true,
	icon = "achievement_trophy_mines_kill_final_troll_timed",
	desc = function ()
		return string.format(Localize("achv_mines_kill_final_troll_timed_desc"), QuestSettings.mines_speed_event)
	end,
	completed = function (statistics_db, stats_id)
		return statistics_db:get_persistent_stat(stats_id, "mines_speed_event") > 0
	end
}
AchievementTemplates.achievements.warcamp_bodvarr_charge_warriors = {
	ID_XB1 = 37,
	ID_PS4 = "036",
	name = "achv_warcamp_bodvarr_charge_warriors_name",
	display_completion_ui = true,
	icon = "achievement_trophy_warcamp_bodvarr_charge_warriors",
	desc = function ()
		return string.format(Localize("achv_warcamp_bodvarr_charge_warriors_desc"), QuestSettings.exalted_champion_charge_chaos_warrior)
	end,
	completed = function (statistics_db, stats_id)
		return statistics_db:get_persistent_stat(stats_id, "exalted_champion_charge_chaos_warrior") > 0
	end
}
AchievementTemplates.achievements.skaven_stronghold_skarrik_kill_skaven = {
	ID_XB1 = 38,
	ID_PS4 = "037",
	name = "achv_skaven_stronghold_skarrik_kill_skaven_name",
	display_completion_ui = true,
	icon = "achievement_trophy_skaven_stronghold_skarrik_kill_skaven",
	desc = function ()
		return string.format(Localize("achv_skaven_stronghold_skarrik_kill_skaven_desc"), QuestSettings.storm_vermin_warlord_kills_enemies)
	end,
	completed = function (statistics_db, stats_id)
		return statistics_db:get_persistent_stat(stats_id, "storm_vermin_warlord_kills_enemies") > 0
	end
}
AchievementTemplates.achievements.ussingen_no_event_barrels = {
	ID_XB1 = 39,
	ID_PS4 = "038",
	name = "achv_ussingen_no_event_barrels_name",
	display_completion_ui = true,
	icon = "achievement_trophy_ussingen_no_event_barrels",
	desc = "achv_ussingen_no_event_barrels_desc",
	completed = function (statistics_db, stats_id)
		return statistics_db:get_persistent_stat(stats_id, "ussingen_used_no_barrels") > 0
	end
}
AchievementTemplates.achievements.skittergate_deathrattler_rasknitt_timed = {
	ID_XB1 = 40,
	ID_PS4 = "039",
	name = "achv_skittergate_deathrattler_rasknitt_timed_name",
	display_completion_ui = true,
	icon = "achievement_trophy_skittergate_deathrattler_rasknitt_timed",
	desc = function ()
		return string.format(Localize("achv_skittergate_deathrattler_rasknitt_timed_desc"), QuestSettings.skittergate_speed_event)
	end,
	completed = function (statistics_db, stats_id)
		return statistics_db:get_persistent_stat(stats_id, "skittergate_speed_event") > 0
	end
}

local helmgart_level_name_stats = {
	achv_elven_ruins_align_leylines_timed_name = "elven_ruins_speed_event",
	achv_farmlands_rescue_prisoners_timed_name = "farmlands_speed_event",
	achv_nurgle_player_showered_in_pus_name = "nurgle_bathed_all",
	achv_catacombs_stay_inside_ritual_pool_name = "catacombs_added_souls",
	achv_mines_kill_final_troll_timed_name = "mines_speed_event",
	achv_fort_kill_enemies_cannonball_name = "forest_fort_kill_cannonball",
	achv_skaven_stronghold_skarrik_kill_skaven_name = "storm_vermin_warlord_kills_enemies",
	achv_skittergate_deathrattler_rasknitt_timed_name = "skittergate_speed_event",
	achv_military_kill_chaos_warriors_in_event_name = "military_statue_kill_chaos_warriors",
	achv_ground_zero_burblespew_tornado_enemies_name = "halescourge_tornado_enemies",
	achv_warcamp_bodvarr_charge_warriors_name = "exalted_champion_charge_chaos_warrior",
	achv_ussingen_no_event_barrels_name = "ussingen_used_no_barrels",
	achv_bell_destroy_bell_flee_timed_name = "bell_speed_event"
}

AchievementTemplates.achievements.complete_all_helmgart_level_achievements = {
	ID_XB1 = 41,
	ID_PS4 = "040",
	name = "achv_complete_all_helmgart_level_achievements_name",
	icon = "achievement_trophy_complete_all_helmgart_level_achievements",
	desc = "achv_complete_all_helmgart_level_achievements_desc",
	completed = function (statistics_db, stats_id)
		for _, stat_name in pairs(helmgart_level_name_stats) do
			local completed = statistics_db:get_persistent_stat(stats_id, stat_name) > 0

			if not completed then
				return false
			end
		end

		return true
	end,
	progress = function (statistics_db, stats_id)
		local count = 0
		local total = 0

		for _, stat_name in pairs(helmgart_level_name_stats) do
			total = total + 1

			local completed = statistics_db:get_persistent_stat(stats_id, stat_name) > 0

			if completed then
				count = count + 1
			end
		end

		return {
			count,
			total
		}
	end,
	requirements = function (statistics_db, stats_id)
		local reqs = {}

		for achv_name, stat_name in pairs(helmgart_level_name_stats) do
			local completed = statistics_db:get_persistent_stat(stats_id, stat_name) > 0

			table.insert(reqs, {
				name = achv_name,
				completed = completed
			})
		end

		return reqs
	end
}
AchievementTemplates.achievements.skaven_warpfire_thrower_1 = {
	ID_XB1 = 42,
	name = "achv_skaven_warpfire_thrower_1_name",
	ID_PS4 = "041",
	display_completion_ui = true,
	icon = "achievement_trophy_skaven_warpfire_thrower_1",
	desc = "achv_skaven_warpfire_thrower_1_desc",
	completed = function (statistics_db, stats_id)
		return statistics_db:get_persistent_stat(stats_id, "warpfire_kill_before_shooting") > 0
	end
}
AchievementTemplates.achievements.skaven_warpfire_thrower_2 = {
	ID_XB1 = 43,
	name = "achv_skaven_warpfire_thrower_2_name",
	ID_PS4 = "042",
	display_completion_ui = true,
	icon = "achievement_trophy_skaven_warpfire_thrower_2",
	desc = "achv_skaven_warpfire_thrower_2_desc",
	completed = function (statistics_db, stats_id)
		return statistics_db:get_persistent_stat(stats_id, "warpfire_kill_on_power_cell") > 0
	end
}
AchievementTemplates.achievements.skaven_warpfire_thrower_3 = {
	name = "achv_skaven_warpfire_thrower_3_name",
	display_completion_ui = true,
	icon = "achievement_trophy_skaven_warpfire_thrower_3",
	desc = function ()
		return string.format(Localize("achv_skaven_warpfire_thrower_3_desc"), QuestSettings.num_enemies_killed_by_warpfire)
	end,
	completed = function (statistics_db, stats_id)
		return statistics_db:get_persistent_stat(stats_id, "warpfire_enemies_killed_by_warpfire") > 0
	end
}
AchievementTemplates.achievements.skaven_pack_master_1 = {
	ID_XB1 = 44,
	name = "achv_skaven_pack_master_1_name",
	ID_PS4 = "043",
	display_completion_ui = true,
	icon = "achievement_trophy_skaven_pack_master_1",
	desc = "achv_skaven_pack_master_1_desc",
	completed = function (statistics_db, stats_id)
		return statistics_db:get_persistent_stat(stats_id, "pack_master_kill_abducting_ally") > 0
	end
}
AchievementTemplates.achievements.skaven_pack_master_2 = {
	ID_XB1 = 45,
	name = "achv_skaven_pack_master_2_name",
	ID_PS4 = "044",
	display_completion_ui = true,
	icon = "achievement_trophy_skaven_pack_master_2",
	desc = "achv_skaven_pack_master_2_desc",
	completed = function (statistics_db, stats_id)
		return statistics_db:get_persistent_stat(stats_id, "pack_master_dodged_attack") > 0
	end
}
AchievementTemplates.achievements.skaven_pack_master_3 = {
	name = "achv_skaven_pack_master_3_name",
	display_completion_ui = true,
	icon = "achievement_trophy_skaven_pack_master_3",
	desc = "achv_skaven_pack_master_3_desc",
	completed = function (statistics_db, stats_id)
		return statistics_db:get_persistent_stat(stats_id, "pack_master_rescue_hoisted_ally") > 0
	end
}
AchievementTemplates.achievements.skaven_gutter_runner_1 = {
	ID_XB1 = 46,
	name = "achv_skaven_gutter_runner_1_name",
	ID_PS4 = "045",
	display_completion_ui = true,
	icon = "achievement_trophy_skaven_gutter_runner_1",
	desc = "achv_skaven_gutter_runner_1_desc",
	completed = function (statistics_db, stats_id)
		return statistics_db:get_persistent_stat(stats_id, "gutter_runner_killed_on_pounce") > 0
	end
}
AchievementTemplates.achievements.skaven_gutter_runner_2 = {
	name = "achv_skaven_gutter_runner_2_name",
	display_completion_ui = true,
	icon = "achievement_trophy_skaven_gutter_runner_2",
	desc = "achv_skaven_gutter_runner_2_desc",
	completed = function (statistics_db, stats_id)
		return statistics_db:get_persistent_stat(stats_id, "gutter_runner_push_on_target_pounced") > 0
	end
}
AchievementTemplates.achievements.skaven_gutter_runner_3 = {
	name = "achv_skaven_gutter_runner_3_name",
	display_completion_ui = true,
	icon = "achievement_trophy_skaven_gutter_runner_3",
	desc = "achv_skaven_gutter_runner_3_desc",
	completed = function (statistics_db, stats_id)
		return statistics_db:get_persistent_stat(stats_id, "gutter_runner_push_on_pounce") > 0
	end
}
AchievementTemplates.achievements.skaven_poison_wind_globardier_1 = {
	ID_XB1 = 47,
	name = "achv_skaven_poison_wind_globardier_1_name",
	ID_PS4 = "046",
	display_completion_ui = true,
	icon = "achievement_trophy_skaven_poison_wind_globardier_1",
	desc = "achv_skaven_poison_wind_globardier_1_desc",
	completed = function (statistics_db, stats_id)
		return statistics_db:get_persistent_stat(stats_id, "globadier_kill_during_suicide") > 0
	end
}
AchievementTemplates.achievements.skaven_poison_wind_globardier_2 = {
	name = "achv_skaven_poison_wind_globardier_2_name",
	display_completion_ui = true,
	icon = "achievement_trophy_skaven_poison_wind_globardier_2",
	desc = "achv_skaven_poison_wind_globardier_2_desc",
	completed = function (statistics_db, stats_id)
		return statistics_db:get_persistent_stat(stats_id, "globadier_kill_before_throwing") > 0
	end
}
AchievementTemplates.achievements.skaven_poison_wind_globardier_3 = {
	name = "achv_skaven_poison_wind_globardier_3_name",
	display_completion_ui = true,
	icon = "achievement_trophy_skaven_poison_wind_globardier_3",
	desc = function ()
		return string.format(Localize("achv_skaven_poison_wind_globardier_3_desc"), QuestSettings.num_enemies_killed_by_poison)
	end,
	completed = function (statistics_db, stats_id)
		return statistics_db:get_persistent_stat(stats_id, "globadier_enemies_killed_by_poison") > 0
	end
}
AchievementTemplates.achievements.skaven_ratling_gunner_1 = {
	ID_XB1 = 48,
	name = "achv_skaven_ratling_gunner_1_name",
	ID_PS4 = "047",
	display_completion_ui = true,
	icon = "achievement_trophy_skaven_ratling_gunner_1",
	desc = "achv_skaven_ratling_gunner_1_desc",
	completed = function (statistics_db, stats_id)
		return statistics_db:get_persistent_stat(stats_id, "ratling_gunner_killed_by_melee") > 0
	end
}
AchievementTemplates.achievements.skaven_ratling_gunner_2 = {
	name = "achv_skaven_ratling_gunner_2_name",
	display_completion_ui = true,
	icon = "achievement_trophy_skaven_ratling_gunner_2",
	desc = "achv_skaven_ratling_gunner_2_desc",
	completed = function (statistics_db, stats_id)
		return statistics_db:get_persistent_stat(stats_id, "ratling_gunner_killed_while_shooting") > 0
	end
}
AchievementTemplates.achievements.skaven_ratling_gunner_3 = {
	name = "achv_skaven_ratling_gunner_3_name",
	display_completion_ui = true,
	icon = "achievement_trophy_skaven_ratling_gunner_3",
	desc = "achv_skaven_ratling_gunner_3_desc",
	events = {
		"player_blocked_attack"
	},
	completed = function (statistics_db, stats_id)
		return statistics_db:get_persistent_stat(stats_id, "ratling_gunner_blocked_shot") > 0
	end,
	on_event = function (statistics_db, stats_id, template_data, event_name, event_data)
		local player = event_data[1]

		if not player.local_player then
			return
		end

		local attacker_unit = event_data[2]
		local breed = Unit.alive(attacker_unit) and Unit.get_data(attacker_unit, "breed")

		if breed and breed.name == "skaven_ratling_gunner" then
			statistics_db:increment_stat(stats_id, "ratling_gunner_blocked_shot")
		end
	end
}
AchievementTemplates.achievements.chaos_corruptor_sorcerer_1 = {
	ID_XB1 = 49,
	name = "achv_chaos_corruptor_sorcerer_1_name",
	ID_PS4 = "048",
	display_completion_ui = true,
	icon = "achievement_trophy_chaos_corruptor_sorcerer_1",
	desc = "achv_chaos_corruptor_sorcerer_1_desc",
	completed = function (statistics_db, stats_id)
		return statistics_db:get_persistent_stat(stats_id, "corruptor_dodged_attack") > 0
	end
}
AchievementTemplates.achievements.chaos_corruptor_sorcerer_2 = {
	name = "achv_chaos_corruptor_sorcerer_2_name",
	display_completion_ui = true,
	icon = "achievement_trophy_chaos_corruptor_sorcerer_2",
	desc = function ()
		return string.format(Localize("achv_chaos_corruptor_sorcerer_2_desc"), QuestSettings.corruptor_killed_at_teleport_time)
	end,
	completed = function (statistics_db, stats_id)
		return statistics_db:get_persistent_stat(stats_id, "corruptor_killed_at_teleport_time") > 0
	end
}
AchievementTemplates.achievements.chaos_corruptor_sorcerer_3 = {
	ID_XB1 = 50,
	name = "achv_chaos_corruptor_sorcerer_3_name",
	ID_PS4 = "049",
	display_completion_ui = true,
	icon = "achievement_trophy_chaos_corruptor_sorcerer_3",
	desc = "achv_chaos_corruptor_sorcerer_3_desc",
	completed = function (statistics_db, stats_id)
		return statistics_db:get_persistent_stat(stats_id, "corruptor_killed_while_grabbing") > 0
	end
}
AchievementTemplates.achievements.chaos_vortex_sorcerer_1 = {
	ID_XB1 = 51,
	name = "achv_chaos_vortex_sorcerer_1_name",
	ID_PS4 = "050",
	display_completion_ui = true,
	icon = "achievement_trophy_chaos_vortex_sorcerer_1",
	desc = "achv_chaos_vortex_sorcerer_1_desc",
	completed = function (statistics_db, stats_id)
		return statistics_db:get_persistent_stat(stats_id, "vortex_sorcerer_killed_while_summoning") > 0
	end
}
AchievementTemplates.achievements.chaos_vortex_sorcerer_2 = {
	name = "achv_chaos_vortex_sorcerer_2_name",
	display_completion_ui = true,
	icon = "achievement_trophy_chaos_vortex_sorcerer_2",
	desc = "achv_chaos_vortex_sorcerer_2_desc",
	completed = function (statistics_db, stats_id)
		return statistics_db:get_persistent_stat(stats_id, "vortex_sorcerer_killed_while_ally_in_vortex") > 0
	end
}
AchievementTemplates.achievements.chaos_vortex_sorcerer_3 = {
	name = "achv_chaos_vortex_sorcerer_3_name",
	display_completion_ui = true,
	icon = "achievement_trophy_chaos_vortex_sorcerer_3",
	desc = "achv_chaos_vortex_sorcerer_3_desc",
	completed = function (statistics_db, stats_id)
		return statistics_db:get_persistent_stat(stats_id, "vortex_sorcerer_killed_by_melee") > 0
	end
}
AchievementTemplates.achievements.chaos_spawn_1 = {
	name = "achv_chaos_spawn_1_name",
	display_completion_ui = true,
	icon = "achievement_trophy_chaos_spawn_1",
	desc = "achv_chaos_spawn_1_desc",
	completed = function (statistics_db, stats_id)
		return statistics_db:get_persistent_stat(stats_id, "chaos_spawn_killed_while_grabbing") > 0
	end
}
AchievementTemplates.achievements.chaos_spawn_2 = {
	name = "achv_chaos_spawn_2_name",
	display_completion_ui = true,
	icon = "achievement_trophy_chaos_spawn_2",
	desc = "achv_chaos_spawn_2_desc",
	completed = function (statistics_db, stats_id)
		return statistics_db:get_persistent_stat(stats_id, "chaos_spawn_killed_without_having_grabbed") > 0
	end
}
AchievementTemplates.achievements.chaos_troll_1 = {
	name = "achv_chaos_troll_1_name",
	display_completion_ui = true,
	icon = "achievement_trophy_chaos_troll_1",
	desc = "achv_chaos_troll_1_desc",
	completed = function (statistics_db, stats_id)
		return statistics_db:get_persistent_stat(stats_id, "chaos_troll_killed_without_regen") > 0
	end
}
AchievementTemplates.achievements.chaos_troll_2 = {
	name = "achv_chaos_troll_2_name",
	display_completion_ui = true,
	icon = "achievement_trophy_chaos_troll_2",
	desc = "achv_chaos_troll_2_desc",
	completed = function (statistics_db, stats_id)
		return statistics_db:get_persistent_stat(stats_id, "chaos_troll_killed_without_bile_damage") > 0
	end
}
AchievementTemplates.achievements.skaven_rat_ogre_1 = {
	name = "achv_skaven_rat_ogre_1_name",
	display_completion_ui = true,
	icon = "achievement_trophy_skaven_rat_ogre_1",
	desc = "achv_skaven_rat_ogre_1_desc",
	completed = function (statistics_db, stats_id)
		return statistics_db:get_persistent_stat(stats_id, "rat_ogre_killed_mid_leap") > 0
	end
}
AchievementTemplates.achievements.skaven_rat_ogre_2 = {
	name = "achv_skaven_rat_ogre_2_name",
	display_completion_ui = true,
	icon = "achievement_trophy_skaven_rat_ogre_2",
	desc = "achv_skaven_rat_ogre_2_desc",
	completed = function (statistics_db, stats_id)
		return statistics_db:get_persistent_stat(stats_id, "rat_ogre_killed_without_dealing_damage") > 0
	end
}
AchievementTemplates.achievements.skaven_stormfiend_1 = {
	name = "achv_skaven_stormfiend_1_name",
	display_completion_ui = true,
	icon = "achievement_trophy_skaven_stormfiend_1",
	desc = "achv_skaven_stormfiend_1_desc",
	completed = function (statistics_db, stats_id)
		return statistics_db:get_persistent_stat(stats_id, "stormfiend_killed_without_burn_damage") > 0
	end
}
AchievementTemplates.achievements.skaven_stormfiend_2 = {
	name = "achv_skaven_stormfiend_2_name",
	display_completion_ui = true,
	icon = "achievement_trophy_skaven_stormfiend_2",
	desc = "achv_skaven_stormfiend_2_desc",
	completed = function (statistics_db, stats_id)
		return statistics_db:get_persistent_stat(stats_id, "stormfiend_killed_on_controller") > 0
	end
}
AchievementTemplates.achievements.helmgart_lord_1 = {
	name = "achv_helmgart_lord_1_name",
	display_completion_ui = true,
	icon = "achievement_trophy_helmgart_lord_1",
	desc = "achv_helmgart_lord_1_desc",
	completed = function (statistics_db, stats_id)
		return statistics_db:get_persistent_stat(stats_id, "killed_lord_as_last_player_standing") > 0
	end
}

DLCUtils.map_list("achievement_template_file_names", local_require)

for _, diff_key in ipairs(AchievementTemplates.difficulties) do
	local diff_id = DifficultyMapping[diff_key]
	local id = "kill_bodvarr_burblespew_" .. diff_id
	local difficulty_rank = DifficultySettings[diff_key].rank

	AchievementTemplates.achievements[id] = {
		name = "achv_kill_bodvarr_burblespew_" .. diff_id .. "_name",
		desc = "achv_kill_bodvarr_burblespew_" .. diff_id .. "_desc",
		icon = "achievement_trophy_kill_bodvarr_burblespew_" .. diff_id,
		completed = function (statistics_db, stats_id)
			local champion_completed = statistics_db:get_persistent_stat(stats_id, "kill_chaos_exalted_champion_difficulty_rank") >= difficulty_rank
			local sorcerer_completed = statistics_db:get_persistent_stat(stats_id, "kill_chaos_exalted_sorcerer_difficulty_rank") >= difficulty_rank

			return champion_completed and sorcerer_completed
		end,
		requirements = function (statistics_db, stats_id)
			local champion_completed = statistics_db:get_persistent_stat(stats_id, "kill_chaos_exalted_champion_difficulty_rank") >= difficulty_rank
			local sorcerer_completed = statistics_db:get_persistent_stat(stats_id, "kill_chaos_exalted_sorcerer_difficulty_rank") >= difficulty_rank

			return {
				{
					name = "chaos_exalted_champion",
					completed = champion_completed
				},
				{
					name = "chaos_exalted_sorcerer",
					completed = sorcerer_completed
				}
			}
		end
	}
	id = "kill_skarrik_rasknitt_" .. diff_id
	AchievementTemplates.achievements[id] = {
		name = "achv_kill_skarrik_rasknitt_" .. diff_id .. "_name",
		desc = "achv_kill_skarrik_rasknitt_" .. diff_id .. "_desc",
		icon = "achievement_trophy_kill_skarrik_rasknitt_" .. diff_id,
		completed = function (statistics_db, stats_id)
			local gray_seer_completed = statistics_db:get_persistent_stat(stats_id, "kill_skaven_grey_seer_difficulty_rank") >= difficulty_rank
			local storm_vermin_completed = statistics_db:get_persistent_stat(stats_id, "kill_skaven_storm_vermin_warlord_difficulty_rank") >= difficulty_rank

			return gray_seer_completed and storm_vermin_completed
		end,
		requirements = function (statistics_db, stats_id)
			local gray_seer_completed = statistics_db:get_persistent_stat(stats_id, "kill_skaven_grey_seer_difficulty_rank") >= difficulty_rank
			local storm_vermin_completed = statistics_db:get_persistent_stat(stats_id, "kill_skaven_storm_vermin_warlord_difficulty_rank") >= difficulty_rank

			return {
				{
					name = "skaven_storm_vermin_warlord",
					completed = storm_vermin_completed
				},
				{
					name = "skaven_grey_seer",
					completed = gray_seer_completed
				}
			}
		end
	}
end

for name, template in pairs(AchievementTemplates.achievements) do
	template.id = name
end

return AchievementTemplates
