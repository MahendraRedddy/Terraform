
# aws provider
 provider "aws" {
  region = "us-east-1"
 }
# Ec2 instance creation

resource "aws_instance" "sample" {
  ami           = "ami-0855cab4944392d0a"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["aws_security_group.allow_sample.id","sg-05e68a880b653697b"]

  tags = {
    Name = "sample"
  }
}

# s3 Configuration

terraform {
  backend "s3" {
    bucket = "mahendra123"
    key    = ["examples/sample/terraform.tfstate"]
    region = "us-east-1"
  }
}
