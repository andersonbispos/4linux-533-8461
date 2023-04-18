terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.63.0"
    }
  }
}

provider "aws" {
  region = var.map_ambientes[terraform.workspace]
  #access_key = ""
  #secret_key = ""
}