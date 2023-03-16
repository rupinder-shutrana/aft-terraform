data "aws_identitystore_group" "sso_group" {
  identity_store_id = var.identity_store_id
  group_id = "9295f444-a0e1-702e-cbcd-b442a00e38b8"
}