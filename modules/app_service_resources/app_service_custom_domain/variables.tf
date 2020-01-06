variable "hostname" {
  description = "Specifies the Custom Hostname to use for the App Service"
  default = ""  
}

variable "app_service_name" {
  description = "The name of the App Service in which to add the Custom Hostname Binding"
  default = ""
}

variable "resource_group_name" {
  description = "The name of the resource group in which the App Service exists"
  default     = ""
}

variable "ssl_state" {
  description = "The SSL type. Possible values are IpBasedEnabled and SniEnabled."
  default = ""
}

variable "thumbprint" {
  description = "The SSL certificate thumbprint"
  default = ""
}
