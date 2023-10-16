# environments/dev.tfvars file

name = "werso-vpc"
vpc_cidr = "10.0.0.0/16"
env = "dev"
az_list = ["us-east-1a", "us-east-1b"]
private_subnets_list = ["10.0.1.0/24", "10.0.2.0/24"]
public_subnets_list = ["10.0.101.0/24", "10.0.102.0/24"]
enable_nat_gateway = falsels
instance_type = "t2.micro"
bucket = "wersobucket111"
bucket-name = "mybucket"
associate_public_ip_address = true
db_name = "werso_db"
engine = "mysql"
engine_version = "5.7"
instance_class = "db.t3.micro"
parameter_group_name = "default.mysql5.7"
skip_final_snapshot = true
allocated_storage = 10

