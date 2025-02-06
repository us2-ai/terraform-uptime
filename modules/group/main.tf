resource "uptime_check_group" "this" {
  count = var.create ? 1 : 0

  name                      = var.name
  contact_groups            = var.contact_groups
  is_paused                 = var.is_paused
  notes                     = var.notes
  tags                      = var.tags
  include_in_global_metrics = var.include_in_global_metrics
  sla                       = var.sla
  config                    = var.config
}
