data "azurerm_client_config" "current" {}

resource "azurerm_key_vault" "kv" {
  name                 = var.name
  location             = var.location
  resource_group_name  = var.resource_group_name
  sku_name             = var.sku_name
  tenant_id            = data.azurerm_client_config.current.tenant_id
  
  enabled_for_disk_encryption     = true
  enabled_for_deployment          = true
  enabled_for_template_deployment = true
  
  tags = merge(map(
          "built_by", "Terraform",
          "built_time", timestamp(),
          ), var.tags)
  
  lifecycle {
    ignore_changes = [
      tags.built_time
    ]
  }
  
}