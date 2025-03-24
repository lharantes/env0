output "vnet_id" {
  value = data.azurerm_virtual_network.vnet.id
}

output "vnet_guid" {
  value = data.azurerm_virtual_network.vnet.guid
}

output "snet_id" {
  value = {
    for key, value in data.azurerm_subnet.snet :
    key => value.id
  }
  description = "The subnet ID"
}
