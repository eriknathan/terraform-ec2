resource "aws_subnet" "arcanjo_subnet_public" {
  vpc_id     = aws_vpc.arcanjo_vpc.id
  cidr_block = cidrsubnet(var.cidr_block, 8, 1)
  map_public_ip_on_launch = true

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-subnet-tf"
    }
  )
}