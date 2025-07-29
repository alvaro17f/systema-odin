package modules

// get_uptime :: proc(uptime: ^Uptime) {
// 	uptime_in_seconds, ok := sysinfo.get_system_uptime_in_seconds()
//
// 	uptime.days = uptime_in_seconds / 86400
// 	uptime.hours = (uptime_in_seconds / 3600) - (uptime.days * 24)
// 	uptime.minutes = (uptime_in_seconds / 60) - (uptime.hours * 60)
// 	uptime.seconds = uptime_in_seconds % 60
// }

get_uptime_info :: proc() -> string {
  return ""
}
