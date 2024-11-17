require("scripts/unit_extensions/default_player_unit/careers/career_ability_dark_pact_base")
require("scripts/unit_extensions/default_player_unit/careers/career_ability_dark_pact_horde")
require("scripts/unit_extensions/default_player_unit/careers/career_ability_chaos_troll_vomit")
require("scripts/unit_extensions/default_player_unit/careers/career_ability_corruptor_grab")
require("scripts/unit_extensions/default_player_unit/careers/career_ability_corruptor_teleport")
require("scripts/unit_extensions/default_player_unit/careers/career_ability_gutter_runner_foff")
require("scripts/unit_extensions/default_player_unit/careers/career_ability_gutter_runner_pounce")
require("scripts/unit_extensions/default_player_unit/careers/career_ability_packmaster_equip")
require("scripts/unit_extensions/default_player_unit/careers/career_ability_packmaster_grab")
require("scripts/unit_extensions/default_player_unit/careers/career_ability_packmaster_hoist")
require("scripts/unit_extensions/default_player_unit/careers/career_ability_poison_wind_globadier_throw")
require("scripts/unit_extensions/default_player_unit/careers/career_ability_ratling_gunner_fire")
require("scripts/unit_extensions/default_player_unit/careers/career_ability_sorcerer_teleport")
require("scripts/unit_extensions/default_player_unit/careers/career_ability_vortex_sorcerer")
require("scripts/unit_extensions/default_player_unit/careers/career_ability_warpfire_thrower")

local buff_perks = require("scripts/unit_extensions/default_player_unit/buffs/settings/buff_perk_names")

