terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.48.0"
    }
  }
  backend "s3" {
    bucket = "daws78sy-remote-state"
    key    = "expense-dev-sg"
    region = "us-east-1"
    dynamodb_table = "daws78sy-locking"
  }
} 

#provide authentication here
provider "aws" {
  region = "us-east-1"
}