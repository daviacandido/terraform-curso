variable "location" {
  description = "Localização onde os recursos serão criados, por exemplo, 'East US', 'West Europe', etc."
  type        = string
  default     = "East US"
}

variable "environment" {
  description = "Ambiente de implantação, por exemplo, 'dev', 'prod', etc."
  type        = string
}