variable "ad_directory_name" {
  description = "FQDN of Active Directory"
  type        = string
  default     = "jlad.jacoblovatt87.com"
}

variable "ad_short_name" {
  description = "Short name of Active Directory e.g. CORP"
  type        = string
  default     = "JLAD"
}

variable "ad_edition" {
  type        = string
  default     = "Standard"
  description = "The AWS Managed Microsoft AD edition: Enterprise or Standard (default)"
  validation {
    condition     = contains(["Enterprise", "Standard"], var.ad_edition)
    error_message = "The edition value must be Enterprise or Standard."
  }
}

variable "ad_kms_key" {
    type = string
    default = "be033c7e-cb07-4218-a7bf-d40bb1f40d3b"
    description = "KMS Key used to encrypt managed ad password"
}

variable "vpc_id" {
  description = "vpc_ids"
  type        = string
  default     = "vpc-043cb2c7eb6fb78c7"
}

variable "subnet_ids" {
  description = "Subnet ids for AD Domain Controllers"
  type        = list(string)
  default     = ["subnet-084758753678737a4", "subnet-08f2bc8a331418403"]
}


variable "aws_region" {
  description = "AWS Region to Deploy resources into"
  type        = string
  default     = "eu-west-2"
}

variable "profile_name" {
  description = "AWS Profile Name"
  type        = string
  default     = "HomeLab-AWSAdministratorAccess"
}
