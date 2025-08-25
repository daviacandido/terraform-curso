output "subnets_id" {
  description = "ID da Subnets criadas na AWS"
  value       = aws_subnet.subnet[*].id
}
