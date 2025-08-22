resource "aws_s3_bucket" "main" {
  bucket = var.bucket_name
  acl    = "private"
  tags = {
    Name        = "main-storage"
    Environment = var.environment
  }
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.main.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "encryption" {
  bucket = aws_s3_bucket.main.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

output "bucket_id" {
  value = aws_s3_bucket.main.id
}
output "bucket_arn" {
  value = aws_s3_bucket.main.arn
}
