package app

import "../models"
import "../modules"
import "../utils"


init :: proc(name, version: string) {
	system := models.System {
		username = modules.get_username(),
		hostname = modules.get_hostname(),
		system   = modules.get_system_info(),
		kernel   = modules.get_kernel_info(),
		cpu      = modules.get_cpu_info(),
		shell    = modules.get_shell_info(),
		memory   = modules.get_memory_info(),
		desktop  = modules.get_desktop_info(),
		uptime   = modules.get_uptime_info(),
		storage  = modules.get_storage_info(),
		colors   = modules.get_colors_info(),
	}

	utils.print_info(system)
}
