terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.61.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  #access_key = ""
  #secret_key = ""
  default_tags {
    tags = {
      environment = "treinamento"
      treina      = "4linux"
      terraform   = "yes"
    }
  }
}