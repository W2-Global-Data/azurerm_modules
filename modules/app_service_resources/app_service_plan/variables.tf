variable "name" {
  description = "Specifies the name of the App Service Plan component"
  default = "plan-test"
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the App Service Plan component"
  default = "rg-plan-test"
}

variable "location" {
  description = "Specifies the supported Azure location where the resource exists"
  default = "West Europe"
}
variable "kind" {
  description = "The OS of the appservice plan"
  default = "Windows"
}

variable "reserved" {
  description = "Is this App Service Plan Reserved"
  default = "false"
}

variable "sku_size" {
  description = "Size of the SKU to be used"
  default     = "Basic"
}

variable "sku_tier" {
  description = "Tier of SKU to be used"
  default = "Basic"
}

variable "tags" {
  type = map
  description = "A mapping of tags to assign to the resource"
  default = {
  }
}
