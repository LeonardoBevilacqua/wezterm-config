local M = {}

function M.apply_to_config(config)
	local shell_path = "C:/Users/leonardo.bevilacqua/AppData/Local/Programs/Git/bin/bash.exe"
	local git_bash = {
		label = "Git Bash",
		args = { shell_path, "-l" },
	}
	local wsl = {
		label = "Ubuntu 24.04 (WSL)",
		args = { "wsl.exe", "-d", "Ubuntu-24.04" },
	}

	config.launch_menu = { git_bash, wsl }

	config.default_prog = git_bash.args
	config.set_environment_variables = {
		SHELL = shell_path,
	}
end

return M
