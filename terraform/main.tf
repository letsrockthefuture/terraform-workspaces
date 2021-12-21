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

resource "tfe_workspace" "terraform_workspaces" {
  name         = "terraform-workspaces"
  organization = tfe_organization.letsrockthefuture.name

  tag_names = [
    "terraform:workspaces",
    "terraform",
  ]
}
