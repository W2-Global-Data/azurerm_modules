resource "azurerm_app_service" "appservice" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  app_service_plan_id = var.app_service_plan_id

  https_only          = true

  site_config {
    dotnet_framework_version  = "v4.0"
    min_tls_version           = "1.2"
    always_on                 = var.always_on
    use_32_bit_worker_process = var.use_32_bit_worker_process
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