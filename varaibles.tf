variable "east_vpc_id" {
}

variable "west_vpc_id" {
}


variable "east_ec2_count" {
  description = "Number of instances to launch"
}

variable "west_ec2_count" {
  description = "Number of instances to launch"
}

variable "east_aws_image" {
  description = "AMI to launch"
  default     = "ami-026ebd4cfe2c043b2"
}

variable "west_aws_image" {
  description = "AMI to launch"
}

variable "east_keypair" {
}

variable "west_keypair" {
}

variable "east_aws_instance_type" {
}

variable "west_aws_instance_type" {
}

variable "east_ec2name" {
  type    = string
}

variable "east_ec2name" {
  type    = string
}

variable "west_ec2name" {
  type    = string
}

variable "extra_tags" {
  type    = map(any)
  default = {}
}
