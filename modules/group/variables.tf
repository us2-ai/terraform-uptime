################
# Uptime Group #
################
variable "create" {
  description = "A conditional indicator to enable checks"
  type        = bool
  default     = true
}

variable "name" {
  description = "The name of the event rule"
  type        = string
}

variable "contact_groups" {
  description = "The personal team to create the send alerts to"
  type        = list(string)
  default     = []
}

variable "is_paused" {
  description = "Is paused?"
  type        = bool
  default     = false
}

variable "notes" {
  description = "Is notes"
  type        = string
  default     = null
}

variable "tags" {
  description = "Tags for which this resource belongs to"
  type        = list(string)
  default     = []
}

variable "include_in_global_metrics" {
  description = "Include in global metrics"
  type        = bool
  default     = false
}

variable "sla" {
  description = "SLA"
  type        = any
  default     = {}
}

variable "config" {
  description = "Group config"
  type        = any
  default     = {}
}
