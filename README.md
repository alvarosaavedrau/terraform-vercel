## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.12.2 |
| <a name="requirement_vercel"></a> [vercel](#requirement\_vercel) | >= 3.10.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_vercel"></a> [vercel](#provider\_vercel) | 3.10.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [vercel_project.vercel_project](https://registry.terraform.io/providers/vercel/vercel/latest/docs/resources/project) | resource |
| [vercel_project_domain.vercel_project_domain](https://registry.terraform.io/providers/vercel/vercel/latest/docs/resources/project_domain) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_profile"></a> [aws\_profile](#input\_aws\_profile) | AWS profile to use. | `string` | n/a | yes |
| <a name="input_github_username"></a> [github\_username](#input\_github\_username) | GitHub username for the repository. | `string` | n/a | yes |
| <a name="input_s3_key"></a> [s3\_key](#input\_s3\_key) | S3 key for Terraform state. | `string` | n/a | yes |
| <a name="input_s3_name"></a> [s3\_name](#input\_s3\_name) | S3 bucket name for Terraform state. | `string` | n/a | yes |
| <a name="input_s3_region"></a> [s3\_region](#input\_s3\_region) | AWS region for S3 bucket. | `string` | n/a | yes |
| <a name="input_vercel_projects"></a> [vercel\_projects](#input\_vercel\_projects) | Mapa de proyectos Vercel con framework, tipo de git y variables de entorno. | <pre>map(object({<br/>    framework     = optional(string, null)<br/>    git_type      = string<br/>    build_command = optional(string, null)<br/>    node_version  = optional(string, "22.x")<br/>    environment_variables = list(object({<br/>      key     = string<br/>      value   = string<br/>      target  = set(string)<br/>      comment = optional(string)<br/>    }))<br/>    custom_domain = optional(bool, false)<br/>  }))</pre> | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_vercel_project_repos"></a> [vercel\_project\_repos](#output\_vercel\_project\_repos) | Lista de repos de todos los proyectos en formato usuario/repositorio |
| <a name="output_vercel_projects_id"></a> [vercel\_projects\_id](#output\_vercel\_projects\_id) | id for the created Vercel projects |
| <a name="output_vercel_projects_name"></a> [vercel\_projects\_name](#output\_vercel\_projects\_name) | Name for the created Vercel projects |
