terraform {
  required_version = "1.6.6"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.31.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "3.6.0"
    }
  }
}

provider "aws" {
  region = "sa-east-1"
}

resource "aws_s3_bucket" "my-test-bucket2" {
  bucket = "my-bucket-brunao3"

  tags = local.common_tags
}

resource "aws_instance" "my-instance" {
  ami           = var.aws_ami
  instance_type = var.instance_type

  tags = var.instance_tags
}