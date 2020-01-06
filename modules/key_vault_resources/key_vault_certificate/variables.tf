variable "name" {
  description = "Specifies the name of the Key Vault Certificate"
  default = "cert"
}

variable "certificate_name" {
  description = "Certificate to imports name in the Keyvault"
  default = ""
}

variable "certificate_password" {
  description = "Password for the pfx cert"
  default = ""
}

variable "key_vault_id" {
  description = "Id of the keyvault to upload the certificate to"
  default     = ""
}
