resource "aws_instance" "web" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  associate_public_ip_address = var.associate_public_ip_address
  subnet_id = var.subnet_id
 

  tags = {
    terraform = true
    environment = var.env
  }
}

