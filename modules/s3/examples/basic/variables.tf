variable "project_name" {
  description = "Project name used for naming and tagging the example resources."
  type        = string
}

variable "environment" {
  description = "Deployment environment for the example."
  type        = string

  validation {
    condition     = contains(["dev", "staging", "prod"], var.environment)
    error_message = "Environment must be one of: dev, staging, or prod."
  }
}

variable "aws_region" {
  description = "AWS region where the example resources will be deployed."
  type        = string
}

