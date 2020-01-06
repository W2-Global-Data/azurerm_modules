resource "azurerm_app_service_plan" "appsvc_plan" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  kind                = var.kind
  reserved            = var.reserved

  sku {
    tier = var.sku_tier
    size = var.sku_size
  }

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