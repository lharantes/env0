terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.7.0"
    }
  }
  required_version = "=1.9.0"
}

provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
  use_oidc = true
}