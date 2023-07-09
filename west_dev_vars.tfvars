##WEST TFVARS
west_vpc_id            = "vpc-0317c37c745c9a04f"
west_ec2count          = "1"
west_aws_image         = "ami-053b0d53c279acc90"
west_aws_instance_type = "t3.micr0"
west_keypair           = "myownuse"
#west_subnetid          = data.aws_subnet.east_subnetid.id
#west_securitygid       = ["${data.aws_security_group.east_sgroupid.id}"]
west_subnetid    = "subnet-0463e8468a07a93d7"
west_securitygid = ["sg-0395da20bc53391d8"]
west_ec2_name    = "u21.local"
