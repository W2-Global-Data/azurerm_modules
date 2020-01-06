variable "name" {
  description = "Specifies the name of the Key Vault"
  default = ""
  }

variable "location" {
  description = "Specifies the supported Azure location where the resource exists"
  default = "West Europe"
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the Key Vault"
  default = ""  
}

variable "sku_name" {
  description = " The Name of the SKU used for this Key Vault. Possible values are standard and premium."
  default = "standard"
}

variable "tags" {
  type = map
  description = "A mapping of tags to assign to the resource"
  default = {
  }
}