output "ecr_repository_name" {
  value = module.ecr.repository_name
}

output "ecr_repository_url" {
  value = module.ecr.repository_url
}
output "github_oidc_role_arn" {
  value = module.github_oidc.role_arn
}
/* NOTE: remove temporary
output "lambda_role_arn" {
  value = module.iam_lambda.role_arn
}

output "lambda_function_name" {
  value = module.lambda_service.function_name
}

output "lambda_function_arn" {
  value = module.lambda_service.function_arn
}
*/