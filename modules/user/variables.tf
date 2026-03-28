###############
# Uptime User #
###############
variable "create" {
  description = "Create"
  type        = bool
  default     = true
}

variable "email" {
  description = "Email address"
  type        = string
}

variable "password" {
  description = "Password"
  type        = string
  sensitive   = true
}

variable "first_name" {
  description = "First name"
  type        = string
  default     = null
}

variable "last_name" {
  description = "Last name"
  type        = string
  default     = null
}

variable "access_level" {
  description = "Access level"
  type        = string
  default     = null
}

variable "is_api_enabled" {
  description = "Enable API access"
  type        = bool
  default     = null
}

variable "notify_paid_invoices" {
  description = "Notify on paid invoices"
  type        = bool
  default     = null
}

variable "require_two_factor" {
  description = "Require two-factor authentication"
  type        = string
  default     = null
}

variable "assigned_subaccounts" {
  description = "Assigned subaccounts"
  type        = set(string)
  default     = null
}
