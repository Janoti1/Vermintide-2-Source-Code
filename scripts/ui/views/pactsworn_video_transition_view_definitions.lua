local pactsworn_video_data = {
	{
		video_name = "video/pactsworn_tunnel_transition_1",
		sound_start = "Play_versus_sfx_tunnel_warp",
		scenegraph_id = "pactsworn_video",
		loop = false,
		material_name = "pactsworn_tunnel_transition_1",
		sound_stop = "Stop_versus_sfx_tunnel_warp"
	},
	{
		video_name = "video/pactsworn_tunnel_transition_2",
		sound_start = "Play_versus_sfx_tunnel_warp",
		scenegraph_id = "pactsworn_video",
		loop = false,
		material_name = "pactsworn_tunnel_transition_2",
		sound_stop = "Stop_versus_sfx_tunnel_warp"
	},
	{
		video_name = "video/pactsworn_tunnel_transition_3",
		sound_start = "Play_versus_sfx_tunnel_warp",
		scenegraph_id = "pactsworn_video",
		loop = false,
		material_name = "pactsworn_tunnel_transition_3",
		sound_stop = "Stop_versus_sfx_tunnel_warp"
	},
	{
		video_name = "video/pactsworn_tunnel_transition_4",
		sound_start = "Play_versus_sfx_tunnel_warp",
		scenegraph_id = "pactsworn_video",
		loop = false,
		material_name = "pactsworn_tunnel_transition_4",
		sound_stop = "Stop_versus_sfx_tunnel_warp"
	}
}
local scenegraph_definition = {
	root = {
		is_root = true,
		size = {
			1920,
			1080
		},
		position = {
			0,
			0,
			0
		}
	},
	background = {
		vertical_alignment = "center",
		scale = "fit",
		horizontal_alignment = "center",
		size = {
			1920,
			1080
		},
		position = {
			0,
			0,
			99
		}
	},
	pactsworn_video = {
		parent = "root",
		size = {
			1920,
			1080
		},
		position = {
			0,
			0,
			700
		}
	}
}
local VIDEO_REFERENCE_NAME = "PACTSWORN_VIDEO_PLAYER"
local definitions = {
	scenegraph_definition = scenegraph_definition,
	pactsworn_video_data = pactsworn_video_data,
	reference_name = VIDEO_REFERENCE_NAME
}

return definitions
