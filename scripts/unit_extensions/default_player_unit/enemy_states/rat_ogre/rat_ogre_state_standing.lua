RatOgreStateStanding = class(RatOgreStateStanding, EnemyCharacterStateStanding)

RatOgreStateStanding.update = function (self, unit, input, dt, context, t)
	local handled = self:common_state_changes()

	if handled then
		return
	end

	local csm = self._csm
	local status_extension = self._status_extension

	self:_update_taunt_dialogue(t)

	handled = self:common_movement(t)
end
