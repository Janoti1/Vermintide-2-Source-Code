local SIZE_X, SIZE_Y = 1920, 1080
local RETAINED_MODE_ENABLED = true
local portrait_scale = 1
local HP_BAR_SIZE = {
	156,
	16
}
local HP_BAR_BG_SIZE = {
	191,
	54
}
local HP_BAR = {
	z = -8,
	y = 35,
	x = -(HP_BAR_SIZE[1] + 100)
}
local BOSS_HP_BAR = {
	z = -8,
	x = -186,
	y = 35
}
local scenegraph_definition = {
	root = {
		scale = "hud_scale_fit",
		position = {
			0,
			0,
			UILayer.hud
		},
		size = {
			SIZE_X,
			SIZE_Y
		}
	},
	pivot = {
		vertical_alignment = "bottom",
		parent = "root",
		horizontal_alignment = "center",
		position = {
			0,
			0,
			5
		},
		size = {
			0,
			0
		}
	},
	dp_health_pivot = {
		vertical_alignment = "bottom",
		parent = "root",
		horizontal_alignment = "right",
		position = {
			0,
			0,
			5
		},
		size = {
			0,
			0
		}
	},
	portrait_pivot = {
		vertical_alignment = "bottom",
		parent = "root",
		horizontal_alignment = "left",
		position = {
			80,
			80,
			10
		},
		size = {
			0,
			0
		}
	},
	respawn_countdown_pivot = {
		vertical_alignment = "center",
		parent = "root",
		horizontal_alignment = "center",
		position = {
			0,
			30,
			10
		},
		size = {
			0,
			0
		}
	}
}
local inventory_consumable_icons = {
	wpn_grimoire_01 = "hud_inventory_icon_grimoire",
	potion_cooldown_reduction_01 = "hud_inventory_icon_potion_cooldown_reduction",
	potion_healing_draught_01 = "hud_inventory_icon_heal_02",
	grenade_frag_02 = "hud_inventory_icon_bomb",
	[3] = "hud_inventory_icon_potion",
	grenade_frag_01 = "hud_inventory_icon_bomb",
	grenade_smoke_02 = "hud_inventory_icon_bomb",
	grenade_smoke_01 = "hud_inventory_icon_bomb",
	grenade_fire_01 = "hud_inventory_icon_bomb",
	grenade_fire_02 = "hud_inventory_icon_bomb",
	[1] = "hud_inventory_icon_heal_01",
	[2] = "hud_inventory_icon_bomb",
	wpn_side_objective_tome_01 = "hud_inventory_icon_tome",
	potion_damage_boost_01 = "hud_inventory_icon_potion_strength",
	healthkit_first_aid_kit_01 = "hud_inventory_icon_heal_01",
	potion_speed_boost_01 = "hud_inventory_icon_potion_speed"
}
local inventory_index_by_slot = {
	slot_potion = 3,
	slot_grenade = 2,
	slot_healthkit = 1
}
local weapon_slot_widget_settings = {
	ammo_fields = {
		slot_ranged = "ammo_text_weapon_slot_2",
		slot_melee = "ammo_text_weapon_slot_1"
	}
}

