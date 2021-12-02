
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
    key    = "multipleinstances/database1/terraform.tfstate"
    region = "us-east-1"
  }
}

module "ec2" {
  count  = 2
  source = "./ec2"
  SGID =module.sg.SGID
  name ="work-${count.index}"

}


module "sg" {
  source = "./sg"
}


