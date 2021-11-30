resource "aws_instance" "database" {
  ami           = "ami-0855cab4944392d0a"
  instance_type = "t2.micro"
  vpc_security_group_ids = []

  tags = {
    Name = "database"
  }
}