module "jenkins-master" {
	source = "./../compute"
	ec2_ami = "ami-0c9978668f8d55984" 
	server_tag = "jenkins-master"
	ec2_key = "kp3"
	ec2_count  = "1"
	ec2_sg = ["launch-wizard-1"]

}
