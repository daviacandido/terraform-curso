resource "azurerm_resource_group" "resource_group" {
  name     = "RG-FTERRAFORM-STATE"
  location = var.location

  tags = local.common_tags
}

resource "azurerm_storage_account" "storage_account" {
  name                     = "daviacandidoftstate" // Nome da conta de armazenamento, deve ser único globalmente
  resource_group_name      = azurerm_resource_group.resource_group.name
  location                 = azurerm_resource_group.resource_group.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type

  blob_properties {
    versioning_enabled = true // Habilita o versionamento de blobs
  }

  tags = local.common_tags
}

resource "azurerm_storage_container" "container" {
  name                  = "remote-state" // Nome do contêiner, deve ser em letras minúsculas
  storage_account_id    = azurerm_storage_account.storage_account.id
  container_access_type = "private"
}