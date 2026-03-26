module "uptime" {
  source = "../../"

  name           = "integrations-example"
  address        = "example.com"
  contact_groups = ["DevOps"]
  encryption     = true

  checks = {
    homepage = {
      type = "http"
    }
  }

  integrations = {
    slack = {
      type = "slack"
      settings = {
        webhook_url = "https://hooks.slack.com/services/T00/B00/xxx"
        channel     = "#alerts"
      }
    }
    webhook = {
      type = "webhook"
      settings = {
        postback_url = "https://example.com/webhook/uptime"
        headers      = "{\"Authorization\": \"Bearer token\"}"
      }
    }
    pagerduty = {
      type = "pagerduty"
      settings = {
        service_key  = "your-pagerduty-service-key"
        auto_resolve = true
      }
    }
    datadog = {
      type = "datadog"
      settings = {
        api_key = "your-datadog-api-key"
        app_key = "your-datadog-app-key"
        region  = "US"
      }
    }
  }
}
