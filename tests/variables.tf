variable "backend" {
  type = "map"

  default = {
    access_key = ""
    container_name = ""
    key = ""
    storage_account_name = ""
  }
}

variable "certificate" {
  type = "map"

  default = {
    certificate_file_name = ""
    certificate_password  = ""
    certificate_name      = ""
    cert_thumbprint = ""
    production = ""
  }
}

variable "connection" {
  type = "map"

  default = {
    client_id       = "d5d314e4-506d-4097-bc6b-a99b5728c1e9"
    client_secret   = "J?ZN3z.Q/4lF7p:71mu3Qugr44A.khQT"
    subscription_id = "6d4bd03a-3c9e-4236-ad11-967a92577080"
    tenant_id       = "fb467507-ea41-4c55-8d90-608578f8f97b"
  }
}

variable "location" {
  default = "West Europe"
}