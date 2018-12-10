terraform {
  backend "s3" {
    bucket  = "my-terraform-remote-state-file"
    key     = "test/s3"
    encrypt = "true"
    region  = "ap-southeast-1"
  }
}
