resource "aws_route_table" "arcanjo_route_table" {
  vpc_id = aws_vpc.arcanjo_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.arcanjo_igw.id
  }

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-trb-tf"
    }
  )
}

resource "aws_route_table_association" "arcanjo_route_table_assoc" {
  subnet_id      = aws_subnet.arcanjo_subnet_public.id
  route_table_id = aws_route_table.arcanjo_route_table.id
}
