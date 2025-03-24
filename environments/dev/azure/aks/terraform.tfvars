resource_group_name = "<resourcegroup_name>"
resource_group_netw = "<resourcegroupnetw_name>"
location            = "North Europe"
vnet_001_name       = "besd-it-dev-vnet"
subnet_001_name     = "besd-it-dev-snet-app"
subnet_002_name     = "besd-it-dev-snet-aks"
subnet_003_name     = "besd-it-dev-snet-k8s"
aks_001_custer = {
  name                           = "aksappdev01"
  dns_prefix                     = "env0-aks"
  private_cluster_enabled        = false
  node_resource_group            = "BESD-IT-DEV-APP-AKS-INT-RG"
  sku_tier                       = "Free"
  private_dns_zone_id            = null
  kubernetes_version             = "1.21.2"
  dnf_name                       = "default"
  dnf_node_count                 = 7
  dnf_vm_size                    = "Standard_E4as_v4"
  dnf_os_disk_size_gb            = 256
  dnf_os_disk_type               = "Managed"
  dnf_availability_zones         = []
  dnf_vnet_subnet_id             = null
  np_network_plugin              = "azure"
  np_network_policy              = "azure"
  np_load_balancer_sku           = "standard"
  idt_type                       = "SystemAssigned"
  idt_user_assigned_identity_id  = null
  oms_enabled                    = true
  oms_log_analytics_workspace_id = "/subscriptions/subscription_id/resourceGroups/DefaultResourceGroup-CQ/providers/Microsoft.OperationalInsights/workspaces/DefaultWorkspace"
}
aks_002_custer = {
  name                           = "aksappdevnetq"
  dns_prefix                     = "besd-aks"
  private_cluster_enabled        = false
  node_resource_group            = "BESD-IT-DEV-APP-AKS-NETQ-INT-RG"
  sku_tier                       = "Free"
  private_dns_zone_id            = null
  kubernetes_version             = "1.21.2"
  dnf_name                       = "nodepool001"
  dnf_node_count                 = 1
  dnf_vm_size                    = "Standard_F4s_v2"
  dnf_os_disk_size_gb            = 256
  dnf_os_disk_type               = "Managed"
  dnf_availability_zones         = []
  dnf_vnet_subnet_id             = null
  np_network_plugin              = "azure"
  np_network_policy              = "azure"
  np_load_balancer_sku           = "standard"
  idt_type                       = "SystemAssigned"
  idt_user_assigned_identity_id  = null
  oms_enabled                    = false
  oms_log_analytics_workspace_id = null
}
aks_003_custer = {
  name                           = "aksappdeviam"
  dns_prefix                     = "besd-aks"
  private_cluster_enabled        = false
  node_resource_group            = "BESD-IT-DEV-APP-AKS-IAM-INT-RG"
  sku_tier                       = "Free"
  private_dns_zone_id            = null
  kubernetes_version             = "1.21.2"
  dnf_name                       = "nodepool001"
  dnf_node_count                 = 1
  dnf_vm_size                    = "Standard_E2as_v4"
  dnf_os_disk_size_gb            = 256
  dnf_os_disk_type               = "Managed"
  dnf_availability_zones         = []
  dnf_vnet_subnet_id             = null
  np_network_plugin              = "azure"
  np_network_policy              = "azure"
  np_load_balancer_sku           = "standard"
  idt_type                       = "SystemAssigned"
  idt_user_assigned_identity_id  = null
  oms_enabled                    = false
  oms_log_analytics_workspace_id = null
}
aks_004_custer = {
  name                           = "aksappdevfone"
  dns_prefix                     = "besd-aks"
  private_cluster_enabled        = false
  node_resource_group            = "BESD-IT-DEV-APP-AKS-FONE-INT-RG"
  sku_tier                       = "Free"
  private_dns_zone_id            = null
  kubernetes_version             = "1.21.2"
  dnf_name                       = "nodepool001"
  dnf_node_count                 = 2
  dnf_vm_size                    = "Standard_E2as_v4"
  dnf_os_disk_size_gb            = 256
  dnf_os_disk_type               = "Managed"
  dnf_availability_zones         = []
  dnf_vnet_subnet_id             = null
  np_network_plugin              = "azure"
  np_network_policy              = "azure"
  np_load_balancer_sku           = "standard"
  idt_type                       = "SystemAssigned"
  idt_user_assigned_identity_id  = null
  oms_enabled                    = false
  oms_log_analytics_workspace_id = null
}
aks_005_custer = {
  name                           = "aksappdev001"
  dns_prefix                     = "besd-aks"
  private_cluster_enabled        = false
  node_resource_group            = "BESD-IT-DEV-APP-AKS-K8S-INT-RG"
  sku_tier                       = "Free"
  private_dns_zone_id            = null
  kubernetes_version             = "1.21.2"
  dnf_name                       = "system"
  dnf_node_count                 = 2
  dnf_vm_size                    = "Standard_E4as_v4"
  dnf_os_disk_size_gb            = 256
  dnf_os_disk_type               = "Managed"
  dnf_availability_zones         = []
  dnf_vnet_subnet_id             = null
  np_network_plugin              = "azure"
  np_network_policy              = "azure"
  np_load_balancer_sku           = "standard"
  idt_type                       = "SystemAssigned"
  idt_user_assigned_identity_id  = null
  oms_enabled                    = false
  oms_log_analytics_workspace_id = null
}
aks_001_node_pool_list = [
  # {
  #   name       = "nodepool001"
  #   vm_size    = "Standard_E4as_v4"
  #   node_count = 1
  # }
  # {
  #   name       = "amweb"
  #   vm_size    = "Standard_E4as_v4"
  #   node_count = 1
  # },
  # {
  #   name       = "amprobe"
  #   vm_size    = "Standard_E4as_v4"
  #   node_count = 1
  # },
  # {
  #   name       = "netqapp"
  #   vm_size    = "Standard_E4as_v4"
  #   node_count = 1
  # },
  # {
  #   name       = "netqmongo"
  #   vm_size    = "Standard_E4as_v4"
  #   node_count = 1
  # },
  # {
  #   name       = "ffwkmonitor"
  #   vm_size    = "Standard_E4as_v4"
  #   node_count = 1
  # },
  # {
  #   name       = "ffwklogs"
  #   vm_size    = "Standard_E4as_v4"
  #   node_count = 1
  # },
  # {
  #   name       = "iamapp"
  #   vm_size    = "Standard_E4as_v4"
  #   node_count = 1
  # },
  # {
  #   name       = "fulfillmentf"
  #   vm_size    = "Standard_E4as_v4"
  #   node_count = 1
  # },
  # {
  #   name       = "fulfillmentb"
  #   vm_size    = "Standard_E4as_v4"
  #   node_count = 1
  # },
  # {
  #   name       = "netwinnginx"
  #   vm_size    = "Standard_E4as_v4"
  #   node_count = 1
  # },
  # {
  #   name       = "netwingeo"
  #   vm_size    = "Standard_E4as_v4"
  #   node_count = 1
  # },
  # {
  #   name       = "netwinfbm"
  #   vm_size    = "Standard_E4as_v4"
  #   node_count = 1
  # }
]
aks_002_node_pool_list = [
  {
    name       = "nodepool002"
    vm_size    = "Standard_F4s_v2"
    node_count = 1
  }
]
aks_003_node_pool_list = []
aks_004_node_pool_list = [
  {
    name       = "nodepool002"
    vm_size    = "Standard_E4as_v4"
    node_count = 3
  }
]
aks_005_node_pool_list = [
  {
    name       = "nodepool001"
    vm_size    = "Standard_E8a_v4" #64GB de RAM e 8vCPU
    node_count = 9
  }
]
# aks_001_storage_class_001 = {
#   name                = "storage"
#   storage_provisioner = "kubernetes.io/gce-pd"
#   reclaim_policy      = "Retain"
#   parameters = {
#     type = "pd-standard"
#   }
#   mount_options = ["file_mode=0700", "dir_mode=0777", "mfsymlinks", "uid=1000", "gid=1000", "nobrl", "cache=none"]
# }
# aks_001_pv_list = [
#   {
#     storage_class_name = "storage"
#     volume_mode        = "Filesystem"
#     name               = "volume-01"
#     storage            = "5125Gi"
#     access_modes       = ["ReadWriteMany"]
#     volume_path        = "/volume_01"
#   },
#   {
#     storage_class_name = "storage"
#     volume_mode        = "Filesystem"
#     name               = "volume-02"
#     storage            = "5125Gi"
#     access_modes       = ["ReadWriteMany"]
#     volume_path        = "/volume_02"
#   },
#   {
#     storage_class_name = "storage"
#     volume_mode        = "Filesystem"
#     name               = "volume-03"
#     storage            = "5125Gi"
#     access_modes       = ["ReadWriteMany"]
#     volume_path        = "/volume_03"
#   },
#   {
#     storage_class_name = "storage"
#     volume_mode        = "Filesystem"
#     name               = "volume-04"
#     storage            = "5125Gi"
#     access_modes       = ["ReadWriteMany"]
#     volume_path        = "/volume_04"
#   },
#   {
#     storage_class_name = "storage"
#     volume_mode        = "Filesystem"
#     name               = "volume-05"
#     storage            = "5125Gi"
#     access_modes       = ["ReadWriteMany"]
#     volume_path        = "/volume_05"
#   },
#   {
#     storage_class_name = "storage"
#     volume_mode        = "Filesystem"
#     name               = "volume-06"
#     storage            = "5125Gi"
#     access_modes       = ["ReadWriteMany"]
#     volume_path        = "/volume_06"
#   }
# ]
# aks_001_pvc_list = [
#   {
#     name         = "storageclaim01"
#     access_modes = ["ReadWriteMany"]
#     resources = {
#       requests = {
#         storage = "5125Gi"
#       }

