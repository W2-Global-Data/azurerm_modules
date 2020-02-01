variable "name" {
  description = "Name of the (SQL) database to be created, can be passed in from the root module"
  default     = "sql_db_name"
}

variable "resource_group_name"{
  description = "Azure resource group for the resource belongs to."
  default     = "resource_group_name"
}

variable "location" {
  description = "Azure region for the service to be located in."
  default     = "Service_location"
}

variable "server_name" {
  description = "Name of the SQL server to be created, can be passed in from the root module"
  default     = "server_name"
}

variable "edition" {
  description = "Edition of the database used"
  default     = "Standard"
}

variable "service_objective_name" {
  description = "Tier of sql database to be used ie. S0, S1"
  default     = "S0"
}

variable "audit_storage" {
  description = "The storage account to use for db audit logs"
  default     = "db-audit-logs"
}

variable  "threat_detection_state"{
  description = "Turns threat detection on (Enabled) or off (Disabled)"
  default     = "Enabled"
}

variable "threat_detection_email_addresses"{
  description = "A list of email addresses which alerts should be sent to."
  default     = "alerts@domainname.com"
}

variable "threat_detection_storage_endpoint"{
  description = "Specifies the blob storage endpoint (e.g. https://MyAccount.blob.core.windows.net). This blob storage will hold all Threat Detection audit logs."
  default     = ""
}

variable "threat_detection_storage_key"{
  description = "Specifies the identifier key of the Threat Detection audit storage account. "
  default     = ""
}

variable "threat_detection_retention"{
  description = "Specifies the number of days to keep in the Threat Detection audit logs."
  default     = 30
}