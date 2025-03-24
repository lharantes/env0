resource_group_name        = "resourcegroup_name"
resource_group_netw_name   = "resourcenetw_name"
resource_group_devops_name = "rgdevops_name"
location                   = "North Europe"
vnet_001_name              = "besd-it-dev-vnet"
subnet_001_name            = "besd-it-dev-snet-db"
nsg_001_name               = "besd-it-dev-nsg-db"
vm_config_001 = {
  name = "vmldbmigsdev01"
  size = "Standard_E8as_v4"
  zone = null
  boot_diagnostics = {
    storage_account_uri = null
  }
  authentication_type = "password" #password/publicKey
  admin_ssh_key = {
    public_key = null #local
    username   = null #local
    password   = null #local
  }
  os_disk = {
    "caching"                   = "None"
    "disk_encryption_set_id"    = null
    "disk_size_gb"              = 32
    "name"                      = "vmldbmigsdev01-OsDisk"
    "storage_account_type"      = "StandardSSD_LRS"
    "write_accelerator_enabled" = false
  }
  image = {
    "publisher" = "Oracle"
    "offer"     = "Oracle-Linux"
    "sku"       = "ol79-lvm-gen2"
    "version"   = "latest"
  }
  additional_capabilities = {
    "ultra_ssd_enabled" = false
  }
  manage_identity_info = {
    "type"         = "SystemAssigned"
    "identity_ids" = []
  }
  nic_info = [
    {
      nic_name             = null #local
      ip_config_name       = null #local
      private_ip_address   = null #local
      subnet_id            = null #local
      dns_servers          = null #local
      enable_ip_forwarding = null #local
      ip_allocation        = null #local
    }
  ]
  disks_list = [
    {
      caching              = "ReadOnly"
      create_option        = "Empty"
      disk_iops_read_write = null
      disk_size_gb         = 64
      lun                  = 0
      name                 = "vmldbmigsdev01-data-01"
      storage_account_type = "StandardSSD_LRS"
      zones                = []
    },
    {
      caching              = "ReadOnly"
      create_option        = "Empty"
      disk_iops_read_write = null
      disk_size_gb         = 64
      lun                  = 1
      name                 = "vmldbmigsdev01-data-02"
      storage_account_type = "StandardSSD_LRS"
      zones                = []
    }
  ]
}
keyvault_001_name     = "fibrasil-it-hub-kv-01"
secret_linuxuseradmin = "linuxuseradmin"
secret_linuxpassadmin = "linuxpassadmin"
tags = {
  "ManagedBy" = "Terraform"
}
