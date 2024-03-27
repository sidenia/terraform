resource "aws_s3_bucket" "bucket_commands-1" {
  bucket = var.bucket_name
}

resource "aws_s3_bucket" "bucket_commands-2" {
  bucket = var.bucket_name_dois
}

resource "aws_s3_bucket" "bucket_commands-3" {
  bucket = var.bucket_name_tres
}