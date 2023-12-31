resource "aws_lambda_function" "terraform_lambda_func" {
  filename      = "${path.module}/dist/hello-python.zip"
  function_name = "Spacelift_Test_Lambda_Function"
  role          = aws_iam_role.lambda_role.arn
  handler       = "index.lambda_handler"
  runtime       = "python3.11"
  depends_on    = [aws_iam_role_policy_attachment.attach_iam_policy_to_iam_role]
}
