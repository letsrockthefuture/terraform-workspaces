resource "tfe_workspace" "github_as_code" {
  name         = "github_as_code"
  organization = var.organization

  tag_names = [
    "workspace:github_as_code",
  ]
}

resource "tfe_workspace" "network_development_us_east_1" {
  name         = "network-development-us-east-1"
  organization = var.organization

  tag_names = [
    "workspace:network",
    "environment:development",
  ]
}

resource "tfe_workspace" "network_production_us_east_1" {
  name         = "network-development-us-east-1"
  organization = var.organization

  tag_names = [
    "workspace:network",
    "environment:production",
  ]
}

resource "tfe_workspace" "security_development_us_east_1" {
  name         = "security-development-us-east-1"
  organization = var.organization

  tag_names = [
    "workspace:security",
    "environment:development",
  ]
}

resource "tfe_workspace" "security_production_us_east_1" {
  name         = "security-production-us-east-1"
  organization = var.organization

  tag_names = [
    "workspace:security",
    "environment:production",
  ]
}

resource "tfe_workspace" "application_development_us_east_1" {
  name         = "application-development-us-east-1"
  organization = var.organization

  tag_names = [
    "workspace:application",
    "environment:development",
  ]
}

resource "tfe_workspace" "application_production_us_east_1" {
  name         = "application-production-us-east-1"
  organization = var.organization

  tag_names = [
    "workspace:application",
    "environment:production",
  ]
}
