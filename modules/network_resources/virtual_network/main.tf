resource "azurerm_virtual_network" "vnet" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  address_space       = [var.address_space]

 tags = {
    "built_by"= "Terraform"
    "built_time"= timestamp()
  }

  lifecycle {
    ignore_changes = [
      tags.built_time
    ]
  }
}