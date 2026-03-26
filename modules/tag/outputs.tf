output "id" {
  description = "The ID of the tag"
  value       = try(uptime_tag.this[0].id, null)
}

output "tag" {
  description = "The tag name"
  value       = try(uptime_tag.this[0].tag, null)
}
