output "id" {
  description = "The ID of the credential"
  value       = try(uptime_credential.this[0].id, null)
}

output "display_name" {
  description = "The credential display name"
  value       = try(uptime_credential.this[0].display_name, null)
}

output "hint" {
  description = "The credential hint"
  value       = try(uptime_credential.this[0].hint, null)
}
