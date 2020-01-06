output "hostname" {
  description = "Specifies the Custom Hostname to use for the App Service"
  value = azurerm_app_service_custom_hostname_binding.app_binding.hostname
}