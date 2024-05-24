OutlineSettingsVS = OutlineSettingsVS or {}
OutlineSettingsVS.colors = {
	ally = {
		variable = "outline_color_alpha",
		outline_multiplier = 7,
		pulse_multiplier = 50,
		pulsate = false,
		outline_multiplier_variable = "outline_multiplier_alpha",
		channel = {
			255,
			0,
			0,
			0
		},
		color = {
			255,
			255,
			255,
			255
		}
	},
	hero_healthy = {
		variable = "outline_color_red",
		outline_multiplier = 7,
		pulse_multiplier = 50,
		pulsate = false,
		outline_multiplier_variable = "outline_multiplier_red",
		channel = {
			0,
			255,
			0,
			0
		},
		color = {
			255,
			118,
			186,
			0
		}
	},
	hero_hurt = {
		variable = "outline_color_green",
		outline_multiplier = 4,
		pulse_multiplier = 50,
		pulsate = false,
		outline_multiplier_variable = "outline_multiplier_green",
		channel = {
			0,
			0,
			255,
			0
		},
		color = {
			255,
			253,
			253,
			4
		}
	},
	hero_dying = {
		variable = "outline_color_blue",
		outline_multiplier = 6,
		pulse_multiplier = 15,
		pulsate = true,
		outline_multiplier_variable = "outline_multiplier_blue",
		channel = {
			0,
			0,
			0,
			255
		},
		color = {
			255,
			227,
			4,
			4
		}
	}
}

for name, settings in pairs(OutlineSettingsVS.colors) do
	settings.name = name
end
