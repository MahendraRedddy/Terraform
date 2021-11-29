# aws provider
 provider "aws" {
  region = "us-east-1"
 }

# s3 Configuration

terraform {
  backend "s3" {
    bucket = "mahendra123"
    key    = ["examples/mahe/terraform.tfstate"]
    region = "us-east-1"
  }
}

module "ec2" {
  source = "./ec2"
}

module "sg" {
  source = "./sg"
}