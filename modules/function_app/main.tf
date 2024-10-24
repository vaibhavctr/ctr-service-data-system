resource "azurerm_function_app" "function_app" {
  name                      = var.function_app_name
  location                  = var.location
  resource_group_name       = var.resource_group_name
  app_service_plan_id       = var.app_service_plan_id  # Use the variable
  storage_account_name      = var.storage_account_name  # Use the variable
  storage_account_access_key = var.storage_account_access_key  # Use the variable
  version                    = "~4"
  os_type                    = "linux"

  site_config {
    linux_fx_version = "DOCKER|microsoft/azure-functions-java11"
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