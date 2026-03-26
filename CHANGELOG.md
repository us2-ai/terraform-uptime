# Changelog

All notable changes to this project will be documented in this file.

## [Unreleased]

### Features

- Add 14 new check types: heartbeat, icmp, imap, ntp, pagespeed, pop, rdap, rum2, smtp, transaction, udp, webhook, whois
- Add integration module supporting 17 integration types: cachet, datadog, geckoboard, jira_servicedesk, klipfolio, microsoft_teams, opsgenie, pagerduty, pushbullet, pushover, slack, status, statuspage, victorops, wavefront, webhook, zapier
- Add escalation module for check escalation policies
- Add maintenance module for check maintenance windows
- Add check module outputs (id, name, heartbeat_url, webhook_url)
- Add root-level outputs for check, integration, escalation, and maintenance modules
- Add global default variables for interval, sensitivity, and num_retries
- Add wrapper module for Terragrunt compatibility
- Add examples: simple, complete, integrations

### Bug Fixes

- Fix missing `api` in check type validation regex
- Add missing `locations` attribute to blacklist, sslcert, and malware checks
- Add missing `use_ip_version` attribute to ssh checks
- Add missing `ignore_authority_warnings`, `ignore_sct`, `resolve` attributes to sslcert config

## [0.0.1] - 2024-01-01

### Features

- Initial release
- Support for 8 check types: blacklist, dns, sslcert, malware, http, ssh, tcp, api
- Tag module with color support
- Check group module with SLA configuration
