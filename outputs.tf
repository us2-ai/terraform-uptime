output "tag" {
  description = "Map of tag module outputs keyed by tag name"
  value       = module.tag
}

output "group" {
  description = "Map of check group module outputs keyed by group name"
  value       = module.group
}

output "check" {
  description = "Map of check module outputs keyed by check name"
  value       = module.check
}

output "integration" {
  description = "Map of integration module outputs keyed by integration name"
  value       = module.integration
}

output "escalation" {
  description = "Map of escalation module outputs keyed by escalation name"
  value       = module.escalation
}

output "maintenance" {
  description = "Map of maintenance module outputs keyed by maintenance name"
  value       = module.maintenance
}
