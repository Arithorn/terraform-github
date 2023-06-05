variable "github_token" {
  type = string
}

locals {
  module_settings = {
    "module_1" = {name = "Module1", description="Custom Module 1"},
    "module_2" = {name = "Module2", description="Custom Module 2"}
  }
}