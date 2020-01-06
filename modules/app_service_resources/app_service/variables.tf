variable "name" {
  description = "Specifies the name of the App Service."
  default = "test-qa10"
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the App Service"
  default = "rg-appservice" 
}

variable "location" {
  description = "The Azure region being deployed to"
  default = "West Europe"
}

variable "app_service_plan_id" {
  description = "The ID of the App Service Plan within which to create this App Service."
  default = ""
}

variable "always_on" {
  description = "Should the app be loaded at all times"
  default = true
}

variable "use_32_bit_worker_process" {
  description = "Should the App Service run in 32 bit mode, rather than 64 bit mode"
  default = false
}

variable "tags" {
  type = map
  description = "A mapping of tags to assign to the resource"
  default = {
  }
}