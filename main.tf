terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=4.1.0"
    }
  }
}
provider "azurerm" {
  features {}
}

terraform {
  backend "azurerm" {
    resource_group_name  = "rg-user8"
    storage_account_name = "user8sa"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
module "keyvault" {
  source = "git::https://github.com/pchylak/global_azure_2026_ccoe.git?ref=keyvault/v1.0.0"
  keyvault_name = "gakvuser82026"
  resource_group = {
    location = "northeurope"
    name     = "rg-user8"
    }
  network_acls = {
    default_action             = "Deny"
    bypass                     = "AzureServices"
    }
}
