output "id" {
  description = "The ID of the SLA report"
  value       = try(uptime_sla_report.this[0].id, null)
}

output "name" {
  description = "The SLA report name"
  value       = try(uptime_sla_report.this[0].name, null)
}

output "url" {
  description = "The API URL of the SLA report"
  value       = try(uptime_sla_report.this[0].url, null)
}
