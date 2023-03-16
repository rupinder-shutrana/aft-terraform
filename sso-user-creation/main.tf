resource "aws_identitystore_user" "sso_user" {
  identity_store_id = var.identity_store_id

  display_name = var.display_name
  user_name    = var.user_name

  name {
    given_name  = var.given_name
    family_name = var.family_name
  }

  emails {
    value = var.emails
  }
}
resource "aws_identitystore_group_membership" "sso_user_membership" {
  identity_store_id = var.identity_store_id
  group_id          = var.group_id
  member_id         = aws_identitystore_user.sso_user.user_id
}