output "ec2_public_ips" {
  value = ["${aws_instance.ec2node.*.public_ip}"]
}
