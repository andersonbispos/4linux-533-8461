terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.61.0"
    }
  }

  /* backend "s3" {
    bucket = "state-bucket-absv-2023"
    key    = "prod/prod.tfstate"
    region = "us-east-1"
    dynamodb_table = "terraform-lock"
    #access_key = ""
    #secret_key = ""
  } */

}

provider "aws" {
  region = "us-east-1"
  #access_key = ""
  #secret_key = ""
  default_tags {
    tags = local.common_tags
  }
}