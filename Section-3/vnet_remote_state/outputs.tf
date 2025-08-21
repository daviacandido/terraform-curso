output "subnet_id" {
  description = "O ID da Subnet criada"
  value       = azurerm_subnet.subnet.id
}

output "network_security_group_id" {
  description = "O ID do Network Security Group criado"
  value       = azurerm_network_security_group.nsg.id
}