local function create_static_widget()
	return {
		scenegraph_id = "portrait_pivot",
		element = {
			passes = {
				{
					pass_type = "texture",
					style_id = "character_portrait",
					texture_id = "character_portrait",
					retained_mode = RETAINED_MODE_ENABLED
				},
				{
					style_id = "player_level",
					pass_type = "text",
					text_id = "player_level",
					retained_mode = RETAINED_MODE_ENABLED
				},
				{
					pass_type = "texture",
					style_id = "host_icon",
					texture_id = "host_icon",
					retained_mode = RETAINED_MODE_ENABLED,
					content_check_function = function (content)
						return content.is_host
					end
				},
				{
					pass_type = "texture",
					style_id = "hp_bar_frame",
					texture_id = "hp_bar_frame",
					retained_mode = RETAINED_MODE_ENABLED,
					content_check_function = function (content, style)
						return content.show_health_bar and not content.is_playing_boss
					end
				},
				{
					pass_type = "texture",
					style_id = "boss_hp_bar_frame",
					texture_id = "boss_hp_bar_frame",
					retained_mode = RETAINED_MODE_ENABLED,
					content_check_function = function (content, style)
						return content.show_health_bar and content.is_playing_boss
					end
				}
			}
		},
		content = {
			hp_bar_frame = "health_bar_small_background",
			character_portrait = "unit_frame_portrait_default",
			host_icon = "host_icon",
			player_level = "",
			is_host = false,
			boss_hp_bar_frame = "health_bar_big_background",
			show_health_bar = true,
			is_playing_boss = false
		},
		style = {
			character_portrait = {
				vertical_alignment = "center",
				horizontal_alignment = "center",
				texture_size = {
					86,
					108
				},
				offset = {
					0,
					0,
					1
				},
				color = {
					255,
					255,
					255,
					255
				}
			},
			host_icon = {
				size = {
					40,
					40
				},
				offset = {
					-57,
					-68,
					50
				},
				color = {
					150,
					255,
					255,
					255
				}
			},
			player_level = {
				vertical_alignment = "center",
				font_type = "hell_shark",
				font_size = 18,
				horizontal_alignment = "center",
				text_color = Colors.get_table("cheeseburger"),
				offset = {
					0,
					-65,
					3
				}
			},
			hp_bar_frame = {
				scenegraph_id = "dp_health_pivot",
				size = {
					191,
					54
				},
				color = {
					255,
					255,
					255,
					255
				},
				offset = {
					HP_BAR.x - 11,
					HP_BAR.y,
					HP_BAR.z + 1
				}
			},
			boss_hp_bar_frame = {
				scenegraph_id = "pivot",
				size = {
					372,
					104
				},
				color = {
					255,
					255,
					255,
					255
				},
				offset = {
					BOSS_HP_BAR.x - 11,
					BOSS_HP_BAR.y,
					BOSS_HP_BAR.z + 1
				}
			}
		},
		offset = {
			0,
			0,
			0
		}
	}
end

local function create_respawn_countdown_widget()
	return {
		scenegraph_id = "respawn_countdown_pivot",
		element = {
			passes = {
				{
					retained_mode = false,
					style_id = "respawn_info_text",
					pass_type = "text",
					text_id = "respawn_info_text"
				},
				{
					retained_mode = false,
					style_id = "respawn_countdown_text",
					pass_type = "text",
					text_id = "respawn_countdown_text"
				}
			}
		},
		content = {
			respawn_timer = 0,
			last_counts = 4,
			respawn_countdown_text = "",
			state = "hidden",
			total_fadeout_time = 0.66,
			respawn_info_text = "",
			total_countdown_time = 0
		},
		style = {
			respawn_info_text = {
				vertical_alignment = "center",
				font_type = "hell_shark",
				font_size = 32,
				horizontal_alignment = "center",
				text_color = {
					255,
					255,
					168,
					0
				},
				offset = {
					0,
					-10,
					3
				}
			},
			respawn_countdown_text = {
				vertical_alignment = "center",
				font_type = "hell_shark",
				font_size = 80,
				horizontal_alignment = "center",
				text_color = {
					255,
					255,
					168,
					0
				},
				offset = {
					0,
					-72,
					3
				}
			}
		},
		offset = {
			0,
			0,
			0
		}
	}
end

