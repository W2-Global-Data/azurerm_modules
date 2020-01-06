provider "azurerm" {
  client_id       = var.connection["client_id"]
  client_secret   = var.connection["client_secret"]
  subscription_id = var.connection["subscription_id"]
  tenant_id       = var.connection["tenant_id"]
}
