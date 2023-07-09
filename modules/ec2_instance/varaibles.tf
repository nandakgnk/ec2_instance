variable "ec2_count" {
  description = "Number of instances to launch"
  default     = 1
}

variable "aws_image" {
    description = "Enter AWS image name"
}

variable "aws_instance_type" {
    description = "Enter instance type"
}

variable "ec2_keypair" {
  description = "Enter keypair to connect to ec2"
}

variable "monitoring" {
  description = "If true, the launched EC2 instance will have detailed monitoring enabled"
  default     = false
}
variable "securitygid" {
  description = "fetch security group id"
}

variable "subnetid" {
  description = "fetch subnet details"
}

variable "ec2_name" {
  description = "fetch subnet details"
}

variable "user_data" {
    description = "Enter commands needs to execute during the time of execution"
}


#variable "default_tags" {
#  type = map(string)
#  default = {
#    Environment = "Dev"
#    Project     = "Terraform"
#  }
#}

variable "extra_tags" {
    type = map
    default = {}
}
