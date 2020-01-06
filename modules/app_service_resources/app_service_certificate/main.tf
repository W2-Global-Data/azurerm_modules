resource "azurerm_app_service_certificate" "app_cert" {
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location
  key_vault_secret_id = var.key_vault_secret_id
}