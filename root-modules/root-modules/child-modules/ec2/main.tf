resource "aws_instance" "web" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  associate_public_ip_address = var.associate_public_ip_address
  subnet_id = var.subnet_id
  security_groups = [aws_security_group.werso-sg.id]
 

  tags = {
    terraform = true
    environment = var.env
  }
}

resource "aws_security_group" "werso-sg" {
  #Name        = "use1-sg-ec2"
  vpc_id      = var.vpc_id
  description = "Allow inbown traffic from specific ports"

  dynamic "ingress" {
    for_each = [22, 80, 8080, 9090]
    content {
      description = "TLS from VPC"
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = ["10.0.0.0/16"]
    }

  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

}
