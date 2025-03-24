locals {
  subnet_data_list = [var.subnet_001_name, var.subnet_002_name, var.subnet_003_name]

  aks_001_custer = merge(
    var.aks_001_custer,
    {
      dnf_vnet_subnet_id        = data.azurerm_subnet.snet[0].id,
      node_pool_list            = var.aks_001_node_pool_list
      role_based_access_control = var.aks_001_role_based_access_control
    }
  )
  aks_002_custer = merge(
    var.aks_002_custer,
    {
      dnf_vnet_subnet_id        = data.azurerm_subnet.snet[1].id,
      node_pool_list            = var.aks_002_node_pool_list
      role_based_access_control = var.aks_002_role_based_access_control
    }
  )
  aks_003_custer = merge(
    var.aks_003_custer,
    {
      dnf_vnet_subnet_id        = data.azurerm_subnet.snet[1].id,
      node_pool_list            = var.aks_003_node_pool_list
      role_based_access_control = var.aks_003_role_based_access_control
    }
  )
  aks_004_custer = merge(
    var.aks_004_custer,
    {
      dnf_vnet_subnet_id        = data.azurerm_subnet.snet[1].id,
      node_pool_list            = var.aks_004_node_pool_list
      role_based_access_control = var.aks_004_role_based_access_control
    }
  )
  aks_005_custer = merge(
    var.aks_005_custer,
    {
      dnf_vnet_subnet_id        = data.azurerm_subnet.snet[2].id,
      node_pool_list            = var.aks_005_node_pool_list
      role_based_access_control = var.aks_005_role_based_access_control
    }
  )
  aks_cluster_list = [local.aks_001_custer, local.aks_002_custer, local.aks_003_custer, local.aks_004_custer, local.aks_005_custer]

  # aks_001_storage_class_list = [var.aks_001_storage_class_001]
}
