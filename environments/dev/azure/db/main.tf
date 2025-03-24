resource "azurerm_resource_group" "am" {
  name     = var.resource_group_name
  location = var.location
  tags     = var.tags
}

data "azurerm_key_vault" "devops" {
  provider            = azurerm.hub
  name                = var.keyvault_001_name
  resource_group_name = var.resource_group_devops_name
}

data "azurerm_key_vault_secret" "linuxuseradmindb" {
  provider     = azurerm.hub
  name         = var.secret_linuxuseradmindb
  key_vault_id = data.azurerm_key_vault.devops.id
}

data "azurerm_key_vault_secret" "linuxpassadmindb" {
  provider     = azurerm.hub
  name         = var.secret_linuxpassadmindb
  key_vault_id = data.azurerm_key_vault.devops.id
}

data "azurerm_virtual_network" "netw" {
  name                = var.vnet_001_name
  resource_group_name = var.resource_group_netw_name
}

data "azurerm_subnet" "snet" {
  for_each             = { for idx, subnet in local.subnet_data_list : idx => subnet }
  name                 = each.value
  resource_group_name  = var.resource_group_netw_name
  virtual_network_name = data.azurerm_virtual_network.netw.name
}

module "postgresql" {
  for_each                         = { for postresql in local.postresql_list : postresql.name => postresql }
  source                           = "../../../modules/az_database_postgresql"
  name                             = each.value.name
  location                         = var.location
  resource_group_name              = azurerm_resource_group.am.name
  administrator_login              = each.value.administrator_login
  administrator_login_password     = each.value.administrator_login_password
  sku_name                         = each.value.sku_name
  db_version                       = each.value.db_version
  storage_mb                       = each.value.storage_mb
  backup_retention_days            = each.value.backup_retention_days
  geo_redundant_backup_enabled     = each.value.geo_redundant_backup_enabled
  auto_grow_enabled                = each.value.auto_grow_enabled
  public_network_access_enabled    = each.value.public_network_access_enabled
  ssl_enforcement_enabled          = each.value.ssl_enforcement_enabled
  ssl_minimal_tls_version_enforced = each.value.ssl_minimal_tls_version_enforced
  tags                             = var.tags
}

module "private_endpoints" {
  for_each                           = { for private_endpoint in local.private_endpoint_list : private_endpoint.name => private_endpoint }
  source                             = "../../../modules/az_network_private_endpoint"
  name                               = each.value.name
  location                           = var.location
  resource_group_name                = azurerm_resource_group.am.name
  subnet_id                          = each.value.subnet_id
  psc_name                           = each.value.psc_name
  psc_private_connection_resource_id = each.value.psc_private_connection_resource_id
  psc_subresource_names              = each.value.psc_subresource_names
  psc_is_manual_connection           = each.value.psc_is_manual_connection
  tags                               = var.tags
}
