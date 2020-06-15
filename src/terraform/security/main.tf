# Get availibility zones in AWS region
data "aws_availability_zones" "available" {}

resource "aws_security_group" "sg_gitlab" {
  name = "SG-GitLab"
  description = "Used for access to the GitLab server"
  vpc_id = var.vpc_id

  #SSH
  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = [
      "0.0.0.0/0"]
  }
  # ICMP
  ingress {
    from_port = 25
    to_port = 25
    protocol = "icmp"
    cidr_blocks = [
      "0.0.0.0/0"]
  }
  # HTTP
  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = [
      "0.0.0.0/0"]
  }
egress {
  from_port = 0
  to_port = 0
  protocol = "-1"
  cidr_blocks = ["0.0.0.0/0"]
}

  tags = {
    name = "SG-Gitlab"
  }

}
