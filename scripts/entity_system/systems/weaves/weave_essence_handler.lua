WeaveEssenceHandler = class(WeaveEssenceHandler)

WeaveEssenceHandler.init = function (self, world)
	self._world = world
	self._spawn_essence_units = true
	self._essence_unit_names = {
		"units/fx/essence_unit",
		"units/fx/essence_unit"
	}
	self._essence_sound_events = {
		"Play_hud_wind_collect_essence",
		"Play_hud_wind_collect_essence_chunk"
	}
	self._essence_unit_data = {}

	for i = 1, 20 do
		self._essence_unit_data[i] = {}
	end

	self._essence_life_time = 3
end

WeaveEssenceHandler.on_objectives_activated = function (self, objectives)
	if not table.is_empty(objectives) then
		local audio_system = Managers.state.entity:system("audio_system")

		audio_system:play_2d_audio_event("Play_hud_wind_objective_start")
	end
end

WeaveEssenceHandler.update = function (self, dt, t)
	self:_collect_dropped_essence(dt)
end

WeaveEssenceHandler.destroy_all_essence = function (self)
	local essence_unit_data = self._essence_unit_data

	for i = 1, #essence_unit_data do
		local data = essence_unit_data[i]
		local unit = data.unit

		if Unit.alive(unit) then
			Managers.state.unit_spawner:mark_for_deletion(unit)
			table.clear(data)
		end
	end
end

WeaveEssenceHandler.on_ai_killed = function (self, killed_unit, killer_unit, death_data, killing_blow)
	if not death_data or not death_data.despawned then
		local killed_unit_position = POSITION_LOOKUP[killed_unit]

		self:spawn_essence_unit(killed_unit_position + Vector3(0, 0, 0.2))
	end
end

WeaveEssenceHandler.spawn_essence_unit = function (self, position, size)
	local essence_unit_data = self._essence_unit_data
	local index

	for i = 1, #essence_unit_data do
		local data = essence_unit_data[i]
		local unit = data.unit

		if not Unit.alive(unit) then
			index = i

			break
		end
	end

	if not self._spawn_essence_units or not index then
		return
	end

	local essence_unit_name = self._essence_unit_names[size or 1]
	local essence_unit = Managers.state.unit_spawner:spawn_local_unit(essence_unit_name, position, Quaternion.identity())
	local data = self._essence_unit_data[index]

	data.unit = essence_unit
	data.life_time = self._essence_life_time
	data.spawn_pos = Vector3Box(position)
	data.right_vector_multiplier = 1 - math.random() * 2
	data.forward_vector_multiplier = 1 - math.random() * 2
	data.sound_event = self._essence_sound_events[size or 1]
end

WeaveEssenceHandler._collect_dropped_essence = function (self, dt)
	local local_player = Managers.player:local_player()

	if not local_player or not local_player.player_unit then
		return
	end

	local local_player_unit = local_player.player_unit
	local unit_spawner = Managers.state.unit_spawner
	local player_position = POSITION_LOOKUP[local_player_unit] + Vector3(0, 0, 0.5)
	local up_vector = Vector3.up()
	local right_vector = Vector3.right()
	local forward_vector = Vector3.forward()
	local essence_rest_time = 0
	local collect_essence_time = 0.8
	local essence_unit_data = self._essence_unit_data
	local unit_alive = Unit.alive

	for i = 1, #essence_unit_data do
		local data = essence_unit_data[i]
		local unit = data.unit

		if unit_alive(unit) then
			local unit_position = POSITION_LOOKUP[unit]
			local distance = Vector3.distance(unit_position, player_position)
			local remaining_time = data.life_time - dt

			if remaining_time <= 0 or distance <= 1 then
				unit_spawner:mark_for_deletion(unit)

				if data.sound_event then
					local wwise_world = Managers.world:wwise_world(self._world)

					WwiseWorld.trigger_event(wwise_world, data.sound_event)
				end

				table.clear(data)
			else
				if remaining_time <= collect_essence_time then
					local direction_vector = Vector3.normalize(player_position - unit_position)
					local move_vector = direction_vector * dt * math.max(30, distance / (collect_essence_time / 2))
					local new_position = unit_position + move_vector

					Unit.set_local_position(unit, 0, new_position)
				elseif remaining_time >= collect_essence_time + essence_rest_time then
					local time = (remaining_time - collect_essence_time - essence_rest_time) / (self._essence_life_time - collect_essence_time - essence_rest_time)
					local value = 1 - math.easeInCubic(time)
					local spawn_pos = data.spawn_pos:unbox()
					local up = up_vector * 2 * value
					local right = right_vector * data.right_vector_multiplier * (1 - time)
					local forward = forward_vector * data.forward_vector_multiplier * (1 - time)
					local offset = up + right + forward
					local new_position = spawn_pos + offset

					Unit.set_local_position(unit, 0, new_position)
				end

				data.life_time = remaining_time
			end
		end
	end
end
