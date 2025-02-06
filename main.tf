locals {
  create_tag   = var.create && var.create_tag
  create_group = var.create && var.create_group

  primary_tag = local.create_tag ? {
    "${var.name}" = {
      color_hex = var.color_hex
    }
  } : {}
  tags = merge(local.primary_tag, var.tags)

  primary_group = local.create_group ? {
    "${var.name}" = {
      contact_groups            = var.contact_groups
      include_in_global_metrics = var.include_in_global_metrics
      is_paused                 = var.is_paused
      notes                     = var.notes
      sla                       = var.sla
      tags                      = concat(try([module.tag[var.name].tag], []), var.additional_tags)

      config = {
        down_condition             = try(var.config.down_condition, null)
        services                   = try(var.config.services, [])
        tags                       = concat(try([module.tag[var.name].tag], []), try(var.config.tags, []))
        uptime_percent_calculation = try(var.config.uptime_percent_calculation, null)

        response_time = {
          calculation_mode = try(var.config.response_time.calculation_mode, null)
          check_type       = try(var.config.response_time.check_type, null)
          single_check     = try(var.config.response_time.single_check, null)
        }
      }
    }
  } : {}
  groups = merge(local.primary_group, var.groups)
}

module "tag" {
  source   = "./modules/tag"
  for_each = { for k, v in local.tags : k => v if var.create }

  tag       = try(each.value.tag, each.key)
  color_hex = try(each.value.color_hex, null)
}

module "group" {
  source   = "./modules/group"
  for_each = { for k, v in local.groups : k => v if var.create }

  name                      = try(each.value.name, each.key)
  contact_groups            = try(each.value.contact_groups, [])
  include_in_global_metrics = try(each.value.include_in_global_metrics, false)
  is_paused                 = try(each.value.is_paused, false)
  notes                     = try(each.value.notes, null)
  sla                       = try(each.value.sla, {})
  tags                      = concat(try([module.tag[var.name].tag], []), try(each.value.additional_tags, []))
  config                    = try(each.value.config, {})
}

module "check" {
  source   = "./modules/check"
  for_each = { for k, v in var.checks : k => v if var.create }

  create                    = try(each.value.create_check, true)
  name                      = try(each.value.name, each.key)
  type                      = each.value.type
  address                   = try(each.value.address, var.address)
  port                      = try(each.value.port, var.port)
  script                    = try(each.value.script, var.script)
  config                    = try(each.value.config, var.config)
  contact_groups            = try(each.value.contact_groups, var.contact_groups)
  encryption                = try(each.value.encryption, var.encryption)
  dns_record_type           = try(each.value.dns_record_type, var.dns_record_type)
  dns_server                = try(each.value.dns_server, var.dns_server)
  expect_string             = try(each.value.expect_string, var.expect_string)
  expect_string_type        = try(each.value.expect_string_type, var.expect_string_type)
  headers                   = try(each.value.headers, var.headers)
  username                  = try(each.value.username, var.username)
  password                  = try(each.value.password, var.password)
  proxy                     = try(each.value.proxy, var.proxy)
  send_string               = try(each.value.send_string, var.send_string)
  status_code               = try(each.value.status_code, var.status_code)
  check_version             = try(each.value.check_version, var.check_version)
  include_in_global_metrics = try(each.value.include_in_global_metrics, var.include_in_global_metrics)
  is_paused                 = try(each.value.is_paused, var.is_paused)
  notes                     = try(each.value.notes, var.notes)
  tags                      = concat(try([module.tag[var.name].tag], []), try(each.value.tags, []), var.additional_tags)
  sla                       = try(each.value.sla, var.sla)
  locations                 = try(each.value.locations, var.locations)
  use_ip_version            = try(each.value.use_ip_version, var.use_ip_version)
}
