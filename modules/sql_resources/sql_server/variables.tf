variable "name" {
  description = "Name of the SQL server to be created, can be passed in from the root module"
  default     = "server_name"
}

variable "resource_group_name"{
  description = "Azure resource group for the resource belongs to."
  default     = ""
}

variable "location" {
  description = "Azure region for the service to be located in."
  default = "West Europe"
}

variable "sql_server_version" {
  description = "Version of SQL server to be created"
  default     = "12.0"
}

variable "admin_login" {
  description = "Username of the admin user for the created server. Should be passed in through VSTS"
  default = ""
}

variable "admin_password" {
  description = "Password of the admin user for the created server."
  default = "server_Pa$$w0rd0"
}
