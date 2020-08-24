resource "azurerm_network_security_group" "nsg" {
  name                  = var.security_group_name
  resource_group_name   = var.resource_group_name
  location              = var.location

  tags = {
    "built_by"= "Terraform",
    "built_time"= tostring(timestamp()),
  }
    lifecycle {
    ignore_changes = [
      tags.built_time
    ]
  }
}