resource "azurerm_public_ip" "pip" {
  name                  = var.ip_name
  resource_group_name   = var.resource_group_name
  location              = var.location
  allocation_method     = var.allocation_method

  tags = {
    tags = merge(map(
            "built_by", "Terraform",
            "built_time", timestamp(),
        ), var.tags)
  }
}