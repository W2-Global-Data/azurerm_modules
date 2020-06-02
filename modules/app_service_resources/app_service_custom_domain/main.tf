resource "azurerm_app_service_custom_hostname_binding" "app_binding" {
  hostname            = var.hostname
  app_service_name    = var.app_service_name
  resource_group_name = var.resource_group_name
  ssl_state           = var.ssl_state
  thumbprint          = var.thumbprint
}