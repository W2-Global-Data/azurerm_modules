output "cluster_cert_thumbprint" {
  value = azurerm_key_vault_certificate.cert.thumbprint
}

output "cert_name" {
  value = azurerm_key_vault_certificate.cert.name
}

output "secret_id" {
  value = azurerm_key_vault_certificate.cert.secret_id
}