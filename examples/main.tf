
#Version of terraform
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# aws provider
provider "aws" {
  region = "us-east-1"
}


# s3 bucket for storage file in aws

terraform {
  backend "s3" {
    bucket = "mahendra123"
    key    = "examples/data/terraform.tfstate"
    region = "us-east-1"
  }
}
module "ec2" {
  source = "./ec2"
}

module "sg" {
  source = "./sg"
}