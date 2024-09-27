provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "2e3ffa3e-0ffb-471b-b2cc-50cecec4d17f"
    git_commit           = "6df297ac69e6e0233c4a8c7f094c333ab6e02403"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2024-09-27 20:26:15"
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
