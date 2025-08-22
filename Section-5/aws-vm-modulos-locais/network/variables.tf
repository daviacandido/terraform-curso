variable "cidr_vpc" {
  description = "CIDR para a VPC criada na AWS"
  type        = string
}

variable "cidr_subnet" {
  description = "CIDR para a Subnet criada na AWS"
  type        = string
}

variable "environment" {
  description = "Ambiente onde os recursos serão criados"
  type        = string
}