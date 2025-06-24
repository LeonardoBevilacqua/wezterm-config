local M = {}

function M.apply_to_config(wezterm, config)
	config.color_scheme = "OneDark (base16)"
	config.font = wezterm.font("JetBrainsMono Nerd Font Mono")
	config.window_decorations = "RESIZE"
	config.hide_tab_bar_if_only_one_tab = false
	config.window_background_opacity = 0.9
	config.window_padding = {
		left = 0,
		right = 0,
		top = 0,
		bottom = 0,
	}
end

return M
