resource "azurerm_sql_database" "sql_database" {
  name				   = var.name
  resource_group_name  = var.resource_group_name
  location			   = var.location
  server_name		   = var.server_name
  edition			   = var.edition
  requested_service_objective_name = var.service_objective_name

  threat_detection_policy {
    state              =  var.threat_detection_state
    email_addresses     = [var.threat_detection_email_addresses] #removed all char except for brackets
    storage_endpoint     = var.threat_detection_storage_endpoint
    storage_account_access_key  = var.threat_detection_storage_key
    retention_days              = var.threat_detection_retention
  }
}

