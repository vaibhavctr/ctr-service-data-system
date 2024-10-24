# Define the required provider for Azure
provider "azurerm" {
  features {}

  # Optionally, configure the subscription and tenant details
  subscription_id = var.subscription_id # Specify the subscription ID
  tenant_id       = var.tenant_id       # Optional tenant ID
}

# Backend block with no variables
terraform {
  backend "azurerm" {}
}
