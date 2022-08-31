# tfe_oauth_client sub-module -- main.tf

resource "tfe_oauth_client" "this" {
  name             = var.tfe_oauth_client_name
  organization     = var.organization
  api_url          = var.api_url
  http_url         = var.https_url
  oauth_token      = var.oauth_token
  service_provider = var.service_provider
}
