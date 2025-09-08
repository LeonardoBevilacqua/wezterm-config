local M = {}

function M.apply_to_config(config)
	config.default_prog = { "/usr/bin/env", "bash", "-l" }
	config.set_environment_variables = {
		SHELL = "/bin/bash",
	}
end

return M
