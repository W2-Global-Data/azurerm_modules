resource "azurerm_frontdoor_firewall_policy" "affp" {
  name                              = var.name
  resource_group_name               = var.resource_group_name
  enabled                           = var.enabled
  mode                              = var.mode
  redirect_url                      = var.redirect_url
  custom_block_response_status_code = var.custom_block_response_status_code
  custom_block_response_body        = var.custom_block_response_body

  managed_rule {
    type    = "DefaultRuleSet"
    version = "1.0"
  }

  managed_rule {
    type    = "Microsoft_BotManagerRuleSet"
    version = "1.0"
  }


}