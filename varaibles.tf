variable "east_vpc_id" {
  default = "vpc-0681449313c00eadd"
}

variable "west_vpc_id" {
  default = "vpc-0317c37c745c9a04f"
}


variable "east_ec2_count" {
  description = "Number of instances to launch"
  default     = 1
}

variable "west_ec2_count" {
  description = "Number of instances to launch"
  default     = 1
}

variable "east_aws_image" {
  description = "AMI to launch"
  default     = "ami-04823729c75214919"
}

variable "west_aws_image" {
  description = "AMI to launch"
  default     = "ami-053b0d53c279acc90"
}

variable "east_keypair" {
  default = "myownuse"
}

variable "west_keypair" {
  default = "myownuse"
}

variable "east_aws_instance_type" {
  default = "t3.micro"

}

variable "west_aws_instance_type" {
  default = "t3.micro"

}

variable "ec2_name" {
  default = "sampleisntance"
  type    = string
}


variable "extra_tags" {
  type    = map(any)
  default = {}
}
