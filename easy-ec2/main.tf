provider "aws" {
  region = "us-west-1"
}


resource "aws_instance" "easy-server" {
  ami           = "ami-031b673f443c2172c"
  instance_type = "t2.micro"

  tags = {
    Name = "test server"
  }
  key_name = "AWS_Keypair"
}