local function create_dynamic_portait_widget()
	return {
		scenegraph_id = "pivot",
		element = {
			passes = {
				{
					pass_type = "texture",
					style_id = "portrait_icon",
					texture_id = "portrait_icon",
					retained_mode = RETAINED_MODE_ENABLED,
					content_check_function = function (content)
						return content.display_portrait_icon
					end
				},
				{
					pass_type = "texture",
					style_id = "talk_indicator",
					texture_id = "talk_indicator",
					retained_mode = RETAINED_MODE_ENABLED
				},
				{
					pass_type = "texture",
					style_id = "talk_indicator_glow",
					texture_id = "talk_indicator_glow",
					retained_mode = RETAINED_MODE_ENABLED
				},
				{
					pass_type = "texture",
					style_id = "talk_indicator_highlight",
					texture_id = "talk_indicator_highlight",
					retained_mode = RETAINED_MODE_ENABLED
				},
				{
					pass_type = "texture",
					style_id = "talk_indicator_highlight_glow",
					texture_id = "talk_indicator_highlight_glow",
					retained_mode = RETAINED_MODE_ENABLED
				},
				{
					pass_type = "rotated_texture",
					style_id = "connecting_icon",
					texture_id = "connecting_icon",
					retained_mode = RETAINED_MODE_ENABLED,
					content_check_function = function (content)
						return content.connecting
					end
				}
			}
		},
		content = {
			talk_indicator_highlight = "voip_wave",
			connecting = false,
			display_portrait_icon = false,
			portrait_icon = "status_icon_needs_assist",
			display_portrait_overlay = false,
			connecting_icon = "matchmaking_connecting_icon",
			talk_indicator_highlight_glow = "voip_wave_glow",
			talk_indicator = "voip_speaker",
			talk_indicator_glow = "voip_speaker_glow"
		},
		style = {
			talk_indicator = {
				scenegraph_id = "portrait_pivot",
				size = {
					64,
					64
				},
				offset = {
					60,
					6,
					3
				},
				color = {
					0,
					255,
					255,
					255
				}
			},
			talk_indicator_glow = {
				scenegraph_id = "portrait_pivot",
				size = {
					64,
					64
				},
				offset = {
					60,
					6,
					2
				},
				color = {
					0,
					0,
					0,
					0
				}
			},
			talk_indicator_highlight = {
				scenegraph_id = "portrait_pivot",
				size = {
					64,
					64
				},
				offset = {
					60,
					6,
					3
				},
				color = {
					0,
					255,
					255,
					255
				}
			},
			talk_indicator_highlight_glow = {
				scenegraph_id = "portrait_pivot",
				size = {
					64,
					64
				},
				offset = {
					60,
					6,
					2
				},
				color = {
					0,
					0,
					0,
					0
				}
			},
			connecting_icon = {
				vertical_alignment = "center",
				scenegraph_id = "portrait_pivot",
				horizontal_alignment = "center",
				angle = 0,
				pivot = {
					26.5,
					26.5
				},
				texture_size = {
					53,
					53
				},
				offset = {
					0,
					0,
					12
				},
				color = {
					255,
					255,
					255,
					255
				}
			},
			portrait_icon = {
				vertical_alignment = "center",
				scenegraph_id = "portrait_pivot",
				horizontal_alignment = "center",
				texture_size = {
					86,
					108
				},
				offset = {
					0,
					0,
					7
				},
				color = {
					150,
					255,
					255,
					255
				}
			}
		},
		offset = {
			0,
			0,
			0
		}
	}
end

