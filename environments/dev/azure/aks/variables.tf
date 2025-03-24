variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}
variable "resource_group_netw" {
  description = "The name of the resource group"
  type        = string
}
variable "location" {
  description = "The Azure Region where the Resource Group should exist."
  type        = string
}
variable "tags" {
  description = "A mapping of tags"
  type        = map(string)
}
variable "vnet_001_name" {
  description = "The name of the virtual network"
  type        = string
}
variable "subnet_001_name" {
  description = "The name of the subnet"
  type        = string
}
variable "subnet_002_name" {
  description = "The name of the subnet"
  type        = string
}
variable "subnet_003_name" {
  description = "The name of the subnet"
  type        = string
}
variable "aks_001_custer" {
  description = "An object with all AKS settings and parameters"
  type = object(
    {
      name                           = string
      dns_prefix                     = string
      private_cluster_enabled        = bool
      node_resource_group            = string
      sku_tier                       = string
      private_dns_zone_id            = string
      kubernetes_version             = string
      dnf_name                       = string
      dnf_node_count                 = number
      dnf_vm_size                    = string
      dnf_os_disk_size_gb            = number
      dnf_os_disk_type               = string
      dnf_availability_zones         = list(string)
      dnf_vnet_subnet_id             = string
      np_network_plugin              = string
      np_network_policy              = string
      np_load_balancer_sku           = string
      idt_type                       = string
      idt_user_assigned_identity_id  = string
      oms_enabled                    = bool
      oms_log_analytics_workspace_id = string
    }
  )
}
variable "aks_002_custer" {
  description = "An object with all AKS settings and parameters"
  type = object(
    {
      name                           = string
      dns_prefix                     = string
      private_cluster_enabled        = bool
      node_resource_group            = string
      sku_tier                       = string
      private_dns_zone_id            = string
      kubernetes_version             = string
      dnf_name                       = string
      dnf_node_count                 = number
      dnf_vm_size                    = string
      dnf_os_disk_size_gb            = number
      dnf_os_disk_type               = string
      dnf_availability_zones         = list(string)
      dnf_vnet_subnet_id             = string
      np_network_plugin              = string
      np_network_policy              = string
      np_load_balancer_sku           = string
      idt_type                       = string
      idt_user_assigned_identity_id  = string
      oms_enabled                    = bool
      oms_log_analytics_workspace_id = string
    }
  )
}
variable "aks_003_custer" {
  description = "An object with all AKS settings and parameters"
  type = object(
    {
      name                           = string
      dns_prefix                     = string
      private_cluster_enabled        = bool
      node_resource_group            = string
      sku_tier                       = string
      private_dns_zone_id            = string
      kubernetes_version             = string
      dnf_name                       = string
      dnf_node_count                 = number
      dnf_vm_size                    = string
      dnf_os_disk_size_gb            = number
      dnf_os_disk_type               = string
      dnf_availability_zones         = list(string)
      dnf_vnet_subnet_id             = string
      np_network_plugin              = string
      np_network_policy              = string
      np_load_balancer_sku           = string
      idt_type                       = string
      idt_user_assigned_identity_id  = string
      oms_enabled                    = bool
      oms_log_analytics_workspace_id = string
    }
  )
}
variable "aks_004_custer" {
  description = "An object with all AKS settings and parameters"
  type = object(
    {
      name                           = string
      dns_prefix                     = string
      private_cluster_enabled        = bool
      node_resource_group            = string
      sku_tier                       = string
      private_dns_zone_id            = string
      kubernetes_version             = string
      dnf_name                       = string
      dnf_node_count                 = number
      dnf_vm_size                    = string
      dnf_os_disk_size_gb            = number
      dnf_os_disk_type               = string
      dnf_availability_zones         = list(string)
      dnf_vnet_subnet_id             = string
      np_network_plugin              = string
      np_network_policy              = string
      np_load_balancer_sku           = string
      idt_type                       = string
      idt_user_assigned_identity_id  = string
      oms_enabled                    = bool
      oms_log_analytics_workspace_id = string
    }
  )
}
variable "aks_005_custer" {
  description = "An object with all AKS settings and parameters"
  type = object(
    {
      name                           = string
      dns_prefix                     = string
      private_cluster_enabled        = bool
      node_resource_group            = string
      sku_tier                       = string
      private_dns_zone_id            = string
      kubernetes_version             = string
      dnf_name                       = string
      dnf_node_count                 = number
      dnf_vm_size                    = string
      dnf_os_disk_size_gb            = number
      dnf_os_disk_type               = string
      dnf_availability_zones         = list(string)
      dnf_vnet_subnet_id             = string
      np_network_plugin              = string
      np_network_policy              = string
      np_load_balancer_sku           = string
      idt_type                       = string
      idt_user_assigned_identity_id  = string
      oms_enabled                    = bool
      oms_log_analytics_workspace_id = string
    }
  )
}
variable "aks_001_node_pool_list" {
  description = "An object with all AKS node pools settings and parameters"
  type = list(object(
    {
      name       = string
      vm_size    = string
      node_count = number
    }
  ))
  default = []
}
variable "aks_002_node_pool_list" {
  description = "An object with all AKS node pools settings and parameters"
  type = list(object(
    {
      name       = string
      vm_size    = string
      node_count = number
    }
  ))
  default = []
}
variable "aks_003_node_pool_list" {
  description = "An object with all AKS node pools settings and parameters"
  type = list(object(
    {
      name       = string
      vm_size    = string
      node_count = number
    }
  ))
  default = []
}
variable "aks_004_node_pool_list" {
  description = "An object with all AKS node pools settings and parameters"
  type = list(object(
    {
      name       = string
      vm_size    = string
      node_count = number
    }
  ))
  default = []
}
variable "aks_005_node_pool_list" {
  description = "An object with all AKS node pools settings and parameters"
  type = list(object(
    {
      name       = string
      vm_size    = string
      node_count = number
    }
  ))
  default = []
}
# variable "aks_001_storage_class_001" {
#   description = "An object with all AKS Storage Class settings and parameters"
#   type = object(
#     {
#       name                = string
#       storage_provisioner = string
#       reclaim_policy      = string
#       parameters = object(
#         {
#           type = string
#         }
#       )
#       mount_options = list(string)
#     }
#   )
# }
# variable "aks_001_pv_list" {
#   description = "An object with all AKS Persistent Volume settings and parameters"
#   type = list(object(
#     {
#       storage_class_name = string
#       volume_mode        = string
#       name               = string
#       storage            = string
#       access_modes       = list(string)
#       volume_path        = string
#     }
#   ))
#   default = []
# }
# variable "aks_001_pvc_list" {
#   description = "An object with all AKS Persistent Volume Claim settings and parameters"
#   type = list(object(
#     {
#       name         = string
#       access_modes = list(string)
#       resources = object(
#         {
#           requests = object(
#             {
#               storage = string
#             }
#           )
#           limits = object(
#             {
#               storage = string
#             }
#           )
#         }
#       )
#       volume_name        = string
#       storage_class_name = string
#     }
#   ))
#   default = []
# }
variable "aks_001_role_based_access_control" {
  description = "An object with all the RBAC information"
  type = list(object(
    {
      enabled = bool
      azure_active_directory = object(
        {
          managed                = bool
          admin_group_object_ids = list(string)
          azure_rbac_enabled     = bool
        }
      )
    }
  ))
  default = []
}
variable "aks_002_role_based_access_control" {
  description = "An object with all the RBAC information"
  type = list(object(
    {
      enabled = bool
      azure_active_directory = object(
        {
          managed                = bool
          admin_group_object_ids = list(string)
          azure_rbac_enabled     = bool
        }
      )
    }
  ))
  default = []
}
variable "aks_003_role_based_access_control" {
  description = "An object with all the RBAC information"
  type = list(object(
    {
      enabled = bool
      azure_active_directory = object(
        {
          managed                = bool
          admin_group_object_ids = list(string)
          azure_rbac_enabled     = bool
        }
      )
    }
  ))
  default = []
}
variable "aks_004_role_based_access_control" {
  description = "An object with all the RBAC information"
  type = list(object(
    {
      enabled = bool
      azure_active_directory = object(
        {
          managed                = bool
          admin_group_object_ids = list(string)
          azure_rbac_enabled     = bool
        }
      )
    }
  ))
  default = []
}
variable "aks_005_role_based_access_control" {
  description = "An object with all the RBAC information"
  type = list(object(
    {
      enabled = bool
      azure_active_directory = object(
        {
          managed                = bool
          admin_group_object_ids = list(string)
          azure_rbac_enabled     = bool
        }
      )
    }
  ))
  default = []
}
# variable "aks_001_namespace_list" {
#   description = ""
#   type = list(object(
#     {
#       metadata = object(
#         {
#           name        = string
#           annotations = map(string)
#           labels      = map(string)

#         }
#       )
#     }
#   ))
#   default = []
# }
