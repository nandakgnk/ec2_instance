data "aws_subnets" "east_subnetid" {
  filter {
    name   = "vpc-id"
    values = ["${var.east_vpc_id}"]
  }

  filter {
    name   = "tag:Name"
    values = ["ford*"]
  }
}

data "aws_subnet" "subnet" {
  for_each = toset(data.aws_subnets.east_subnetid.ids)
  id       = each.value
}


#data "aws_security_group" "east_sgroupid" {

#  filter {
#    name   = "tag:Name"
#    values = ["ford*"]
#  }

#}
