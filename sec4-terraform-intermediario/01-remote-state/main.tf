terraform {
  required_version = "1.6.6"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.31.0"
    }
  }

  backend "s3" {
    bucket = "remote-060385397712"
    key    = "terraform.tfstate"
    region = "sa-east-1"

  }


}

provider "aws" {
  region = "sa-east-1"
}

data "aws_caller_identity" "current" {

}

resource "aws_s3_bucket" "bucket_remote" {
  bucket = "remote-${data.aws_caller_identity.current.account_id}"

  tags = {
    Proprietario = "Bruno Carvalho"
    Data = "04/01/2024"
  }
}
resource "aws_s3_bucket_versioning" "versao" {
  bucket = aws_s3_bucket.bucket_remote.id
  versioning_configuration {
    status = "Enabled"
  }
}

