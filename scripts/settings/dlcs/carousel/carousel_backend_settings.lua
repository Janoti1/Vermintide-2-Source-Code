local settings = DLCSettings.carousel

settings.backend_interfaces = {
	versus = {
		ignore_on_dedicated_server = true,
		playfab_file = "scripts/managers/backend_playfab/backend_interface_versus_playfab",
		playfab_class = "BackendInterfaceVersusPlayFab"
	}
}
