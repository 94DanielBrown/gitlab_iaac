provider "aws" {
  region = var.region
  shared_credentials_file = "~/.aws/credentials"
  profile = var.profile
}

module "networking" {
  source = "./networking"
  vpc_id = var.vpc_id
}

module "compute" {
  source = "./compute"
  ami_id = var.ami_id
  key_name = var.key_name
  instance_name = var.instance_name
  instance_type = var.instance_type
  security_group_id = module.networking.sg_id_out
  subnet_id = var.subnet_id
}

