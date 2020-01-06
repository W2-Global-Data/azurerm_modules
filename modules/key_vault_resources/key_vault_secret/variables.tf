variable "name" {
  description = "Name of the secret key value pair"
  default = "secretname"
}

variable "value" {
  description = "value of the secret key value pair"
  default = "$ecr3tValu3"
}

variable "key_vault_id" {
  description = "The ID of the keyvault to put the secret into"
  default = ""
}

variable "content_type" {
  description = "The content type of the secret. Optional information"
  default = ""
}