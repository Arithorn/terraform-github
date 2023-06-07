resource "github_repository" "tf-modules" {
  for_each      = local.module_settings
  name        = each.key
  description = each.value.description
  visibility = "private"
  auto_init = true

  template {
    owner                = "Arithorn"
    repository           = var.module-template
    include_all_branches = true
  }
}

resource "github_app_installation_repository" "TerraformCloud" {
  # The installation id of the app (in the organization).
  for_each = local.module_settings
  installation_id    = "34238006"
  repository         = github_repository.tf-modules[each.key].full_name
}


resource "github_actions_secret" "infracost" {
  for_each = local.module_settings
  repository       = each.key
  secret_name      = "INFRACOST_API_KEY"
  plaintext_value  = var.infracost_key
}

