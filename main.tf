# Remote State Bootstrap Module -- main.tf
terraform {
  required_providers {
    tfe = {
      version = "~> 0.30.2"
    }
  }
}

locals {
  name = lower(replace("${var.name}", " ", "_"))
}

#######################################################################
# Create Terraform Cloud Organization                                 #
#######################################################################
resource "tfe_organization" "this" {
  count                                                   = var.create_organization ? 1 : 0
  name                                                    = local.name
  email                                                   = var.admin_email
  session_timeout_minutes                                 = var.session_timeout_minutes
  session_remember_minutes                                = var.session_remember_minutes
  collaborator_auth_policy                                = var.collaborator_auth_policy
  owners_team_saml_role_id                                = var.owners_team_saml_role_id
  cost_estimation_enabled                                 = var.cost_estimation_enabled
  send_passing_statuses_for_untriggered_speculative_plans = var.send_passing_statuses
}
