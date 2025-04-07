resource "azurerm_resource_group" "xyz" {
  name     = var.resource_group_name
  location = var.location
  tags     = var.tags
}

resource "azurerm_key_vault" "vault" {
  for_each                    = { for key_vault in var.key_vault_list : key_vault.name => key_vault }
  name                        = each.value.name
  resource_group_name         = azurerm_resource_group.devops.name
  location                    = azurerm_resource_group.devops.location
  enabled_for_disk_encryption = each.value.enabled_for_disk_encryption
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days  = each.value.soft_delete_retention_days
  purge_protection_enabled    = each.value.purge_protection_enabled
  sku_name                    = each.value.sku_name
  tags                        = var.tags
}
