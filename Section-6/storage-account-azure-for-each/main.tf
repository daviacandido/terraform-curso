terraform {
  required_version = ">= 1.7.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.40.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "RG-FTERRAFORM-STATE"
    storage_account_name = "daviacandidoftstate"
    container_name       = "remote-state"
    key                  = "for-each/terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}