terraform {

  required_version = ">= 1.11.4"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.27.0"
    }
    azapi = {
      source  = "azure/azapi"
      version = "~>1.5"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
}