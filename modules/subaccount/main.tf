resource "uptime_subaccount" "this" {
  count = var.create ? 1 : 0

  name = var.name
}
