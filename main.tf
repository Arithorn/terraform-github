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

resource "github_actions_secret" "infracost" {
  for_each = local.module_settings
  repository       = each.key
  secret_name      = "INFRACOST_API_KEY"
  plaintext_value  = var.infracost_key
}