terraform {
  required_version = "~> 1.0"

  required_providers {
    tfe = {
      version = "~> 0.36.1"
    }
  }

  cloud {
    organization = "letsrockthefuture"

    workspaces {
      name = "terraform-workspaces"
    }
  }
}
