/*

The following links provide the documentation for the new blocks used
in this terraform configuration file

1.azurerm_storage_container - https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_container

2.azurerm_storage_blob - https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_blob

*/


terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.96.0"
    }
  }
}

provider "azurerm" {
  subscription_id = "dc5e1966-3973-4fa0-ac51-28dfbbc03411"
  tenant_id = "5de110f8-2e0f-4d45-891d-bcf2218e253d"
  client_id = "95648796-9e45-4bbf-bc21-a0e74fcaf3c5"
  client_secret = "EG.8Q~tpJZCySOtOCV50lFQEaPZc7fX5N213-bTw"
  features {}
}

resource "azurerm_resource_group" "appgrp" {
  name     = "app-grp"
  location = "East US 2"
}

resource "azurerm_storage_account" "appstore566565637" {
  name                     = "appstore566565637"
  resource_group_name      = "app-grp"
  location                 = "East US 2"
  account_tier             = "Standard"
  account_replication_type = "LRS"
  account_kind = "StorageV2"
}

resource "azurerm_storage_container" "data" {
  name                  = "data"
  storage_account_name  = "appstore566565637"
  container_access_type = "blob"
}

resource "azurerm_storage_blob" "maintf" {
  name                   = "main.tf"
  storage_account_name   = "appstore566565637"
  storage_container_name = "data"
  type                   = "Block"
  source                 = "main.tf"
}