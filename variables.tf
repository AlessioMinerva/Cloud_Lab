
# Environment variables
variable "region" {}
variable "project_name" {}
variable "environment" {}

# Vpc variables 
variable "vpc_cidr" {}
variable "public_subnet_az1_cidr" {}
variable "private_subnet_az1_cidr" {}

# Security Groups variables
variable "ssh_ip" {}

# EC2 Attacker
variable "ami_attacker" {}
variable "key" {}

# EC2 Target
variable "ami_target" {}
