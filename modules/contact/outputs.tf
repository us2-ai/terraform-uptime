output "id" {
  description = "The ID of the contact"
  value       = try(uptime_contact.this[0].id, null)
}

output "name" {
  description = "The contact group name"
  value       = try(uptime_contact.this[0].name, null)
}

output "url" {
  description = "The API URL of the contact"
  value       = try(uptime_contact.this[0].url, null)
}
