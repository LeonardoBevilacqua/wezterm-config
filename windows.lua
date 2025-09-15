local M = {}

function M.apply_to_config(config)
	local shell_path = "C:/Users/leonardo.bevilacqua/AppData/Local/Programs/Git/bin/bash.exe"
	local wsl_path = "wsl.exe"
	local git_bash = {
		label = "Git Bash",
		args = { shell_path, "-l" },
	}
	local wsl_ubuntu = {
		label = "Ubuntu 24.04 (WSL)",
		args = { wsl_path, "-d", "Ubuntu-24.04" },
	}
	local wsl_debian = {
		label = "Debian",
		args = { wsl_path, "-d", "Debian" },
	}

	config.launch_menu = { git_bash, wsl_ubuntu, wsl_debian }

	config.default_prog = wsl_debian.args
	config.set_environment_variables = {
		SHELL = wsl_path,
	}
end

return M
