resource "tfe_organization" "letsrockthefuture" {
  name                     = "letsrockthefuture"
  email                    = "danielvincenzi@icloud.com"
  cost_estimation_enabled  = false
  collaborator_auth_policy = "two_factor_mandatory"
}

# resource "tfe_organization_token" "letsrockthefuture" {
#   organization = tfe_organization.letsrockthefuture.name
# }

# resource "tfe_team" "owners" {
#   name         = "owners"
#   organization = tfe_organization.letsrockthefuture.name
# }

# resource "tfe_team" "banking" {
#   name         = "banking"
#   organization = tfe_organization.letsrockthefuture.name
# }

# resource "tfe_team" "developers" {
#   name         = "developers"
#   organization = tfe_organization.letsrockthefuture.name
# }

# resource "tfe_team" "reviewers" {
#   name         = "reviewers"
#   organization = tfe_organization.letsrockthefuture.name
# }

# resource "tfe_team" "security" {
#   name         = "security"
#   organization = tfe_organization.letsrockthefuture.name
# }

resource "tfe_workspace" "workspaces" {
  name         = "workspaces"
  organization = tfe_organization.letsrockthefuture.name

  tag_names = [
    "workspace:workspaces",
  ]
}

resource "tfe_workspace" "network_development_us_east_1" {
  name         = "network-development-us-east-1"
  organization = tfe_organization.letsrockthefuture.name

  tag_names = [
    "workspace:network",
    "environment:development",
  ]
}

resource "tfe_workspace" "network_production_us_east_1" {
  name         = "network-development-us-east-1"
  organization = tfe_organization.letsrockthefuture.name

  tag_names = [
    "workspace:network",
    "environment:production",
  ]
}

resource "tfe_workspace" "security_development_us_east_1" {
  name         = "security-development-us-east-1"
  organization = tfe_organization.letsrockthefuture.name

  tag_names = [
    "workspace:security",
    "environment:development",
  ]
}

resource "tfe_workspace" "security_production_us_east_1" {
  name         = "security-production-us-east-1"
  organization = tfe_organization.letsrockthefuture.name

  tag_names = [
    "workspace:security",
    "environment:production",
  ]
}

resource "tfe_workspace" "application_development_us_east_1" {
  name         = "application-development-us-east-1"
  organization = tfe_organization.letsrockthefuture.name

  tag_names = [
    "workspace:application",
    "environment:development",
  ]
}

resource "tfe_workspace" "application_production_us_east_1" {
  name         = "security-production-us-east-1"
  organization = tfe_organization.letsrockthefuture.name

  tag_names = [
    "workspace:application",
    "environment:production",
  ]
}
