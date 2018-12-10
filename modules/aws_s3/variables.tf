
variable "entity" {}
variable "env" {}
variable "project" {}
# variable "kms_key_arn" {}

variable "region" {
  type    = "string"
  default = "ap-southeast-1"
}

variable "versioning" {
  default = false
}

variable "acl" {
  type    = "string"
  default = "private"
}
