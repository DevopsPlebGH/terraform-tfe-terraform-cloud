output "oauth_token_id" {
  description = "The ID of the OAuth token associated with the OAuth client"
  value       = tfe_oauth_client.this.oauth_token_id
}
