# escalation

Submodule for creating Uptime.com check escalation policies. Escalations define a series of alert steps that trigger after specified wait times.

## Usage

```hcl
module "escalation" {
  source = "path/to/terraform-uptime/modules/escalation"

  check_id = 12345

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
```

<!-- BEGIN_TF_DOCS -->
<!-- END_TF_DOCS -->
