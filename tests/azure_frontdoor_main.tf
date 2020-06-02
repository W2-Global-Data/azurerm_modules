resource "random_uuid" "azure_front_door_uuid" { }

resource "azurerm_resource_group" "fdw_rg" {
  name     = "rg-${random_uuid.azure_front_door_uuid.result}"
  location = var.location
}

module "azure_frontdoor_firewall_policy" {
  source                            = "../modules/azure_front_door_resources/azure_frontdoor_firewall_policy"
  name                              = "policy"
  resource_group_name               = "${azurerm_resource_group.fdw_rg.name}"
  enabled                           = "true"
  mode                              = "Detection"
  redirect_url                      = "https://www.google.com"
  custom_block_response_status_code = 403
  custom_block_response_body        = "PGh0bWw+PGhlYWQ+PHRpdGxlPllvdSBhcmUgYmxvY2tlZC48L3RpdGxlPjwvaGVhZD48Ym9keT48L2JvZHk+PC9odG1sPgo="
}