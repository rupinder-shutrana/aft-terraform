module "sandbox_account_01" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = "rsa.terrafrom.acc@gmail.com"
    AccountName  = "first-aft-request"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail     = "rsa.terrafrom.acc@gmail.com"
    SSOUserFirstName = "Lahari"
    SSOUserLastName  = "Lahari"
  }

  account_tags = {
    "Purpose" = "POC"
  }

  change_management_parameters = {
    change_requested_by = "Lahiri"
    change_reason       = "testing the account vending process"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "non-prod-sandbox-customization"
}

module "rsa_prod_account" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = "rsa.prod.controltower@gmail.com"
    AccountName  = "rsa-prod"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail     = "rsa.prod.controltower@gmail.com"
    SSOUserFirstName = "Lahari"
    SSOUserLastName  = "Lahari"
  }

  account_tags = {
    "Purpose" = "POC"
  }

  change_management_parameters = {
    change_requested_by = "Lahiri"
    change_reason       = "testing the account vending process"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "non-prod-sandbox-customization"
}


