resource "aws_instance" "gitlab" {
  ami = var.ami_id
  instance_type = var.instance_type
  vpc_security_group_ids = [var.security_group_id]
  subnet_id = var.subnet_id

  associate_public_ip_address = true
  key_name = var.key_name

  tags = {
    Name = "GitLab"
    Group = "gitlab"
  }

}





