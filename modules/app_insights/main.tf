resource "azurerm_application_insights" "app_insights" {
  name                = var.app_insights_name
  location            = var.location
  resource_group_name = var.resource_group_name
  application_type    = "web"

  # Optional: Set the sampling rate for telemetry
  sampling_percentage = 100 # Adjust as needed (0-100)

  # Optional: Set the retention in days
  retention_in_days = 90 # Adjust as needed

  # Removed the environment tag
  tags = {}
}

