ImguiGenerateWeaponPoses = class(ImguiGenerateWeaponPoses)

local NUM_WEAPON_POSES = 6

ImguiGenerateWeaponPoses.init = function (self)
	self._num_weapon_poses = NUM_WEAPON_POSES
	self._alpha_timer = 0
end

ImguiGenerateWeaponPoses.update = function (self)
	return
end

ImguiGenerateWeaponPoses.is_persistent = function (self)
	return false
end

ImguiGenerateWeaponPoses._generate_weapon_poses = function (self)
	local fs = FileSystem(script_data.source_dir)

	if not fs then
		return
	end

	local file_name = "scripts//settings//equipment//item_master_list_weapon_poses.lua"

	if FileSystem.exists(fs, file_name) then
		FileSystem.remove_file(fs, file_name)
	end

	FileSystem.make_file(fs, file_name)

	local output_archive = FileSystem.open_output(fs, file_name)

	self:_add_header(output_archive)
	self:_add_default_pose(output_archive)

	for _, item in pairs(ItemMasterList) do
		local slot_type = item.slot_type

		if slot_type == "melee" or slot_type == "ranged" then
			local skin_combination_table = item.skin_combination_table

			if skin_combination_table then
				print(item.name)
				self:_add_weapon_poses(output_archive, item)
			end
		end
	end

	OutputArchive.close(output_archive)
end

ImguiGenerateWeaponPoses._add_header = function (self, output_archive)
	OutputArchive.write(output_archive, "-- *************************************************************\n")
	OutputArchive.write(output_archive, "-- *************************************************************\n")
	OutputArchive.write(output_archive, "-- ****                                                     ****\n")
	OutputArchive.write(output_archive, "-- ****   This File is AUTOGENERATED using the Imgui Tool   ****\n")
	OutputArchive.write(output_archive, "-- ****   GenerateWeaponPoses. To use the tool press 'F3'   ****\n")
	OutputArchive.write(output_archive, "-- ****   to open the Imgui Menu Bar and find the tool in   ****\n")
	OutputArchive.write(output_archive, "-- ****   'tools/Generate Weapon Poses'. To update weapon   ****\n")
	OutputArchive.write(output_archive, "-- ****   poses just press generate. This will regenerate   ****\n")
	OutputArchive.write(output_archive, "-- ****   this file with all base weapons currently         ****\n")
	OutputArchive.write(output_archive, "-- ****   available in the game. Make sure to not include   ****\n")
	OutputArchive.write(output_archive, "-- ****   any weapons that shouldn't be part of the         ****\n")
	OutputArchive.write(output_archive, "-- ****   current release to avoid leaks.                   ****\n")
	OutputArchive.write(output_archive, "-- ****                                                     ****\n")
	OutputArchive.write(output_archive, "-- *************************************************************\n")
	OutputArchive.write(output_archive, "-- *************************************************************\n")
	OutputArchive.write(output_archive, "\n")
	OutputArchive.write(output_archive, "-- *************************************************************\n")
	OutputArchive.write(output_archive, "-- *************************************************************\n")
	OutputArchive.write(output_archive, "-- ****                                                     ****\n")
	OutputArchive.write(output_archive, "-- ****          NUM WEAPON POSES PER WEAPON: " .. tostring(self._num_weapon_poses) .. "             ****\n")
	OutputArchive.write(output_archive, "-- ****                                                     ****\n")
	OutputArchive.write(output_archive, "-- *************************************************************\n")
	OutputArchive.write(output_archive, "-- *************************************************************\n")
	OutputArchive.write(output_archive, "\n")
end

