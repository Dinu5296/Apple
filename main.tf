resource "aws_s3_bucket" "example_bucket2" {
  bucket = "my-example-bucket456"
  acl    = "private"
 
  versioning {
    enabled = true
  }
 
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}
