resource "aws_security_group" "arcanjo_security_group" {
  name = "${var.project_name}-sg-ec2-tf"
  vpc_id = aws_vpc.arcanjo_vpc.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["${var.meu_ip}/32"]
    # cidr_blocks = ["0.0.0.0/0"]
    description = "Porta 22 aberta para qualquer IP"
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