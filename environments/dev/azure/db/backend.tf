terraform {
  backend "azurerm" {
    subscription_id      = "<subscription_id>"
    resource_group_name  = "resourcegroup_name"
    storage_account_name = "storageaccount_name"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}
