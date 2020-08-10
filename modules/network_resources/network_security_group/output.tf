output "name"{
  value = "${azurerm_network_security_group.nsg.security_group_name}"
}

output "id"{
  value = "${azurerm_network_security_group.nsg.id}"
}