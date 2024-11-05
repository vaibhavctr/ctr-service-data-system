# Define the required provider for Azure
provider "azurerm" {
  features {}
}

# Backend block with no variables
terraform {
  backend "azurerm" {}
}