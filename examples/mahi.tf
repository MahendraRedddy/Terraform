provider "aws" {
  region="us-east-1"
}
resource "aws_instance" "mahi" {
  ami = "ami-0855cab4944392d0a"
  vpc_security_group_ids = ["sg-05e68a880b653697b"]
  instance_type = "t2.micro"
  tags = {
    Name = "Mahendra"
  }
}
output "public_ip" {
  value = "aws_instance.mahi.public_ip"


}

resource "aws_ec2_tag" "tags" {
  count = "1"
  resource_id = "aws_instance.mahi.*.private_ip"
  key         = "Name"
  value       = "1"
}