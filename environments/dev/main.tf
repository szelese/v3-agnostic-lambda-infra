module "ecr" {
  source = "../../modules/aws_ecr"

  app_name    = var.app_name
  environment = var.environment
  tags        = var.tags
}