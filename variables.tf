variable "allow_virtual_network_access" {
  description = "Controls if the VMs in the peered virtual network are allowed to access the VMs in the local virtual network."
  type        = bool
  default     = true
}

variable "allow_forwarded_traffic" {
  description = "Controls if forwarded traffic from the VMs in the peered virtual network is allowed."
  type        = bool
  default     = false
}

variable "allow_gateway_transit" {
  description = "Controls gatewayLinks can be used in the remote virtual network's link to the local virtual network."
  type        = bool
  default     = false
}

variable "use_remote_gateways" {
  description = "Controls if remote gateways can be used on the local virtual network."
  type        = bool
  default     = false
}

variable "network_peerings" {
  description = "A map of network peerings to create."
  type = map(object({
    origin_resource_group_name  = string
    origin_virtual_network_name = string
    remote_virtual_network_id   = string
  }))
  default = {}
}
