provider "aws" {
  region  = "ap-southeast-1"
  profile = "terraform"
}

module "aws_s3" {
  source  = "../../modules/aws_s3"
  project = "myprivatetestbucket"
  acl     = "private"
  entity  = "self"
  env     = "testing"
}
