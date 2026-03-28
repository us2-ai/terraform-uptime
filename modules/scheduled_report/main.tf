resource "uptime_scheduled_report" "this" {
  count = var.create ? 1 : 0

  name             = var.name
  sla_report       = var.sla_report
  recurrence       = var.recurrence
  at_time          = var.at_time
  on_weekday       = var.on_weekday
  file_type        = var.file_type
  is_enabled       = var.is_enabled
  recipient_emails = var.recipient_emails
  recipient_users  = var.recipient_users
}
