resource "tfe_variable_set" "this" {
  count         = var.create_variable_set ? 1 : 0
  description   = var.variable_set_description
  global        = var.global
  name          = var.variable_set_name
  organization  = var.organization
  workspace_ids = var.workspace_ids
}
