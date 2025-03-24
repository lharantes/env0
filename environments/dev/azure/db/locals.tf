locals {
  subnet_data_list = [var.subnet_001_name]

  postgresql_001 = merge(
    var.postgresql_001,
    {
      administrator_login          = data.azurerm_key_vault_secret.linuxuseradmindb.value,
      administrator_login_password = data.azurerm_key_vault_secret.linuxpassadmindb.value
    }
  )

  postresql_list = [local.postgresql_001]

  private_endpoint_001 = merge(
    var.private_endpoint_001,
    {
      "name"                               = "${var.postgresql_001.name}-pep"
      "subnet_id"                          = data.azurerm_subnet.snet[0].id
      "psc_name"                           = "${var.postgresql_001.name}-pep"
      "psc_private_connection_resource_id" = module.postgresql[local.postresql_list[0].name].postgresql_id
    }
  )

  private_endpoint_list = [local.private_endpoint_001]
}
