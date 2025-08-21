resource "aws_s3_bucket" "bucket" {
  bucket = "daviacandido-remote-state-bucket" // Nome do bucket S3, deve ser único globalmente
}

resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}