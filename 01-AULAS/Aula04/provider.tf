terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.61.0"
    }
  }
}

provider "aws" {
  region     = "us-west-1"
  access_key = "AKIAU3VGMSGF7MANRYOX"
  secret_key = "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"
}