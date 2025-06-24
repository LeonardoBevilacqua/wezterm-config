local M = {}

function M.apply_to_config(config)
	local shell_path = "C:/Users/leonardo.bevilacqua/AppData/Local/Programs/Git/bin/bash.exe"

	config.default_prog = { shell_path, "-l" }
	config.set_environment_variables = {
		SHELL = shell_path,
	}
end

return M
