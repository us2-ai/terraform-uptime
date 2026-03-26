resource "uptime_integration_cachet" "this" {
  count = var.create && var.type == "cachet" ? 1 : 0

  cachet_url = var.settings.cachet_url
  name       = var.name
  token      = var.settings.token

  component      = try(var.settings.component, null)
  contact_groups = var.contact_groups
  metric         = try(var.settings.metric, null)
}

resource "uptime_integration_datadog" "this" {
  count = var.create && var.type == "datadog" ? 1 : 0

  api_key = var.settings.api_key
  app_key = var.settings.app_key
  name    = var.name

  contact_groups = var.contact_groups
  region         = try(var.settings.region, null)
}

resource "uptime_integration_geckoboard" "this" {
  count = var.create && var.type == "geckoboard" ? 1 : 0

  api_key      = var.settings.api_key
  dataset_name = var.settings.dataset_name
  name         = var.name

  contact_groups = var.contact_groups
}

resource "uptime_integration_jira_servicedesk" "this" {
  count = var.create && var.type == "jira_servicedesk" ? 1 : 0

  api_email      = var.settings.api_email
  api_token      = var.settings.api_token
  jira_subdomain = var.settings.jira_subdomain
  name           = var.name
  project_key    = var.settings.project_key

  contact_groups               = var.contact_groups
  custom_field_id_account_name = try(var.settings.custom_field_id_account_name, null)
  custom_field_id_check_name   = try(var.settings.custom_field_id_check_name, null)
  custom_field_id_check_url    = try(var.settings.custom_field_id_check_url, null)
  custom_fields_json           = try(var.settings.custom_fields_json, null)
  labels                       = try(var.settings.labels, null)
}

resource "uptime_integration_klipfolio" "this" {
  count = var.create && var.type == "klipfolio" ? 1 : 0

  api_key          = var.settings.api_key
  data_source_name = var.settings.data_source_name
  name             = var.name

  contact_groups = var.contact_groups
}

resource "uptime_integration_microsoft_teams" "this" {
  count = var.create && var.type == "microsoft_teams" ? 1 : 0

  name        = var.name
  webhook_url = var.settings.webhook_url

  contact_groups = var.contact_groups
}

resource "uptime_integration_opsgenie" "this" {
  count = var.create && var.type == "opsgenie" ? 1 : 0

  api_endpoint = var.settings.api_endpoint
  api_key      = var.settings.api_key
  name         = var.name

  auto_resolve   = try(var.settings.auto_resolve, null)
  contact_groups = var.contact_groups
  tags           = try(var.settings.tags, null)
  teams          = try(var.settings.teams, null)
}

resource "uptime_integration_pagerduty" "this" {
  count = var.create && var.type == "pagerduty" ? 1 : 0

  name        = var.name
  service_key = var.settings.service_key

  auto_resolve   = try(var.settings.auto_resolve, null)
  contact_groups = var.contact_groups
}

resource "uptime_integration_pushbullet" "this" {
  count = var.create && var.type == "pushbullet" ? 1 : 0

  email = var.settings.email
  name  = var.name

  contact_groups = var.contact_groups
}

resource "uptime_integration_pushover" "this" {
  count = var.create && var.type == "pushover" ? 1 : 0

  name     = var.name
  priority = var.settings.priority
  user     = var.settings.user

  contact_groups = var.contact_groups
}

resource "uptime_integration_slack" "this" {
  count = var.create && var.type == "slack" ? 1 : 0

  name        = var.name
  webhook_url = var.settings.webhook_url

  channel        = try(var.settings.channel, null)
  contact_groups = var.contact_groups
}

resource "uptime_integration_status" "this" {
  count = var.create && var.type == "status" ? 1 : 0

  api_id        = var.settings.api_id
  api_key       = var.settings.api_key
  name          = var.name
  statuspage_id = var.settings.statuspage_id

  component      = try(var.settings.component, null)
  contact_groups = var.contact_groups
  container      = try(var.settings.container, null)
  metric         = try(var.settings.metric, null)
}

resource "uptime_integration_statuspage" "this" {
  count = var.create && var.type == "statuspage" ? 1 : 0

  api_key = var.settings.api_key
  name    = var.name
  page    = var.settings.page

  component      = try(var.settings.component, null)
  contact_groups = var.contact_groups
  metric         = try(var.settings.metric, null)
}

resource "uptime_integration_victorops" "this" {
  count = var.create && var.type == "victorops" ? 1 : 0

  name        = var.name
  service_key = var.settings.service_key

  contact_groups = var.contact_groups
  routing_key    = try(var.settings.routing_key, null)
}

resource "uptime_integration_wavefront" "this" {
  count = var.create && var.type == "wavefront" ? 1 : 0

  api_token     = var.settings.api_token
  name          = var.name
  wavefront_url = var.settings.wavefront_url

  contact_groups = var.contact_groups
}

resource "uptime_integration_webhook" "this" {
  count = var.create && var.type == "webhook" ? 1 : 0

  name         = var.name
  postback_url = var.settings.postback_url

  contact_groups     = var.contact_groups
  headers            = try(var.settings.headers, null)
  use_legacy_payload = try(var.settings.use_legacy_payload, null)
}

resource "uptime_integration_zapier" "this" {
  count = var.create && var.type == "zapier" ? 1 : 0

  name        = var.name
  webhook_url = var.settings.webhook_url

  contact_groups = var.contact_groups
}
