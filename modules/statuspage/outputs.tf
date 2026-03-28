output "id" {
  description = "The ID of the status page"
  value       = try(uptime_statuspage.this[0].id, null)
}

output "name" {
  description = "The status page name"
  value       = try(uptime_statuspage.this[0].name, null)
}

output "url" {
  description = "The API URL of the status page"
  value       = try(uptime_statuspage.this[0].url, null)
}

output "slug" {
  description = "The URL slug of the status page"
  value       = try(uptime_statuspage.this[0].slug, null)
}

output "component" {
  description = "Map of status page component outputs"
  value       = uptime_statuspage_component.this
}

output "incident" {
  description = "Map of status page incident outputs"
  value       = uptime_statuspage_incident.this
}

output "metric" {
  description = "Map of status page metric outputs"
  value       = uptime_statuspage_metric.this
}

output "subscriber" {
  description = "Map of status page subscriber outputs"
  value       = uptime_statuspage_subscriber.this
}

output "user" {
  description = "Map of status page user outputs"
  value       = uptime_statuspage_user.this
}
