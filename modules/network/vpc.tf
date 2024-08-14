resource "aws_vpc" "arcanjo_vpc" {
  cidr_block           = var.cidr_block
  enable_dns_support   = true
  enable_dns_hostnames = true
  
  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-vpc-tf"
    }
  )
}
