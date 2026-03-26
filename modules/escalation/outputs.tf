output "check_id" {
  description = "The check ID the escalations are attached to"
  value       = try(uptime_check_escalations.this[0].check_id, null)
}
