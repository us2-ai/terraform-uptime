##################
# Uptime Contact #
##################
variable "create" {
  description = "Create"
  type        = bool
  default     = true
}

variable "name" {
  description = "Contact group name"
  type        = string
}

variable "email_list" {
  description = "Email addresses for notifications"
  type        = set(string)
  default     = null
}

variable "sms_list" {
  description = "Phone numbers for SMS notifications"
  type        = set(string)
  default     = null
}

variable "phonecall_list" {
  description = "Phone numbers for voice call notifications"
  type        = set(string)
  default     = null
}

variable "integrations" {
  description = "Integration URLs for third-party notifications"
  type        = set(string)
  default     = null
}

variable "push_notification_profiles" {
  description = "Push notification profile identifiers"
  type        = set(string)
  default     = null
}
