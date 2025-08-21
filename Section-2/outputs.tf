output "storage_account_id" {
  description = "ID da conta de armazenamento criada"
  value       = azurerm_storage_account.storage_account.id
}

output "sa_primary_access_key" {
  description = "Chave de acesso primária da conta de armazenamento"
  value       = azurerm_storage_account.storage_account.primary_access_key
  sensitive   = true
}