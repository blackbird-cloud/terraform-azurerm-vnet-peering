resource "azurerm_virtual_network_peering" "default" {
  for_each = var.network_peerings

  name                      = each.key
  resource_group_name       = each.value.origin_resource_group_name
  virtual_network_name      = each.value.origin_virtual_network_name
  remote_virtual_network_id = each.value.remote_virtual_network_id

  allow_virtual_network_access = var.allow_virtual_network_access
  allow_forwarded_traffic      = var.allow_forwarded_traffic
  allow_gateway_transit        = var.allow_gateway_transit
  use_remote_gateways          = var.use_remote_gateways
}
