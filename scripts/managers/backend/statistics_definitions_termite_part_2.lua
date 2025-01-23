local player = StatisticsDefinitions.player
local database_names = {
	"termite2_mushroom_challenge",
	"termite2_water_challenge",
	"termite2_timer_challenge",
	"termite2_all_challenges"
}

for i = 1, #database_names do
	local name = database_names[i]

	player[name] = {
		value = 0,
		source = "player_data",
		database_name = name
	}
end
