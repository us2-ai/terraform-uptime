output "id" {
  description = "The ID of the dashboard"
  value       = try(uptime_dashboard.this[0].id, null)
}

output "name" {
  description = "The dashboard name"
  value       = try(uptime_dashboard.this[0].name, null)
}
