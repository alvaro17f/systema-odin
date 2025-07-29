package modules

import "core:fmt"
import "core:strings"
import "core:sys/info"

get_system_info :: proc() -> string {
	i := strings.index(info.os_version.as_string, ",")

	return fmt.tprintf("System: %s", info.os_version.as_string[:i])
}
