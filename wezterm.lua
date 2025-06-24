local wezterm = require("wezterm")
local config = wezterm.config_builder()

local function is_windows()
	return package.config:sub(1, 1) == "\\"
end

local function apply_platform_config()
	local platform_config = nil
	if is_windows() then
		platform_config = require("windows")
	else
		platform_config = require("linux")
	end

	platform_config.apply_to_config(config)
end

-- shared modules
local appearance = require("appearance")
appearance.apply_to_config(wezterm, config)

apply_platform_config()

return config
