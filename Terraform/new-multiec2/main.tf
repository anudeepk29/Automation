resource "aws_instance" "my_ec2" {
  ami           = "${var.ec2_ami}"
  instance_type = "t2.micro"
  count = "${var.ec2_count}"
  key_name = "${var.ec2_key}"
  security_groups = "${var.ec2_sg}"
  tags = {
	Name = "${var.server_tag}"
  }


}
