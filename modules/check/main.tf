locals {
  http_protocol = var.encryption ? "https://" : "http://"
  http_address  = join("", [local.http_protocol, var.address])
  http_port     = var.encryption ? 443 : 80
  encryption    = var.encryption ? "SSL_TLS" : null
}

resource "uptime_check_blacklist" "this" {
  count = var.create && var.type == "blacklist" ? 1 : 0

  address = var.address
  name    = var.name

  contact_groups = var.contact_groups
  is_paused      = var.is_paused
  notes          = var.notes
  num_retries    = var.num_retries
  tags           = var.tags
}

resource "uptime_check_dns" "this" {
  count = var.create && var.type == "dns" ? 1 : 0

  address = var.address
  name    = var.name

  contact_groups            = var.contact_groups
  dns_record_type           = var.dns_record_type
  dns_server                = var.dns_server
  expect_string             = var.expect_string
  include_in_global_metrics = var.include_in_global_metrics
  interval                  = var.interval
  is_paused                 = var.is_paused
  locations                 = var.locations
  notes                     = var.notes
  num_retries               = var.num_retries
  sensitivity               = var.sensitivity
  sla                       = var.sla
  tags                      = var.tags
  threshold                 = var.threshold
}

resource "uptime_check_sslcert" "this" {
  count = var.create && var.type == "sslcert" ? 1 : 0

  address = var.address
  name    = var.name

  config = {
    crl                = try(var.config.crl, null)
    fingerprint        = try(var.config.fingerprint, null)
    first_element_only = try(var.config.first_element_only, null)
    issuer             = try(var.config.issuer, null)
    match              = try(var.config.match, null)
    min_version        = try(var.config.min_version, null)
    protocol           = try(var.config.protocol, null)
    self_signed        = try(var.config.self_signed, null)
    url                = try(var.config.url, null)
  }
  contact_groups = var.contact_groups
  is_paused      = var.is_paused
  notes          = var.notes
  num_retries    = var.num_retries
  port           = var.port
  tags           = var.tags
  threshold      = var.threshold
}

resource "uptime_check_malware" "this" {
  count = var.create && var.type == "malware" ? 1 : 0

  address = var.address
  name    = var.name

  contact_groups = var.contact_groups
  is_paused      = var.is_paused
  notes          = var.notes
  num_retries    = var.num_retries
  sla            = var.sla
  tags           = var.tags
}

resource "uptime_check_http" "this" {
  count = var.create && var.type == "http" ? 1 : 0

  address = local.http_address
  name    = var.name

  contact_groups            = var.contact_groups
  encryption                = local.encryption
  expect_string             = var.expect_string
  expect_string_type        = var.expect_string_type
  headers                   = var.headers
  include_in_global_metrics = var.include_in_global_metrics
  interval                  = var.interval
  is_paused                 = var.is_paused
  locations                 = var.locations
  notes                     = var.notes
  num_retries               = var.num_retries
  password                  = var.password
  port                      = try(var.port, local.http_port)
  proxy                     = var.proxy
  send_string               = var.send_string
  sensitivity               = var.sensitivity
  sla                       = var.sla
  status_code               = var.status_code
  tags                      = var.tags
  threshold                 = var.threshold
  username                  = var.username
  version                   = var.check_version
}

resource "uptime_check_ssh" "this" {
  count = var.create && var.type == "ssh" ? 1 : 0

  address = var.address
  name    = var.name

  contact_groups            = var.contact_groups
  include_in_global_metrics = var.include_in_global_metrics
  interval                  = var.interval
  is_paused                 = var.is_paused
  locations                 = var.locations
  notes                     = var.notes
  num_retries               = var.num_retries
  port                      = var.port
  sensitivity               = var.sensitivity
  sla                       = var.sla
  tags                      = var.tags
}

resource "uptime_check_tcp" "this" {
  count = var.create && var.type == "tcp" ? 1 : 0

  address = var.address
  name    = var.name

  contact_groups            = var.contact_groups
  encryption                = local.encryption
  expect_string             = var.expect_string
  include_in_global_metrics = var.include_in_global_metrics
  interval                  = var.interval
  is_paused                 = var.is_paused
  locations                 = var.locations
  notes                     = var.notes
  num_retries               = var.num_retries
  port                      = var.port
  send_string               = var.send_string
  sla                       = var.sla
  tags                      = var.tags
  use_ip_version            = var.use_ip_version
}

resource "uptime_check_api" "this" {
  count = var.create && var.type == "api" ? 1 : 0

  name   = var.name
  script = var.script

  contact_groups            = var.contact_groups
  include_in_global_metrics = var.include_in_global_metrics
  interval                  = var.interval
  is_paused                 = var.is_paused
  locations                 = var.locations
  notes                     = var.notes
  num_retries               = var.num_retries
  sensitivity               = var.sensitivity
  sla                       = var.sla
  tags                      = var.tags
  threshold                 = var.threshold
}
