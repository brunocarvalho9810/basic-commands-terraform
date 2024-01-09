terraform {
  required_version = "1.6.6"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.31.0"
    }
  }

  backend "s3" {

    bucket = "remote-123"

    key = "dev/06/terraform.tfstate"

    region = "sa-east-1"

    dynamodb_table = "tflock-123"

  }

}

provider "aws" {
  region = "sa-east-1"
}

