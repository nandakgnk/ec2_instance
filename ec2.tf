module "ec2_east" {
  source            = "./modules/ec2_instance"
  ec2_count         = var.east_ec2_count
  aws_image         = var.east_aws_image
  aws_instance_type = var.east_aws_instance_type
  ec2_keypair       = var.east_keypair
  subnetid          = tolist(data.aws_subnet_ids.east_subnetid.ids)[count.index % length(data.aws_subnet_ids.east_subnetid.ids)]
  securitygid       = ["${data.aws_security_group.east_sgroupid.id}"]
  user_data         = file("east_user_data.sh")
  extra_tags = {
    Name        = "c8.local"
    Environment = "Devlopment"
    group       =  "frontend"
  }
}

module "ec2_west1" {
  source            = "./modules/ec2_instance"
  ec2_count         = var.west_ec2_count
  aws_image         = var.west_aws_image
  aws_instance_type = var.west_aws_instance_type
  ec2_keypair       = var.west_keypair
  subnetid          = tolist(data.aws_subnet_ids.east_subnetid.ids)[count.index % length(data.aws_subnet_ids.east_subnetid.ids)]
 # subnetid          = data.aws_subnet.east_subnetid.id
#  subnetid          = tolist(data.aws_subnet.east_subnetid.ids)[count.index %
#length(data.aws_subnet_ids.east_subnetid.ids)   ] 
  securitygid       = ["${data.aws_security_group.east_sgroupid.id}"]
  user_data         = file("west_user_data.sh")
  extra_tags = {
    Name        = "u21.local",
    Environment = "Developmemt"
    group       = "backend"
  }
}
