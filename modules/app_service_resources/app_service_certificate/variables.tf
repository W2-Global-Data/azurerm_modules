variable "name" {
  description = "Specifies the name of the certificate"
  default = ""
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the certificate."
  default = ""
}

variable "location" {
  description = "Specifies the supported Azure location where the resource exists."
  default = "West Europe"
}

variable "password" {
  description = "The password to access the certificate's private key"
  default = ""
}

variable "key_vault_secret_id" {
  description = "The ID of the Key Vault secret"
  default = ""
}