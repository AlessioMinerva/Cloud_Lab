# Create EC2 Lauch template for Attacker machine
resource "aws_instance" "ec2_instance" {
  ami                    = var.ami_attacker
  instance_type          = "t2.micro"
  subnet_id              = var.public_subnet_az1_id
  vpc_security_group_ids = [var.attacker_security_group_id]
  key_name               = var.key

   tags = {
    Name = "${var.project_name}-${var.environment}-attacker-EC2"
  }
}
