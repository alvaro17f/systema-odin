package utils

import "../models"
import "core:fmt"

print_info :: proc(system: models.System) {
	fmt.printfln("%s@%s", system.username, system.hostname)
	fmt.printfln("%s", system.system)
	fmt.printfln("%s", system.kernel)
	fmt.printfln("%s", system.shell)
	fmt.printfln("%s", system.cpu)
}
