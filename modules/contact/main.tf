resource "uptime_contact" "this" {
  count = var.create ? 1 : 0

  name                       = var.name
  email_list                 = var.email_list
  sms_list                   = var.sms_list
  phonecall_list             = var.phonecall_list
  integrations               = var.integrations
  push_notification_profiles = var.push_notification_profiles
}
