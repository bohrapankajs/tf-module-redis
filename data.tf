data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = "mysecond-bucket-01"
    key    = "vpc/${var.ENV}/terraform.tfstate"
    region = "us-east-1"
  }
}