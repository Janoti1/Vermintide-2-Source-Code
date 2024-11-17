local ACTIONS = BreedActions.human_pleb

BreedBehaviors.human_pleb = {
	"BTSelector",
	{
		"BTSpawningAction",
		condition = "spawn",
		name = "spawn"
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
		condition = "at_smartobject",
		name = "smartobject"
	},
	{
		"BTHesitateAction",
		name = "hesitate",
		condition = "is_alerted",
		action_data = ACTIONS.alerted
	},
	{
		"BTUtilityNode",
		action_data = ACTIONS.utility_action,
		{
			"BTClanRatFollowAction",
			name = "follow",
			action_data = ACTIONS.follow
		},
		{
			"BTAttackAction",
			name = "running_attack",
			condition = "ask_target_before_attacking",
			action_data = ACTIONS.running_attack
		},
		{
			"BTAttackAction",
			name = "normal_attack",
			condition = "ask_target_before_attacking",
			action_data = ACTIONS.normal_attack
		},
		name = "in_combat",
		condition = "confirmed_player_sighting"
	},
	{
		"BTAlertedAction",
		name = "alerted",
		condition = "player_spotted",
		action_data = ACTIONS.alerted
	},
	{
		"BTMoveToGoalAction",
		name = "move_to_goal",
		condition = "has_goal_destination",
		action_data = ACTIONS.move_to_goal
	},
	{
		"BTSequence",
		{
			"BTInterestPointChooseAction",
			name = "interest_point_choose",
			action_data = ACTIONS.interest_point_choose
		},
		{
			"BTInterestPointApproachAction",
			name = "interest_point_approach"
		},
		{
			"BTInterestPointUseAction",
			name = "interest_point_use",
			action_data = ACTIONS.interest_point_choose
		},
		condition = "should_use_interest_point",
		name = "interest_point"
	},
	{
		"BTIdleAction",
		name = "idle",
		condition = "no_target",
		action_data = ACTIONS.idle
	},
	{
		"BTFallbackIdleAction",
		name = "fallback_idle",
		action_data = ACTIONS.fallback_idle
	},
	name = "human_pleb"
}
