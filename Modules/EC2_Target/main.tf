# Create EC2 Lauch template for Target machine
resource "aws_instance" "ec2_instance" {
  ami                    = var.ami_target
  instance_type          = "t2.micro"
  subnet_id              = var.private_app_subnet_az1_id
  vpc_security_group_ids = [var.target_security_group_id]

   tags = {
    Name = "${var.project_name}-${var.environment}-target-EC2"
  }
}