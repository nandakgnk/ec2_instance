resource "random_shuffle" "subnets" {
  input        = values(data.aws_subnet.subnet)[*].id
  result_count = 2
}

module "ec2_east" {
  source            = "./modules/ec2_instance"
  ec2_count         = var.east_ec2count
  aws_image         = var.east_aws_image
  aws_instance_type = var.east_aws_instance_type
  ec2_keypair       = var.east_keypair
  subnetid          = random_shuffle.subnets.result[0]
  securitygid       = var.east_securitygid
  user_data         = file("east_user_data.sh")
  extra_tags = {
    Name        = var.east_ec2name
    Environment = "Devlopment"
    group       = "frontend"
  }
}

module "ec2_west1" {
  source            = "./modules/ec2_instance"
  ec2_count         = var.west_ec2count
  aws_image         = var.west_aws_image
  aws_instance_type = var.west_aws_instance_type
  ec2_keypair       = var.west_keypair
  subnetid          = random_shuffle.subnets.result[1]
  securitygid       = var.west_securitygid
  user_data         = file("west_user_data.sh")
  extra_tags = {
    Name        = var.west_ec2name
    Environment = "Developmemt"
    group       = "backend"
  }
}
