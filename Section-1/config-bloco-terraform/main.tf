terraform {
  required_version = ">= 1.9.0" # Define a versão mínima do Terraform necessária para este código.

  required_providers {
    aws = {
      source  = "hashicorp/aws" # Especifica o provedor AWS e sua origem.
      version = "6.9.0"         # Define a versão do provedor AWS a ser utilizada.
    }
  }
}


provider "aws" {
  region = "us-east-1" # Configura a região padrão para os recursos AWS.
  
  default_tags {
    tags = {
      owner      = "daviacandido" # Define uma tag padrão para todos os recursos criados, indicando o ambiente de desenvolvimento.
      managed-by = "terraform"    # Indica que os recursos são gerenciados pelo Terraform.
    }
  }
}