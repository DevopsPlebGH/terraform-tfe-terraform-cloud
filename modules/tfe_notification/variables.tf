# tf_notification sub-module - variables.tf
variable "create_notification" {
  description = "Whether or not to create the notification"
  type        = bool
  default     = false
}

variable "destination_type" {
  description = "Notification destination type. Available options: email, generic, slack"
  type        = string
  default     = ""
  validation {
    condition     = contains(["generic", "email", "slack"], var.destination_type)
    error_message = "Destination type must be one of: generic, email, slack."
  }
}

variable "email_user_ids" {
  description = "Email addresses to send the notification to if destination type is set to email."
  type        = list(string)
  default     = []
}

variable "enabled" {
  description = "Whether the notification is enabled or not"
  type        = bool
  default     = true
}

variable "notification_name" {
  description = "The name of the notification"
  type        = string
  default     = "sophos-factory-runner"
}

variable "triggers" {
  description = "Event that should trigger the notification. Available options are: run:created, run:planning, run:needs_attention, run:applying, run:completed, run:errored"
  type        = list(string)
  default     = []
  validation {
    condition     = !contains([for trigger in var.triggers : contains(["run:created", "run:planning", "run:needs_attention", "run:applying", "run:completed", "run:errored"], trigger)], false)
    error_message = "Trigger must be one of: run:created, run:planning, run:needs_attention, run:applying, run:completed, run:errored."
  }
}

variable "url" {
  description = "The URL for generic and slack destination types"
  type        = string
  default     = "url"
  validation {
    condition     = var.url != ""
    error_message = "URL cannot be an empty string."
  }
}

variable "workspace_id" {
  description = "Workspace ID for the variable"
  type        = string
  default     = ""
}
