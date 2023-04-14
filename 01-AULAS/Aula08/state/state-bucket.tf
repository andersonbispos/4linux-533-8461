resource "aws_s3_bucket" "state_bucket" {
  bucket = "absv_state_bucket"

  force_destroy = true

  tags = {
    Name = "absv_state_bucket"
  }
}

resource "aws_s3_bucket_acl" "state_bucket_acl" {
  bucket = aws_s3_bucket.state_bucket.id
  acl    = "private"
}

resource "aws_s3_bucket_versioning" "state_bucket_versioning" {
  bucket = aws_s3_bucket.state_bucket.id

  versioning_configuration {
    status = "Enabled"
  }
}