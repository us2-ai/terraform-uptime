resource "uptime_user" "this" {
  count = var.create ? 1 : 0

  email                = var.email
  password             = var.password
  first_name           = var.first_name
  last_name            = var.last_name
  access_level         = var.access_level
  is_api_enabled       = var.is_api_enabled
  notify_paid_invoices = var.notify_paid_invoices
  require_two_factor   = var.require_two_factor
  assigned_subaccounts = var.assigned_subaccounts
}
