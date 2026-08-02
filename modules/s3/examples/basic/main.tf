module "s3_bucket" {
  source = "../.."

  project_name  = var.project_name
  environment   = var.environment
  bucket_suffix = "data1234"

  tags = {
    Project     = var.project_name
    Environment = var.environment
    ManagedBy   = "Terraform"
    Example     = "basic"
  }
}
