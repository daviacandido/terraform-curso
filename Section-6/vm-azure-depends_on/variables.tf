variable "location" {
  description = "Localização da Azure onde os recursos serão criados"
  type        = string
  default     = "West Europe"
}

variable "environment" {
  description = "Ambiente onde os recursos serão criados"
  type        = string
  default     = "dev"
}