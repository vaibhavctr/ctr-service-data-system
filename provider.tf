# Define the required Terraform version and provider configuration
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.1.0"  # Lock the Azure Provider version as needed
    }
  }

  # Backend configuration for storing Terraform state
  backend "azurerm" {}
}

# Configure the Azure Provider with OIDC authentication
provider "azurerm" {
  use_oidc = true  # Enable OIDC authentication
  features {}
}