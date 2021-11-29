
# aws provider
 provider "aws" {
  region = "us-east-1"
 }
# Ec2 instance creation

resource "aws_instance" "mahe" {
  ami           = "ami-0855cab4944392d0a"
  instance_type = "t2.micro"
  vpc_security_group_ids = []

  tags = {
    Name = "same"
  }
}

# s3 Configuration

terraform {
  backend "s3" {
    bucket = "mahendra123"
    key    = ["examples/mahe/terraform.tfstate"]
    region = "us-east-1"
  }
}