#       limits = {
#         storage = "5125Gi"
#       }
#     }
#     volume_name        = "volume-01"
#     storage_class_name = "storage"
#   },
#   {
#     name         = "storageclaim02"
#     access_modes = ["ReadWriteMany"]
#     resources = {
#       requests = {
#         storage = "5125Gi"
#       }

#       limits = {
#         storage = "5125Gi"
#       }
#     }
#     volume_name        = "volume-02"
#     storage_class_name = "storage"
#   },
#   {
#     name         = "storageclaim03"
#     access_modes = ["ReadWriteMany"]
#     resources = {
#       requests = {
#         storage = "5125Gi"
#       }

#       limits = {
#         storage = "5125Gi"
#       }
#     }
#     volume_name        = "volume-03"
#     storage_class_name = "storage"
#   },
#   {
#     name         = "storageclaim04"
#     access_modes = ["ReadWriteMany"]
#     resources = {
#       requests = {
#         storage = "5125Gi"
#       }

#       limits = {
#         storage = "5125Gi"
#       }
#     }
#     volume_name        = "volume-04"
#     storage_class_name = "storage"
#   },
#   {
#     name         = "storageclaim05"
#     access_modes = ["ReadWriteMany"]
#     resources = {
#       requests = {
#         storage = "5125Gi"
#       }

