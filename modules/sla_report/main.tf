resource "uptime_sla_report" "this" {
  count = var.create ? 1 : 0

  name                                = var.name
  default_date_range                  = var.default_date_range
  show_uptime_section                 = var.show_uptime_section
  show_uptime_sla                     = var.show_uptime_sla
  uptime_section_sort                 = var.uptime_section_sort
  filter_uptime_sla_violations        = var.filter_uptime_sla_violations
  filter_with_downtime                = var.filter_with_downtime
  show_response_time_section          = var.show_response_time_section
  show_response_time_sla              = var.show_response_time_sla
  response_time_section_sort          = var.response_time_section_sort
  filter_response_time_sla_violations = var.filter_response_time_sla_violations
  filter_slowest                      = var.filter_slowest
  services_tags                       = var.services_tags
  services_selected                   = var.services_selected
  reporting_groups                    = var.reporting_groups
}
