locals {
  region       = var.region
  project_name = var.project_name
  environment  = var.environment
}

# Create Vpc module
module "vpc" {
  source                      = "./Modules/VPC"
  region                      = local.region
  project_name                = local.project_name
  environment                 = local.environment
  vpc_cidr                    = var.vpc_cidr
  public_subnet_az1_cidr      = var.public_subnet_az1_cidr
  private_subnet_az1_cidr     = var.private_subnet_az1_cidr
}


# Create Security Groups
module "security_group" {
  source       = "./Modules/Security_Group"
  project_name = local.project_name
  environment  = local.environment
  vpc_id       = module.vpc.vpc_id
  ssh_ip       = var.ssh_ip
}

# Create EC2 Attacker
module "ec2_attacker" {
  source                     = "./Modules/EC2_Attacker"
  project_name               = local.project_name
  environment                = local.environment
  ami_attacker               = var.ami_attacker
  public_subnet_az1_id       = module.vpc.public_subnet_az1_id
  attacker_security_group_id = module.security_group.attacker_security_group_id
  key                        = var.key
}

# Create EC2 Target
module "ec2_target" {
  source                    = "./Modules/EC2_Target"
  project_name              = local.project_name
  environment               = local.environment
  ami_target                = var.ami_target
  private_subnet_az1_id = module.vpc.private_subnet_az1_id
  target_security_group_id  = module.security_group.target_security_group_id
}
