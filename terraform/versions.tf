terraform {
  required_version = "~> 1.0"

  required_providers {
    tfe = {
      version = "~> 0.31.0"
    }
  }

  cloud {
    organization = "letsrockthefuture"

    workspaces {
      name = "terraform-workspaces"
    }
  }
}
