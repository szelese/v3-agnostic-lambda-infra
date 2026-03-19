app_name    = "v3-agnostic-lambda-core"
environment = "dev"
aws_region  = "eu-west-3"

image_uri   = "330552995255.dkr.ecr.eu-west-3.amazonaws.com/v3-agnostic-lambda-core-dev:latest"

memory_size = 256
timeout     = 10

tags = {
  Project     = "v3-agnostic-lambda-core"
  Environment = "dev"
  ManagedBy   = "Terraform"
}