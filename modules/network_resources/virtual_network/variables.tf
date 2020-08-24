variable "name" {
  description = "The name of the virtul network. Changing this forces a new resource to be created"
  default     = "pipTest"
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the Windows Virtual Machine"
  default     = "rg-virt-machine"
}

variable "location" {
  description = "The Azure region being deployed to"
  default = "West Europe"
}

variable "address_space" {
  description = "CIDR of the vnet"
  default = ""
}