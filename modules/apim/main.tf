resource "azurerm_api_management" "apim" {
  name                = var.api_management_name
  resource_group_name = var.resource_group_name
  location            = var.location
  publisher_name      = var.publisher_name
  publisher_email     = var.publisher_email

  # Use variables for SKU configuration
  sku_name    = var.sku_name    # Use the sku_name variable directly
  sku_capacity = var.sku_capacity  # Use the sku_capacity directly (optional)

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