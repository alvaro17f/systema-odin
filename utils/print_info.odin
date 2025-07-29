package utils

import "../models"
import "core:fmt"

print_info :: proc(system: models.System) {
	fmt.printfln("%s@%s", system.username, system.hostname)
	fmt.printfln("  System        %s", system.system)
	fmt.printfln("  Kernel        %s", system.kernel)
	fmt.printfln("  CPU           %s", system.cpu)
	fmt.printfln("  Shell         %s", system.shell)
	fmt.printfln("  Uptime        %s", system.uptime)
	fmt.printfln("  Desktop       %s", system.desktop)
	fmt.printfln("  Memory        %s", system.memory)
	fmt.printfln("󱥎  Storage (/)   %s", system.storage)
	fmt.printfln("  Colors        %s", system.colors)
}
