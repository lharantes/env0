terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.75.0"
    }
  }
  required_version = "=1.9.0"
}

provider "azurerm" {
  subscription_id = "e5d27943-bdd4-40e7-9029-2ae768aa4511"
  features {}
}