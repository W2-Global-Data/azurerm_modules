resource "azurerm_public_ip" "pip" {
  name                  = var.ip_name
  resource_group_name   = var.resource_group_name
  location              = var.location
  allocation_method     = var.allocation_method

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