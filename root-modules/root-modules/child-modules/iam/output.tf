output "aws_iam_access_key" {
  value = aws_iam_access_key.werso[*].id

}

output "aws_iam_user_arn" {
  value = aws_iam_user.werso[*].arn

}
