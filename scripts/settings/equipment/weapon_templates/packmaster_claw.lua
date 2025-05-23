local weapon_template = {}

weapon_template.actions = {}
weapon_template.right_hand_unit = "units/weapons/player/wpn_packmaster_claw/wpn_packmaster_claw"
weapon_template.right_hand_attachment_node_linking = AttachmentNodeLinking.packmaster_claw
weapon_template.wield_anim = "to_packmaster_claw"
weapon_template.state_machine = "units/beings/player/first_person_base/state_machines/common"
weapon_template.load_state_machine = false
weapon_template.mechanism_overrides = {
	versus = {
		right_hand_unit = "units/weapons/player/wpn_packmaster_claw_combo/wpn_packmaster_claw_combo"
	}
}

return {
	packmaster_claw = table.clone(weapon_template)
}
