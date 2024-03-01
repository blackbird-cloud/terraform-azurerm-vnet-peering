output "peering_network_ids" {
  description = "The IDs of the network peerings."
  value = {
    for k, np in azurerm_virtual_network_peering.default : k => np.id
  }
}
