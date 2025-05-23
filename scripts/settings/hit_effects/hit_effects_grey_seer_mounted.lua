HitEffectsSkavenGreySeerMounted = {
	default = {
		disable_blood = true,
		hit_effect_name = "fx/hit_armored",
		flow_event = "lua_on_damage_taken",
		husk_effect_name = "fx/hit_armored",
		armour_type = "metal_hollow"
	},
	default_noDamage = {
		disable_blood = true,
		hit_effect_name = "fx/hit_armored",
		flow_event = "lua_on_damage_taken",
		husk_effect_name = "fx/hit_armored",
		armour_type = "metal_hollow",
		extra_conditions = {
			damage = false
		}
	},
	default_death = {
		armour_type = "cloth",
		extra_conditions = {
			death = true
		},
		animations = {
			"gs_death"
		},
		sound_event = {
			"Play_clan_rat_die_vce"
		}
	},
	shot_default = {
		hit_effect_name = "fx/hit_armored",
		husk_hit_effect_name = "fx/hit_armored",
		armour_type = "cloth",
		extra_conditions = {
			damage_type = {}
		},
		animations = {
			"hit_reaction"
		}
	},
	arrow_default = {
		hit_effect_name = "fx/hit_armored",
		husk_hit_effect_name = "fx/hit_armored",
		armour_type = "flesh",
		extra_conditions = {
			damage_type = {}
		},
		animations = {
			"hit_reaction"
		}
	}
}
HitEffectsSkavenGreySeerMounted = table.create_copy(HitEffectsSkavenGreySeerMounted, HitEffectsSkavenGreySeerMounted)
