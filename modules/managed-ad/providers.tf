terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configure the AWS Providers
provider "aws" {
  region = "${var.aws_region}"
  profile = "${var.profile_name}"
  alias = "default"

  assume_role {
    
  }
}