resource "aws_s3_bucket" "bucket" {
  bucket = "sidenia-tf-remote-state"
  tags   = local.common_tags
}

# resource "aws_s3_bucket_acl" "bucket" {
#   bucket = aws_s3_bucket.bucket.id
#   acl    = "private"
# }

resource "aws_s3_bucket_versioning" "versioning_configuration" {
  bucket = aws_s3_bucket.bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}