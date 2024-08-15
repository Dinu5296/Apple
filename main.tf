resource "aws_s3_bucket" "example_bucket" {
  bucket = "my-hardcoded-bucket-name"
  # Enable server-side encryption by default
  bucket_encryption {
    server_side_encryption_configuration {
      rule {
        apply_server_side_encryption_by_default {
          sse_algorithm = "AES256"
        }
      }
    }
  }
 
  # Enable versioning
  versioning {
    enabled = true
  }
 
  # Enable logging
  logging {
    target_bucket = "logging-target-bucket"
    target_prefix = "log/"
  }
 
  /* Public access block
  public_access_block {
    block_public_acls       = true
    block_public_policy     = true
    ignore_public_acls      = true
    restrict_public_buckets = true
  }
*/
 
  tags = {
    Name        = "MyHardcodedS3Bucket"
    Environment = "Dev"
  }
}
