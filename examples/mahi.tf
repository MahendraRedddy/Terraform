provider "aws" {
  region= "us-east-1"
}

resource  "aws_instance"  "mahe" {
  ami  = "ami-0855cab4944392d0a"

  instance_type = "t2.micro"
  tags = {
    Name = "Mahe"
  }
}
output "public_ip" {
  value = "aws_instance.mahe.public_ip"
}

resource "aws_ec2_tag" "tags" {
  count = "1"
  resource_id = "aws_instance.mahe.*.private_ip"
  key         = "Name"
  value       = "1"
}