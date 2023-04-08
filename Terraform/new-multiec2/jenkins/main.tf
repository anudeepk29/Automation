module "jenkins-master" {
	source = "./../compute"
	ec2_ami = "ami-0c9978668f8d55984" 
	server_tag = "jenkins-master"
	ec2_key = "kp5"
	ec2_count  = 2  
	ec2_sg = ["launch-wizard-1"]
	instance_type="t2.micro"
}

output "public_ip" {
	value = module.jenkins-master.public_ip[*]
#	var.public_ipadd = value

}

output "private_ip" {
	value = module.jenkins-master.private_ip[*]
}


#variable "public_ipadd" {}

#resource "local_file" "private_ipadd" {
#	filename = "~/ip"

#	content = "${tostring(module.jenkins-master.private_ip[0])}"
#}


