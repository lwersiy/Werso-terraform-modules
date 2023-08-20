# variables.tf outside the modules folder

variable "name" {
  type = string
}

variable "vpc_cidr" {
  type = string
}

variable "env" {
  type = string
}

variable "az_list" {
  type = list(string)
}

variable "private_subnets_list" {
  type = list(string)
}

variable "public_subnets_list" {
  type = list(string)
}

variable "enable_nat_gateway" {
  type = bool
}

variable "instance_type" {
  type = string
  
}