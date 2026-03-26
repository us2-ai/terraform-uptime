# check

Submodule for creating individual Uptime.com checks. Supports 21 check types selected via the `type` variable.

## Usage

```hcl
module "check" {
  source = "path/to/terraform-uptime/modules/check"

  name    = "my-http-check"
  type    = "http"
  address = "https://example.com"

  contact_groups = ["DevOps"]
  interval       = 5
  locations      = ["US-East", "EU-West"]
}
```

<!-- BEGIN_TF_DOCS -->
<!-- END_TF_DOCS -->
