# Terraform AWS Platform Modules

A collection of reusable, production-ready Terraform modules for building secure AWS platforms.

These modules are designed using platform engineering principles and are intended to be consumed by multiple AWS projects.

---

## Design Principles

- Secure by default
- Least privilege by default
- Opinionated where organisational standards exist
- Configurable only when required
- Reusable across projects
- Production-ready
- Well documented
- Version controlled

---

## Available Modules

| Module | Description | Status |
|---------|-------------|--------|
| S3 | Creates a secure S3 bucket with enterprise defaults | ✅ v1.0.0 |

---

## Versioning

Modules are versioned using Git tags.

Example:

```hcl
module "s3" {
  source = "git::https://github.com/AsliAden/terraform-aws-platform-modules.git//modules/s3?ref=v1.0.0"
}