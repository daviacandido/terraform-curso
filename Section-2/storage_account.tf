resource "azurerm_resource_group" "resource_group" {
    name     = "" # Nome do grupo de recursos
    location = "" # Localização do grupo de recursos, por exemplo, "East US", "West Europe", etc.

    tags = ""
}

resource "azurerm_storage_account" "storage_account" {
    name                     = "" # Deve ser único em toda a Azure
    resource_group_name      = "" # Use o nome do grupo de recursos criado acima
    location                 = "" # Use a mesma localização do grupo de recursos
    account_tier             = "" # Pode ser "Standard" ou "Premium" 
    account_replication_type = "" # Pode ser "LRS", "ZRS", "GRS", "RAGRS", etc.

    tags = ""
}

resource "azurerm_storage_container" "container" {
    name                  = "" # Nome do contêiner, deve ser em letras minúsculas
    storage_account_id    = "" # Use o ID da conta de armazenamento criada acima
}