terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.36.0"
    }
  }
}
provider "azurerm" {
  features {}
  subscription_id = "709e014e-7a63-438d-aacd-9a26332e0948"
}



resource "azurerm_resource_group" "rg-ram" {
  name     = "rg_ram"
  location = "east us"
}

resource "azurerm_storage_account" "st-ram" {
  name                     = "stgram"
  resource_group_name      = "rg_ram"
  location                 = "east us"
  account_replication_type = "GRS"
  account_tier             = "Standard"
}