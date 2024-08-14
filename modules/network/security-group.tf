resource "aws_security_group" "arcanjo_security_group" {
  name = "ec2-${var.project_name}-sg-tf"
  vpc_id = aws_vpc.arcanjo_vpc.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["${var.meu_ip}/32"]
    description = "IP de ${var.desc_meu_ip}"
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-sg-ec2-tf"
    }
  )
}