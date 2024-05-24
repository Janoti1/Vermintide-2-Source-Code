local player = StatisticsDefinitions.player
local database_names = {
	"dwarf_feculent_buboes",
	"dwarf_statue_emote",
	"dwarf_go_fish",
	"dwarf_barrel_kill",
	"dwarf_elevator_speedrun",
	"whaling_all_challenges"
}

for i = 1, #database_names do
	local name = database_names[i]

	player[name] = {
		value = 0,
		source = "player_data",
		database_name = name
	}
end
