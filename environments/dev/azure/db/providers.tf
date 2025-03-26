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
  features {}
  use_oidc = true
}