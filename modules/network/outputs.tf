output "subnet_id" {
  value = aws_subnet.arcanjo_subnet_public.id
}

output "security_group_id" {
  value = aws_security_group.arcanjo_security_group.id
}