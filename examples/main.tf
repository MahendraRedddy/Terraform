provider "aws" {
  region ="us-east-1"
}

resource "aws_security_group" "allow-sample" {
  name        = "allow Sample"
  description = "Allow sample traffic"
  vpc_id      = "vpc-0359a51174dc9ae11"
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
    Name = "allow_sample"
  }
}


