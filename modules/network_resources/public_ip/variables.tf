variable "ip_name" {
  description = "Specifies the name of the Public IP resource"
  default     = "pipTest"
}

variable "resource_group" {
  description = "The name of the resource group in which to create the Windows Virtual Machine"
  default     = "rg-virt-machine"
}

variable "location" {
  description = "The Azure region being deployed to"
  default = "West Europe"
}

variable "allocation_method" {
  description = "Defines the allocation method for this IP address. Possible values are Static or Dynamic."
  default = "Static"
}

variable "tags" {
  type = map
  description = "A mapping of tags to assign to the resource"
  default = {
  }
}