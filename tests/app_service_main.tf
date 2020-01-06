resource "random_uuid" "app_service_uuid" { }


resource "azurerm_resource_group" "rg_app_service" {
  name     = "rg-${random_uuid.app_service_uuid.result}"
  location = var.location
}

module "app_service_plan" {
  source                = "../modules/app_service_resources/app_service_plan"
  appsvc_plan_name      = "plan-${random_uuid.app_service_uuid.result}"
  location              = var.location
  resource_group_name   = azurerm_resource_group.rg_app_service.name
  kind                  = "Windows"
  sku_tier              = "Standard"
  sku_size              = "S1"
}      

module "app_service" {
  source                = "../modules/app_service_resources/app_service"
  name                  = "azapp-${random_uuid.app_service_uuid.result}"
  location              = var.location
  resource_group_name   = azurerm_resource_group.rg_app_service.name
  app_service_plan_id   = module.app_service_plan.app_service_plan_id
}                                                               

module "app_service_custom_domain" {
  source                = "../modules/app_service_resources/app_service_custom_domain"
  app_name              = module.app_service.app_service_name
  app_plan_id           = module.app_service_plan.app_service_plan_id
  location              = var.location
  resource_group_name   = azurerm_resource_group.rg_app_service.name
  custom_hostname       = "test.test.com"
  thumbprint            = module.app_service_certificate.cluster_cert_thumbprint
} 

module "app_service_certificate" {
  source                = "../modules/app_service_resources/app_service_certificate"
  name                  = var.certificate["certificate_name"]
  location              = var.location
  resource_group_name   = azurerm_resource_group.rg_app_service.name
  key_vault_secret_id   = module.key_vault_certificate.secret_id
}