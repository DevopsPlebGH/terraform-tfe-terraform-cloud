# tfe variables sub-module -- main.tf
resource "tfe_variable" "this" {
  count           = var.create_variable ? 1 : 0
  key             = var.key
  value           = var.value
  description     = try(trimspace(format("%s %s", var.description, var.description_suffix)), null)
  category        = var.category
  sensitive       = var.sensitive
  hcl             = var.hcl
  workspace_id    = var.workspace_id
  variable_set_id = var.variable_set_id
}
