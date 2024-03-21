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