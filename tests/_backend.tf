terraform {
  backend "azurerm" {
    storage_account_name = "w2devtfstate"
    container_name       = "tfstate"
    access_key           = "Nk85OsU7fFdsiTcef8FcsGsJdGZlZ488AtqboU2yIVfjPEiY12eeBUjqsLijvpYI52amHfmkk3vsWxyb/n7wyg=="
    key                  = "euw-ag"
  }
}
