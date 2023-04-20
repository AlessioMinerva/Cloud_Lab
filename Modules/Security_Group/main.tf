# create security group for the Attacker
resource "aws_security_group" "attacker_security_group" {
  name        = "${var.project_name}-${var.environment}-attacker-sg"
  description = "enable ssh access on port 22"
  vpc_id      = var.vpc_id

  ingress {
    description = "ssh access"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.ssh_ip]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.project_name}-${var.environment}-attacker-sg"
  }
}

# create security group for the Target
resource "aws_security_group" "target_security_group" {
  name        = "${var.project_name}-${var.environment}-target-sg"
  description = "enable all traffic"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.project_name}-${var.environment}-target-sg"
  }
}