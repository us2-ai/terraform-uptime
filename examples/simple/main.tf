module "uptime" {
  source = "../../"

  name           = "simple-example"
  address        = "example.com"
  contact_groups = ["Default"]
  encryption     = true

  checks = {
    homepage = {
      type = "http"
    }
  }
}
