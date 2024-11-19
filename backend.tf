# backend.tf
terraform {
  backend "azurerm" {
    resource_group_name  = "ctr-dev-westeu-rg0511"                     # Can be passed via `-backend-config="resource_group_name=<resource group name>"` in the `init` command.
    storage_account_name = "ctrdevwesteusa0511"                     # Can be passed via `-backend-config="storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "scm-releases"                 # Can be passed via `-backend-config="container_name=<container name>"` in the `init` command.
    key                  = "dev-terraform.tfstate"               # Can be passed via `-backend-config="key=<blob key name>"` in the `init` command.
    use_oidc             = true                                    # Can also be set via `ARM_USE_OIDC` environment variable.
    
    # Use environment variables for sensitive information instead of hardcoding
    client_id           = var.client_id                            # Client ID for Azure AD app (Federated Identity)
    subscription_id     = var.subscription_id                      # Subscription ID
    tenant_id           = var.tenant_id                            # Tenant ID
  }
}
