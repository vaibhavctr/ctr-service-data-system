provider "azurerm" {
  features {}

  subscription_id = var.subscription_id # Specify the subscription ID
  tenant_id       = var.tenant_id       # Optional tenant ID

  use_msi = true  # Enables Managed Identity for authentication

  #using User Assigned Managed Identity, specify the client ID
  client_id = var.user_assigned_identity_client_id  # Replace with the variable storing your client ID
}

# Backend block with no variables
terraform {
  backend "azurerm" {}
}