ImguiGenerateWeaponPoses._add_default_pose = function (self, output_archive)
	OutputArchive.write(output_archive, "ItemMasterList.default_weapon_pose_01 = {\n")
	OutputArchive.write(output_archive, "\tname = \"default_weapon_pose_01\",\n")
	OutputArchive.write(output_archive, "\tdisplay_name = \"default_weapon_pose_01\",\n")
	OutputArchive.write(output_archive, "\tdescription = \"deafult_weapon_pose_01_desc\",\n")
	OutputArchive.write(output_archive, "\tslot_type = \"weapon_pose\",\n")
	OutputArchive.write(output_archive, "\titem_type = \"weapon_pose\",\n")
	OutputArchive.write(output_archive, "\tinformation_text = \"information_weapon_pose\",\n")
	OutputArchive.write(output_archive, "\tdata = {},\n")
	OutputArchive.write(output_archive, "\thud_icon = \"icons_placeholder\",\n")
	OutputArchive.write(output_archive, "\trarity = \"plentiful\",\n")
	OutputArchive.write(output_archive, "\tpose_index = 1,\n")
	OutputArchive.write(output_archive, "\tparent = \"default\",\n")
	OutputArchive.write(output_archive, "\ttemplate = \"pose_template\",\n")
	OutputArchive.write(output_archive, "\tcan_wield = CanWieldAllItemTemplates,\n")
	OutputArchive.write(output_archive, "}\n\n")
end

ImguiGenerateWeaponPoses._add_weapon_poses = function (self, output_archive, item)
	local item_name = item.name
	local can_wield = "{ "

	for _, career_name in pairs(item.can_wield) do
		can_wield = can_wield .. "\"" .. career_name .. "\","
	end

	can_wield = can_wield .. " }"

	for i = 1, self._num_weapon_poses do
		local index = string.format("%02d", i)

		OutputArchive.write(output_archive, "ItemMasterList." .. item_name .. "_weapon_pose_" .. index .. " = {\n")
		OutputArchive.write(output_archive, "\tname = \"" .. item_name .. "_weapon_pose_" .. index .. "\",\n")
		OutputArchive.write(output_archive, "\tdisplay_name = \"" .. item_name .. "_weapon_pose_" .. index .. "\",\n")
		OutputArchive.write(output_archive, "\tdescription = \"" .. item_name .. "_weapon_pose_" .. index .. "_desc" .. "\",\n")
		OutputArchive.write(output_archive, "\tslot_type = \"weapon_pose\",\n")
		OutputArchive.write(output_archive, "\titem_type = \"weapon_pose\",\n")
		OutputArchive.write(output_archive, "\tinformation_text = \"information_weapon_pose\",\n")
		OutputArchive.write(output_archive, "\tdata = { anim_event = \"anim_pose_" .. index .. "\", hide_weapons = false },\n")
		OutputArchive.write(output_archive, "\thud_icon = \"radial_chat_icon_weapon_pose_" .. index .. "\",\n")
		OutputArchive.write(output_archive, "\trarity = \"exotic\",\n")
		OutputArchive.write(output_archive, "\tpose_index = " .. i .. ",\n")
		OutputArchive.write(output_archive, "\tparent = \"" .. item_name .. "\",\n")
		OutputArchive.write(output_archive, "\ttemplate = \"pose_template\",\n")
		OutputArchive.write(output_archive, "\tcan_wield = " .. can_wield .. ",\n")
		OutputArchive.write(output_archive, "}\n\n")
	end
end

ImguiGenerateWeaponPoses.draw = function (self)
	local do_close = Imgui.begin_window("Generate Item Master List for Weapon Poses")

	Imgui.set_window_size(340, 120)
	Imgui.text("Number of weapon poses per weapon")

	local num_weapon_poses, confirmed = Imgui.input_text("", self._num_weapon_poses)

	if confirmed then
		self._num_weapon_poses = num_weapon_poses
	end

	if Imgui.button("Generate") then
		self:_generate_weapon_poses()

		self._generated = true
		self._current_color = {
			math.random(255),
			math.random(255),
			math.random(255)
		}
		self._generated_with_num_weapon_poses = self._num_weapon_poses
		self._alpha_timer = Application.time_since_launch() + 2
	end

	if self._generated then
		local current_time = Application.time_since_launch()
		local alpha = 255
		local fade_timer = 0.5

		if current_time > self._alpha_timer then
			alpha = 0
		elseif fade_timer > self._alpha_timer - current_time then
			local diff = self._alpha_timer - current_time

			alpha = diff / 0.5 * 255
		end

		Imgui.same_line(10)
		Imgui.text_colored("Done!", self._current_color[1], self._current_color[2], self._current_color[3], alpha)
		Imgui.indent(74)
		Imgui.text_colored(string.format("Using %q poses per base weapon", self._generated_with_num_weapon_poses), self._current_color[1], self._current_color[2], self._current_color[3], alpha)
	end

	Imgui.end_window()

	return do_close
end