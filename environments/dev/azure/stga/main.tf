resource "azurerm_resource_group" "xyz" {
  name     = var.resource_group_name
  location = var.location
  tags     = var.tags
}

module "storage_account" {
  for_each                 = { for storage_account in var.storage_account_list : storage_account.storage_name => storage_account }
  source                   = "../../../modules/az_storage_account"
  storage_name             = each.value.storage_name
  resource_group_name      = azurerm_resource_group.xyz.name
  location                 = azurerm_resource_group.xyz.location
  storage_tier             = each.value.storage_tier
  storage_replication_type = each.value.storage_replication_type
  allow_blob_public_access = each.value.allow_blob_public_access
  min_tls                  = each.value.min_tls
  account_kind             = each.value.account_kind
  container_list           = each.value.container_list
  tags                     = var.tags
}
