resource "azurerm_resource_group" "migs" {
  name     = var.resource_group_name
  location = var.location
  tags     = var.tags
}

data "azurerm_key_vault" "devops" {
  provider            = azurerm.hub
  name                = var.keyvault_001_name
  resource_group_name = var.resource_group_devops_name
}

data "azurerm_key_vault_secret" "linuxuseradmin" {
  provider     = azurerm.hub
  name         = var.secret_linuxuseradmin
  key_vault_id = data.azurerm_key_vault.devops.id
}

data "azurerm_key_vault_secret" "linuxpassadmin" {
  provider     = azurerm.hub
  name         = var.secret_linuxpassadmin
  key_vault_id = data.azurerm_key_vault.devops.id
}

data "azurerm_virtual_network" "vnet" {
  name                = var.vnet_001_name
  resource_group_name = var.resource_group_netw_name
}

data "azurerm_subnet" "snet" {
  for_each             = { for idx, subnet in local.subnet_data_list : idx => subnet }
  name                 = each.value
  resource_group_name  = var.resource_group_netw_name
  virtual_network_name = data.azurerm_virtual_network.vnet.name
}

data "azurerm_network_security_group" "nsg" {
  for_each            = { for idx, nsg in local.nsg_data_list : idx => nsg }
  name                = each.value
  resource_group_name = var.resource_group_netw_name
}

module "vm_linux" {
  for_each            = { for vm_linux in local.vm_linux_list : vm_linux.name => vm_linux }
  source              = "../../../../modules/az_vm_linux"
  vm_info             = each.value
  resource_group_name = azurerm_resource_group.migs.name
  location            = var.location
  tags                = var.tags
}
