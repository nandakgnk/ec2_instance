#EAST TFVARS
east_vpc_id            = "vpc-0681449313c00eadd"
east_ec2_count              = "1"
east_aws_image         = "ami-026ebd4cfe2c043b2"
east_aws_instance_type = "t3.micro"
east_keypair           = "myownuse"
#subnetid               = data.aws_subnet.east_subnetid.id
#securitygid            = ["${data.aws_security_group.east_sgroupid.id}"]
east_subnetid          = "subnet-0463e8468a07a93d7"
east_securitygid       = ["sg-0395da20bc53391d8"]
east_ec2_name          = "c8.local"
