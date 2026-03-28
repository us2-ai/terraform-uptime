output "id" {
  description = "The ID of the service variable"
  value       = try(uptime_service_variable.this[0].id, null)
}

output "variable_name" {
  description = "The variable name"
  value       = try(uptime_service_variable.this[0].variable_name, null)
}
