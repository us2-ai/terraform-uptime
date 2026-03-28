#####################
# Uptime Credential #
#####################
variable "create" {
  description = "Create"
  type        = bool
  default     = true
}

variable "display_name" {
  description = "Display name"
  type        = string
}

variable "credential_type" {
  description = "Credential type"
  type        = string
}

variable "description" {
  description = "Description"
  type        = string
  default     = null
}

variable "username" {
  description = "Username"
  type        = string
  default     = null
}

variable "secret" {
  description = "Secret configuration containing sensitive values"
  type        = any
  sensitive   = true
}
