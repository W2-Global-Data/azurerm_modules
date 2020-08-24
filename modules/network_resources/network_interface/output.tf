output "nic_id"{
  value = "${azurerm_network_interface.nic.id}"
}

output "private_ip_address"{
  value = "${azurerm_network_interface.nic.private_ip_address}"
}
