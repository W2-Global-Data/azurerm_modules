variable "backend" {
  type = map(string)

  default = {
    access_key = ""
    container_name = ""
    key = ""
    storage_account_name = ""
  }
}

variable "certificate" {
  type = map(string)

  default = {
    certificate_file_name = ""
    certificate_password  = ""
    certificate_name      = ""
    cert_thumbprint = ""
    production = ""
  }
}

variable "connection" {
  type = map(string)

  default = {
    client_id       = ""
    client_secret   = ""
    subscription_id = ""
    tenant_id       = ""
  }
}

variable "location" {
  default = "West Europe"
}