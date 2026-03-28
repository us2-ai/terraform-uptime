resource "uptime_service_variable" "this" {
  count = var.create ? 1 : 0

  service_id    = var.service_id
  credential_id = var.credential_id
  variable_name = var.variable_name
  property_name = var.property_name
}
