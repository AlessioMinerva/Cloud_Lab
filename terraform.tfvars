# Vpc variables
region                      = "us-east-1"
project_name                = "Hacking-Lab"
environment                 = "training"
vpc_cidr                    = "10.0.0.0/16"
public_subnet_az1_cidr      = "10.0.0.0/24"
private_app_subnet_az1_cidr = "10.0.1.0/24"

# Security Groups variables
ssh_ip = "YourLocalIP"

# EC2_Attacker
ami_attacker = "AMIID-Attacker"
key          = "NameofYourSSHKey"

# EC2_target
ami_target = "AMIID-Target"


