module "aft" {
  source = "github.com/aws-ia/terraform-aws-control_tower_account_factory.git"

  # Required Parameters
  ct_management_account_id    = "850516820997"
  log_archive_account_id      = "449948395722"
  audit_account_id            = "069001099679"
  aft_management_account_id   = "804448413129"
  ct_home_region              = "eu-west-1"
  tf_backend_secondary_region = "eu-west-2"

  # Optional Parameters
  terraform_distribution = "oss"
  vcs_provider           = "codecommit"

  # Optional Feature Flags
  aft_feature_delete_default_vpcs_enabled = false
  aft_feature_cloudtrail_data_events      = false
  aft_feature_enterprise_support          = false
}
