# Use OIDC or Managed Identity authentication depending on a toggle
provider "azurerm" {
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }

  subscription_id = var.subscription_id
  tenant_id       = var.tenant_id

  # Conditional authentication setup
  use_oidc = var.use_oidc
  use_msi  = var.use_msi

  # Set the client_id based on the authentication type
  client_id = var.use_oidc ? var.client_id : var.user_assigned_identity_client_id
}

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.1.0"
    }
  }
}