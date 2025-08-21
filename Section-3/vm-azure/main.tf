terraform {
  required_version = ">= 1.5.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.41.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "RG-FTERRAFORM-STATE"
    storage_account_name = "daviacandidoftstate"
    container_name       = "remote-state"
    key                  = "azure-vm/terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}

data "terraform_remote_state" "vnet" {
  backend = "azurerm"

  config = {
    resource_group_name  = "RG-FTERRAFORM-STATE"
    storage_account_name = "daviacandidoftstate"
    container_name       = "remote-state"
    key                  = "azure-vnet/terraform.tfstate"
  }
}