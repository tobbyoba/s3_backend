module "s3" {
    source = "git@github.com:tobbyoba/GitAction_s3_backend.git//s3-bucket?ref=v1.2.0"
  
}
provider "aws" {
    region = "us-east-1"
  
}
#
terraform {
  backend "s3" {
    bucket  = "toba-bucket"
    region  = "us-east-1"
    key     = "s3/terraform.tfstate"
    encrypt = "true"
  }
}
