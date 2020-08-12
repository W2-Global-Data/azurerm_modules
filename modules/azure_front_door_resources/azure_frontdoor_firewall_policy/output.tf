output "FirewallPolicyName" {
  value = "${azurerm_frontdoor_firewall_policy.affp.name}"
}

output "FirewallPolicyResourceGroupName" {
  value = "${azurerm_frontdoor_firewall_policy.affp.resource_group_name}"
}

output "ID" {
  value = "${azurerm_frontdoor_firewall_policy.affp.id}"
}
