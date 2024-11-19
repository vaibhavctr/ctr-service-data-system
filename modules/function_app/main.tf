resource "azurerm_storage_account" "storage" {
  name                     = var.storage_account_name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
 
resource "azurerm_app_service_plan" "app_service_plan" {
  name                = var.app_service_plan_name
  location            = var.location
  resource_group_name = var.resource_group_name
  kind                = "FunctionApp"
  reserved            = true # Linux hosting
 
  sku {
    tier = "Dynamic"
    size = "Y1"
  }
}
 
resource "azurerm_function_app" "function_app" {
  name                      = var.function_app_name
  location                  = var.location
  resource_group_name       = var.resource_group_name
  app_service_plan_id       = azurerm_app_service_plan.app_service_plan.id
  storage_account_name      = azurerm_storage_account.storage.name
  storage_account_access_key = azurerm_storage_account.storage.primary_access_key
  version                    = "~4"
  os_type                    = "linux"
 
  site_config {
    linux_fx_version = "JAVA|11"  # Set the Java runtime version, e.g., Java 11
  }
 
  app_settings = {
    FUNCTIONS_WORKER_RUNTIME = "java"
    WEBSITE_RUN_FROM_PACKAGE  = var.package_url
  }
 
  identity {
    type         = "UserAssigned"
    identity_ids = [var.user_assigned_identity_id]
  }
}
