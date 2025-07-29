package utils

import "../models"
import "core:fmt"

print_info :: proc(system: models.System) {
	fmt.printfln("  User          %s@%s", system.username, system.hostname)
	fmt.printfln("  System        {}", system.system)
	fmt.printfln("  Kernel        {}", system.kernel)
	fmt.printfln("  CPU           {}", system.cpu)
	fmt.printfln("  Shell         {}", system.shell)
	fmt.printfln("  Uptime        {}", system.uptime)
	fmt.printfln("  Desktop       {}", system.desktop)
	fmt.printfln("  Memory        {}", system.memory)
	fmt.printfln("󱥎  Storage (/)   {}", system.storage)
	fmt.printfln("  Colors        {}", system.colors)
}
