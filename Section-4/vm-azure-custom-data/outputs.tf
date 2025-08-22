output "vm-ip" {
  value       = azurerm_public_ip.public_ip.ip_address
  description = "IP Publico da Máquina Virtual"
}