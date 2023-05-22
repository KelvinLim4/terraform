resource "aws_s3_bucket" "dev4" {
  bucket = "rmerceslabs-dev4-kelvinho"

  tags = {
    Name        = "rmerceslabs-dev4"
  }
}