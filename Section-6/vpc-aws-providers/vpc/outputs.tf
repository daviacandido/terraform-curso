output "vpc_id_default" {
  description = "O ID da VPC padrão"
  value       = aws_vpc.default.id
}

output "vpc_id_dev" {
  description = "O ID da VPC dev"
  value       = aws_vpc.dev.id
}

output "vpc_id_homolog" {
  description = "O ID da VPC homolog"
  value       = aws_vpc.homolog.id
}