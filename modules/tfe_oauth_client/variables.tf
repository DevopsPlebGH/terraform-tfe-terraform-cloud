# tfe_oauth_client sub-module -- variables.tf
variable "api_url" {
  description = "API URL of the Version Control Provider"
  type        = string
}

variable "https_url" {
  description = "HTTP URL of the VCS provider"
  type        = string
}

variable "oauth_token" {
  description = "OAuth Token String provided by the VCS provider"
  type        = string
  sensitive   = true
}

variable "organization" {
  description = "Terraform Cloud organization which has the backend state-file"
  type        = string
}

variable "service_provider" {
  description = "VCS provider being connected with"
  type        = string
  default     = "github"
}

variable "tfe_oauth_client_name" {
  description = "Display name of the OAuth Client"
  type        = string
}


