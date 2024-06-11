terraform {
  backend "s3" {
    bucket = "zivver-bucket" # Provide the actual S3 bucket name created in console
    key    = "zivver-jenkins/terraform.tfstate"
    region = "ap-south-1"
  }
}
