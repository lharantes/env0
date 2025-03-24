locals {
  subnet_data_list = [var.subnet_001_name]
  nsg_data_list    = [var.nsg_001_name]

  vm_config_001 = merge(
    var.vm_config_001,
    {
      admin_ssh_key = {
        public_key = file("./../../../certificates/besduser.pub")
        username   = data.azurerm_key_vault_secret.linuxuseradmin.value
        password   = data.azurerm_key_vault_secret.linuxpassadmin.value
      }
    },
    {
      nic_info = [
        {
          nic_name             = "${var.vm_config_001.name}-nic"
          ip_config_name       = "internal"
          private_ip_address   = cidrhost(data.azurerm_subnet.snet[0].address_prefixes[0], 21)
          subnet_id            = data.azurerm_subnet.snet[0].id
          dns_servers          = []
          enable_ip_forwarding = false
          ip_allocation        = "Static"
        }
      ]
    }
  )

  vm_linux_list = [local.vm_config_001]
}
