local ACTIONS = BreedActions.chaos_tether_sorcerer

BreedBehaviors.chaos_tether_sorcerer = {
	"BTSelector",
	{
		"BTSpawningAction",
		name = "spawn",
		condition = "spawn",
		enter_hook = "corruptor_enter",
		action_data = ACTIONS.spawn
	},
	{
		"BTInVortexAction",
		condition = "in_vortex",
		name = "in_vortex"
	},
	{
		"BTFallAction",
		condition = "is_falling",
		name = "falling"
	},
	{
		"BTStaggerAction",
		name = "stagger",
		condition = "stagger",
		action_data = ACTIONS.stagger
	},
	{
		"BTSelector",
		{
			"BTTeleportAction",
			condition = "at_teleport_smartobject",
			name = "teleport"
		},
		{
			"BTChaosSorcererTeleportAction",
			condition = "at_climb_smartobject",
			name = "climb_teleport"
		},
		{
			"BTChaosSorcererTeleportAction",
			condition = "at_jump_smartobject",
			name = "jump_teleport"
		},
		{
			"BTChaosSorcererTeleportAction",
			condition = "at_door_smartobject",
			name = "door_teleport"
		},
		condition = "at_smartobject",
		name = "smartobject"
	},
	{
		"BTSelector",
		{
			"BTChaosSorcererTetherSkulkAction",
			name = "skulk_tether",
			action_data = ACTIONS.skulk_tether
		},
		name = "in_combat"
	},
	{
		"BTIdleAction",
		name = "idle"
	},
	name = "chaos_tether_sorcerer"
}
