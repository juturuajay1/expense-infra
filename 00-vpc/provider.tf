terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.84.0"
    }
  }

  backend "s3" {
    
    bucket = "82s-ajayreddy-tf-state-dev"
    key    = "expense-dev-eks-vpc" # you should have unique keys within the bucket, same key should not be used other repos or tf project.
    region = "us-east-1"
    dynamodb_table = "82s-ajayreddy-tf-state-dev"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}
