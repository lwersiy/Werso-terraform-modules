resource "aws_iam_user" "werso" {
  name = "werso"
  path = "/system/"
  #count = 3

  tags = {
    tag-key = "tag-value"
  }
}

resource "aws_iam_access_key" "werso" {
  user = aws_iam_user.werso.name
}

