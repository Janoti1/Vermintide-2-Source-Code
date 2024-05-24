PoisonWindGlobadierStateFalling = class(PoisonWindGlobadierStateFalling, EnemyCharacterStateFalling)

PoisonWindGlobadierStateFalling.init = function (self, character_state_init_context)
	PoisonWindGlobadierStateFalling.super.init(self, character_state_init_context)

	self._gas_ability_id = self._career_extension:ability_id("gas")
end

PoisonWindGlobadierStateFalling.update = function (self, unit, input, dt, context, t)
	local csm = self._csm
	local career_extension = self._career_extension
	local ghost_mode_extension = self._ghost_mode_extension
	local in_ghost_mode = ghost_mode_extension:is_in_ghost_mode()

	if not in_ghost_mode and career_extension:ability_was_triggered(self._gas_ability_id) then
		csm:change_state("globadier_throwing")

		return
	end

	local handled = self:common_movement(in_ghost_mode, dt, unit)
end
