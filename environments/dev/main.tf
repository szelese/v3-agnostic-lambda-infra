module "ecr" {
  source = "../../modules/aws_ecr"

  app_name    = var.app_name
  environment = var.environment
  tags        = var.tags
}

module "iam_lambda" {
  source = "../../modules/aws_iam_lambda"

  app_name    = var.app_name
  environment = var.environment
  tags        = var.tags
}