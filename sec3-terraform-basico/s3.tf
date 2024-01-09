resource "aws_s3_bucket" "bucket-random" {
  bucket = "${random_pet.bucket.id}-${var.environment}"

  tags = {
    Name        = "My bucket Random"
    Environment = "Dev"
    Owner       = "Bruno Carvalho"
    UpdatedAt   = "2024-01-03"
  }
}

resource "aws_s3_object" "this" {
  bucket = aws_s3_bucket.bucket-random.bucket

  tags = local.common_tags

  key = "config/${local.ips_file_path}"

  source = local.ips_file_path

  etag = filemd5(local.ips_file_path)
}

resource "aws_s3_bucket" "manual" {
  bucket = "bucket-manual-123"
  tags = {
    Import = "04/01/2024"
    Criado = "12/10/2023"
  }
}

import {
  to = aws_s3_bucket.manual
  id = "manual-777"
}