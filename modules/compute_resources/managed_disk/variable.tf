variable "name" {
  description = "Specifies the name of the Managed Disk. Changing this forces a new resource to be created."
  default     = "test-managed-disk"
}

variable "resource_group" {
  description = "The name of the resource group in which to create the Windows Virtual Machine"
  default     = "rg-virt-machine"
}

variable "location" {
  description = "The Azure region being deployed to"
  default = "West Europe"
}

variable "storage_account_type" {
  description = "The type of storage to use for the managed disk. Possible values are Standard_LRS, Premium_LRS, StandardSSD_LRS or UltraSSD_LRS"
  default = "Standard_LRS"
}

variable "create_option" {
  description = "The method to use when creating the managed disk. Changing this forces a new resource to be created. Possible values are Import, Empty, Copy, FromImage, Restore"
  default = "Empty"
}

variable "disk_size_gb" {
  description = "Specifies the size of the managed disk to create in gigabytes. If create_option is Copy or FromImage, then the value must be equal to or greater than the source's size. The size can only be increased."
  default = "1023"
}


variable "tags" {
  type = map
  description = "A mapping of tags to assign to the resource"
  default = {
  }
}