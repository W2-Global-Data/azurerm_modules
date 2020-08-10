variable "security_group_name" {
  description = "The name of the security rule. This needs to be unique across all Rules in the Network Security Group."
  default     = "securityGroupTest"
}

variable "resource_group" {
  description = "The name of the resource group in which to create the Windows Virtual Machine"
  default     = "rg-virt-machine"
}

variable "location" {
  description = "The Azure region being deployed to"
  default = "West Europe"
}

variable "tags" {
  type = map
  description = "A mapping of tags to assign to the resource"
  default = {
  }
}