#######################
# Uptime Maintenance  #
#######################
variable "create" {
  description = "Create"
  type        = bool
  default     = true
}

variable "check_id" {
  description = "The ID of the check to attach maintenance to"
  type        = number
}

variable "schedule" {
  description = "Maintenance schedule"
  type        = any
  default     = null
}

variable "state" {
  description = "Maintenance state"
  type        = string
  default     = null
}

variable "pause_on_scheduled_maintenance" {
  description = "Pause check on scheduled maintenance"
  type        = bool
  default     = null
}
