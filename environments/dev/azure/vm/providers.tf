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
  subscription_id = "subscription_id"
  features {}
}

provider "azurerm" {
  alias           = "hub"
  subscription_id = "subscription_id"
  features {}
}
