resource "azurerm_api_management" "apim" {
  name                = var.api_management_name
  resource_group_name = var.resource_group_name
  location            = var.location
  publisher_name      = var.publisher_name
  publisher_email     = var.publisher_email

  # Define the SKU name and capacity directly as arguments
  sku_name     = "Developer_1"  # Specify the SKU name

  # Use User Assigned Managed Identity
  identity {
    type         = "UserAssigned"
    identity_ids = [var.user_assigned_identity_id]
  }

  # Add tags for the environment
  tags = {
    Environment = var.environment
  }
}