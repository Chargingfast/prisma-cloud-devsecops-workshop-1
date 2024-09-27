provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "47a26b3c-d4c9-4687-8b7c-a98d31e354de"
    git_commit           = "af90b62206c77a5b62384b25ffeaf37bbb5e3a1c"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2024-09-27 20:43:40"
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
