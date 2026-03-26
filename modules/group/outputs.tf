output "id" {
  description = "The ID of the check group"
  value       = try(uptime_check_group.this[0].id, null)
}

output "name" {
  description = "The name of the check group"
  value       = try(uptime_check_group.this[0].name, null)
}
