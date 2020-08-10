resource "azurerm_windows_virtual_machine" "windows_vm" {
  name                  = var.vm_name
  resource_group_name   = var.resource_group_name
  location              = var.location
  size                  = var.size
  admin_username        = var.admin_username
  admin_password        = var.admin_password
  network_interface_ids = var.network_interface_ids

  os_disk {
    name                 = var.os_disk_name
    caching              = var.caching_val
    storage_account_type = var.storage_account_type
  }

  source_image_reference {
    publisher = var.source_image_publisher
    offer     = var.source_image_offer
    sku       = var.source_image_sku
    version   = var.source_image_version
  }
  
  tags = {
    tags = merge(map(
            "built_by", "Terraform",
            "built_time", timestamp(),
        ), var.tags)
  }
}