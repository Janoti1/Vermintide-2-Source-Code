local TEMP_TABLE = {}

local function max_value(session_scores, key)
	table.clear(TEMP_TABLE)

	for _, session_score in pairs(session_scores) do
		TEMP_TABLE[#TEMP_TABLE + 1] = session_score
	end

	local function sort_func(a, b)
		return a.scores[key] > b.scores[key]
	end

	table.sort(TEMP_TABLE, sort_func)

	local no_winner
	local winner = TEMP_TABLE[1]

	return winner and winner.scores[key] > 0 and winner.stats_id or no_winner, winner and winner.scores[key]
end

EndScreenAwardSettings = {}
EndScreenAwardSettings[#EndScreenAwardSettings + 1] = {
	award_material = "hero_killer_award",
	award_mask_material = "hero_killer_award_mask",
	sound = "Play_vs_hud_eom_parading_hero_killer",
	prio = 2,
	breeds = {
		PlayerBreeds.vs_gutter_runner,
		PlayerBreeds.vs_packmaster,
		PlayerBreeds.vs_warpfire_thrower,
		PlayerBreeds.vs_ratling_gunner,
		PlayerBreeds.vs_poison_wind_globadier
	},
	name = Localize("vs_award_hero_killer_name"),
	sub_header = Localize("vs_award_hero_killer_description"),
	screen_sub_header = Localize("vs_award_hero_killer_sub_header"),
	evaluate = function (session_scores)
		return max_value(session_scores, "kills_heroes")
	end
}
EndScreenAwardSettings[#EndScreenAwardSettings + 1] = {
	prio = 2,
	sound = "Play_vs_hud_eom_parading_slayer",
	award_material = "slayer_award",
	award_mask_material = "slayer_award_mask",
	name = Localize("vs_award_slayer_name"),
	sub_header = Localize("vs_award_slayer_description"),
	screen_sub_header = Localize("vs_award_slayer_sub_header"),
	evaluate = function (session_scores)
		return max_value(session_scores, "kills_specials")
	end
}
EndScreenAwardSettings[#EndScreenAwardSettings + 1] = {
	prio = 2,
	sound = "Play_vs_hud_eom_parading_smiter",
	award_material = "smiter_award",
	award_mask_material = "smiter_award_mask",
	name = Localize("vs_award_smiter_name"),
	sub_header = Localize("vs_award_smiter_description"),
	screen_sub_header = Localize("vs_award_smiter_sub_header"),
	evaluate = function (session_scores)
		return max_value(session_scores, "vs_damage_dealt_to_pactsworn")
	end
}
EndScreenAwardSettings[#EndScreenAwardSettings + 1] = {
	award_material = "damage_dealer_award",
	award_mask_material = "damage_dealer_award_mask",
	sound = "Play_vs_hud_eom_parading_damage_dealer",
	prio = 2,
	breeds = {
		PlayerBreeds.vs_gutter_runner,
		PlayerBreeds.vs_packmaster,
		PlayerBreeds.vs_warpfire_thrower,
		PlayerBreeds.vs_ratling_gunner,
		PlayerBreeds.vs_poison_wind_globadier
	},
	name = Localize("vs_award_damage_dealer_name"),
	sub_header = Localize("vs_award_damage_dealer_description"),
	screen_sub_header = Localize("vs_award_damage_dealer_sub_header"),
	evaluate = function (session_scores)
		return max_value(session_scores, "damage_dealt_heroes")
	end
}
EndScreenAwardSettings[#EndScreenAwardSettings + 1] = {
	prio = 3,
	sound = "Play_vs_hud_eom_parading_saviour",
	award_material = "saviour_award",
	award_mask_material = "saviour_award_mask",
	name = Localize("vs_award_saviour_name"),
	sub_header = Localize("vs_award_saviour_description"),
	screen_sub_header = Localize("vs_award_saviour_sub_header"),
	evaluate = function (session_scores)
		return max_value(session_scores, "saves")
	end
}
EndScreenAwardSettings[#EndScreenAwardSettings + 1] = {
	award_material = "hero_napper_award",
	award_mask_material = "hero_napper_award_mask",
	sound = "Play_vs_hud_eom_parading_hero_napper",
	prio = 3,
	breeds = {
		PlayerBreeds.vs_packmaster
	},
	name = Localize("vs_award_hero_napper_name"),
	sub_header = Localize("vs_award_hero_napper_description"),
	screen_sub_header = Localize("vs_award_hero_napper_sub_header"),
	evaluate = function (session_scores)
		return max_value(session_scores, "packmaster_disables")
	end
}
EndScreenAwardSettings[#EndScreenAwardSettings + 1] = {
	award_material = "assassin_award",
	award_mask_material = "assassin_award_mask",
	sound = "Play_vs_hud_eom_parading_assassin",
	prio = 3,
	breeds = {
		PlayerBreeds.vs_gutter_runner
	},
	name = Localize("vs_award_assassin_name"),
	sub_header = Localize("vs_award_assassin_description"),
	screen_sub_header = Localize("vs_award_assassin_sub_header"),
	evaluate = function (session_scores)
		return max_value(session_scores, "gutter_runner_disables")
	end
}
EndScreenAwardSettings[#EndScreenAwardSettings + 1] = {
	prio = 3,
	sound = "Play_vs_hud_eom_parading_horde_killer",
	award_material = "horde_killer_award",
	award_mask_material = "horde_killer_award_mask",
	name = Localize("vs_award_horde_killer_name"),
	sub_header = Localize("vs_award_horde_killer_description"),
	screen_sub_header = Localize("vs_award_horde_killer_sub_header"),
	evaluate = function (session_scores)
		return max_value(session_scores, "kills_total")
	end
}
EndScreenAwardSettings[#EndScreenAwardSettings + 1] = {
	award_material = "monster_award",
	award_mask_material = "monster_award_mask",
	sound = "Play_vs_hud_eom_parading_bile",
	prio = 3,
	breeds = {
		PlayerBreeds.vs_chaos_troll
	},
	name = Localize("vs_award_monster_name"),
	sub_header = Localize("vs_award_monster_description"),
	screen_sub_header = Localize("vs_award_monster_sub_header"),
	evaluate = function (session_scores)
		return max_value(session_scores, "monster_damage")
	end
}
EndScreenAwardSettings[#EndScreenAwardSettings + 1] = {
	prio = 3,
	sound = "Play_vs_hud_eom_parading_monster_killer",
	award_material = "monster_killer_award",
	award_mask_material = "monster_killer_award_mask",
	name = Localize("vs_award_monster_killer_name"),
	sub_header = Localize("vs_award_monster_killer_description"),
	screen_sub_header = Localize("vs_award_monster_killer_sub_header"),
	evaluate = function (session_scores)
		return max_value(session_scores, "damage_to_monster")
	end
}
