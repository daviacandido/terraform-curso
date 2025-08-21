variable "location" {
  description = "Região onde os recursos serão criados"
  type        = string
  default     = "West Europe"
}

variable "account_replication_type" {
  description = "Tipo de replicação da conta de armazenamento"
  type        = string
  default     = "LRS"
}

variable "account_tier" {
  description = "Camada da conta de armazenamento"
  type        = string
  default     = "Standard"
}