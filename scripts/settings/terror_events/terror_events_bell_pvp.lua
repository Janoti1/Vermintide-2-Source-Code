local function count_event_breed(breed_name)
	return Managers.state.conflict:count_units_by_breed_during_event(breed_name)
end

local weighted_random_terror_events
local HARDEST = 5
local CATACLYSM = 6
local terror_event_blueprints = {
	bell_pvp_pacing_off = {
		{
			"control_hordes",
			enable = false
		},
		{
			"control_specials",
			enable = false
		},
		{
			"control_pacing",
			enable = false
		}
	},
	bell_pvp_pacing_on = {
		{
			"control_hordes",
			enable = true
		},
		{
			"control_specials",
			enable = true
		},
		{
			"control_pacing",
			enable = true
		}
	},
	bell_pvp_capzone_event_reinforcements_start = {
		{
			"set_master_event_running",
			name = "bell_pvp_capzone_event_reinforcements_start"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "bell_pvp_capzone_start",
			composition_type = "event_medium"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"delay",
			duration = 10
		},
		{
			"flow_event",
			flow_event_name = "bell_pvp_capzone_event_reinforcements_start_done"
		}
	},
	bell_pvp_capzone_reinforcements = {
		{
			"set_master_event_running",
			name = "bell_pvp_capzone_reinforcements"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"delay",
			duration = 30
		},
		{
			"flow_event",
			flow_event_name = "bell_pvp_capzone_reinforcements_done"
		}
	},
	bell_pvp_payload_event_reinforcements_start = {
		{
			"set_master_event_running",
			name = "bell_pvp_payload_event_reinforcements_start"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			limit_spawners = 4,
			spawner_id = "bell_pvp_payload_start",
			composition_type = "event_medium"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"delay",
			duration = 10
		},
		{
			"flow_event",
			flow_event_name = "bell_pvp_payload_event_reinforcements_start_done"
		}
	},
	bell_pvp_payload_reinforcements = {
		{
			"set_master_event_running",
			name = "bell_pvp_payload_reinforcements"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"delay",
			duration = 30
		},
		{
			"flow_event",
			flow_event_name = "bell_pvp_payload_reinforcements_done"
		}
	},
	canyon_bell_event = {
		{
			"set_master_event_running",
			name = "canyon_bell_event"
		},
		{
			"set_time_challenge",
			time_challenge_name = "bell_speed_event"
		},
		{
			"set_time_challenge",
			time_challenge_name = "bell_speed_event_cata"
		},
		{
			"disable_kick"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			spawner_id = "canyon_bell_event",
			composition_type = "event_medium"
		},
		{
			"event_horde",
			spawner_id = "canyon_bell_event",
			composition_type = "plague_monks_small"
		},
		{
			"event_horde",
			spawner_id = "canyon_bell_event",
			composition_type = "event_extra_spice_medium"
		},
		{
			"delay",
			duration = 5
		},
		{
			"control_pacing",
			enable = false
		},
		{
			"continue_when",
			condition = function (t)
				return count_event_breed("skaven_slave") < 6
			end
		},
		{
			"flow_event",
			flow_event_name = "canyon_bell_event_done"
		}
	},
	canyon_ogre_boss = {
		{
			"set_master_event_running",
			name = "canyon_ogre_boss"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"spawn_at_raw",
			spawner_id = "canyon_ogre_boss",
			breed_name = "skaven_clan_rat_with_shield"
		},
		{
			"event_horde",
			spawner_id = "canyon_bell_end_guards",
			composition_type = "event_extra_spice_small"
		},
		{
			"event_horde",
			spawner_id = "canyon_bell_end_elite_guards",
			composition_type = "plague_monks_small"
		}
	},
	canyon_escape_event = {
		{
			"set_master_event_running",
			name = "canyon_escape_event"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			spawner_id = "canyon_escape_event",
			composition_type = "event_large"
		},
		{
			"delay",
			duration = 5
		},
		{
			"control_specials",
			enable = true
		},
		{
			"control_pacing",
			enable = false
		}
	},
	canyon_escape_event_completion_check = {
		{
			"has_completed_time_challenge",
			time_challenge_name = "bell_speed_event"
		},
		{
			"has_completed_time_challenge",
			time_challenge_name = "bell_speed_event_cata"
		}
	}
}

return terror_event_blueprints, weighted_random_terror_events
