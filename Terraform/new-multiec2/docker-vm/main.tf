module "docker-vm" {
	source = "./../compute"
	ec2_ami = "ami-0c9978668f8d55984" 
	server_tag = "docker-vm"
	ec2_key = "kp5"
	ec2_count  = "1"
	ec2_sg = ["launch-wizard-1"]
	instance_type = "t2.micro"

}
