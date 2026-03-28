####################
# Uptime Dashboard #
####################
variable "create" {
  description = "Create"
  type        = bool
  default     = true
}

variable "name" {
  description = "Dashboard name"
  type        = string
}

variable "is_pinned" {
  description = "Pin dashboard to top of list"
  type        = bool
  default     = null
}

variable "ordering" {
  description = "Dashboard position in list"
  type        = number
  default     = null
}

variable "alerts" {
  description = "Alerts configuration"
  type        = any
}

variable "metrics" {
  description = "Metrics configuration"
  type        = any
  default     = null
}

variable "selected" {
  description = "Selected services and tags"
  type        = any
}

variable "services" {
  description = "Services display configuration"
  type        = any
}
