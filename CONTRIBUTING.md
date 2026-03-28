# Contributing

Contributions are welcome and appreciated.

## Getting Started

1. Fork this repository
2. Create a feature branch (`git checkout -b feature/my-feature`)
3. Make your changes
4. Ensure all checks pass (see below)
5. Commit your changes (`git commit -m 'Add my feature'`)
6. Push to the branch (`git push origin feature/my-feature`)
7. Open a Pull Request

## Development Requirements

- [Terraform](https://www.terraform.io/downloads) >= 1.6
- [pre-commit](https://pre-commit.com/#install) (optional but recommended)
- [terraform-docs](https://terraform-docs.io/) (optional, for README generation)
- [TFLint](https://github.com/terraform-linters/tflint) (optional, for linting)

## Running Checks

### Pre-commit hooks

Install the hooks once:

```bash
pre-commit install
```

Run all hooks manually:

```bash
pre-commit run -a
```

### Manual validation

```bash
# Format all files
terraform fmt -recursive

# Validate root module
terraform init -backend=false
terraform validate

# Validate examples
for dir in examples/*/; do
  (cd "$dir" && terraform init -backend=false && terraform validate)
done

# Validate wrappers
(cd wrappers && terraform init -backend=false && terraform validate)
```

### Regenerate documentation

```bash
terraform-docs .
```

## Guidelines

- Follow existing code patterns and naming conventions
- Add new variables with meaningful `description` fields
- Update `CHANGELOG.md` under the `[Unreleased]` section
- Add or update examples when adding new features
- Ensure `terraform fmt` and `terraform validate` pass before submitting

## Adding a New Check Type

1. Add the resource block to `modules/check/main.tf`
2. Add the type to the validation regex in `modules/check/variables.tf`
3. Add any new variables needed to `modules/check/variables.tf`
4. Add the type to the `coalesce()` chains in `modules/check/outputs.tf`
5. Wire any new root-level variables through `main.tf` and `variables.tf`
6. Update the wrapper in `wrappers/main.tf` if new root variables were added
7. Update the README check type table

## Adding a New Integration Type

1. Add the resource block to `modules/integration/main.tf`
2. Add the type to the validation regex in `modules/integration/variables.tf`
3. Add the type to the `coalesce()` chains in `modules/integration/outputs.tf`
4. Update the README integrations list

## Adding a New Resource Module

1. Create a new directory under `modules/` (e.g., `modules/my_resource/`)
2. Add `main.tf`, `variables.tf`, `outputs.tf`, and `versions.tf` following existing patterns:
   - Use `count = var.create ? 1 : 0` for conditional creation
   - Use `try(resource[0].attr, null)` in outputs
3. Wire the module into the root `main.tf` with `for_each` and `try()` inheritance
4. Add the input variable (type `any`, default `{}`) to root `variables.tf`
5. Add the output to root `outputs.tf`
6. Add the variable to `wrappers/main.tf` with 3-level `try()` fallback
7. Update the README submodules table, inputs, and outputs
8. Add usage to `examples/complete/`
9. Update `CHANGELOG.md` under the `[Unreleased]` section
