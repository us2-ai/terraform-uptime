output "id" {
  description = "The ID of the user"
  value       = try(uptime_user.this[0].id, null)
}

output "email" {
  description = "The user email"
  value       = try(uptime_user.this[0].email, null)
}

output "url" {
  description = "The API URL of the user"
  value       = try(uptime_user.this[0].url, null)
}
