output "storage_account_dev_id" {
  description = "ID da conta de armazenamento criada"
  value       = azurerm_storage_account.storage_account["dev"].id
}

output "storage_account_qa_id" {
  description = "ID da conta de armazenamento criada"
  value       = azurerm_storage_account.storage_account["qa"].id
}

output "storage_account_homolog_id" {
  description = "ID da conta de armazenamento criada"
  value       = azurerm_storage_account.storage_account["homolog"].id
}

output "storage_account_prod_id" {
  description = "ID da conta de armazenamento criada"
  value       = azurerm_storage_account.storage_account["prod"].id
}

output "sa_primary_access_key_dev" {
  description = "Chave de acesso primária da conta de armazenamento"
  value       = azurerm_storage_account.storage_account["dev"].primary_access_key
  sensitive   = true
}

output "sa_primary_access_key_qa" {
  description = "Chave de acesso primária da conta de armazenamento"
  value       = azurerm_storage_account.storage_account["qa"].primary_access_key
  sensitive   = true
}

output "sa_primary_access_key_homolog" {
  description = "Chave de acesso primária da conta de armazenamento"
  value       = azurerm_storage_account.storage_account["homolog"].primary_access_key
  sensitive   = true
}

output "sa_primary_access_key_prod" {
  description = "Chave de acesso primária da conta de armazenamento"
  value       = azurerm_storage_account.storage_account["prod"].primary_access_key
  sensitive   = true
}