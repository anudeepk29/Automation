resource "aws_instance" "k8s" {
  # Creates four identical aws ec2 instances
  count = 1     
  
  # All four instances will have the same ami and instance_type
  ami = lookup(var.ec2_ami,var.region) 
  instance_type = var.instance_type # 
  tags = {
    # The count.index allows you to launch a resource 
    # starting with the distinct index number 0 and corresponding to this instance.
    Name = "K8s-${count.index}"
  }
}
