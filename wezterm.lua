local wezterm = require("wezterm")
local config = wezterm.config_builder()
local shell_path = "C:/Users/leonardo.bevilacqua/AppData/Local/Programs/Git/bin/bash.exe"

config.color_scheme = "OneDark (base16)"
config.font = wezterm.font("JetBrainsMono Nerd Font Mono")
config.window_decorations = "RESIZE"
config.hide_tab_bar_if_only_one_tab = true
config.window_background_opacity = 0.9
config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

config.default_prog = { shell_path, "-l" }
config.set_environment_variables = {
	SHELL = shell_path,
}

return config
