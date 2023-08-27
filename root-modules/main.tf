#main.tf outside the modules folder

module "vpc" {
  source = "./child-modules/vpc"
  name = var.name
  vpc_cidr = var.vpc_cidr
  env = var.env
  az_list = var.az_list
  private_subnets_list = var.private_subnets_list
  public_subnets_list = var.public_subnets_list
  enable_nat_gateway = false
 
}

module "ec2" {
  source = "./child-modules/ec2"
  instance_type = var.instance_type
  env = var.env
  associate_public_ip_address = var.associate_public_ip_address
  subnet_id = module.vpc.publick_subnets_ids[0]
  vpc_id = module.vpc.vpc_id
  
  


}

terraform {
  backend "s3" {
    bucket = "werso-terraform-backend"
    key    = "terraform-tf/terraform.tfstate"
    region = "us-east-1"
    # dynamodb_table = "terraform.lock.hcl"
  }
}



# module "s3_bucket" {
#   source = "./child-modules/s3_bucket"
#   bucket = var.bucket
#   bucket-name        = var.bucket-name
#   env = var.env
# }


# module "iam" {
#   source = "./child-modules/iam"
# }