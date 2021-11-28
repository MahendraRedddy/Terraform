provider "aws" {
  region="us-east-1"
}

resource "aws_instance" "name" {
  ami           = "ami-0855cab4944392d0a"
  instance_type = "t2.micro"

  tags = {
    Name = "name"
  }
}