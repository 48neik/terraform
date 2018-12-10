
resource "aws_s3_bucket" "s3_bucket" {
  bucket = "${var.entity}-${var.project}-${var.env}"
  acl    = "${var.acl}"
  region = "${var.region}"

  versioning {
    enabled = "${var.versioning}"
  }

#  server_side_encryption_configuration {
#    rule {
#      apply_server_side_encryption_by_default {
#        kms_master_key_id = "${var.kms_key_arn}"
#        sse_algorithim    = "aws:kms"
#      }
#    }
#  }

  tags{
    Name        = "${var.entity}-${var.project}-${var.env}"
    Environment = "${var.env}"
    Entity      = "${var.entity}"
  }
}
