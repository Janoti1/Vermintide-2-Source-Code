require("scripts/settings/profiles/career_settings")

ActionTemplates = ActionTemplates or {}
ActionTemplates.wield = {
	default = {
		wield_cooldown = 0.35,
		weapon_action_hand = "either",
		kind = "wield",
		keep_buffer = true,
		action_priority = 2,
		uninterruptible = true,
		total_time = 0,
		condition_func = function (action_user, input_extension)
			local inventory_extension = ScriptUnit.extension(action_user, "inventory_system")

			return inventory_extension:can_wield()
		end,
		chain_condition_func = function (action_user, input_extension)
			local inventory_extension = ScriptUnit.extension(action_user, "inventory_system")

			return inventory_extension:can_wield()
		end,
		allowed_chain_actions = {}
	}
}
ActionTemplates.wield_left = table.clone(ActionTemplates.wield)
ActionTemplates.wield_left.default.weapon_action_hand = "left"
ActionTemplates.wield_and_use = {
	default = {
		ammo_usage = 1,
		slot_to_wield = "slot_level_event",
		weapon_action_hand = "either",
		kind = "instant_wield",
		uninterruptible = true,
		total_time = 0,
		condition_func = function (action_user, input_extension)
			local inventory_extension = ScriptUnit.extension(action_user, "inventory_system")

			return inventory_extension:can_wield()
		end,
		chain_condition_func = function (action_user, input_extension)
			local inventory_extension = ScriptUnit.extension(action_user, "inventory_system")

			return inventory_extension:can_wield()
		end,
		action_on_wield = {
			action = "action_one",
			sub_action = "default"
		},
		allowed_chain_actions = {}
	}
}
ActionTemplates.reload = {
	default = {
		weapon_action_hand = "either",
		kind = "reload",
		total_time = 0,
		condition_func = function (action_user, input_extension)
			local inventory_extension = ScriptUnit.extension(action_user, "inventory_system")
			local status_extension = ScriptUnit.extension(action_user, "status_system")
			local ammo_extension
			local zooming = status_extension:is_zooming()

			if zooming then
				return false
			end

			local equipment = inventory_extension:equipment()

			if equipment.right_hand_wielded_unit ~= nil and ScriptUnit.has_extension(equipment.right_hand_wielded_unit, "ammo_system") then
				ammo_extension = ScriptUnit.extension(equipment.right_hand_wielded_unit, "ammo_system")
			elseif equipment.left_hand_wielded_unit ~= nil and ScriptUnit.has_extension(equipment.left_hand_wielded_unit, "ammo_system") then
				ammo_extension = ScriptUnit.extension(equipment.left_hand_wielded_unit, "ammo_system")
			end

			if not ammo_extension then
				return false
			end

			local can_reload = ammo_extension:can_reload()
			local is_reloading = ammo_extension:is_reloading()

			return can_reload and not is_reloading
		end,
		chain_condition_func = function (action_user, input_extension)
			local inventory_extension = ScriptUnit.extension(action_user, "inventory_system")
			local status_extension = ScriptUnit.extension(action_user, "status_system")
			local ammo_extension
			local zooming = status_extension:is_zooming()

			if zooming then
				return false
			end

			local equipment = inventory_extension:equipment()

			if equipment.right_hand_wielded_unit ~= nil and ScriptUnit.has_extension(equipment.right_hand_wielded_unit, "ammo_system") then
				ammo_extension = ScriptUnit.extension(equipment.right_hand_wielded_unit, "ammo_system")
			elseif equipment.left_hand_wielded_unit ~= nil and ScriptUnit.has_extension(equipment.left_hand_wielded_unit, "ammo_system") then
				ammo_extension = ScriptUnit.extension(equipment.left_hand_wielded_unit, "ammo_system")
			end

			if not ammo_extension then
				return false
			end

			local can_reload = ammo_extension:can_reload()
			local is_reloading = ammo_extension:is_reloading()

			return can_reload and not is_reloading
		end,
		allowed_chain_actions = {}
	},
	auto_reload_on_empty = {
		weapon_action_hand = "either",
		kind = "reload",
		total_time = 0,
		condition_func = function (action_user, input_extension)
			return false
		end,
		chain_condition_func = function (action_user, input_extension)
			local inventory_extension = ScriptUnit.extension(action_user, "inventory_system")
			local status_extension = ScriptUnit.extension(action_user, "status_system")
			local ammo_extension
			local zooming = status_extension:is_zooming()

			if zooming then
				return false
			end

			local equipment = inventory_extension:equipment()

			if equipment.right_hand_wielded_unit ~= nil and ScriptUnit.has_extension(equipment.right_hand_wielded_unit, "ammo_system") then
				ammo_extension = ScriptUnit.extension(equipment.right_hand_wielded_unit, "ammo_system")
			elseif equipment.left_hand_wielded_unit ~= nil and ScriptUnit.has_extension(equipment.left_hand_wielded_unit, "ammo_system") then
				ammo_extension = ScriptUnit.extension(equipment.left_hand_wielded_unit, "ammo_system")
			end

			if not ammo_extension then
				return false
			end

			local can_reload = ammo_extension:can_reload()
			local is_reloading = ammo_extension:is_reloading()
			local ammo_count = ammo_extension:ammo_count()

			return can_reload and ammo_count == 0 and not is_reloading
		end,
		allowed_chain_actions = {}
	}
}
ActionTemplates.action_inspect = {
	default = {
		weapon_action_hand = "either",
		kind = "dummy",
		total_time = 1,
		condition_func = function (action_user, input_extension, ammo_extension)
			if ammo_extension and ammo_extension:is_reloading() then
				return false
			end

			if Managers.input:is_device_active("gamepad") then
				local level_key = Managers.state.game_mode:level_key()
				local level_settings = LevelSettings[level_key]

				if level_settings.hub_level and not MotionControlSettings.use_motion_controls then
					return true
				else
					return false
				end
			else
				return true
			end
		end,
		allowed_chain_actions = {
			{
				start_time = 0,
				end_time = 0,
				input = "action_inspect_hold"
			},
			{
				sub_action = "action_inspect_hold",
				start_time = 0,
				action = "action_inspect",
				auto_chain = true
			}
		}
	},
	action_inspect_hold = {
		cooldown = 0.15,
		minimum_hold_time = 0.3,
		anim_end_event = "inspect_end",
		kind = "dummy",
		can_abort_reload = false,
		weapon_action_hand = "either",
		hold_input = "action_inspect_hold",
		anim_event = "inspect_start",
		anim_end_event_condition_func = function (unit, end_reason)
			return end_reason ~= "new_interupting_action"
		end,
		total_time = math.huge,
		allowed_chain_actions = {},
		weapon_sway_settings = {
			recentering_lerp_speed = 0,
			lerp_speed = 10,
			sway_range = 1,
			camera_look_sensitivity = 1,
			look_sensitivity = 1.5
		}
	}
}
ActionTemplates.action_inspect_left = table.clone(ActionTemplates.action_inspect)
ActionTemplates.action_inspect_left.default.weapon_action_hand = "left"
ActionTemplates.action_inspect_left.action_inspect_hold.weapon_action_hand = "left"
ActionTemplates.give_item_on_defend = {
	interaction_priority = 5,
	ammo_usage = 1,
	anim_end_event = "attack_finished",
	kind = "interaction",
	interaction_type = "give_item",
	weapon_action_hand = "left",
	uninterruptible = true,
	do_not_validate_with_hold = true,
	hold_input = "action_two_hold",
	anim_event = "parry_pose",
	total_time = 0,
	anim_end_event_condition_func = function (unit, end_reason)
		return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
	end,
	allowed_chain_actions = {},
	condition_func = function (attacker_unit)
		local is_bot_player = Managers.player:owner(attacker_unit).bot_player

		if not is_bot_player and not Application.user_setting("give_on_defend") then
			return false
		end

		return ScriptUnit.extension(attacker_unit, "interactor_system"):can_interact(nil, "give_item")
	end
}
ActionTemplates.instant_give_item = {
	default = {
		kind = "dummy",
		weapon_action_hand = "left",
		total_time = 0,
		allowed_chain_actions = {}
	},
	instant_give = {
		interaction_priority = 4,
		ammo_usage = 1,
		anim_end_event = "attack_finished",
		kind = "interaction",
		interaction_type = "give_item",
		weapon_action_hand = "left",
		uninterruptible = true,
		hold_input = "interact",
		anim_event = "parry_pose",
		total_time = 0,
		anim_end_event_condition_func = function (unit, end_reason)
			return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
		end,
		allowed_chain_actions = {},
		condition_func = function (attacker_unit)
			local interactor_extension = ScriptUnit.extension(attacker_unit, "interactor_system")

			return interactor_extension and interactor_extension:can_interact(nil, "give_item")
		end
	}
}
ActionTemplates.career_skill_dummy = {
	default = {
		kind = "dummy",
		weapon_action_hand = "either",
		total_time = 0,
		allowed_chain_actions = {}
	}
}
ActionTemplates.action_career_bw_1 = {
	default = {
		slot_to_wield = "slot_career_skill_weapon",
		input_override = "action_career",
		weapon_action_hand = "either",
		kind = "instant_wield",
		total_time = 0,
		condition_func = function (action_user, input_extension)
			local buff_extension = ScriptUnit.extension(action_user, "buff_system")
			local is_disabled = buff_extension:has_buff_perk("disable_career_ability")

			if is_disabled then
				return false
			end

			local career_extension = ScriptUnit.extension(action_user, "career_system")
			local activated_ability_data = career_extension:get_activated_ability_data()

			return activated_ability_data.action_name == "action_career_bw_1" and career_extension:can_use_activated_ability()
		end,
		action_on_wield = {
			action = "action_career_hold",
			sub_action = "default"
		},
		allowed_chain_actions = {}
	}
}
ActionTemplates.action_career_dr_3 = {
	default = {
		slot_to_wield = "slot_career_skill_weapon",
		input_override = "action_career",
		weapon_action_hand = "either",
		kind = "instant_wield",
		total_time = 0,
		condition_func = function (action_user, input_extension)
			local buff_extension = ScriptUnit.extension(action_user, "buff_system")
			local is_disabled = buff_extension:has_buff_perk("disable_career_ability")

			if is_disabled then
				return false
			end

			local career_extension = ScriptUnit.extension(action_user, "career_system")
			local activated_ability_data = career_extension:get_activated_ability_data()

			return activated_ability_data.action_name == "action_career_dr_3" and career_extension:can_use_activated_ability()
		end,
		action_on_wield = {
			action = "action_career_hold",
			sub_action = "default"
		},
		allowed_chain_actions = {}
	}
}
ActionTemplates.action_career_wh_2 = {
	default = {
		slot_to_wield = "slot_career_skill_weapon",
		input_override = "action_career",
		weapon_action_hand = "either",
		kind = "instant_wield",
		total_time = 0,
		condition_func = function (action_user, input_extension)
			local buff_extension = ScriptUnit.extension(action_user, "buff_system")
			local is_disabled = buff_extension:has_buff_perk("disable_career_ability")

			if is_disabled then
				return false
			end

			local career_extension = ScriptUnit.extension(action_user, "career_system")
			local activated_ability_data = career_extension:get_activated_ability_data()

			return activated_ability_data.action_name == "action_career_wh_2" and career_extension:can_use_activated_ability()
		end,
		action_on_wield = {
			action = "action_career_hold",
			sub_action = "default"
		},
		allowed_chain_actions = {}
	}
}
ActionTemplates.action_career_we_3 = {
	default = {
		slot_to_wield = "slot_career_skill_weapon",
		input_override = "action_career",
		weapon_action_hand = "either",
		kind = "instant_wield",
		total_time = 0,
		condition_func = function (action_user, input_extension)
			local inventory_extension = ScriptUnit.extension(action_user, "inventory_system")
			local slot_data = inventory_extension:get_slot_data("slot_career_skill_weapon")

			if not slot_data then
				return false
			end

			local buff_extension = ScriptUnit.extension(action_user, "buff_system")
			local is_disabled = buff_extension:has_buff_perk("disable_career_ability")

			if is_disabled then
				return false
			end

			local career_extension = ScriptUnit.extension(action_user, "career_system")
			local activated_ability_data = career_extension:get_activated_ability_data(1)

			if not activated_ability_data then
				return false
			end

			local talent_extension = ScriptUnit.has_extension(action_user, "talent_system")
			local piercing_talent = talent_extension:has_talent("kerillian_waywatcher_activated_ability_piercing_shot")
			local can_use = career_extension:can_use_activated_ability(1)

			return activated_ability_data.action_name == "action_career_we_3" and can_use and not piercing_talent
		end,
		action_on_wield = {
			action = "action_career_hold",
			sub_action = "default"
		},
		allowed_chain_actions = {}
	}
}
ActionTemplates.action_career_we_3_piercing = {
	default = {
		slot_to_wield = "slot_career_skill_weapon",
		input_override = "action_career",
		weapon_action_hand = "either",
		kind = "instant_wield",
		total_time = 0,
		condition_func = function (action_user, input_extension)
			local inventory_extension = ScriptUnit.extension(action_user, "inventory_system")
			local slot_data = inventory_extension:get_slot_data("slot_career_skill_weapon")

			if not slot_data then
				return false
			end

			local buff_extension = ScriptUnit.extension(action_user, "buff_system")
			local is_disabled = buff_extension:has_buff_perk("disable_career_ability")

			if is_disabled then
				return false
			end

			local career_extension = ScriptUnit.extension(action_user, "career_system")
			local activated_ability_data = career_extension:get_activated_ability_data(2)

			if not activated_ability_data then
				return false
			end

			local talent_extension = ScriptUnit.has_extension(action_user, "talent_system")
			local piercing_talent = talent_extension:has_talent("kerillian_waywatcher_activated_ability_piercing_shot")
			local can_use = career_extension:can_use_activated_ability(1)

			return activated_ability_data.action_name == "action_career_we_3_piercing" and can_use and piercing_talent
		end,
		action_on_wield = {
			action = "action_career_hold",
			sub_action = "default"
		},
		allowed_chain_actions = {}
	}
}

DLCUtils.require_list("action_template_files")

for _, action_names in pairs(CareerActionNames) do
	for i = 1, #action_names do
		local action_name = action_names[i]
		local template = ActionTemplates[action_name]
		local default_data = template.default
		local condition_func = default_data.condition_func

		default_data.chain_condition_func = condition_func
	end
end
