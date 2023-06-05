resource "github_repository" "tf-module-1" {
  name        = "terraform-module-1"
  description = "My Private Terraform Module"
  visibility = "private"
  auto_init = true

  # template {
  #   owner                = "Arithorn"
  #   repository           = "terraform-aws-template-master"
  #   include_all_branches = true
  # }
}

