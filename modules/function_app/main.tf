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
    # Set the runtime stack to Java
    linux_fx_version = "JAVA|11"  # Use the appropriate version, e.g., Java 8 or Java 11
  }

  app_settings = {
    FUNCTIONS_WORKER_RUNTIME          = "java"  # Set worker runtime to Java
    JAVA_HOME                         = "/usr/lib/jvm/java-11-openjdk"  # Update based on the Java version being used
    WEBSITES_ENABLE_APP_SERVICE_STORAGE = "false"
    AzureWebJobsStorage               = var.storage_account_connection_string  # Storage connection string for the function app
    WEBSITE_RUN_FROM_PACKAGE          = var.package_url  # Set the package URL for the function app
  }

  identity {
    type        = "UserAssigned"
    identity_ids = [var.user_assigned_identity_id]
  }

  tags = {
    Environment = var.environment
  }
}