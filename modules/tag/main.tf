resource "uptime_tag" "this" {
  count = var.create ? 1 : 0

  tag       = var.tag
  color_hex = var.color_hex
}
