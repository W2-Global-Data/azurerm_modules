variable "vm_name" {
  description = "The name of the virtual machine name in Azure"
  default     = "test-vm-windows"
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the Windows Virtual Machine"
  default     = "rg-virt-machine"
}

variable "location" {
  description = "The Azure region being deployed to"
  default = "West Europe"
}

variable "size" {
  description = "Stock Keeping Unit, each one contains different features including disk size, clock speed and partion support"
  default = "Standard_B1ms"
}

variable "admin_username" {
  description = "The username of the local administrator used for the Virtual Machine. Changing this forces a new resource to be created"
  default = ""
}

variable "admin_password" {
  description = "The Password which should be used for the local-administrator on this Virtual Machine. Changing this forces a new resource to be created"
  default = ""
}

variable "network_interface_ids" {
  description = "A list of Network Interface ID's which should be attached to this Virtual Machine. The first Network Interface ID in this list will be the Primary Network Interface on the Virtual Machine."
  default = ""
}

variable "os_disk_name" {
  description = "The name which should be used for the Internal OS Disk. Changing this forces a new resource to be created"
  default = "os_disk"
}


variable "caching_val" {
  description = "The Type of Caching which should be used for the Internal OS Disk. Possible values are None, ReadOnly and ReadWrite"
  default = "ReadWrite"
}

variable "storage_account_type" {
  description = "The Type of Storage Account which should back this the Internal OS Disk. Possible values are Standard_LRS, StandardSSD_LRS and Premium_LRS. Changing this forces a new resource to be created."
  default = "Standard_LRS"
}

variable "source_image_publisher" {
  description = "Specifies the publisher of the image used to create the virtual machines"
  default = "MicrosoftWindowsServer"
}

variable "source_image_offer" {
  description = "Specifies the offer of the image used to create the virtual machines"
  default = "WindowsServer"
}

variable "source_image_sku"{
  description = "Specifies the SKU of the image used to create the virtual machines"
  default = "2016-Datacenter"
}

variable "source_image_version"{
  description = "Specifies the version of the image used to create the virtual machines"
  default = "latest"
}

variable "tags" {
  type = map
  description = "A mapping of tags to assign to the resource"
  default = {
  }
}