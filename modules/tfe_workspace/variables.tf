variable "add_vcs_repo" {
  description = "Whether or not to add a VCS repo to this workspace"
  type        = bool
  default     = false
}

variable "agent_pool_id" {
  description = "The ID of an agent pool to assign to the workspace. Requires execution_mode to be set to agent. This value must not be provided if execution_mode is set to any other value or if operations is provided."
  type        = string
  default     = ""
}

variable "agent_pool_name" {
  description = "(Required) Name of the agent pool."
  type        = string
  default     = ""
}

variable "allow_destroy_plan" {
  description = "Whether destroy plans can be queued on the workspace"
  type        = bool
  default     = false
}

variable "auto_apply" {
  description = "Whether to automatically apply changes when a Terraform plan is successful. Defaults to false"
  type        = bool
  default     = false
}

variable "create_global_variable_set" {
  description = "Whether or not to create a variable set"
  type        = bool
  default     = false
}

variable "execution_mode" {
  description = "Which execution mode to use. Available options: remote, local, or agent"
  type        = string
  default     = "remote"
  validation {
    condition     = contains(["remote", "local", "agent"], var.execution_mode)
    error_message = "Execution mode must be one of: remote, local, or agent."
  }
}

variable "file_triggers_enabled" {
  description = " Whether to filter runs based on the changed files in a VCS push. Defaults to true. If enabled, the working directory and trigger prefixes describe a set of paths which must contain changes for a VCS push to trigger a run. If disabled, any push will trigger a run."
  type        = bool
  default     = true
}

variable "global" {
  description = "Should the variable set be available globally or only to specific workspaces"
  type        = bool
  default     = false
}

variable "global_remote_state" {
  description = "(Optional) Whether the workspace allows all workspaces in the organization to access its state data during runs. If false, then only specifically approved workspaces can access its state (remote_state_consumer_ids)."
  type        = bool
  default     = false
}

variable "ingress_submodules" {
  description = "(Optional) Whether submodules should be fetched when cloning the VCS repository. Defaults to false"
  type        = bool
  default     = false
}

variable "name" {
  description = "Workspace name"
  type        = string
}

variable "oauth_token" {
  description = "The VCS Connection token to use. EG: GitHub Personal Access Token"
  type        = string
  default     = ""
}

variable "oauth_token_id" {
  description = "The output of the tfe_oauth_client module."
  type        = string
}

variable "organization" {
  description = "Terraform Cloud organization which has the backend state-file"
  type        = string
}

variable "queue_all_runs" {
  description = "(Optional) Whether the workspace should start automatically performing runs immediately after its creation. Defaults to true. When set to false, runs triggered by a webhook (such as a commit in VCS) will not be queued until at least one run has been manually queued. Note: This default differs from the Terraform Cloud API default, which is false. The provider uses true as any workspace provisioned with false would need to then have a run manually queued out-of-band before accepting webhooks."
  type        = bool
  default     = false
}

variable "remote_state_consumer_ids" {
  description = "(Optional) The set of workspace IDs set as explicit remote state consumers for the given workspace."
  type        = list(string)
  default     = [""]
}

variable "speculative_enabled" {
  description = "Optional) Whether this workspace allows speculative plans. Defaults to true. Setting this to false prevents Terraform Cloud or the Terraform Enterprise instance from running plans on pull requests, which can improve security if the VCS repository is public or includes untrusted contributors."
  type        = bool
  default     = true
}

variable "structured_run_output_enabled" {
  description = "(Optional) Whether this workspace should show output from Terraform runs using the enhanced UI when available. Defaults to true. Setting this to false ensures that all runs in this workspace will display their output as text logs."
  type        = bool
  default     = true
}

variable "ssh_key_id" {
  description = "(Optional) The ID of an SSH key to assign to the workspace."
  type        = string
  default     = ""
  sensitive   = true
}

variable "terraform_version" {
  description = "(Optional) The version of Terraform to use for this workspace. This can be either an exact version or a version constraint (like ~> 1.0.0); if you specify a constraint, the workspace will always use the newest release that meets that constraint. Defaults to the latest available version."
  type        = string
  default     = "1.2.0"
}

variable "trigger_prefixes" {
  description = "(Optional) List of repository-root-relative paths which describe all locations to be tracked for changes."
  type        = list(string)
  default     = [""]
}

variable "tags" {
  description = "Tags to apply to workspace"
  type        = list(string)
  default     = []
}

variable "tfe_token" {
  description = "Token from the TFE account for the TFE provider API access"
}

variable "vcs_branch" {
  description = "(Optional) The repository branch that Terraform will execute from. This defaults to the repository's default branch (e.g. main)."
  type        = string
  default     = "main"
}

variable "vcs_repository" {
  description = "The VCS Repository to add to the workspace"
  type        = string
  default     = ""
}

variable "workspace_description" {
  description = "Description of the workspace"
  type        = string
  default     = ""
}

variable "working_directory" {
  description = "Working directory of the VCS repository from which TF plans are run"
  type        = string
  default     = "/"
}

variable "workspace_ids" {
  description = "List of workspace ID's if variable set is not global"
  type        = list(string)
  default     = [""]
}
variable "workspace_variable" {
  description = "Whether this variable should be attached to a workspace"
  type        = bool
  default     = false
}
