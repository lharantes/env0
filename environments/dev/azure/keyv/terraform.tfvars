resource_group_name        = "rg-ne-xyz-vm"
storageaccount_name        = "stnexyzenv0test1"
location                   = "North Europe"
storage_account_list = [
  {
    storage_name             = "fibrasilithubst001"
    storage_tier             = "Standard"
    storage_replication_type = "LRS"
    allow_blob_public_access = true
    min_tls                  = "TLS1_2"
    account_kind             = "StorageV2"
    container_list = [
      {
        name                  = "tfstate"
        container_access_type = "container"
      }
    ]
  }
]
key_vault_list = [
  {
    name                        = "fibrasil-it-hub-kv-01"
    enabled_for_disk_encryption = false
    soft_delete_retention_days  = 90
    purge_protection_enabled    = false
    sku_name                    = "standard"
  }
]
tags = {
  "ManagedBy" = "Terraform"
}