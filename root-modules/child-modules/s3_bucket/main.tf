resource "aws_s3_bucket" "example" {
  bucket = var.bucket

  tags = {
    bucket-name        = var.bucket-name
    env = var.env
  }
}