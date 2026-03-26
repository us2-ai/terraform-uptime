module "uptime" {
  source = "../../"

  name           = "complete-example"
  address        = "example.com"
  contact_groups = ["DevOps"]
  encryption     = true
  interval       = 5
  num_retries    = 2

  tags = {
    staging = {
      color_hex = "#FFA500"
    }
  }

  groups = {
    secondary = {
      contact_groups = ["DevOps"]
      config = {
        down_condition             = "ANY"
        uptime_percent_calculation = "AVERAGE"
      }
    }
  }

  checks = {
    homepage = {
      type        = "http"
      status_code = "200"
      threshold   = 30
    }
    dns = {
      type            = "dns"
      dns_record_type = "A"
      expect_string   = "93.184.216.34"
    }
    heartbeat = {
      type = "heartbeat"
    }
    ping = {
      type = "icmp"
    }
    ssl = {
      type = "sslcert"
      config = {
        min_version = "TLSv1.2"
      }
      threshold = 30
    }
    api = {
      type   = "api"
      script = jsonencode([{ step_def = "C_URL", values = { url = "https://example.com/api/health" } }])
    }
  }

  integrations = {
    slack = {
      type = "slack"
      settings = {
        webhook_url = "https://hooks.slack.com/services/T00/B00/xxx"
        channel     = "#monitoring"
      }
    }
    pagerduty = {
      type = "pagerduty"
      settings = {
        service_key  = "your-pagerduty-service-key"
        auto_resolve = true
      }
    }
  }

  escalations = {
    homepage = {
      check_id = module.uptime.check["homepage"].id
      escalations = [
        {
          contact_groups = ["DevOps"]
          num_repeats    = 3
          wait_time      = 5
        },
        {
          contact_groups = ["Management"]
          num_repeats    = 1
          wait_time      = 15
        }
      ]
    }
  }

  maintenances = {
    weekly = {
      check_id = module.uptime.check["homepage"].id
      state    = "ACTIVE"
      schedule = [
        {
          type      = "WEEKLY"
          weekdays  = ["SUN"]
          from_time = "02:00"
          to_time   = "04:00"
        }
      ]
    }
  }
}
