terraform {
  backend "azurerm" {
    subscription_id      = var.subscription_id
    resource_group_name  = var.resource_group_name
    storage_account_name = var.storageaccount_name
    container_name       = "tfstate"
    key                  = "xyz-vm.tfstate"
  }
}
