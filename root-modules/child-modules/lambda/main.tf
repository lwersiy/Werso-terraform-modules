resource "aws_lambda_function" "IamKeyRotation" {
    function_name = "IamKeyRotation"
    role = aws_iam_role.keyRotationRole.arn
    handler = "Lambda-key-rotation-function.handler"
    runtime = "python3.11"

    filename = "/c/Users/Wersiy Louis/OneDrive/Documents/Showmik-Terraform/Werso-terraform-modules/Lambda-key-rotation-function.zip"
  
}

resource "aws_iam_role" "keyRotationRole" {
    name = "KeyRotationRole"
    assume_role_policy = <<EOF
    {
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": "*",
            "Resource": "*"
        }
    ]
}
EOF


}
  
