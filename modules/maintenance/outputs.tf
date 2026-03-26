output "check_id" {
  description = "The check ID the maintenance is attached to"
  value       = try(uptime_check_maintenance.this[0].check_id, null)
}
