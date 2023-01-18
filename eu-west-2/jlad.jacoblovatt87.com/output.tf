output "account_id" {
  value = data.aws_caller_identity.current.account_id
}

output "caller_arn" {
  value = data.aws_caller_identity.current.arn
}

output "caller_user_id" {
  value = data.aws_caller_identity.current.id
}

output "caller_user" {
  value = data.aws_caller_identity.current.user_id
}

output "aws_region" {
  value = data.aws_region.current.name
}


#######################################################
output "ds_managed_ad_id" {
  value = module.managed-ad.ds_managed_ad_id
}

output "ds_managed_ad_ips" {
  value = module.managed-ad.ds_managed_ad_ips
}

output "managed_ad_password_secret_id" {
  value = module.managed-ad.managed_ad_password_secret_id
}