app_name    = "v3-agnostic-lambda-core"
environment = "dev"
aws_region  = "eu-west-3"

image_repository_url = "330552995255.dkr.ecr.eu-west-3.amazonaws.com/v3-agnostic-lambda-core-dev"
image_tag            = "Core repo image SHA"

memory_size = 256
timeout     = 10

tags = {
  Project     = "v3-agnostic-lambda-core"
  Environment = "dev"
  ManagedBy   = "Terraform"
}