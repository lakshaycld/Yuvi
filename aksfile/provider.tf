provider "azurerm" {
  features {}

  version = "=3.0.0"

}

terraform {
 backend "azurerm" {
    storage_account_name = "aksstoragelak"
    container_name       = "newcontainer"
    key                  = "prod.lakshay.tfstate"
    access_key           = "AlORj/6/Ze0I7+6pmnSvQANdC0yAmRuU24l1O1HH1hiqYzNUEmDUAGWZ5yjyU71HsePoUGNjK/LW+AStfM834g=="
  }
}