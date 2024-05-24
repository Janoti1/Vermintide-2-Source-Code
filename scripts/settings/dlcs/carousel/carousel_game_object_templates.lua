local settings = DLCSettings.carousel

settings.game_object_templates = {}

local game_object_templates = settings.game_object_templates

game_object_templates.versus_dark_pact_climbing_interaction_unit = {
	game_object_created_func_name = "game_object_created_network_unit",
	syncs_position = true,
	syncs_rotation = true,
	game_object_destroyed_func_name = "game_object_destroyed_network_unit",
	is_level_unit = false
}
