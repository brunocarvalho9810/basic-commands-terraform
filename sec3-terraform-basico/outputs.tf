output "bucket_name" {
  value = aws_s3_bucket.bucket-random.bucket
}

output "bucket_arn" {
  value       = aws_s3_bucket.bucket-random.arn
  description = "Arn do bucket random"
}

output "bucket_domain_name" {
  value = aws_s3_bucket.bucket-random.bucket_domain_name
}

output "ips_file_path" {
  value = "${aws_s3_bucket.bucket-random.bucket}/${aws_s3_object.this.key}"
}