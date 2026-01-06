resource "aws_s3_bucket" "remote_backend" {
  bucket = "terraform-remote-state-bucket-use1-12345"

  tags = {
    Name = "remote-s3-storage-for-terraform-tfstate-file"
  }
}
