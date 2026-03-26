# maintenance

Submodule for creating Uptime.com check maintenance windows. Maintenance windows pause alerting during scheduled periods.

## Usage

```hcl
module "maintenance" {
  source = "path/to/terraform-uptime/modules/maintenance"

  check_id = 12345

  state = "ACTIVE"

  schedule = [
    {
      type     = "WEEKLY"
      weekdays = ["MON", "WED", "FRI"]
      from_time = "02:00"
      to_time   = "04:00"
    }
  ]
}
```

<!-- BEGIN_TF_DOCS -->
<!-- END_TF_DOCS -->
