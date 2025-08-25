terraform {
  required_providers {
    aws = {
      source                = "hashicorp/aws"
      version               = "6.9.0"
      configuration_aliases = [aws.dev, aws.homolog]
    }
  }
}