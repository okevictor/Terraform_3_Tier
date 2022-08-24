terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure s3 backend to store .tfstate file safely
terraform {
  backend "s3" {
    bucket = "terraformstate-victor"
    key    = "terraformstate-victor/dev-3-tier"
    region = "us-east-1"
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}