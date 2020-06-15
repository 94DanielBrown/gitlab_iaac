variable "region" {
  description = "aws region to deploy infrastructure"
}

variable "profile" {
  description = "aws profile to use to deploy infrastructure"
}

#-------- vars for networking
variable "vpc_id" {}

#-------- vars for compute
variable "ami_id" {}
variable "key_name"{}
variable "instance_type" {}
variable "instance_name" {}
variable "subnet_id" {}
