terraform {
  required_version = ">= 1.12.2"
  required_providers {
    vercel = {
      source  = "vercel/vercel"
      version = ">= 3.10.0"
    }
  }
  backend "s3" {
    bucket       = ""
    key          = ""
    region       = ""
    profile      = ""
    use_lockfile = true
  }
}
