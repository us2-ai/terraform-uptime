############################
# Uptime Service Variable #
############################
variable "create" {
  description = "Create"
  type        = bool
  default     = true
}

variable "service_id" {
  description = "The ID of the check/service this variable belongs to"
  type        = number
}

variable "credential_id" {
  description = "The ID of the credential containing the sensitive value"
  type        = number
}

variable "variable_name" {
  description = "The variable name as referenced in the check configuration"
  type        = string
}

variable "property_name" {
  description = "The property name from the credential to use"
  type        = string
}
