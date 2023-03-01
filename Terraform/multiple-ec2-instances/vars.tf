variable "ec2_ami" {
  type = map

  default = {
    us-east-1 = "ami-09ba48996007c8b50"
  }
}

# Creating a Variable for region

variable "region" {
  default = us-east-1
}


# Creating a Variable for instance_type
variable "instance_type" {    
  type = string
}
