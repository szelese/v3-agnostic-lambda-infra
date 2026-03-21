resource "aws_lambda_permission" "function_url_public" {
  statement_id  = "AllowPublicInvokeFunctionUrl"
  action        = "lambda:InvokeFunctionUrl"
  function_name = module.lambda_service.function_name
  principal     = "*"

  function_url_auth_type = "NONE"
}

resource "aws_lambda_permission" "function_url_public_invoke" {
  statement_id  = "AllowPublicInvokeViaFunctionUrl"
  action        = "lambda:InvokeFunction"
  function_name = module.lambda_service.function_name
  principal     = "*"

  invoked_via_function_url = true
}

resource "aws_lambda_function_url" "lambda_service" {
  function_name      = module.lambda_service.function_name
  authorization_type = "NONE"
}

output "lambda_function_url" {
  value = aws_lambda_function_url.lambda_service.function_url
}