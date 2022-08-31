# tf_notification sub-module - main.tf
locals {
  create_notification = var.create_notification
  destination_type = {
    email   = true,
    generic = false,
    slack   = false
  }
}

resource "tfe_notification_configuration" "email" {
  count            = var.destination_type == "email" ? 1 : 0
  name             = var.notification_name
  enabled          = var.enabled
  destination_type = var.destination_type
  email_user_ids   = var.email_user_ids
  url              = var.url
  triggers         = var.triggers
  workspace_id     = var.workspace_id
}

resource "tfe_notification_configuration" "generic" {
  count            = var.destination_type == "email" ? 0 : 1
  name             = var.notification_name
  enabled          = var.enabled
  destination_type = var.destination_type
  url              = var.url
  triggers         = var.triggers
  workspace_id     = var.workspace_id
}
