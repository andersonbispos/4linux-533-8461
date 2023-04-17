terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.61.0"
    }
  }
}

provider "aws" {
  region = var.default_region
  #access_key = ""
  #secret_key = ""
  default_tags {
    tags = local.common_tags
  }
}