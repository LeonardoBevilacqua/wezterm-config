local M = {}

function table.merge(t1, t2)
	for _, v in ipairs(t2) do
		table.insert(t1, v)
	end

	return t1
end

local function panel_split(wezterm)
	return {
		{
			key = "h",
			mods = "CTRL|SHIFT|ALT",
			action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
		},
		{
			key = "v",
			mods = "CTRL|SHIFT|ALT",
			action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
		},
	}
end

local function panel_navigation(wezterm)
	return {
		{
			key = "h",
			mods = "SHIFT",
			action = wezterm.action.ActivatePaneDirection("Left"),
		},
		{
			key = "l",
			mods = "SHIFT",
			action = wezterm.action.ActivatePaneDirection("Right"),
		},
		{
			key = "k",
			mods = "SHIFT",
			action = wezterm.action.ActivatePaneDirection("Up"),
		},
		{
			key = "j",
			mods = "SHIFT",
			action = wezterm.action.ActivatePaneDirection("Down"),
		},
	}
end

function M.apply_to_config(wezterm, config)
	local keys = table.merge(panel_split(wezterm), panel_navigation(wezterm))

	config.keys = keys
end

return M
