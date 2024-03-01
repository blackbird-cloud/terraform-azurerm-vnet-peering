module "vnet_peering" {
  source = "../"

  network_peerings = {
    non-prod-to-shared = {
      origin_resource_group_name  = "non-prod-rg"
      origin_virtual_network_name = "non-prod-vnet-name"
      remote_virtual_network_id   = "shared-vnet-id"
    }
    prod-to-shared = {
      origin_resource_group_name  = "prod-rg"
      origin_virtual_network_name = "prod-vnet-name"
      remote_virtual_network_id   = "shared-vnet-id"
    }
    shared-to-non-prod = {
      origin_resource_group_name  = "shared-rg"
      origin_virtual_network_name = "shared-vnet-name"
      remote_virtual_network_id   = "non-prod-vnet-id"
    }
    shared-to-prod = {
      origin_resource_group_name  = "shared-rg"
      origin_virtual_network_name = "shared-vnet-name"
      remote_virtual_network_id   = "prod-vnet-id"
    }
  }
}
