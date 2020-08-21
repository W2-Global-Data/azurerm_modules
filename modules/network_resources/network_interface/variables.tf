variable "nic_name" {
  description = "The name of the network_interface name in Azure"
  default     = "test-nic"
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the Windows Virtual Machine"
  default     = "rg-virt-machine"
}

variable "location" {
  description = "The Azure region being deployed to"
  default = "West Europe"
}

variable "ip_config_name" {
  description = " A name used for this IP Configuration"
  default = "test-nic-ip-config"
}


variable "private_ip_address_allocation" {
  description = "The allocation method used for the Private IP Address. Possible values are Dynamic and Static"
  default = "Dynamic"
}

variable "public_ip_address_id" {
  description = "Reference to a Public IP Address to associate with this NIC"
  default = ""
}

variable "subnet_id" {
  description = "The ID of the Subnet where this Network Interface should be located in."
  default = ""
}

variable "tags" {
  type = map
  description = "A mapping of tags to assign to the resource"
  default = {
  }
}