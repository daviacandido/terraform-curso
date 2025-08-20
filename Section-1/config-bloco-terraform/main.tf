terraform {
    required_version = "~= 1.0.0" # Define a versão mínima do Terraform necessária para este código.
    required_providers {
        aws = {
            source  = "hashicorp/aws" # Especifica o provedor AWS e sua origem.
            version = "1.0"        # Define a versão do provedor AWS a ser utilizada.
        }

        azurerm = {
            source  = "hashicorp/azurerm" # Especifica o provedor Azure e sua origem.
            version = "2.0"           # Define a versão do provedor Azure a ser utilizada.
        }
    }

    backend "s3" {
    }
}