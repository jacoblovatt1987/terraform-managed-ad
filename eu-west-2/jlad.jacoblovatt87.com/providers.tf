# Configure the AWS Providers
provider "aws" {
  region = "${var.aws_region}"
  profile = "${var.profile_name}"
  #alias = "homelab"

  assume_role {
    
  }
}