resource "aws_lambda_function" "this" {
  function_name = "${var.app_name}-${var.environment}"
  role          = var.lambda_role_arn

  package_type = "Image"
  image_uri    = var.image_uri

  memory_size = var.memory_size
  timeout     = var.timeout

  environment {
    variables = {
      ENVIRONMENT = var.environment
      VERSION     = var.app_version
    }
  }

  tags = merge(var.tags, {
    Name = "${var.app_name}-${var.environment}"
  })
}