#       limits = {
#         storage = "5125Gi"
#       }
#     }
#     volume_name        = "volume-05"
#     storage_class_name = "storage"
#   },
#   {
#     name         = "storageclaim06"
#     access_modes = ["ReadWriteMany"]
#     resources = {
#       requests = {
#         storage = "5125Gi"
#       }

#       limits = {
#         storage = "5125Gi"
#       }
#     }
#     volume_name        = "volume-06"
#     storage_class_name = "storage"
#   }
# ]
aks_001_role_based_access_control = [
  {
    enabled = true
    azure_active_directory = {
      managed                = true
      admin_group_object_ids = ["group_id"]
      azure_rbac_enabled     = true
    }
  }
]
aks_002_role_based_access_control = [
  {
    enabled = true
    azure_active_directory = {
      managed                = true
      admin_group_object_ids = ["group_id"]
      azure_rbac_enabled     = true
    }
  }
]
aks_003_role_based_access_control = [
  {
    enabled = true
    azure_active_directory = {
      managed                = true
      admin_group_object_ids = ["group_id"]
      azure_rbac_enabled     = true
    }
  }
]
aks_004_role_based_access_control = [
  {
    enabled = true
    azure_active_directory = {
      managed                = true
      admin_group_object_ids = ["group_id"]
      azure_rbac_enabled     = true
    }
  }
]
aks_005_role_based_access_control = [
  {
    enabled = true
    azure_active_directory = {
      managed                = true
      admin_group_object_ids = ["group_id"]
      azure_rbac_enabled     = true
    }
  }
]
# aks_001_namespace_list = [
#   {
#     metadata = {
#       name        = "am"
#       annotations = {}
#       labels      = {}
#     }
#   },
#   {
#     metadata = {
#       name        = "fone"
#       annotations = {}
#       labels      = {}
#     }
#   },
#   {
#     metadata = {
#       name        = "iam"
#       annotations = {}
#       labels      = {}
#     }
#   },
#   {
#     metadata = {
#       name        = "kbil"
#       annotations = {}
#       labels      = {}
#     }
#   },
#   {
#     metadata = {
#       name        = "netq"
#       annotations = {}
#       labels      = {}
#     }
#   },
#   {
#     metadata = {
#       name        = "netw"
#       annotations = {}
#       labels      = {}
#     }
#   },
#   {
#     metadata = {
#       name        = "microservices"
#       annotations = {}
#       labels      = {}
#     }
#   },
#   {
#     metadata = {
#       name        = "fullfilment"
#       annotations = {}
#       labels      = {}
#     }
#   },
#   {
#     metadata = {
#       name        = "devops"
#       annotations = {}
#       labels      = {}
#     }
#   },
#   {
#     metadata = {
#       name        = "sigo"
#       annotations = {}
#       labels      = {}
#     }
#   },
#   {
#     metadata = {
#       name        = "ffwk"
#       annotations = {}
#       labels      = {}
#     }
#   },
#   {
#     metadata = {
#       name        = "netwin"
#       annotations = {}
#       labels      = {}
#     }
#   },
#   {
#     metadata = {
#       name        = "ingress-nginx"
#       annotations = {}
#       labels      = {}
#     }
#   },
#   {
#     metadata = {
#       name        = "cert-manager"
#       annotations = {}
#       labels      = {}
#     }
#   }
# ]
tags = {
  "ManagedBy" = "Terraform"
}
