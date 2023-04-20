# export the attacker security group id
output "attacker_security_group_id" {
  value = aws_security_group.attacker_security_group.id
}

# export the app server security group id
output "target_security_group_id" {
  value = aws_security_group.target_security_group.id
}