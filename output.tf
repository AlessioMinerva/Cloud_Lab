# export the attacker public ipv4 address
output "attacker_public_ipv4_address" {
  description = "Attacker public IP address"
  value = module.ec2_attacker.public_ipv4_address
}

# export the target private address
output "target_private_ipv4_address" {
  description = "Target private IP address"
  value = module.ec2_target.private_ipv4_address
}