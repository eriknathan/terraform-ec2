resource "aws_internet_gateway" "arcanjo_igw" {
  vpc_id = aws_vpc.arcanjo_vpc.id

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-igw-tf"
    }
  )
}