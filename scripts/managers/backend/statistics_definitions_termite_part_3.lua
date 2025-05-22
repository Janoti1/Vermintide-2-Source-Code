local player = StatisticsDefinitions.player
local database_names = {
	"termite3_collectible_challenge",
	"termite3_searchlight_challenge",
	"termite3_generator_challenge",
	"termite3_portal_challenge",
	"termite3_all_challenges"
}

for i = 1, #database_names do
	local name = database_names[i]

	player[name] = {
		value = 0,
		source = "player_data",
		database_name = name
	}
end
