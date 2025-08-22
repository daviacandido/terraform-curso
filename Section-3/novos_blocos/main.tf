terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.10.0"
    }
  }
  required_version = ">= 1.7.0"

  backend "s3" {
    bucket = "daviacandido-remote-state-bucket"
    key    = "moved_removed_import/terraform.tfstate"
    region = "us-east-1"
  }
}


provider "aws" {
  region = "us-east-1"

  default_tags {
    tags = {
      owner      = "daviacandido"
      managed-by = "terraform"
    }
  }
}