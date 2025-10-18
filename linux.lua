local M = {}

function M.apply_to_config(config)
	config.default_prog = { "/usr/bin/env", "bash", "-l" }
	config.window_decorations = "NONE"
	config.set_environment_variables = {
		SHELL = "/bin/bash",
	}
	-- fix issue with not opening in wayland
	config.front_end = "WebGpu"
	config.enable_wayland = false
	config.window_decorations = "NONE"
end

return M
