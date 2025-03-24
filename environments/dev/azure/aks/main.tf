resource "azurerm_resource_group" "aks" {
  name     = var.resource_group_name
  location = var.location
  tags     = var.tags
}

data "azurerm_virtual_network" "netw" {
  name                = var.vnet_001_name
  resource_group_name = var.resource_group_netw
}

data "azurerm_subnet" "snet" {
  for_each             = { for idx, subnet in local.subnet_data_list : idx => subnet }
  name                 = each.value
  resource_group_name  = data.azurerm_virtual_network.netw.resource_group_name
  virtual_network_name = data.azurerm_virtual_network.netw.name
}

module "kubernetes" {
  for_each                       = { for aks_cluster in local.aks_cluster_list : aks_cluster.name => aks_cluster }
  source                         = "../../../modules/az_kubernetes_service"
  name                           = each.value.name
  location                       = var.location
  resource_group_name            = azurerm_resource_group.aks.name
  dns_prefix                     = each.value.dns_prefix
  private_cluster_enabled        = each.value.private_cluster_enabled
  node_resource_group            = each.value.node_resource_group
  sku_tier                       = each.value.sku_tier
  private_dns_zone_id            = each.value.private_dns_zone_id
  kubernetes_version             = each.value.kubernetes_version
  dnf_name                       = each.value.dnf_name
  dnf_node_count                 = each.value.dnf_node_count
  dnf_vm_size                    = each.value.dnf_vm_size
  dnf_os_disk_size_gb            = each.value.dnf_os_disk_size_gb
  dnf_os_disk_type               = each.value.dnf_os_disk_type
  dnf_availability_zones         = each.value.dnf_availability_zones
  dnf_vnet_subnet_id             = each.value.dnf_vnet_subnet_id
  np_network_plugin              = each.value.np_network_plugin
  np_network_policy              = each.value.np_network_policy
  np_load_balancer_sku           = each.value.np_load_balancer_sku
  idt_type                       = each.value.idt_type
  idt_user_assigned_identity_id  = each.value.idt_user_assigned_identity_id
  oms_enabled                    = each.value.oms_enabled
  oms_log_analytics_workspace_id = each.value.oms_log_analytics_workspace_id
  node_pool_list                 = each.value.node_pool_list
  role_based_access_control      = each.value.role_based_access_control
  tags                           = var.tags
}

# resource "kubernetes_storage_class" "stgclass" {
#   for_each = { for aks_storage_class in local.aks_001_storage_class_list : aks_storage_class.name => aks_storage_class }
#   provider = kubernetes.aksappdev01
#   metadata {
#     name = each.value.name
#   }
#   storage_provisioner = each.value.storage_provisioner
#   reclaim_policy      = each.value.reclaim_policy
#   parameters = {
#     type = each.value.parameters["type"]
#   }
#   mount_options = each.value.mount_options
# }

# resource "kubernetes_persistent_volume" "pvolume" {
#   for_each = { for aks_001_pv in var.aks_001_pv_list : aks_001_pv.name => aks_001_pv }
#   provider = kubernetes.aksappdev01
#   metadata {
#     name = each.value.name
#   }
#   spec {
#     capacity = {
#       storage = each.value.storage
#     }
#     access_modes       = each.value.access_modes
#     storage_class_name = each.value.storage_class_name
#     volume_mode        = each.value.volume_mode
#     persistent_volume_source {
#       vsphere_volume {
#         volume_path = each.value.volume_path
#       }
#     }
#   }
# }
# resource "kubernetes_persistent_volume_claim" "pvc" {
#   for_each = { for aks_001_pvc in var.aks_001_pvc_list : aks_001_pvc.name => aks_001_pvc }
#   provider = kubernetes.aksappdev01
#   metadata {
#     name = each.value.name
#   }
#   spec {
#     access_modes = each.value.access_modes
#     resources {
#       requests = {
#         storage = each.value.resources.requests["storage"]
#       }
#       limits = {
#         storage = each.value.resources.limits["storage"]
#       }
#     }
#     storage_class_name = each.value.storage_class_name
#     volume_name        = each.value.volume_name
#   }
# }
# resource "kubernetes_namespace" "namespace" {
#   for_each = { for aks_001_namespace in var.aks_001_namespace_list : aks_001_namespace.metadata["name"] => aks_001_namespace }
#   provider = kubernetes.aksappdev01
#   metadata {
#     name = each.value.metadata["name"]
#   }
# }
