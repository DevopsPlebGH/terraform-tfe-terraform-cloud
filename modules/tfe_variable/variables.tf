# tfe variable sub-module -- variables.tf

variable "category" {
  description = "Whether this is a Terraform or environment variable. Available options: terraform or env"
  type        = string
  default     = "terraform"
}

variable "create_variable" {
  description = "Whether this variable should be created"
  type        = bool
  default     = false
}

variable "description" {
  description = "The description of the variable"
  type        = string
  default     = null
}

variable "description_suffix" {
  description = "Whether to add a suffix to the description of the variable"
  type        = string
  default     = ""
}

variable "hcl" {
  description = "Whether to evaluate the value of the variable as a string of HCL code"
  type        = bool
  default     = false
}

variable "key" {
  description = "Name of the variable"
  type        = string
}

variable "sensitive" {
  description = "Whether the variable value is sensitive"
  type        = bool
  default     = false
}

variable "value" {
  description = "Value of the variable"
  type        = string
}

variable "variable_set_id" {
  description = "ID of the variable set that owns the variable."
  type        = string
  default     = null
}

variable "workspace_id" {
  description = "Workspace ID for the variable"
  type        = string
  default     = null
}
