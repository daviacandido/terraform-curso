output "storage_accounts_id" {
  description = "IDs das contas de armazenamento criadas"
  value       = [for storage_account in azurerm_storage_account.storage_account : storage_account.id]
}


output "sa_primary_access_keys" {
  description = "Chaves de acesso primárias das contas de armazenamento"
  value       = { for key, storage_account in azurerm_storage_account.storage_account : key => storage_account.primary_access_key }
  sensitive   = true
}