# Configure the Azure Provider with OIDC and Managed Identity authentication
provider "azurerm" {
  # Use OIDC for GitHub Actions or Managed Identity for local Terraform runs
  use_oidc         = true                      # Enable OIDC for GitHub Actions authentication
  client_id        = var.client_id             # Client ID for Azure AD app (Federated Identity)
  subscription_id  = var.subscription_id       # Azure Subscription ID
  tenant_id        = var.tenant_id             # Azure Tenant ID

  # Enable Managed Identity (UAMI) for local development if needed
  use_msi          = var.use_msi               # Boolean flag to toggle Managed Identity authentication
  client_id        = var.user_assigned_identity_client_id # UAMI Client ID for Terraform authentication

  # Provider features
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false  # Prevent accidental blocking of resource group deletion
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
