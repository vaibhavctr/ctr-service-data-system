# Configure the Azure Provider with OIDC and Managed Identity authentication
provider "azurerm" {
  # Use OIDC for GitHub Actions or Managed Identity for local Terraform runs
  use_oidc = var.use_oidc                       # Boolean flag for OIDC authentication
  client_id = var.use_oidc ? var.client_id : null # Use Client ID for OIDC only if enabled

  # Enable Managed Identity (UAMI) for local development if needed
  use_msi = var.use_msi                         # Boolean flag for Managed Identity authentication
  client_id = var.use_msi ? var.user_assigned_identity_client_id : null # Use UAMI Client ID if MSI is enabled

  subscription_id = var.subscription_id         # Azure Subscription ID
  tenant_id       = var.tenant_id               # Azure Tenant ID

  # Provider features
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false  # Prevent blocking resource group deletion
    }
  }
}

# Required providers configuration
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.1.0"  # Lock the AzureRM provider version
    }
  }
}