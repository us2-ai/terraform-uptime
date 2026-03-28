##########################
# Uptime Scheduled Report #
##########################
variable "create" {
  description = "Create"
  type        = bool
  default     = true
}

variable "name" {
  description = "Report name"
  type        = string
}

variable "sla_report" {
  description = "SLA report to send on this schedule"
  type        = string
}

variable "recurrence" {
  description = "Delivery frequency: DAILY, WEEKLY, MONTHLY, QUARTERLY, YEARLY"
  type        = string
  default     = null
}

variable "at_time" {
  description = "Hour of day to send report (0-23)"
  type        = number
  default     = null
}

variable "on_weekday" {
  description = "Day of week for weekly reports"
  type        = number
  default     = null
}

variable "file_type" {
  description = "Report file type: PDF or XLS"
  type        = string
  default     = null
}

variable "is_enabled" {
  description = "Enable scheduled report"
  type        = bool
  default     = null
}

variable "recipient_emails" {
  description = "Email addresses to receive the report"
  type        = set(string)
  default     = null
}

variable "recipient_users" {
  description = "Users to receive the report"
  type        = set(string)
  default     = null
}
