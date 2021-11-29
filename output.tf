# output "abc" {
#  value = "Hello\nWorld"
# }

 #variable "abc" {
  # default="100"
 #}
#output "abc" {
 # value =var.abc
#}

#variable "abc1" {
#}

#output "abc1" {
 # value = var.abc1
#}

 variable "abc2" {
   default = 200
 }
output "abc2" {
  value ="value of abc2=${var.abc2}"
}

variable "samplex" {
  default = [
    "Hello",
    100,
    true
  ]
}

output "samplex" {
  value = "value 1 =${var.samplex[0]},value 3=${var.samplex[2]}"
}

 variable "sampley" {
  default = {
    string  = "Hello",
    number  = 100,
    boolean = true
  }
}

output "sampley" {
  value = "String = ${var.sampley["string"]},Number = ${var.sampley["number"]},Boolean=${var.sampley["boolean"]}"
}

variable "a" {}

output "a" {
  value = var.a
}


# Version of terraform
# terraform {
 # required_providers {
 #   aws = {
 #     source  = "hashicorp/aws"
 #     version = "~> 3.0"
  #  }
 # }
#}

# aws provider
#provider "aws" {
#  region = "us-east-1"
# }

# security group



#resource "aws_security_group" "sample" {
 ##description = "Allow sample traffic"

#ingress = [
# {
#      description      = "TLS from VPC"
 #     from_port        = 22
  #    to_port          = 22
   #   protocol         = "tcp"
   #   cidr_blocks      = ["0.0.0.0/0"]
   #   ipv6_cidr_blocks = []
   #   prefix_list_ids  = []
    #  security_groups  = []
    #  self             = false
 #   }
 # ]
  #egress =[
   # {
    #  description      ="egress"
    #  from_port        = 0
    #  to_port          = 0
     # protocol         = "-1"
# cidr_blocks      = ["0.0.0.0/0"]
#  ipv6_cidr_blocks = ["::/0"]
#  prefix_list_ids  = []
#   security_groups  = []
#    self             = false
#   }
# ]
# tags = {
#   Name = "sample"
#  }
#}
# value = aws_security_group.sample.id
#}

# Ec2 instance creation

#resource "aws_instance" "sample" {
  #ami           = "ami-0855cab4944392d0a"
  #instance_type = "t2.micro"
  #vpc_security_group_ids = ["aws_security_group.allow_sample.id","sg-05e68a880b653697b"]

  #tags = {
  #  Name = "sample"
 # }
#}

# s3 Configuration

#terraform {
 # backend "s3" {
  #  bucket = "mahendra123"
   # key    = ["examples/sample/terraform.tfstate"]
    #region = "us-east-1"
  #}
#}
