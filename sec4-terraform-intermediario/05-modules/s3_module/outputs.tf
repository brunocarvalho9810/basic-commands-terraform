output "name" {
  value = aws_s3_bucket_website_configuration.this.id
}

# output "arn" {
#   value = aws_s3_bucket_website_configuration.this.arn
# }

output "website" {
  value = aws_s3_bucket_website_configuration.this.website_domain
}

# output "regional_domain_name" {
#   value = aws_s3_bucket_website_configuration.this.bucket_regional_domain_name
# }

# output "domain_name" {
#   value = aws_s3_bucket_website_configuration.this.bucket_domain_name
# }

output "website_domain" {
  value = aws_s3_bucket_website_configuration.this.website_domain
}

# output "hosted_zone_id" {
#   value = aws_s3_bucket_website_configuration.this.hosted_zone_id
# }

output "files" {
  value = [for filename, data in module.objects : filename]
}