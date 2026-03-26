output "tag" {
  description = "Tag outputs"
  value       = module.uptime.tag
}

output "group" {
  description = "Group outputs"
  value       = module.uptime.group
}

output "check" {
  description = "Check outputs"
  value       = module.uptime.check
}

output "integration" {
  description = "Integration outputs"
  value       = module.uptime.integration
}

output "escalation" {
  description = "Escalation outputs"
  value       = module.uptime.escalation
}

output "maintenance" {
  description = "Maintenance outputs"
  value       = module.uptime.maintenance
}
