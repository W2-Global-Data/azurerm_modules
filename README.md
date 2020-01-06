#Azurerm_modules
 
##Introduction

Azurerm_modules is a repository of terraform modules for Azure with documentation and an example of how to call each.

The driving idea behind this module is to have a atomic, generic modules for each type of resource deployed to Azure to act as a base for other terraform projects to reference and build on.
This has a few added advantages when it comes to cutting down on code duplication and should help conform to immutable infrastructure design as well as patches as Microsoft update their offerings. 

By and large the module in this repository should only deploy a single resource. Exceptions can be made for resources that have a bi-directional 1-1 exclusive relationship 
(ie. Neither resource can be considered functional without the other) or null resources used to contain scripts for configuration options not availiable in terraform 

##Structure

Each module in this repository should be made up of four files.
1. main.tf : Defines the HCL that will actually deploy the module eg.

```
resource "azurerm_sql_server" "sql_server" {
    name                         = "${var.sql_server_name}"
    resource_group_name          = "${var.resource_group_name}"
    location                     = "${var.location}"
    version                      = "${var.sql_server_version}"
    administrator_login          = "${var.admin_login}"
    administrator_login_password = "${var.admin_password}"
}
```

2. variables.tf : Defines the variables used by the module being added. Each variable should contain a short description and default option when possible and secure to do so.
```
variable "admin_login" {
  description = "Username of the admin user for the created server. Should be passed in through VSTS"
  default = ""
}
```
**_Note_** the above example does not have a default as we never want to deploy a server with a generic admin user login.

3. output.tf : Defines any output values from the created module. These values can then be fed into another module as a variable or otherwise used.
```
output "sql_server_name"{
  value = azurerm_sql_server.sql_server.name
}
```
In the above example the created SQL Server passes it's name as an output.
This can then be used as a reference in a SQL Database module when deploying a SQL Database to that server with terraform as below

```
module "sql_db" {
  source                            = "modules/sql_db"
  resource_group_name               = "${azurerm_resource_group.sql-rg.name}"
  location                          = "${azurerm_resource_group.sql-rg.location}"
  sqldb_name                        = "${var.sql-db["sql_database_name"]}"
  sql_server_name                   = "${module.sql_server.sql_server_name}"
}
```

4. README.MD: A README that briefly describes the resource being deployed, links to the Microsoft and Terraform documentation.
 Provides an example of how to use the module and a breakdown of ever variable that can be configured for the module. 
 See the [SQL Server README](/modules/sql_server/README.md) for a good example 

##Adding A Module

This project follows a [GitHub flow](https://guides.github.com/introduction/flow/) model 
When adding a module to this repo one of the following structures should be observed.

- modules
  - module_name
    - main.tf
    - output.tf
    - variables.tf
    - README.MD

or 

- modules
  - module_group
    - module_name
      - main.tf
      - output.tf
      - variables.tf
      - README.MD
    

Once the module has been added but before a PR has been raised the added modules should be referenced in the main.tf at the top level of the directory structure.
This will enable to test the modules integration with other modules in the repository and serve as a regression test going forward

When a PR has been raised a build will be created as a final test of the integration. If this test successfully completes then the added or modified code can be reviewed and discussed.