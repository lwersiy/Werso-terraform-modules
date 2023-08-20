#main.tf outside the modules folder

module "vpc" {
  source = "./modules/vpc"
  name = var.name
  vpc_cidr = var.vpc_cidr
  env = var.env
  az_list = var.az_list
  private_subnets_list = var.private_subnets_list
  public_subnets_list = var.public_subnets_list
  enable_nat_gateway = true
}

module "ec2" {
  source = "./modules/ec2"
  instance_type = var.instance_type
  env = var.env
  
}