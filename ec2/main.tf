provider "aws"  {
  region ="us-east-1"
}

terraform {
  required_version = "~>1.0.11"
  required_providers {
    aws={
      source="hashicorp/aws"
      version="~>3.0"
    }
  }
}
# instance
resource "aws_instance" "mahe" {

  ami           = "ami-0855cab4944392d0a"
  instance_type = "t2.micro"
   vpc_security_group_ids = []

  tags = {
    Name = "data"
  }
}

