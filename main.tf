provider "aws" {
  region = "ap-south-1"
}



resource "aws_instance" "MyEc2" {
  ami           = "ami-0dee22c13ea7a9a67"
  instance_type = "t2.micro"
}

resource "aws_eip" "MyEip" {
  instance = aws_instance.MyEc2.id
}
