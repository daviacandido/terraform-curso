variable "location" {
  description = "Localização onde os recursos serão criados, por exemplo, 'East US', 'West Europe', etc."
  type        = map(string)
  default = {
    "dev"     = "East US",
    "qa"      = "Japan East",
    "homolog" = "Brazil South",
    "prod"    = "West Europe"
  }
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