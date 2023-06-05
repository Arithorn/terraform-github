resource "github_repository" "tf-modules" {
  for_each      = local.module_settings
  name        = each.key
  description = each.value.description
  visibility = "private"
  auto_init = true

  template {
    owner                = "Arithorn"
    repository           = "terraform-aws-template-master"
    include_all_branches = true
  }
}

