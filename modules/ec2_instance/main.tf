locals {
    tags = merge({
        service = "node"
        team = "myteam"
    }, var.extra_tags)
}

resource "random_integer" "random_count" {
  max = length(data.aws_subnet.east_subnet.id)-1
  min = 0
  
  keepers = {
     test_name  = var.ec2_name
  }
}



resource "aws_instance" "sampleinstance" {
  count         = var.ec2_count
  ami           = var.aws_image
  instance_type = var.aws_instance_type
  
  root_block_device {
    delete_on_termination = true
    encrypted             = true
    volume_size           = 12
    volume_type           = "gp2"
  }
  key_name                    = var.ec2_keypair
  subnet_id                   = var.subnetid
  monitoring                  = var.monitoring
  vpc_security_group_ids      = var.securitygid
  associate_public_ip_address = true
  ebs_optimized               = false
  user_data = var.user_data
  lifecycle {
    prevent_destroy = true
  }
  tags = local.tags
 
}
