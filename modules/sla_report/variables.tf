######################
# Uptime SLA Report #
######################
variable "create" {
  description = "Create"
  type        = bool
  default     = true
}

variable "name" {
  description = "SLA report name"
  type        = string
}

variable "default_date_range" {
  description = "Default date range"
  type        = string
  default     = null
}

variable "show_uptime_section" {
  description = "Show uptime section"
  type        = bool
  default     = null
}

variable "show_uptime_sla" {
  description = "Show uptime SLA"
  type        = bool
  default     = null
}

variable "uptime_section_sort" {
  description = "Uptime section sort order"
  type        = string
  default     = null
}

variable "filter_uptime_sla_violations" {
  description = "Filter uptime SLA violations"
  type        = bool
  default     = null
}

variable "filter_with_downtime" {
  description = "Filter services with downtime"
  type        = bool
  default     = null
}

variable "show_response_time_section" {
  description = "Show response time section"
  type        = bool
  default     = null
}

variable "show_response_time_sla" {
  description = "Show response time SLA"
  type        = bool
  default     = null
}

variable "response_time_section_sort" {
  description = "Response time section sort order"
  type        = string
  default     = null
}

variable "filter_response_time_sla_violations" {
  description = "Filter response time SLA violations"
  type        = bool
  default     = null
}

variable "filter_slowest" {
  description = "Filter slowest services"
  type        = bool
  default     = null
}

variable "services_tags" {
  description = "Tags to filter services"
  type        = set(string)
  default     = null
}

variable "services_selected" {
  description = "Selected services for the report"
  type        = any
  default     = null
}

variable "reporting_groups" {
  description = "Reporting groups"
  type        = any
  default     = null
}
