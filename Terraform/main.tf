  provider "aws" {
    region = "us-east-1"
  }

  resource "aws_instance" "app_server" {
    ami           = "ami-0b0dcb5067f052a63"
    instance_type = "t2.micro"

    tags = {
      name = "MyServer"
    }
   resource "aws_key_pair" "kp3" {
    key_name = "kp3-tf"
    public_key = "ssh-rsa MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAq0CjnfDDAaCUGncSIySgfNvb0YYZ5C4MNqs/uoBbgsc5beHcJT3J2jr+fzO846zZwuBSIaYHOZhaiftq6H+bF6XwHXkPuU22wlXgM0eZF5m78OFGeR0SCGPm7V0OhszU/dtCeh7XG465fomxdyy3VJqIQmYtE63xqtIHNURWEb5qIWw8FTDtV29NY5VIsa7h/+LBG6Bmee7fCc1i1IOkGtKFSL6574asUSjK9GR1qO0cc8MF8dDdjBn95YY+oQ1nZ+gvGeNraDg6u48VEGWEyhxI10HI7oUqEfqju2i8zNUhpO57/Gd0M74syvM8koERTxOHWESh1+1YDvBrln0C3wIDAQAB"
   } 
  }
