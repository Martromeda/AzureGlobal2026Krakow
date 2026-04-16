terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.1.0"
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
}
