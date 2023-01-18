module "managed-ad" {
  source = "../../modules/managed-ad"

  ds_managed_ad_directory_name = var.ad_directory_name
  ds_managed_ad_short_name     = var.ad_short_name
  ds_managed_ad_edition        = var.ad_edition
  ds_managed_ad_secret_key     = var.ad_kms_key
  ds_managed_ad_vpc_id         = var.vpc_id
  ds_managed_ad_subnet_ids     = var.subnet_ids
}