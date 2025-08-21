variable "location" {
  description = "Localização onde os recursos serão criados, por exemplo, 'East US', 'West Europe', etc."
  type        = string
  default     = "East US"
}

variable "account_tier" {
  description = "Tier da conta de armazenamento, pode ser 'Standard' ou 'Premium'."
  type        = string
  default     = "Standard"
}

variable "account_replication_type" {
  description = "Tipo de replicação da conta de armazenamento, pode ser 'LRS', 'ZRS', 'GRS', 'RAGRS', etc."
  type        = string
  default     = "LRS"
}

variable "resource_group_name" {
  description = "Nome do grupo de recursos onde a conta de armazenamento será criada."
  type        = string
  default     = "RG-FTERRAFORM-CURSO"
}

variable "storage_account_name" {
  description = "Nome da conta de armazenamento, deve ser único em toda a Azure."
  type        = string
  default     = "stgaccfterraformdaviacandido" # Deve ser único globalmente, ajuste conforme necessário
}

variable "container_name" {
  description = "Nome do contêiner dentro da conta de armazenamento, deve ser em letras minúsculas."
  type        = string
  default     = "container-fterraform"
}