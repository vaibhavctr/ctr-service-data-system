# Define the required provider for Azure
provider "azurerm" {
  features {}

  # Subscription and tenant details
  subscription_id = var.subscription_id
  tenant_id       = var.tenant_id

  # Use OIDC for GitHub Actions login
  use_oidc = true
  client_id = var.client_id  # Set this variable in your GitHub Action with the OIDC client ID
}

# Backend configuration for remote state storage
terraform {
  backend "azurerm" {
    # No additional configuration here, as details are provided in backend configuration files
  }
}