terraform {
  required_version = "~> 1.6"
  required_providers {
    azurerm = "~> 3.88"
  }
  backend "azurerm" {}
}

provider "azurerm" {
  features {}
}
