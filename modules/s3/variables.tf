variable "project_name" {
  description = "Project name used to generate the S3 bucket name."
  type        = string

  validation {
    condition     = can(regex("^[a-z0-9][a-z0-9-]*[a-z0-9]$", var.project_name))
    error_message = "Project name must use lowercase letters, numbers, and hyphens only, and must start and end with a letter or number."
  }
}

variable "environment" {
  description = "Deployment environment, such as dev, staging, or prod."
  type        = string

  validation {
    condition     = contains(["dev", "staging", "prod"], var.environment)
    error_message = "Environment must be one of: dev, staging, or prod."
  }
}

variable "bucket_suffix" {
  description = "Purpose-based suffix appended to the generated S3 bucket name."
  type        = string
}

variable "bucket_name_override" {
  description = "Optional complete S3 bucket name that overrides the generated naming convention."
  type        = string
  default     = null
}

variable "kms_key_arn" {
  description = "Optional KMS key ARN used for SSE-KMS encryption. When null, SSE-S3 is used."
  type        = string
  default     = null
}

variable "tags" {
  description = "Tags to apply to all resources created by this module."
  type        = map(string)
  default     = {}
}

