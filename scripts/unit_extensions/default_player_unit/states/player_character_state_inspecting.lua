PlayerCharacterStateInspecting = class(PlayerCharacterStateInspecting, PlayerCharacterState)

PlayerCharacterStateInspecting.init = function (self, character_state_init_context)
	PlayerCharacterState.init(self, character_state_init_context, "inspecting")

	local context = character_state_init_context
end

PlayerCharacterStateInspecting.on_enter = function (self, unit, input, dt, context, t, previous_state, params)
	self.locomotion_extension:set_wanted_velocity(Vector3.zero())
	CharacterStateHelper.change_camera_state(self.player, "follow_third_person")
	self.first_person_extension:set_first_person_mode(false)
	CharacterStateHelper.stop_weapon_actions(self.inventory_extension, "inspecting")
	CharacterStateHelper.stop_career_abilities(self.career_extension, "inspecting")
	CharacterStateHelper.play_animation_event(unit, "idle")
	CharacterStateHelper.play_animation_event_first_person(self.first_person_extension, "idle")
	self.status_extension:set_inspecting(true)
end

PlayerCharacterStateInspecting.on_exit = function (self, unit, input, dt, context, t, next_state)
	CharacterStateHelper.change_camera_state(self.player, "follow")
	self.first_person_extension:toggle_visibility(CameraTransitionSettings.perspective_transition_time)
	self.status_extension:set_inspecting(false)
end

PlayerCharacterStateInspecting.update = function (self, unit, input, dt, context, t)
	local csm = self.csm
	local unit = self.unit
	local input_extension = self.input_extension
	local interactor_extension = self.interactor_extension
	local camera_manager = Managers.state.camera
	local status_extension = self.status_extension

	if CharacterStateHelper.do_common_state_transitions(status_extension, csm) then
		return
	end

	local world = self.world

	if CharacterStateHelper.is_ledge_hanging(world, unit, self.temp_params) then
		csm:change_state("ledge_hanging", self.temp_params)

		return
	end

	if self.cosmetic_extension:get_queued_3p_emote() then
		csm:change_state("emote")

		return
	end

	if not input_extension:get("character_inspecting") then
		csm:change_state("standing")

		return
	end

	if not csm.state_next and status_extension.do_leap then
		csm:change_state("leaping")

		return
	end

	self.locomotion_extension:set_disable_rotation_update()
	CharacterStateHelper.look(input_extension, self.player.viewport_name, self.first_person_extension, status_extension, self.inventory_extension)
end
