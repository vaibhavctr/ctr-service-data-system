# Define the required Terraform version
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
  required_version = ">= 1.3.0"
}

# Create and tag the Resource Group with environment
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location

  tags = {
    Environment = var.environment # Tag resource group with environment
  }
}

# Call the module for the Storage Account
module "storage_account" {
  source               = "./modules/storage_account"
  resource_group_name  = azurerm_resource_group.rg.name
  location             = azurerm_resource_group.rg.location
  storage_account_name = var.storage_account_name
  container_name       = var.container_name
}

# Call the module for the Azure Function App
module "function_app" {
  source                    = "./modules/function_app"
  resource_group_name       = azurerm_resource_group.rg.name
  location                  = azurerm_resource_group.rg.location
  storage_account_name      = var.storage_account_name
  app_service_plan_name     = var.app_service_plan_name
  function_app_name         = var.function_app_name
  package_url               = var.package_url
  user_assigned_identity_id = var.user_assigned_identity_id
}

# Call the module for the Azure Data Explorer (ADX)
module "adx" {
  source              = "./modules/adx"
  adx_cluster_name    = var.adx_cluster_name
  adx_database_name   = var.adx_database_name
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
}

# Call the module for the Event Hub
module "eventhub" {
  source                  = "./modules/eventhub"
  eventhub_namespace_name = var.eventhub_namespace_name
  eventhub_name           = var.eventhub_name
  resource_group_name     = azurerm_resource_group.rg.name
  location                = azurerm_resource_group.rg.location
  partition_count         = var.partition_count
  message_retention       = var.message_retention
  sku_name_eventhub       = var.sku_name_eventhub
  sku_tier_eventhub       = var.sku_tier_eventhub
  sku_capacity_eventhub   = var.sku_capacity_eventhub
}

# Call the module for the APIM (Azure API Management)
module "apim" {
  source = "./modules/apim"

  api_management_name       = var.api_management_name
  resource_group_name       = azurerm_resource_group.rg.name
  location                  = azurerm_resource_group.rg.location
  publisher_name            = var.publisher_name
  publisher_email           = var.publisher_email
  sku_name                  = var.sku_name
  sku_capacity              = var.sku_capacity
  user_assigned_identity_id = var.user_assigned_identity_id
  environment               = var.environment # Pass the environment variable
}

# Call the module for the Azure Key Vault
module "key_vault" {
  source              = "./modules/key_vault"
  key_vault_name      = var.key_vault_name
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  tenant_id           = var.tenant_id
  secret_name         = var.secret_name
  secret_value        = var.secret_value
  environment         = var.environment
}

# Call the Application Insights module
module "app_insights" {
  source              = "./modules/app_insights"
  app_insights_name   = var.app_insights_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
}

# Call the Managed Identity module
module "managed_identity" {
  source              = "./modules/user_managed_identity"
  identity_name       = var.identity_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
}

