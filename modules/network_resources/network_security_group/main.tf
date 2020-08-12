resource "azurerm_network_security_group" "nsg" {
  name                  = var.security_group_name
  resource_group_name   = var.resource_group_name
  location              = var.location

  tags = {
    tags = merge(map(
            "built_by", "Terraform",
            "built_time", timestamp(),
        ), var.tags)
  }
}