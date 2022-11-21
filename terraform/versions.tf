terraform {
  required_version = "~> 1.0"

  required_providers {
    tfe = {
      version = "~> 0.39.0"
    }
  }

  cloud {
    organization = "letsrockthefuture"

    workspaces {
      name = "terraform-workspaces"
    }
  }
}