local function create_dynamic_health_widget()
	return {
		scenegraph_id = "dp_health_pivot",
		element = {
			passes = {
				{
					pass_type = "texture",
					style_id = "hp_bar_highlight",
					texture_id = "hp_bar_highlight",
					retained_mode = RETAINED_MODE_ENABLED,
					content_check_function = function (content, style)
						return not content.has_shield and not content.is_playing_boss
					end
				},
				{
					style_id = "grimoire_debuff_divider",
					texture_id = "grimoire_debuff_divider",
					pass_type = "texture",
					retained_mode = RETAINED_MODE_ENABLED,
					content_check_function = function (content)
						local hp_bar_content = content.hp_bar
						local internal_bar_value = hp_bar_content.internal_bar_value
						local actual_active_percentage = content.actual_active_percentage or 1
						local grim_progress = math.max(internal_bar_value, actual_active_percentage)

						return grim_progress < 1 and not content.is_playing_boss
					end,
					content_change_function = function (content, style)
						local hp_bar_content = content.hp_bar
						local internal_bar_value = hp_bar_content.internal_bar_value
						local actual_active_percentage = content.actual_active_percentage or 1
						local grim_progress = math.max(internal_bar_value, actual_active_percentage)
						local offset = style.offset

						offset[1] = HP_BAR.x - 7 + 553 * grim_progress
					end
				},
				{
					pass_type = "gradient_mask_texture",
					style_id = "hp_bar",
					texture_id = "texture_id",
					content_id = "hp_bar",
					retained_mode = RETAINED_MODE_ENABLED,
					content_check_function = function (content)
						return not content.has_shield and not content.is_playing_boss
					end
				},
				{
					pass_type = "gradient_mask_texture",
					style_id = "total_health_bar",
					texture_id = "texture_id",
					content_id = "total_health_bar",
					retained_mode = RETAINED_MODE_ENABLED,
					content_check_function = function (content)
						return not content.has_shield and not content.is_playing_boss
					end
				},
				{
					style_id = "grimoire_bar",
					pass_type = "texture_uv",
					content_id = "grimoire_bar",
					retained_mode = RETAINED_MODE_ENABLED,
					content_change_function = function (content, style)
						local parent_content = content.parent
						local hp_bar_content = parent_content.hp_bar
						local internal_bar_value = hp_bar_content.internal_bar_value
						local actual_active_percentage = parent_content.actual_active_percentage or 1
						local grim_progress = math.max(internal_bar_value, actual_active_percentage)
						local size = style.size
						local uvs = content.uvs
						local offset = style.offset
						local bar_length = 553

						uvs[1][1] = grim_progress
						size[1] = bar_length * (1 - grim_progress)
						offset[1] = 2 + HP_BAR.x + bar_length * grim_progress
					end
				},
				{
					pass_type = "texture",
					style_id = "boss_hp_bar_highlight",
					texture_id = "hp_bar_highlight",
					retained_mode = RETAINED_MODE_ENABLED,
					content_check_function = function (content, style)
						return not content.has_shield and content.is_playing_boss
					end
				},
				{
					pass_type = "gradient_mask_texture",
					style_id = "boss_hp_bar",
					texture_id = "texture_id",
					content_id = "boss_hp_bar",
					retained_mode = RETAINED_MODE_ENABLED,
					content_check_function = function (content)
						return content.draw_health_bar and content.parent.is_playing_boss
					end
				},
				{
					pass_type = "gradient_mask_texture",
					style_id = "boss_total_health_bar",
					texture_id = "texture_id",
					content_id = "boss_total_health_bar",
					retained_mode = RETAINED_MODE_ENABLED,
					content_check_function = function (content)
						return content.draw_health_bar and content.parent.is_playing_boss
					end
				}
			}
		},
		content = {
			grimoire_debuff_divider = "hud_player_hp_bar_grim_divider",
			bar_start_side = "left",
			hp_bar_highlight = "hud_player_hp_bar_highlight",
			visible = true,
			is_playing_boss = false,
			hp_bar = {
				bar_value = 1,
				internal_bar_value = 0,
				texture_id = "dark_pact_player_hp_bar_color_tint",
				draw_health_bar = true
			},
			total_health_bar = {
				bar_value = 1,
				internal_bar_value = 0,
				texture_id = "dark_pact_player_hp_bar",
				draw_health_bar = true
			},
			grimoire_bar = {
				texture_id = "hud_panel_hp_bar_bg_grimoire",
				uvs = {
					{
						0,
						0
					},
					{
						1,
						1
					}
				}
			},
			boss_hp_bar = {
				bar_value = 1,
				internal_bar_value = 0,
				texture_id = "dark_pact_boss_player_hp_bar_color_tint",
				draw_health_bar = true
			},
			boss_total_health_bar = {
				bar_value = 1,
				internal_bar_value = 0,
				texture_id = "dark_pact_boss_player_hp_bar",
				draw_health_bar = true
			}
		},
		style = {
			total_health_bar = {
				gradient_threshold = 1,
				size = {
					156,
					16
				},
				color = {
					255,
					255,
					255,
					255
				},
				offset = {
					HP_BAR.x + 1,
					HP_BAR.y + 27 - 2,
					HP_BAR.z + 2
				}
			},
			hp_bar = {
				gradient_threshold = 1,
				size = {
					156,
					16
				},
				color = {
					255,
					255,
					255,
					255
				},
				offset = {
					HP_BAR.x + 1,
					HP_BAR.y + 27 - 2,
					HP_BAR.z + 3
				}
			},
			grimoire_bar = {
				size = {
					553,
					18
				},
				color = {
					255,
					255,
					255,
					255
				},
				offset = {
					HP_BAR.x,
					HP_BAR.y,
					HP_BAR.z + 4
				}
			},
			grimoire_debuff_divider = {
				size = {
					21,
					36
				},
				color = {
					255,
					255,
					255,
					255
				},
				offset = {
					HP_BAR.x + 10,
					HP_BAR.y - 8,
					HP_BAR.z + 20
				}
			},
			hp_bar_highlight = {
				size = {
					156,
					16
				},
				offset = {
					HP_BAR.x + 1,
					HP_BAR.y + 27 - 2,
					HP_BAR.z + 5
				},
				color = {
					0,
					255,
					255,
					255
				}
			},
			boss_total_health_bar = {
				scenegraph_id = "pivot",
				gradient_threshold = 1,
				size = {
					324,
					16
				},
				color = {
					255,
					255,
					255,
					255
				},
				offset = {
					BOSS_HP_BAR.x + 12,
					BOSS_HP_BAR.y + 52 - 10,
					BOSS_HP_BAR.z + 2
				}
			},
			boss_hp_bar = {
				scenegraph_id = "pivot",
				gradient_threshold = 1,
				size = {
					324,
					16
				},
				color = {
					255,
					255,
					255,
					255
				},
				offset = {
					BOSS_HP_BAR.x + 12,
					BOSS_HP_BAR.y + 52 - 10,
					BOSS_HP_BAR.z + 3
				}
			},
			boss_hp_bar_highlight = {
				scenegraph_id = "pivot",
				size = {
					324,
					16
				},
				offset = {
					BOSS_HP_BAR.x + 12,
					BOSS_HP_BAR.y + 52 - 10,
					BOSS_HP_BAR.z + 5
				},
				color = {
					0,
					255,
					255,
					255
				}
			}
		},
		offset = {
			0,
			0,
			0
		}
	}
