# export the target private address
output "private_ipv4_address" {
  description = "Target private IP address"
  value = aws_instance.ec2_instance.private_ip
}