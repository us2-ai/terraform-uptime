######################
# Uptime Escalation  #
######################
variable "create" {
  description = "Create"
  type        = bool
  default     = true
}

variable "check_id" {
  description = "The ID of the check to attach escalations to"
  type        = number
}

variable "escalations" {
  description = "List of escalation rules"
  type = list(object({
    contact_groups = list(string)
    num_repeats    = number
    wait_time      = number
  }))
}
