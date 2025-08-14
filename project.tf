resource "vercel_project" "vercel_project" {
  for_each = var.vercel_projects

  name          = replace(each.key, ".", "-")
  framework     = each.value.framework
  build_command = each.value.build_command
  node_version  = each.value.node_version
  vercel_authentication = {
    deployment_type = "standard_protection"
  }

  git_repository = {
    type              = each.value.git_type
    repo              = "${var.github_username}/${each.key}"
    production_branch = "main"
  }

  environment = each.value.environment_variables
}

resource "vercel_project_domain" "vercel_project_domain" {
  for_each = {
    for k, v in var.vercel_projects : k => v
    if lookup(v, "custom_domain", false)
  }

  project_id = vercel_project.vercel_project[each.key].id
  domain     = each.key
}
