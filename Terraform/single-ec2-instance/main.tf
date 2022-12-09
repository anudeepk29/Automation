  provider "aws" {
    region = "us-east-1"
  }

  resource "aws_instance" "app_server" {
    ami           = "ami-0b0dcb5067f052a63"
    instance_type = "t2.micro"

    tags = {
      name = "MyServer"
    }
    
  }
