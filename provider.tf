terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  access_key = "AKIAWHMK2NNVHACQBDHG"
  secret_key = "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"
} 