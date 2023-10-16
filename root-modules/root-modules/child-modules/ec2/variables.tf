variable "instance_type" {
    type = string
  
}

variable "env" {
    type = string
}

variable "associate_public_ip_address" {
    type = bool
}

variable "subnet_id" {
    default = ""
    type = string
}

variable "vpc_id" {
  default = ""
  type = string
}

