resource "aws_ecr_repository" "this" {
  name                 = "${var.app_name}-${var.environment}"
  image_tag_mutability = "MUTABLE"  # You can set this to "IMMUTABLE" if you want to prevent overwriting existing images with the same tag. Prod or staging environments should use "IMMUTABLE" to ensure that images are not overwritten, while development environments can use "MUTABLE" for flexibility.

  force_delete = true # This allows the repository to be deleted even if it contains images. Use with caution, especially in production environments.

  image_scanning_configuration {  # This enables image scanning on push, which helps identify vulnerabilities in your container images. It's a good practice to enable this in all environments, but especially in production.
    scan_on_push = true             
  }

  tags = merge(var.tags, {
    Name = "${var.app_name}-${var.environment}"
  })
}