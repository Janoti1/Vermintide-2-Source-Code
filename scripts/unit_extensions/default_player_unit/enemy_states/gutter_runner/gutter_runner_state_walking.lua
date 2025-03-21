GutterRunnerStateWalking = class(GutterRunnerStateWalking, EnemyCharacterStateWalking)

GutterRunnerStateWalking.init = function (self, character_state_init_context, name)
	GutterRunnerStateWalking.super.init(self, character_state_init_context, name)

	self._pounce_ability_id = self._career_extension:ability_id("pounce")
	self._foff_ability_id = self._career_extension:ability_id("foff")
end

GutterRunnerStateWalking.update = function (self, unit, input, dt, context, t)
	local handled = self:common_state_changes()

	if handled then
		return
	end

	local csm = self._csm
	local career_extension = self._career_extension

	if career_extension:ability_was_triggered(self._pounce_ability_id) then
		csm:change_state("gutter_runner_prowling")

		return
	end

	if career_extension:ability_was_triggered(self._foff_ability_id) then
		csm:change_state("gutter_runner_foff")

		return
	end

	if not self._status_extension:is_invisible() then
		self:_update_taunt_dialogue(t)
	end

	local ghost_mode_extension = self._ghost_mode_extension
	local in_ghost_mode = ghost_mode_extension:is_in_ghost_mode()

	handled = self:common_movement(in_ghost_mode, dt)
end
