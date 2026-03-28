output "id" {
  description = "The ID of the scheduled report"
  value       = try(uptime_scheduled_report.this[0].id, null)
}

output "name" {
  description = "The scheduled report name"
  value       = try(uptime_scheduled_report.this[0].name, null)
}

output "url" {
  description = "The API URL of the scheduled report"
  value       = try(uptime_scheduled_report.this[0].url, null)
}
