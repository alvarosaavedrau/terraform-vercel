output "vercel_projects_name" {
  value       = { for k, v in vercel_project.vercel_project : k => v.name }
  description = "Name for the created Vercel projects"
}

output "vercel_projects_id" {
  value       = { for k, v in vercel_project.vercel_project : k => v.id }
  description = "id for the created Vercel projects"
}

output "vercel_project_repos" {
  value       = { for name, project in var.vercel_projects : name => "${var.github_username}/${name}" }
  description = "GitHub repository names for the Vercel projects"
}
