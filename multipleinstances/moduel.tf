
# Version of terraform

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


# s3 bucket for storage file in aws

terraform {
  backend "s3" {
    bucket = "mahendra123"
    key    = "examples/database/terraform.tfstate"
    region = "us-east-1"
  }
}

module "ec2" {
  count  = 2
  source = "./ec2"
  SGID =module.sg.SGID
  name = "work_${count.index}"
}


module "sg" {
  source = "./sg"
}

output "public_ip" {
  value = "module.ec2.work.public_ip"
}
