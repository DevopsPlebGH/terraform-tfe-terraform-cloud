variable "create_variable_set" {
  description = "Whether to create the variable set"
  type        = bool
  default     = false
}

variable "global" {
  description = "Whether the variable set is a global variable or workspace variable"
  type        = bool
  default     = true
}

variable "organization" {
  description = "(Required) Name of the organization."
  type        = string
}

variable "variable_set_description" {
  description = "(Optional) Description of the variable set."
  type        = string
  default     = null
}

variable "variable_set_name" {
  description = "(Required) Name of the variable set."
  type        = string
}

variable "workspace_ids" {
  description = "(Optional) IDs of the workspaces that use the variable set. Must not be set if global is set."
  type        = list(string)
  default     = null
}

