resource "azurerm_resource_group" "resource_group" {
  name     = "RG-${var.environment}" # Nome do grupo de recursos
  location = var.location            # Localização do grupo de recursos, por exemplo, "East US", "West Europe", etc.

  tags = local.common_tags # Use as tags definidas em locals.tf
}

resource "azurerm_storage_account" "storage_account" {
  count = var.environment == "dev" ? 0 : 1 # Cria a conta de armazenamento apenas se o ambiente for "prod"

  name                     = "d4v14c4nd1d0${var.environment}"       # Deve ser único em toda a Azure
  resource_group_name      = azurerm_resource_group.resource_group.name         # Use o nome do grupo de recursos criado acima
  location                 = var.location                                       # Use a mesma localização do grupo de recursos
  account_tier             = var.environment == "prod" ? "Premium" : "Standard" # Pode ser "Standard" ou "Premium"
  account_replication_type = var.environment != "prod" ? "LRS" : "RAGZRS"       # Pode ser "LRS", "ZRS", "GRS", "RAGRS", etc.

  tags = local.common_tags
}
