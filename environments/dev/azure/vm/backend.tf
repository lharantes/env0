terraform {
  backend "azurerm" {
    subscription_id      = "subscriptionId"
    resource_group_name  = "resourcegroupname"
    storage_account_name = "storageaccount_name"
    container_name       = "tfstate"
    key                  = "vm.tfstate"
  }
}
