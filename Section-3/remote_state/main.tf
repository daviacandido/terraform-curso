terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.9.0"
    }

    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.40.0"
    }
  }
}

provider "aws" {
  region = "us-east-1" // Região da AWS onde os recursos serão criados

  default_tags {
    tags = {
      owner      = "daviacandido"
      managed-by = "terraform"
      project    = "fterraform-curso"
    }
  }
}

provider "azurerm" {
  features {}
}