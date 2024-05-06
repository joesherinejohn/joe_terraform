provider "aws" {
    region = "us-east-1"
}
resource "aws_s3_bucket" "bucket" {
  bucket = "joe-sherine-123458example"

  tags = {
    Name        = "My bucket"
  }
}

resource "aws_s3_bucket_object" "file" {
  bucket = aws_s3_bucket.bucket.id
  key    = "hello.txt"
  source = "/Users/joesherinejohn/Desktop/Terraform/S3/hello.txt"
}