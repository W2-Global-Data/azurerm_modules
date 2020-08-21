variable "name" {
  description = "The name of the subnet. Changing this forces a new resource to be created"
  default     = "pipTest"
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the Windows Virtual Machine"
  default     = "rg-virt-machine"
}

variable "virtual_network_name" {
  description = "The name of the virtual network to which to attach the subnet. Changing this forces a new resource to be created"
  default = ""
}

variable "address_prefix" {
  description = "The address prefix to use for the subnet."
  default = ""
}
