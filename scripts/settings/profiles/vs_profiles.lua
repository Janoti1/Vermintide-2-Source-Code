local base_character_states = {
	"EnemyCharacterStateDead",
	"EnemyCharacterStateInteracting",
	"EnemyCharacterStateInspecting",
	"EnemyCharacterStateDodging",
	"EnemyCharacterStateCatapulted",
	"EnemyCharacterStateStunned",
	"EnemyCharacterStateUsingTransport",
	"EnemyCharacterStateInVortex",
	"EnemyCharacterStateLunging",
	"EnemyCharacterStateLeaping",
	"EnemyCharacterStateClimbing",
	"EnemyCharacterStateTunneling",
	"EnemyCharacterStateSpawning",
	"EnemyCharacterStateJumpAcross",
	"EnemyCharacterStateStaggered"
}
local base_camera_states = {
	"CameraStateIdle",
	"CameraStateFollow",
	"CameraStateFollowThirdPerson",
	"CameraStateFollowAttract",
	"CameraStateFollowThirdPersonLedge",
	"CameraStateFollowThirdPersonOverShoulder",
	"CameraStateFollowThirdPersonSmartClimbing",
	"CameraStateFollowThirdPersonTunneling",
	"CameraStateFollowChaosSpawnGrabbed",
	"CameraStateObserver",
	"CameraStateInteraction"
}
local VSProfiles = {
	{
		character_vo = "vs_undecided",
		display_name = "vs_undecided",
		ingame_short_display_name = "vs_undecided",
		character_name = "vs_undecided",
		ingame_display_name = "vs_undecided",
		affiliation = "dark_pact",
		dialogue_faction = "enemy",
		careers = {
			CareerSettings.vs_undecided
		},
		base_character_states = {
			"PlayerCharacterStateDead"
		},
		base_camera_states = base_camera_states
	},
	{
		career_voice_parameter = "dwarf_career_voice_effect",
		player_check_for_jumps = true,
		display_name = "vs_poison_wind_globadier",
		ui_portrait = "unit_frame_portrait_vs_poison_wind_globadier",
		aim_template = "enemy_character",
		ingame_short_display_name = "vs_poison_wind_globadier",
		character_name = "vs_poison_wind_globadier",
		character_vo = "vs_poison_wind_globadier",
		unit_name = "dwarf_ranger",
		ui_portrait_small = "portrait_enemy_globadier_versus",
		unit_template_name = "player_unit_dark_pact",
		dialogue_faction = "enemy",
		default_wielded_slot = "slot_melee",
		mover_profile = "filter_player_mover_pactsworn",
		role = "special",
		ingame_display_name = "vs_poison_wind_globadier",
		affiliation = "dark_pact",
		enemy_role = "area_damage",
		breed = PlayerBreeds.vs_poison_wind_globadier,
		career_voice_parameter_values = {
			0,
			100,
			50
		},
		room_profile = RoomProfiles.dwarf_ranger,
		first_person_heights = {
			grabbed_by_tentacle = 1.7,
			knocked_down = 0.7,
			crouch = 1,
			stand = 1.5
		},
		careers = {
			CareerSettings.vs_poison_wind_globadier
		},
		base_character_states = base_character_states,
		base_camera_states = base_camera_states
	},
	{
		career_voice_parameter = "victor_career_voice_effect",
		player_check_for_jumps = true,
		display_name = "vs_gutter_runner",
		ui_portrait = "unit_frame_portrait_vs_gutter_runner",
		aim_template = "enemy_character",
		ingame_short_display_name = "vs_gutter_runner",
		character_name = "vs_gutter_runner",
		character_vo = "vs_gutter_runner",
		unit_name = "witch_hunter",
		ui_portrait_small = "portrait_enemy_gutter_runner_versus",
		unit_template_name = "player_unit_dark_pact",
		dialogue_faction = "enemy",
		dead_player_destroy_time = 0,
		default_wielded_slot = "slot_melee",
		mover_profile = "filter_player_mover_pactsworn",
		role = "special",
		ingame_display_name = "vs_gutter_runner",
		affiliation = "dark_pact",
		enemy_role = "disabler",
		breed = PlayerBreeds.vs_gutter_runner,
		career_voice_parameter_values = {
			0,
			100,
			50
		},
		room_profile = RoomProfiles.witch_hunter,
		first_person_heights = {
			grabbed_by_tentacle = 1.9,
			knocked_down = 1,
			crouch = 0.5,
			stand = 1
		},
		careers = {
			CareerSettings.vs_gutter_runner
		},
		base_character_states = base_character_states,
		base_camera_states = base_camera_states
	},
	{
		career_voice_parameter = "kerillian_career_voice_effect",
		player_check_for_jumps = true,
		display_name = "vs_packmaster",
		ui_portrait = "unit_frame_portrait_vs_packmaster",
		aim_template = "enemy_character",
		ingame_short_display_name = "vs_packmaster",
		character_name = "vs_packmaster",
		character_vo = "vs_packmaster",
		unit_name = "way_watcher",
		ui_portrait_small = "portrait_enemy_packmaster_versus",
		unit_template_name = "player_unit_dark_pact",
		dialogue_faction = "enemy",
		default_wielded_slot = "slot_melee",
		mover_profile = "filter_player_mover_pactsworn",
		role = "special",
		ingame_display_name = "vs_packmaster",
		affiliation = "dark_pact",
		enemy_role = "disabler",
		breed = PlayerBreeds.vs_packmaster,
		career_voice_parameter_values = {
			0,
			100,
			50
		},
		room_profile = RoomProfiles.wood_elf,
		first_person_heights = {
			grabbed_by_tentacle = 1.7,
			knocked_down = 1,
			crouch = 1,
			stand = 1.2
		},
		careers = {
			CareerSettings.vs_packmaster
		},
		base_character_states = base_character_states,
		base_camera_states = base_camera_states
	},
	{
		career_voice_parameter = "dwarf_career_voice_effect",
		player_check_for_jumps = true,
		display_name = "vs_ratling_gunner",
		ui_portrait = "unit_frame_portrait_vs_ratling_gunner",
		aim_template = "enemy_character",
		ingame_short_display_name = "vs_ratling_gunner",
		character_name = "vs_ratling_gunner",
		character_vo = "vs_ratling_gunner",
		unit_name = "dwarf_ranger",
		ui_portrait_small = "unit_frame_portrait_enemy_ratling_gunner",
		unit_template_name = "player_unit_dark_pact",
		dialogue_faction = "enemy",
		default_wielded_slot = "slot_melee",
		mover_profile = "filter_player_mover_pactsworn",
		role = "special",
		ingame_display_name = "vs_ratling_gunner",
		affiliation = "dark_pact",
		enemy_role = "area_damage",
		breed = PlayerBreeds.vs_ratling_gunner,
		career_voice_parameter_values = {
			0,
			100,
			50
		},
		room_profile = RoomProfiles.dwarf_ranger,
		first_person_heights = {
			grabbed_by_tentacle = 1.7,
			knocked_down = 0.7,
			crouch = 1,
			stand = 1.5
		},
		careers = {
			CareerSettings.vs_ratling_gunner
		},
		base_character_states = base_character_states,
		base_camera_states = base_camera_states
	},
	{
		career_voice_parameter = "dwarf_career_voice_effect",
		player_check_for_jumps = true,
		display_name = "vs_warpfire_thrower",
		ui_portrait = "unit_frame_portrait_vs_warpfire_thrower",
		aim_template = "enemy_character",
		ingame_short_display_name = "vs_warpfire_thrower",
		character_name = "vs_warpfire_thrower",
		character_vo = "vs_warpfire_thrower",
		unit_name = "dwarf_ranger",
		ui_portrait_small = "portrait_enemy_warpfire_versus",
		unit_template_name = "player_unit_dark_pact",
		dialogue_faction = "enemy",
		default_wielded_slot = "slot_melee",
		mover_profile = "filter_player_mover_pactsworn",
		role = "special",
		ingame_display_name = "vs_warpfire_thrower",
		affiliation = "dark_pact",
		enemy_role = "area_damage",
		breed = PlayerBreeds.vs_warpfire_thrower,
		career_voice_parameter_values = {
			0,
			100,
			50
		},
		room_profile = RoomProfiles.dwarf_ranger,
		first_person_heights = {
			grabbed_by_tentacle = 1.7,
			knocked_down = 0.7,
			crouch = 1,
			stand = 1.5
		},
		careers = {
			CareerSettings.vs_warpfire_thrower
		},
		base_character_states = base_character_states,
		base_camera_states = base_camera_states
	},
	{
		career_voice_parameter = "dwarf_career_voice_effect",
		player_check_for_jumps = true,
		display_name = "vs_chaos_troll",
		ui_portrait = "unit_frame_portrait_vs_chaos_troll",
		aim_template = "enemy_character",
		ingame_short_display_name = "vs_chaos_troll",
		character_name = "vs_chaos_troll",
		character_vo = "vs_chaos_troll",
		unit_name = "dwarf_ranger",
		ui_portrait_small = "unit_frame_portrait_enemy_chaos_troll",
		unit_template_name = "player_unit_dark_pact",
		dialogue_faction = "enemy",
		supports_motion_sickness_modes = true,
		default_wielded_slot = "slot_melee",
		mover_profile = "filter_player_mover_pactsworn",
		role = "boss",
		ingame_display_name = "vs_chaos_troll",
		affiliation = "dark_pact",
		enemy_role = "boss",
		breed = PlayerBreeds.vs_chaos_troll,
		career_voice_parameter_values = {
			0,
			100,
			50
		},
		room_profile = RoomProfiles.dwarf_ranger,
		first_person_heights = {
			grabbed_by_tentacle = 1.7,
			knocked_down = 0.7,
			crouch = 1.5,
			stand = 2.7
		},
		careers = {
			CareerSettings.vs_chaos_troll
		},
		base_character_states = base_character_states,
		base_camera_states = base_camera_states
	},
	{
		career_voice_parameter = "dwarf_career_voice_effect",
		player_check_for_jumps = true,
		display_name = "vs_rat_ogre",
		ui_portrait = "unit_frame_portrait_vs_rat_ogre",
		aim_template = "enemy_character",
		ingame_short_display_name = "vs_rat_ogre",
		character_name = "vs_rat_ogre",
		character_vo = "vs_rat_ogre",
		unit_name = "dwarf_ranger",
		ui_portrait_small = "unit_frame_portrait_enemy_rat_ogre",
		unit_template_name = "player_unit_dark_pact",
		dialogue_faction = "enemy",
		default_wielded_slot = "slot_melee",
		mover_profile = "filter_player_mover_pactsworn",
		role = "boss",
		ingame_display_name = "vs_rat_ogre",
		affiliation = "dark_pact",
		enemy_role = "boss",
		career_voice_parameter_values = {
			0,
			100,
			50
		},
		room_profile = RoomProfiles.dwarf_ranger,
		first_person_heights = {
			grabbed_by_tentacle = 1.7,
			knocked_down = 0.7,
			crouch = 1.5,
			stand = 2.2
		},
		careers = {
			CareerSettings.vs_rat_ogre
		},
		base_character_states = base_character_states,
		base_camera_states = base_camera_states
	},
	{
		role = "spectator",
		display_name = "spectator",
		affiliation = "spectators",
		careers = {
			CareerSettings.spectator
		},
		base_character_states = {
			"PlayerCharacterStateDead"
		},
		base_camera_states = {
			"CameraStateIdle",
			"CameraStateObserverSpectator"
		}
	}
}

return VSProfiles
