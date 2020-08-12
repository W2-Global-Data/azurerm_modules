output "address" {
  value = "${azurerm_public_ip.pip.id}"
}
output "name" {
  value = "${azurerm_public_ip.pip.name}"
}
