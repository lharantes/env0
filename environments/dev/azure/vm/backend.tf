terraform {
  backend "azurerm" {
    subscription_id      = var.subscription-id
    resource_group_name  = var.resource_group_name
    storage_account_name = var.storageaccountname
    container_name       = "tfstate"
    key                  = "vm.tfstate"
  }
}
