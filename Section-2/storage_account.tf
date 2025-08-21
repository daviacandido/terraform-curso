resource "azurerm_resource_group" "resource_group" {
  name     = var.resource_group_name # Nome do grupo de recursos
  location = var.location            # Localização do grupo de recursos, por exemplo, "East US", "West Europe", etc.

  tags = local.common_tags # Use as tags definidas em locals.tf
}

resource "azurerm_storage_account" "storage_account" {
  name                     = var.storage_account_name                   # Deve ser único em toda a Azure
  resource_group_name      = azurerm_resource_group.resource_group.name # Use o nome do grupo de recursos criado acima
  location                 = var.location                               # Use a mesma localização do grupo de recursos
  account_tier             = var.account_tier                           # Pode ser "Standard" ou "Premium" 
  account_replication_type = var.account_replication_type               # Pode ser "LRS", "ZRS", "GRS", "RAGRS", etc.

  tags = local.common_tags
}

resource "azurerm_storage_container" "container" {
  name               = var.container_name                         # Nome do contêiner, deve ser em letras minúsculas
  storage_account_id = azurerm_storage_account.storage_account.id # Use o ID da conta de armazenamento criada acima
}