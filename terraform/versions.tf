terraform {
  required_version = "~> 1.0"

  required_providers {
    tfe = {
      version = "~> 0.30.2"
    }
  }

  cloud {
    organization = "letsrockthefuture"

    workspaces {
      name = "terraform-workspaces"
    }
  }
}
