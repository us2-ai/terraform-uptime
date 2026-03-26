# tag

Submodule for creating Uptime.com tags with optional color.

## Usage

```hcl
module "tag" {
  source = "path/to/terraform-uptime/modules/tag"

  tag       = "production"
  color_hex = "#FF0000"
}
```

<!-- BEGIN_TF_DOCS -->
<!-- END_TF_DOCS -->
