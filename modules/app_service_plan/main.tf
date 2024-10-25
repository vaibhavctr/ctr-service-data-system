# Create the App Service Plan
resource "azurerm_app_service_plan" "app_service_plan" {
  name                = var.app_service_plan_name
  location            = var.location
  resource_group_name = var.resource_group_name
  kind                = "FunctionApp"
  reserved            = true # Linux hosting

  sku {
    tier = var.sku_tier  # For example, "Dynamic"
    size = var.sku_size  # For example, "Y1"
  }

  tags = {
    Environment = var.environment
  }
}