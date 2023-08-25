output "aws_ami" {
  value = aws_instance.web.id
}

output "publicip" {
  value = aws_instance.web.public_ip
}

output "privateip" {
  value = aws_instance.web.private_ip
}

output "instance_arn" {
  value = aws_instance.web.arn
}