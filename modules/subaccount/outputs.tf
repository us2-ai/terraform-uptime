output "id" {
  description = "The ID of the subaccount"
  value       = try(uptime_subaccount.this[0].id, null)
}

output "name" {
  description = "The subaccount name"
  value       = try(uptime_subaccount.this[0].name, null)
}

output "url" {
  description = "The API URL of the subaccount"
  value       = try(uptime_subaccount.this[0].url, null)
}
