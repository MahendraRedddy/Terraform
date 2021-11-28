provider "aws" {
  region="us-east-1"
}

resource "aws_instance" "mahe" {
  ami           = "ami-0855cab4944392d0a"
  instance_type = "t2.micro"

  tags = {
    Name = " "
  }
}

