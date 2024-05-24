local settings = DLCSettings.premium_career_bundle

settings.unlock_settings = {
	premium_career_bundle = {
		id = "38849",
		class = "UnlockDlcBundle",
		requires_restart = true,
		bundle_contains = {
			"lake",
			"cog",
			"woods",
			"bless",
			"shovel"
		}
	},
	premium_career_bundle_upgrade = {
		id = "38850",
		class = "UnlockDlcBundle",
		requires_restart = true,
		bundle_contains = {
			"lake",
			"lake_upgrade",
			"cog",
			"cog_upgrade",
			"woods",
			"woods_upgrade",
			"bless",
			"bless_upgrade",
			"shovel",
			"shovel_upgrade"
		}
	}
}
settings.unlock_settings_xb1 = {
	premium_career_bundle = {
		id = "51445039-3837-3035-C032-42353531D100",
		backend_reward_id = "premium_career_bundle",
		class = "UnlockDlc",
		requires_restart = true
	}
}
settings.unlock_settings_ps4 = {
	CUSA13595_00 = {
		premium_career_bundle = {
			backend_reward_id = "premium_career_bundle",
			product_label = "00USCAREERSANDCO",
			class = "UnlockDlc",
			requires_restart = true,
			id = "0a282aa920c44c02a1ab700cb227edfa"
		}
	},
	CUSA13645_00 = {
		premium_career_bundle = {
			backend_reward_id = "premium_career_bundle",
			product_label = "00EUCAREERSANDCO",
			class = "UnlockDlc",
			requires_restart = true,
			id = "8cc4259a478f46a9b2132cfe6cdf44d3"
		}
	}
}
