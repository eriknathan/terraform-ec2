resource "aws_instance" "arcanjo_ec2" {
  ami                         = var.instance_ami
  instance_type               = "t2.micro"
  key_name                    = var.key_name
  subnet_id                   = module.network.subnet_id
  vpc_security_group_ids      = [module.network.security_group_id]
  associate_public_ip_address = true

  tags = merge(
    local.tags,
    {
      Name = "${var.project_name}-ec2-tf"
    }
  )
}