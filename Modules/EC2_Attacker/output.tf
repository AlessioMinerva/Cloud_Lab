# export the attacker public ipv4 address
output "public_ipv4_address" {
  description = "Attacker public IP address"
  value = aws_instance.ec2_instance.public_ip
}