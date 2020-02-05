resource "random_uuid" "sql_uuid" { }

resource "azurerm_resource_group" "rg_sql" {
  name     = "rg-${random_uuid.sql_uuid.result}"
  location = var.location
}

module "sql_db" {
  source                            = "../modules/sql_resources/sql_db"
  resource_group_name               = azurerm_resource_group.rg_sql.name
  location                          = azurerm_resource_group.rg_sql.location
  name                              = "sqldb-${random_uuid.sql_uuid.result}"
  server_name                       = module.sql_server.sql_server_name
  #threat_detection_state            = "Disabled"
}

module "sql_server" {
  source                = "../modules/sql_resources/sql_server"
  resource_group_name   = azurerm_resource_group.rg_sql.name
  location              = azurerm_resource_group.rg_sql.location
  name                  = "sql-${random_uuid.sql_uuid.result}"
  admin_login           = "admin_username"
}
