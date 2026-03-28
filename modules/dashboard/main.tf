resource "uptime_dashboard" "this" {
  count = var.create ? 1 : 0

  name      = var.name
  is_pinned = var.is_pinned
  ordering  = var.ordering
  alerts    = var.alerts
  metrics   = var.metrics
  selected  = var.selected
  services  = var.services
}
