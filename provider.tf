terraform {

 backend "s3" {
   bucket = "datascientest-bucket-terraform-s3-surabhi" # the bucket created is instead called datascientest-bucket
   key = "terraform.tfstate" # the file in the bucket that will guarantee the infrastructure's state
   region = "eu-west-3" # the region where the bucket is located
   access_key = " "
  secret_key = " " 
 }

  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region     = var.region
  access_key = var.access_key
  secret_key = var.secret_key
}