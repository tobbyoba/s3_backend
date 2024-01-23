terraform {
  backend "s3" {
    bucket  = "bootcamp32-staging-201"
    region  = "us-east-1"
    key     = "oidc/terraform.tfstate"
    encrypt = "true"
  }
}
