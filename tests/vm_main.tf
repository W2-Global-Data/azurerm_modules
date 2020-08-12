resource "random_uuid" "vm_uuid" { }


resource "azurerm_resource_group" "rg_vm" {
  name     = "rg-${random_uuid.vm_uuid.result}"
  location = var.location
}

module "windows_vm" {
  source                 = "../modules/compute_resources/windows_virtual_machine"
  vm_name                = "test-vm-windows"
  resource_group_name    = azurerm_resource_group.rg_vm.name
  location               = azurerm_resource_group.rg_vm.location
  size                   = "Standard_B1ms"
  admin_username         = "adminusername"
  admin_password         = "T3stP@55w0rd1"
  network_interface_ids  = [module.network_interface.nic_id]
  os_disk_name           = "os_disk"
  caching_val            = "ReadWrite"
  storage_account_type   = "Standard_LRS"
  source_image_publisher = "MicrosoftWindowsServer"
  source_image_offer     = "WindowsServer"
  source_image_sku       = "2016-Datacenter"
  source_image_version   = "latest"
  

module "network_interface" {
  source   = "../modules/network_resources/network_interface"
  nic_name                      = "test-nic"
  resource_group_name           = azurerm_resource_group.rg_vm.name
  location                      = azurerm_resource_group.rg_vm.location
  ip_config_name                = "test-nic-ip-config" 
  private_ip_address_allocation = "Dynamic"
}