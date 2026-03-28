resource "uptime_credential" "this" {
  count = var.create ? 1 : 0

  display_name    = var.display_name
  credential_type = var.credential_type
  description     = var.description
  username        = var.username
  secret          = var.secret
}
