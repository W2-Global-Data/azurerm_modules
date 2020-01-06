output "cluster_cert_thumbprint" {
  value = azurerm_app_service_certificate.app_cert.thumbprint
}
