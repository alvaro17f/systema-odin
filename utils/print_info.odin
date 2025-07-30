package utils

import "../colors"
import "../models"
import "core:fmt"
import "core:strings"

@(private)
INFO_TITLE_SIZE :: 14

add_info_offset :: proc(info: [dynamic]string, offset: int) -> [dynamic]string {
	defer delete(info)

	offset_array := make([dynamic]string, offset)
	for i := 0; i < offset; i += 1 {
		offset_array[i] = ""
	}

	for i in info {
		append(&offset_array, i)
	}

	return offset_array
}

build_username_hostname_line :: proc(system: models.System, user: string, host: [65]u8) -> string {
	return fmt.tprintf(
		"{}%s{}@{}%s{} ~",
		colors.YELLOW,
		system.username,
		colors.RED,
		colors.GREEN,
		system.hostname,
		colors.RESET,
	)
}

build_info_line :: proc(icon, title, info: string) -> string {
	spacing := strings.repeat(" ", INFO_TITLE_SIZE - len(title), context.temp_allocator)

	return fmt.tprintf(
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

print_info :: proc(info: ^[dynamic]string) {
	for row in info {
		fmt.println(row)
	}
}

print_info_with_logo :: proc(
	config: ^models.Config,
	logo: ^[dynamic]string,
	info: ^[dynamic]string,
) {
	is_ascii_shorter := len(logo) < len(info)

	if is_ascii_shorter {
		difference := len(info) - len(logo)
		for i := 0; i < difference; i += 1 {
			append(logo, "")
		}
	}

	longest_row := 0

	for &row in logo {
		if len(row) > longest_row {
			longest_row = len(row)
		}
	}

	row_size := longest_row + config.logo_gap

	for &row, index in logo {
		if len(row) < row_size {
			row = fmt.tprintf(
				"{}%s%s{}",
				config.logo_color,
				row,
				strings.repeat(" ", row_size - len(row), context.temp_allocator),
				colors.RESET,
			)
		}

		if index < len(info) {
			row = fmt.tprintf("%s%s", row, info[index])
		}

		fmt.println(row)
	}
}
