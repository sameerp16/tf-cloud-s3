terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.65.0"
    }
  }
}
provider "aws" {
  region = "us-east-1"
}

resource "random_id" "rand_id" {
    byte_length =10
}
resource "aws_s3_bucket" "demo-bucket" {
  bucket = "tf-cloud-${random_id.rand_id.hex}"
}