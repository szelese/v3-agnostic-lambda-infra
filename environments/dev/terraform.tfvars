app_name    = "v3-agnostic-lambda-core"
environment = "dev"
aws_region  = "eu-west-3"

image_repository_url = "330552995255.dkr.ecr.eu-west-3.amazonaws.com/v3-agnostic-lambda-core-dev"
image_tag            = "d99f1ff0335fa7314856fcaf522b08a8c1025a11"

memory_size = 256
timeout     = 10

tags = {
  Project     = "v3-agnostic-lambda-core"
  Environment = "dev"
  ManagedBy   = "Terraform"
}