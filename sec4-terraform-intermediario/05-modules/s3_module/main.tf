resource "aws_s3_bucket" "this" {

  bucket = var.name

}

resource "aws_s3_bucket_website_configuration" "this" {
  bucket = var.name
  #acl    = var.acl
  #policy = var.policy
  #tags = var.tags

  # dynamic "website" {
  #   for_each = length(keys(var.website)) == 0 ? [] : [var.website]
  #   content {
  #     index_document           = lookup(website.value, "index_document", null)
  #     error_document           = lookup(website.value, "error_document", null)
  #     redirect_all_requests_to = lookup(website.value, "redirect_all_requests_to", null)
  #     routing_rules            = lookup(website.value, "routing_rules", null)
  #   }
  # }

  # dynamic "versioning" {
  #   for_each = length(keys(var.versioning)) == 0 ? [] : [var.versioning]
  #   content {
  #     enabled    = lookup(versioning.value, "enabled", null)
  #     mfa_delete = lookup(versioning.value, "mfa_delete", null)
  #   }
  # }

  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "error.html"
  }
}

module "objects" {
  source = "./s3_object"

  for_each = var.files != "" ? fileset(var.files, "**") : []

  bucket = aws_s3_bucket_website_configuration.this.bucket
  key    = "${var.key_prefix}/${each.value}"
  src    = "${var.files}/${each.value}"
}

resource "aws_s3_bucket_ownership_controls" "example" {
  bucket = aws_s3_bucket.this.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_public_access_block" "example" {
  bucket = aws_s3_bucket.this.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

resource "aws_s3_bucket_acl" "example" {
  depends_on = [
    aws_s3_bucket_ownership_controls.example,
    aws_s3_bucket_public_access_block.example,
  ]

  bucket = aws_s3_bucket.this.id
  acl    = "public-read"
}

resource "aws_s3_bucket_policy" "allow_access_from_another_account" {
  bucket = aws_s3_bucket.this.id
  policy = data.aws_iam_policy_document.allow_access_from_another_account.json
}

data "aws_iam_policy_document" "allow_access_from_another_account" {
  statement {
    sid = "PublicReadGetObject"
    effect = "Allow"
    principals {
      type        = "AWS"
      identifiers = ["*"]
      #identifiers = ["${data.aws_caller_identity.current.account_id}"]
    }

    actions = [
      "s3:GetObject",
    ]

    resources = [
      aws_s3_bucket.this.arn,
      "${aws_s3_bucket.this.arn}/*",
    ]
  }
}

data "aws_caller_identity" "current" {}