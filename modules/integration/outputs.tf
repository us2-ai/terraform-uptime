output "id" {
  description = "The ID of the integration"
  value = coalesce(
    try(uptime_integration_cachet.this[0].id, null),
    try(uptime_integration_datadog.this[0].id, null),
    try(uptime_integration_geckoboard.this[0].id, null),
    try(uptime_integration_jira_servicedesk.this[0].id, null),
    try(uptime_integration_klipfolio.this[0].id, null),
    try(uptime_integration_microsoft_teams.this[0].id, null),
    try(uptime_integration_opsgenie.this[0].id, null),
    try(uptime_integration_pagerduty.this[0].id, null),
    try(uptime_integration_pushbullet.this[0].id, null),
    try(uptime_integration_pushover.this[0].id, null),
    try(uptime_integration_slack.this[0].id, null),
    try(uptime_integration_status.this[0].id, null),
    try(uptime_integration_statuspage.this[0].id, null),
    try(uptime_integration_victorops.this[0].id, null),
    try(uptime_integration_wavefront.this[0].id, null),
    try(uptime_integration_webhook.this[0].id, null),
    try(uptime_integration_zapier.this[0].id, null),
  )
}

output "name" {
  description = "The name of the integration"
  value = coalesce(
    try(uptime_integration_cachet.this[0].name, null),
    try(uptime_integration_datadog.this[0].name, null),
    try(uptime_integration_geckoboard.this[0].name, null),
    try(uptime_integration_jira_servicedesk.this[0].name, null),
    try(uptime_integration_klipfolio.this[0].name, null),
    try(uptime_integration_microsoft_teams.this[0].name, null),
    try(uptime_integration_opsgenie.this[0].name, null),
    try(uptime_integration_pagerduty.this[0].name, null),
    try(uptime_integration_pushbullet.this[0].name, null),
    try(uptime_integration_pushover.this[0].name, null),
    try(uptime_integration_slack.this[0].name, null),
    try(uptime_integration_status.this[0].name, null),
    try(uptime_integration_statuspage.this[0].name, null),
    try(uptime_integration_victorops.this[0].name, null),
    try(uptime_integration_wavefront.this[0].name, null),
    try(uptime_integration_webhook.this[0].name, null),
    try(uptime_integration_zapier.this[0].name, null),
  )
}
