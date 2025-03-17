# Terraform Settings Block
terraform {
  required_version = "~> 1.4" # Ensures Terraform version compatibility

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.0" # Minimum version of AWS provider required
    }
  }
}

# AWS Provider Block (Default)
provider "aws" {
  region = "us-east-1"
}

# AWS Provider Block (Aliased for another region)
provider "aws" {
  alias  = "west"
  region = "us-west-1"
}

# Google Cloud Provider Block
provider "google" {
  project = "my-gcp-project"
  region  = "us-central1"
}

# Resource using default AWS provider
resource "aws_s3_bucket" "default_bucket" {
  bucket = "my-default-bucket"
}

# Resource using aliased AWS provider
resource "aws_s3_bucket" "west_bucket" {
  provider = aws.west
  bucket   = "my-west-bucket"
}


