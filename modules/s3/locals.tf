locals {
  generated_bucket_name = lower(
    "${var.project_name}-${var.environment}-${var.bucket_suffix}"
  )

  bucket_name = var.bucket_name_override != null ? var.bucket_name_override : local.generated_bucket_name
}
