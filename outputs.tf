output "peering_network_ids" {
  description = "The IDs of the network peerings."
  value       = azurerm_virtual_network_peering.default[*].id
}
