#EAST TFVARS
east_vpc_id            =   "vpc-0681449313c00eadd"
east_ec2count          =   "1"
east_aws_image         =   "ami-026ebd4cfe2c043b2"
east_aws_instance_type =   "t3.micro"
east_keypair           =   "myownuse"
#subnetid              =    data.aws_subnet.east_subnetid.id[random_integer.random_count.result]
#securitygid           =   ["${data.aws_security_group.east_sgroupid.id}"]
#east_subnetid          =   "subnet-0463e8468a07a93d7"
#east_securitygid       =   ["sg-0395da20bc53391d8"]
east_ec2name           =   "c8.local"

##WEST TFVARS
west_vpc_id            =   "vpc-0681449313c00eadd"
west_ec2count          =   "1"
west_aws_image         =   "ami-053b0d53c279acc90"
west_aws_instance_type =   "t3.micro"
west_keypair           =   "myownuse"
#west_subnetid         =    data.aws_subnet.east_subnetid.id[random_integer.random_count.result]
#west_securitygid       =   ["${data.aws_security_group.east_sgroupid.id}"]
west_subnetid          =   "subnet-0463e8468a07a93d7"
west_securitygid       =   ["sg-0395da20bc53391d8"]
west_ec2name           =   "u21.local"
