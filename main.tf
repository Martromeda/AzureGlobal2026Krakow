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
    resource_group_name  = "rg-user8" #change here
    storage_account_name = "user8sa" #change here
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}
