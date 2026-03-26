# integration

Submodule for creating Uptime.com alert integrations. Supports 17 integration types selected via the `type` variable.

## Usage

```hcl
module "integration" {
  source = "path/to/terraform-uptime/modules/integration"

  name           = "slack-alerts"
  type           = "slack"
  contact_groups = ["DevOps"]

  settings = {
    webhook_url = "https://hooks.slack.com/services/..."
    channel     = "#alerts"
  }
}
```

## Supported Types

cachet, datadog, geckoboard, jira\_servicedesk, klipfolio, microsoft\_teams, opsgenie, pagerduty, pushbullet, pushover, slack, status, statuspage, victorops, wavefront, webhook, zapier

<!-- BEGIN_TF_DOCS -->
<!-- END_TF_DOCS -->
