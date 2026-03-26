# group

Submodule for creating Uptime.com check groups with shared alerting and SLA configuration.

## Usage

```hcl
module "group" {
  source = "path/to/terraform-uptime/modules/group"

  name           = "production-checks"
  contact_groups = ["DevOps"]
  tags           = ["production"]

  config = {
    down_condition             = "ANY"
    uptime_percent_calculation = "AVERAGE"
  }
}
```

<!-- BEGIN_TF_DOCS -->
<!-- END_TF_DOCS -->