ActivatedAbilitySettings.vs_gutter_runner = {
	{
		description = "career_active_desc_dr_2_2",
		name = "pounce",
		display_name = "career_active_name_dr_2",
		draw_ui_in_ghost_mode = true,
		cooldown = 0,
		input_action = "action_one",
		spawn_cooldown_percent = 0,
		hud_icon = "dark_pact_ability_pounce",
		icon = "dark_pact_ability_pounce",
		ability_class = CareerAbilityGutterRunnerPounce
	},
	{
		description = "career_active_desc_dr_2_2",
		name = "foff",
		display_name = "career_active_name_dr_2",
		input_action = "weapon_reload",
		cooldown = 15,
		spawn_cooldown_percent = 0,
		hud_icon = "dark_pact_ability_invisible",
		show_in_hud = true,
		icon = "dark_pact_ability_invisible",
		ability_class = CareerAbilityGutterRunnerFoff
	},
	{
		description = "career_active_desc_dr_2_2",
		input_action = "versus_horde_ability",
		display_name = "career_active_name_dr_2",
		draw_ui_in_ghost_mode = true,
		cooldown = 0,
		name = "horde_ability",
		spawn_cooldown_percent = 0,
		icon = "bardin_slayer_activated_ability",
		ability_class = CareerAbilityDarkPactHorde
	}
}
ActivatedAbilitySettings.vs_poison_wind_globadier = {
	{
		description = "career_active_desc_dr_2_2",
		name = "gas",
		display_name = "career_active_name_dr_2",
		input_action = "action_one",
		cooldown = 12,
		cooldown_anim_time = 1.25,
		max_stacks = 0,
		spawn_cooldown_percent = 0,
		hud_icon = "dark_pact_ability_throw_gas",
		starting_stack_count = 0,
		icon = "dark_pact_ability_throw_gas",
		ability_class = CareerAbilityPoisonWindGlobadierThrow
	},
	{
		description = "career_active_desc_dr_2_2",
		input_action = "versus_horde_ability",
		display_name = "career_active_name_dr_2",
		draw_ui_in_ghost_mode = true,
		cooldown = 0,
		name = "horde_ability",
		spawn_cooldown_percent = 0,
		icon = "bardin_slayer_activated_ability",
		ability_class = CareerAbilityDarkPactHorde
	}
}
ActivatedAbilitySettings.vs_packmaster = {
	{
		description = "career_active_desc_dr_2_2",
		name = "grab",
		display_name = "career_active_name_dr_2",
		input_action = "action_one",
		cooldown = 5,
		spawn_cooldown_percent = 0,
		hud_icon = "dark_pact_ability_hook",
		icon = "dark_pact_ability_hook",
		ability_class = CareerAbilityPackmasterGrab
	},
	{
		description = "career_active_desc_dr_2_2",
		name = "hoist",
		display_name = "career_active_name_dr_2",
		input_action = "action_one",
		cooldown = 0,
		spawn_cooldown_percent = 0,
		hud_icon = "dark_pact_ability_hoist",
		icon = "dark_pact_ability_hoist",
		ability_class = CareerAbilityPackmasterHoist
	},
	{
		description = "career_active_desc_dr_2_2",
		name = "equip",
		display_name = "career_active_name_dr_2",
		icon = "dark_pact_ability_hook_return",
		cooldown = 0,
		input_action = "action_career",
		spawn_cooldown_percent = 0,
		hud_icon = "dark_pact_ability_hook_return",
		startup_delay_time = 4,
		ability_class = CareerAbilityPackmasterEquip
	},
	{
		description = "career_active_desc_dr_2_2",
		input_action = "versus_horde_ability",
		display_name = "career_active_name_dr_2",
		draw_ui_in_ghost_mode = true,
		cooldown = 0,
		name = "horde_ability",
		spawn_cooldown_percent = 0,
		icon = "bardin_slayer_activated_ability",
		ability_class = CareerAbilityDarkPactHorde
	}
}
ActivatedAbilitySettings.vs_ratling_gunner = {
	{
		description = "career_active_desc_dr_2_2",
		name = "fire",
		display_name = "career_active_name_dr_2",
		hud_icon = "dark_pact_ability_teleport",
		cooldown = 5,
		icon = "bardin_slayer_activated_ability",
		spawn_cooldown_percent = 0,
		ability_class = CareerAbilityRatlingGunnerFire
	},
	{
		description = "career_active_desc_dr_2_2",
		input_action = "versus_horde_ability",
		display_name = "career_active_name_dr_2",
		draw_ui_in_ghost_mode = true,
		cooldown = 0,
		name = "horde_ability",
		spawn_cooldown_percent = 0,
		icon = "bardin_slayer_activated_ability",
		ability_class = CareerAbilityDarkPactHorde
	}
}
ActivatedAbilitySettings.vs_warpfire_thrower = {
	{
		description = "career_active_desc_dr_2_2",
		name = "fire",
		display_name = "career_active_name_dr_2",
		spawn_cooldown_percent = 0,
		cooldown = 2,
		icon = "bardin_slayer_activated_ability",
		ability_class = CareerAbilityWarpfireThrower
	},
	{
		description = "career_active_desc_dr_2_2",
		input_action = "versus_horde_ability",
		display_name = "career_active_name_dr_2",
		draw_ui_in_ghost_mode = true,
		cooldown = 0,
		name = "horde_ability",
		spawn_cooldown_percent = 0,
		icon = "bardin_slayer_activated_ability",
		ability_class = CareerAbilityDarkPactHorde
	}
}
ActivatedAbilitySettings.vs_chaos_troll = {
	{
		description = "career_active_desc_dr_2_2",
		input_action = "action_two",
		display_name = "career_active_name_dr_2",
		start_paused = true,
		cooldown = 24,
		name = "vomit",
		unpause_on_leave_ghost_mode = true,
		spawn_cooldown_percent = 0.1,
		icon = "bardin_slayer_activated_ability",
		ability_class = CareerAbilityChaosTrollVomit
	},
	{
		description = "career_active_desc_dr_2_2",
		input_action = "versus_horde_ability",
		display_name = "career_active_name_dr_2",
		draw_ui_in_ghost_mode = true,
		cooldown = 0,
		name = "horde_ability",
		spawn_cooldown_percent = 0,
		icon = "bardin_slayer_activated_ability",
		ability_class = CareerAbilityDarkPactHorde
	}
}
PassiveAbilitySettings.vs_gutter_runner = {
	description = "career_passive_desc_dr_2a_2",
	display_name = "career_passive_name_dr_2",
	icon = "bardin_slayer_passive",
	buffs = {
		"vs_pactsworn_melee_damage_taken"
	},
	perks = {}
}
PassiveAbilitySettings.vs_poison_wind_globadier = {
	description = "career_passive_desc_dr_2a_2",
	display_name = "career_passive_name_dr_2",
	icon = "bardin_slayer_passive",
	buffs = {
		"vs_pactsworn_melee_damage_taken"
	},
	perks = {}
}
PassiveAbilitySettings.vs_packmaster = {
	description = "career_passive_desc_dr_2a_2",
	display_name = "career_passive_name_dr_2",
	icon = "bardin_slayer_passive",
	buffs = {
		"vs_pactsworn_melee_damage_taken"
	},
	perks = {}
}
PassiveAbilitySettings.vs_ratling_gunner = {
	description = "career_passive_desc_dr_2a_2",
	display_name = "career_passive_name_dr_2",
	icon = "bardin_slayer_passive",
	buffs = {
		"vs_pactsworn_melee_damage_taken"
	},
	perks = {}
}
PassiveAbilitySettings.vs_warpfire_thrower = {
	description = "career_passive_desc_dr_2a_2",
	display_name = "career_passive_name_dr_2",
	icon = "bardin_slayer_passive",
	buffs = {
		"vs_pactsworn_melee_damage_taken",
		"vs_warpfire_thrower_no_charge_explotion"
	},
	perks = {}
}
PassiveAbilitySettings.vs_chaos_troll = {
	description = "career_passive_desc_dr_2a_2",
	display_name = "career_passive_name_dr_2",
	icon = "bardin_slayer_passive",
	buffs = {},
	perks = {}
}

for ability_id, ability_list in pairs(ActivatedAbilitySettings) do
	for i = 1, #ability_list do
		local data = ability_list[i]

		data.ability_id = i
	end
end
