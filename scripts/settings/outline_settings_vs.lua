OutlineSettingsVS = OutlineSettingsVS or {}
OutlineSettingsVS.colors = {
	ally = {
		pulse_multiplier = 50,
		pulsate = false,
		color = {
			255,
			72,
			95,
			143
		}
	},
	hero_healthy = {
		pulse_multiplier = 50,
		pulsate = false,
		color = {
			255,
			33,
			106,
			34
		}
	},
	hero_hurt = {
		pulse_multiplier = 50,
		pulsate = false,
		color = {
			255,
			177,
			144,
			31
		}
	},
	hero_dying = {
		pulse_multiplier = 15,
		pulsate = false,
		color = {
			255,
			139,
			0,
			0
		}
	}
}
OutlineSettingsVS.templates = {
	horde_ability = {
		priority = 15,
		method = "ai_alive",
		outline_color = OutlineSettingsVS.colors.ally,
		flag = OutlineSettings.flags.non_wall_occluded
	}
}

for name, settings in pairs(OutlineSettingsVS.colors) do
	settings.name = name
end
