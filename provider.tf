# Configure the Azure Provider with OIDC authentication
provider "azurerm" {
  use_oidc         = true
  client_id        = var.client_id           # Client ID for Azure AD app (Federated Identity)
  subscription_id  = var.subscription_id     # Subscription ID
  tenant_id        = var.tenant_id           # Tenant ID
 
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false  # Allows deletion of resource group even if it contains resources
    }
  }
}
 
# Required providers configuration
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.1.0"  # Ensure the version matches your requirement
    }
  }
}
