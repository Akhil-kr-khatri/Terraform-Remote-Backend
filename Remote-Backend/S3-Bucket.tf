resource "aws_s3_bucket" "remote_backend" {
  bucket = "terraform-remote-state-bucket-terraform.tfstate"

  tags = {
    Name = "remote-s3-storage"
  }
}
