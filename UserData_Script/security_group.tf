#Get default VPC
data "aws_vpc" "default" {
  default = true
} 

#Security Group for levelupvpc
resource "aws_security_group" "allow-levelup-ssh" {
  vpc_id      = data.aws_vpc.default.id
  name        = var.SG_NAME
  description = var.SG_DESCRIPTION

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  
  tags = {
    Name = "${var.SG_NAME}"
  }
}

