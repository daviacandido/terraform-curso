output "bucket_id" {
  description = "ID da bucket S3 criada para o estado local"
  value       = aws_s3_bucket.bucket.id
}

output "bucket_arn" {
  description = "ARN da bucket S3 criada para o estado local"
  value       = aws_s3_bucket.bucket.arn
}