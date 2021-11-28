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

resource "aws_security_group" "group" {
  name        = "group"
  description = "Allow Group inbound traffic"


  ingress {
    description      = "TLS from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = []
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "group"
  }
}

