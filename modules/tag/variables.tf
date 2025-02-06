################
# Uptime Group #
################
variable "create" {
  description = "Create"
  type        = bool
  default     = true
}

variable "tag" {
  description = "Tag"
  type        = string
}

variable "color_hex" {
  description = "Color Hex"
  type        = string
  default     = null
}
