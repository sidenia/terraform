terraform {
  # backend "local" {
  #     path = "local_state/terraform.tfstate"
  # }
  required_version = ">=1.3.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "sa-east-1"
  default_tags {
    tags = {
      owner      = "sidenia"
      managed_by = "terraform"
    }
  }
}