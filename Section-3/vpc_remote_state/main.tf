terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.9.0"
    }
  }

  backend "s3" {
    bucket = "daviacandido-remote-state-bucket"
    key    = "aws-vpc/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1" // Região onde o bucket S3 será criado

  default_tags {
    tags = {
      owner      = "daviacandido"
      managed-by = "terraform"
    }
  }
}

