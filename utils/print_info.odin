package utils

import "../colors"
import "../models"
import "core:fmt"
import "core:strings"

@(private)
SPACE_SIZE :: 14

@(private)
print_info_line :: proc(icon, title, info: string) {
	spacing := strings.repeat(" ", SPACE_SIZE - len(title), context.temp_allocator)

	fmt.printfln(
		"{}{}  {}{}{}{} {}",
		colors.CYAN,
		icon,
		colors.BLUE,
		title,
		spacing,
		colors.RESET,
		info,
	)
}

print_info :: proc(system: models.System) {
	print_info_line("", "User", fmt.tprintf("%s@%s", system.username, system.hostname))
	print_info_line("", "System", system.system)
	print_info_line("", "Kernel", system.kernel)
	print_info_line("", "Desktop", system.desktop)
	print_info_line("", "CPU", system.cpu.(string))
	print_info_line("", "Shell", system.shell)
	print_info_line("", "Uptime", system.uptime)
	print_info_line("", "Memory", system.memory)
	print_info_line("󱥎", "Storage (/)", system.storage)
	print_info_line("", "Colors", system.colors)
}
