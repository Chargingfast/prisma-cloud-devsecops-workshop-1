provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"
  acl           = "public-read-write"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "e738f7e1-a9fb-41e9-99db-fc6faa112b2d"
    git_commit           = "0b9c0eeed3a86bf08037ef582febcf9dc0cb7e6d"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2024-09-27 21:08:16"
    git_last_modified_by = "Chargingfast@gmail.com"
    git_modifiers        = "Chargingfast"
    git_org              = "Chargingfast"
    git_repo             = "prisma-cloud-devsecops-workshop-1"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
