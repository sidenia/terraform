terraform {
  required_version = ">= 1.3.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.42.0"
    }
  }
  backend "s3" {
    bucket = "sidenia-tf-remote-state"
    key    = "aws-bucket-commands/terraform.tfstate"
    region = "sa-east-1"
  }
  # Backend dinâmico por ambiente:
  # backend "s3" { }
}

provider "aws" {
  region = "sa-east-1"

  default_tags {
    tags = {
      owner      = "Sidenia"
      managed_by = "Terraform"
    }
  }
}