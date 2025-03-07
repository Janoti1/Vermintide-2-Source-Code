local breed_data = {
	not_bot_target = true,
	no_autoaim = true,
	show_health_bar = false,
	boss = "SET_TO_NIL",
	target_selection = "pick_no_targets",
	passive_in_patrol = false,
	race = "chaos",
	behavior = "dummy_troll",
	perception = "perception_no_seeing",
	is_always_spawnable = "SET_TO_NIL",
	combat_music_state = "no_boss",
	debug_spawn_category = "Misc",
	run_on_spawn = AiBreedSnippets.on_chaos_dummy_troll_spawn,
	run_on_death = AiBreedSnippets.on_chaos_dummy_troll_death,
	run_on_update = AiBreedSnippets.on_chaos_dummy_troll_update,
	run_on_despawn = AiBreedSnippets.on_chaos_dummy_troll_death
}

for key, value in pairs(Breeds.chaos_troll) do
	local keep_value = breed_data[key]

	if keep_value == "SET_TO_NIL" then
		breed_data[key] = nil
	elseif keep_value ~= nil then
		breed_data[key] = keep_value
	else
		breed_data[key] = value
	end
end

for key, value in pairs(breed_data) do
	if value == "SET_TO_NIL" then
		breed_data[key] = nil
	end
end

Breeds.chaos_dummy_troll = breed_data

local action_data = {}

for key, value in pairs(BreedActions.chaos_troll) do
	local keep_value = action_data[key]

	if keep_value == "SET_TO_NIL" then
		action_data[key] = nil
	elseif keep_value ~= nil then
		action_data[key] = keep_value
	else
		action_data[key] = value
	end
end

BreedActions.chaos_dummy_troll = table.create_copy(BreedActions.chaos_dummy_troll, action_data)
