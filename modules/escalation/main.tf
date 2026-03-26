resource "uptime_check_escalations" "this" {
  count = var.create ? 1 : 0

  check_id    = var.check_id
  escalations = var.escalations
}
