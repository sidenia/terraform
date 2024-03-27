output "sidenia_bucket_id" {
  description = "The ID of the S3 bucket"
  value       = aws_s3_bucket.bucket.id
}
output "sidenia_bucket_arn" {
  description = "value of the ARN of the S3 bucket"
  value       = aws_s3_bucket.bucket.arn
}