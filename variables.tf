variable "github_token" {
  type = string
}

variable "infracost_key" {
  type = string
  default = "123456789"
}

variable "module-template" {
  type = string
  default = "terraform-aws-template-master"
}

locals {
  module_settings = {
    "module_1" = {name = "Module1", description="Custom Module 1"},
    "module_2" = {name = "Module2", description="Custom Module 2"}
  }
}