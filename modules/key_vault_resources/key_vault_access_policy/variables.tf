variable "key_vault_id" {
  description = "Specifies the id of the Key Vault resource. Changing this forces a new resource to be created."
  default = ""
}

variable "certificate_permissions" {
  description = "List of certificate permissions, must be one or more from the following: backup, create, delete, deleteissuers, get, getissuers, import, list, listissuers, managecontacts, manageissuers, purge, recover, restore, setissuers and update."
  default = ["backup", "create", "delete", "deleteissuers", "get", "getissuers", "import", "list", "listissuers", "managecontacts", "manageissuers", 
  "purge", "recover", "restore", "setissuers", "update",]
}

variable "key_permissions" {
  description = "List of secret permissions, must be one or more from the following: backup, create, decrypt, delete, encrypt, get, import, list, purge, recover, restore, sign, unwrapKey, update, verify and wrapKey"
  default = ["backup", "create", "decrypt", "delete", "encrypt", "get", "import",
  "list", "purge", "recover", "restore", "sign", "unwrapKey", "update", "verify", "wrapKey",]
}

variable "secret_permissions" {
  description = "List of secret permissions, must be one or more from the following: backup, delete, get, list, purge, recover, restore and set."
  default = ["backup", "delete", "get", "list", "purge", "recover", "restore", "set",]
}