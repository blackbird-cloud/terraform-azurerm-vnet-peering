# Azure Vnet Peering Terraform module
A Terraform module which configures your Azure Vnet Peering. 
[![blackbird-logo](https://raw.githubusercontent.com/blackbird-cloud/terraform-module-template/main/.config/logo_simple.png)](https://www.blackbird.cloud)

## Example
```hcl
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
```

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.2 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~> 3 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | ~> 3 |

## Resources

| Name | Type |
|------|------|
| [azurerm_virtual_network_peering.default](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network_peering) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_allow_forwarded_traffic"></a> [allow\_forwarded\_traffic](#input\_allow\_forwarded\_traffic) | Controls if forwarded traffic from the VMs in the peered virtual network is allowed. | `bool` | `false` | no |
| <a name="input_allow_gateway_transit"></a> [allow\_gateway\_transit](#input\_allow\_gateway\_transit) | Controls gatewayLinks can be used in the remote virtual network's link to the local virtual network. | `bool` | `false` | no |
| <a name="input_allow_virtual_network_access"></a> [allow\_virtual\_network\_access](#input\_allow\_virtual\_network\_access) | Controls if the VMs in the peered virtual network are allowed to access the VMs in the local virtual network. | `bool` | `true` | no |
| <a name="input_network_peerings"></a> [network\_peerings](#input\_network\_peerings) | A map of network peerings to create. | <pre>map(object({<br>    origin_resource_group_name  = string<br>    origin_virtual_network_name = string<br>    remote_virtual_network_id   = string<br>  }))</pre> | `{}` | no |
| <a name="input_use_remote_gateways"></a> [use\_remote\_gateways](#input\_use\_remote\_gateways) | Controls if remote gateways can be used on the local virtual network. | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_peering_network_ids"></a> [peering\_network\_ids](#output\_peering\_network\_ids) | The IDs of the network peerings. |

## About

We are [Blackbird Cloud](https://blackbird.cloud), Amsterdam based cloud consultancy, and cloud management service provider. We help companies build secure, cost efficient, and scale-able solutions.

Checkout our other :point\_right: [terraform modules](https://registry.terraform.io/namespaces/blackbird-cloud)

## Copyright

Copyright © 2017-2023 [Blackbird Cloud](https://www.blackbird.cloud)
