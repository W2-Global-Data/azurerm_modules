resource "azurerm_network_interface" "nic" {
  name                = var.nic_name
  resource_group_name = var.resource_group_name
  location            = var.location

  ip_configuration {
    name                          = var.ip_config_name
    private_ip_address_allocation = var.private_ip_address_allocation
    public_ip_address_id          = var.public_ip_address_id
  }

  tags = {
    tags = merge(map(
            "built_by", "Terraform",
            "built_time", timestamp(),
        ), var.tags)
  }
}