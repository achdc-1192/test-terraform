terraform {
  required_version = ">= 0.12.31"

  required_providers {
    aws = ">= 3.50"
  }
}


resource "aws_s3_bucket" "test" {
  bucket = "my-tf-test-bucket"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