end

local widget_definitions = {
	portrait_static = UIWidgets.create_portrait_frame("portrait_pivot", "default", "-", portrait_scale, RETAINED_MODE_ENABLED),
	default_dynamic = create_dynamic_portait_widget(),
	default_static = create_static_widget(),
	health_dynamic = create_dynamic_health_widget(),
	respawn_dynamic = create_respawn_countdown_widget()
}
local damage_widget_definitions = UnitFramesUiUtils.create_damage_widget("player", 4)
local features_list = {
	ability = false,
	weapons = false,
	damage = true,
	equipment = false,
	respawn = true
}
local widget_name_by_feature = {
	static = {
		default = "default_static",
		level = "default_static",
		portrait_frame = "portrait_static"
	},
	dynamic = {
		default = "default_dynamic",
		damage = "damage_dynamic",
		status_icon = "default_dynamic",
		health = "health_dynamic",
		respawn = "respawn_dynamic"
	}
}

return {
	weapon_slot_widget_settings = weapon_slot_widget_settings,
	inventory_index_by_slot = inventory_index_by_slot,
	inventory_consumable_icons = inventory_consumable_icons,
	features_list = features_list,
	widget_name_by_feature = widget_name_by_feature,
	scenegraph_definition = scenegraph_definition,
	widget_definitions = widget_definitions,
	damage_widget_definitions = damage_widget_definitions
}
