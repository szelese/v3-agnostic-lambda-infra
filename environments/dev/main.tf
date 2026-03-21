# This file defines the main Terraform configuration for the development environment.

# ECR module to create a repository for Lambda container images
module "ecr" {
  source = "../../modules/aws_ecr"

  app_name    = var.app_name
  environment = var.environment
  tags        = var.tags
}

# IAM module to create a role for Lambda functions
module "iam_lambda" {
  source = "../../modules/aws_iam_lambda"

  app_name    = var.app_name
  environment = var.environment
  tags        = var.tags
}
# IAM module to create a role for GitHub OIDC authentication
module "github_oidc" {
  source = "../../modules/aws_iam_github_oidc"

  role_name = "GitHubOIDC-EBDeploy"

  github_subjects = [
    "repo:szelese/ci-cd-gha-aws:ref:refs/heads/main",
    "repo:szelese/v3-agnostic-lambda-core:environment:dev"
  ]

  ecr_repository_arn = module.ecr.repository_arn

  tags = var.tags
}

/* NOTE: remove temporary
# Lambda module to create a Lambda function using the container image from ECR
module "lambda_service" {
  source = "../../modules/aws_lambda_service"

  app_name        = var.app_name
  environment     = var.environment
  image_uri       = var.image_uri
  lambda_role_arn = module.iam_lambda.role_arn
  memory_size     = var.memory_size
  timeout         = var.timeout
  tags            = var.tags
}*/