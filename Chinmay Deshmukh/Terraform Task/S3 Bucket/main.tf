#Create S3 Bucket Using Terraform
resource "aws_s3_bucket" "my-bucket-Terraform" {
  bucket = "chinmay.techwithmayur.cloud"

  tags = {
    Name        = "this_bucket"
  }
}
