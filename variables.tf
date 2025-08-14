variable "github_username" {
  type        = string
  description = "GitHub username for the repository."
}

variable "vercel_projects" {
  type = map(object({
    framework     = optional(string, null)
    git_type      = string
    build_command = optional(string, null)
    node_version  = optional(string, "22.x")
    environment_variables = list(object({
      key     = string
      value   = string
      target  = set(string)
      comment = optional(string)
    }))
    custom_domain = optional(bool, false)
  }))
  description = "Vercel projects configuration."
  default     = {}
}
