terraform {
  required_version = ">= 1.7.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.0.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "RG-FTERRAFORM-STATE"
    storage_account_name = "daviacandidoftstate"
    container_name       = "remote-state"
    key                  = "azure-vm-modulos-remotos/terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}

module "network" {
  source  = "Azure/network/azurerm"
  version = "5.2.0"

  resource_group_name     = azurerm_resource_group.resource_group.name
  use_for_each            = true
  subnet_names            = ["subnet-fterraform-${var.environment}"]
  tags                    = local.common_tags
  vnet_name               = "vnet-fterraform-${var.environment}"
  resource_group_location = var.location
}