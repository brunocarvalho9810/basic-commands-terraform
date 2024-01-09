terraform {
  required_version = "1.6.6"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.31.0"
    }
  }


  backend "s3" {

    bucket = "tfstate-123"

    key = "dev/03-data-sources/terraform.tfstate"

    region = "sa-east-1"

  }

}

provider "aws" {
  region = var.aws_region
}