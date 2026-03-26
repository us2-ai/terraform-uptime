resource "uptime_check_maintenance" "this" {
  count = var.create ? 1 : 0

  check_id = var.check_id

  pause_on_scheduled_maintenance = var.pause_on_scheduled_maintenance
  schedule                       = var.schedule
  state                          = var.state
}
