################
# Uptime Check #
################
variable "create" {
  description = "Create"
  type        = bool
  default     = true
}

variable "type" {
  description = "The type of check to create"
  type        = string

  validation {
    condition     = can(regex("^(blacklist|dns|sslcert|malware|http|ssh|tcp)$", var.type))
    error_message = "Must be a valid type of check"
  }
}

variable "address" {
  description = "Address"
  type        = string
  default     = null
}

variable "name" {
  description = "Name"
  type        = string
}

variable "script" {
  description = "API Script (JSON)"
  type        = string
  default     = null
}

variable "contact_groups" {
  description = "Contact Groups"
  type        = list(string)
  default     = []
}

variable "encryption" {
  description = "Encryption"
  type        = bool
  default     = false
}

variable "is_paused" {
  description = "Is paused?"
  type        = bool
  default     = false
}

variable "notes" {
  description = "Notes"
  type        = string
  default     = null
}

variable "num_retries" {
  description = "The number of retries"
  type        = number
  default     = null
}

variable "tags" {
  description = "Tags for which this resource belongs to"
  type        = list(string)
  default     = []
}

variable "dns_record_type" {
  description = "The DNS record type"
  type        = string
  default     = null
}

variable "dns_server" {
  description = "The DNS server to use"
  type        = string
  default     = null
}

variable "expect_string" {
  description = "Expected string"
  type        = string
  default     = null
}

variable "expect_string_type" {
  description = "Expected string type"
  type        = string
  default     = null
}

variable "headers" {
  description = "HTTP headers"
  type        = map(list(string))
  default     = {}
}

variable "include_in_global_metrics" {
  description = "Include in global metrics"
  type        = bool
  default     = false
}

variable "interval" {
  description = "The interval between checks"
  type        = number
  default     = null
}

variable "locations" {
  description = "The list of locations"
  type        = list(string)
  default     = []
}

variable "sensitivity" {
  description = "Sensitivity"
  type        = number
  default     = null
}

variable "sla" {
  description = "SLA"
  type        = any
  default     = {}
}

variable "threshold" {
  description = "The threshold to trigger an alert"
  type        = number
  default     = null
}

variable "config" {
  description = "SSLcert configuration"
  type        = any
  default     = {}
}

variable "port" {
  description = "Port"
  type        = number
  default     = null
}

variable "username" {
  description = "Username"
  type        = string
  default     = null
}

variable "password" {
  description = "Password"
  type        = string
  default     = null
  sensitive   = true
}

variable "proxy" {
  description = "Proxy"
  type        = string
  default     = null
}

variable "send_string" {
  description = "String to POST"
  type        = string
  default     = null
}

variable "status_code" {
  description = "Expected HTTP code returned"
  type        = string
  default     = null
}

variable "check_version" {
  description = "Check version"
  type        = number
  default     = null
}

variable "use_ip_version" {
  description = "Use IP Version"
  type        = string
  default     = null
}
