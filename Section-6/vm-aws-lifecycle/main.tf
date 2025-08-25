terraform {
  required_version = ">= 1.7.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.9.0"
    }
  }

  backend "s3" {
    bucket = "daviacandido-remote-state-bucket"
    key    = "lifecycle/terraform.tfstate"
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

data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = "daviacandido-remote-state-bucket"
    key    = "aws-vpc/terraform.tfstate"
    region = "us-east-1"
  }
}