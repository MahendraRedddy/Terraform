
resource "aws_instance" "sample" {

  ami           = "ami-0855cab4944392d0a"
  instance_type = "t2.micro"


  tags = {
    Name = "sample"
  }
}