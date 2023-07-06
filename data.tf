data "aws_subnet" "east_subnetid" {
  filter {
    name   = "vpc-id"
    values = ["${var.east_vpc_id}"]
  }

#  filter {
#    name   = "tag:Name"
#    values = ["*-dev-*"]
#  }
}

data "aws_security_group" "east_sgroupid" {

  filter {
    name   = "tag:Name"
    values = ["fordsg"]
  }

}
