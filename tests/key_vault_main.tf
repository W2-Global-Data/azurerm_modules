resource "random_uuid" "key_vault_uuid" { }

resource "azurerm_resource_group" "rg_kv" {
  name     = "rg-${random_uuid.key_vault_uuid.result}"
  location = var.location
}

module "key_vault" {
  source                = "../modules/key_vault_resources/key_vault"
  name                  = "kv-${random_uuid.key_vault_uuid.result}"
  location              = var.location
  resource_group_name   = azurerm_resource_group.rg_kv.name
}

module "key_vault_access_policy" {
  source                = "../modules/key_vault_resources/key_vault_access_policy"
  key_vault_id          = module.key_vault.id
  
}

module "key_vault_certificate" {
  source                = "../modules/key_vault_resources/key_vault_certificate"
  name                  = var.certificate["certificate_name"]
  certificate_name      = var.certificate["certificate_file_name"]
  certificate_password  = var.certificate["certificate_password"]
  key_vault_id          = module.key_vault.id
} 

module "key_vault_secret" {
  source                = "../modules/key_vault_resources/key_vault_secret"
  name                  = "SecretName"
  value                 = "$ecr4tValu3"
  key_vault_id          = module.key_vault.id
  content_type          = "Test_Secret"
}