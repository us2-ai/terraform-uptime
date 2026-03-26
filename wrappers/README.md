# Wrapper Module

This module implements a single wrapper pattern that allows managing several copies of the `terraform-uptime` module in places where using the native Terraform `for_each` feature is not feasible (e.g., with [Terragrunt](https://terragrunt.gruntwork.io/)).

## Usage with Terragrunt

```hcl
# terragrunt.hcl
terraform {
  source = "path/to/terraform-uptime//wrappers"
}

inputs = {
  defaults = {
    contact_groups = ["DevOps"]
    encryption     = true
    interval       = 5
  }

  items = {
    service-a = {
      name    = "service-a"
      address = "service-a.example.com"
      checks = {
        http = { type = "http" }
      }
    }
    service-b = {
      name    = "service-b"
      address = "service-b.example.com"
      checks = {
        http = { type = "http" }
        dns  = { type = "dns", expect_string = "10.0.0.1" }
      }
    }
  }
}
```

## Variable Precedence

Values are resolved in this order (highest priority first):

1. Per-item values in `var.items`
2. Shared defaults in `var.defaults`
3. Module-level fallback defaults

<!-- BEGIN_TF_DOCS -->
<!-- END_TF_DOCS -->
