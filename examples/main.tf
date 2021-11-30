
#Version of terraform

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

 # Configuration
 provider "aws" {
   region = "us-east-1"
 }

# Security group creation
resource "aws_security_group" "sample" {
  name = "sample"
  description = "Allow sample traffic"

  ingress = [
    {
      description      = "TLS from VPC"
      from_port        = 22
      to_port          = 22
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = []
      prefix_list_ids  = []
      security_groups  = []
      self             = false
    }
  ]
  egress =[
    {
      description      ="egress"
      from_port        = 0
      to_port          = 0
      protocol         = "-1"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
      prefix_list_ids  = []
      security_groups  = []
      self             = false
    }
  ]
  tags = {
    Name = "Group"
  }
}

resource "aws_instance" "database" {
  ami           = "ami-0855cab4944392d0a"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.sample.id]

  tags = {
    Name = "Instance"
  }
}

# s3 bucket for storage file in aws

 terraform {
   backend "s3" {
     bucket = "mahendra123"
     key    = "examples/database/terraform.tfstate"
    region = "us-east-1"
   }
 }
