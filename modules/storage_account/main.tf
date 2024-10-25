# modules/storage_account/main.tf

resource "azurerm_storage_account" "storage" {
  name                     = var.storage_account_name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  # Removed the environment tag
  tags = {}
}

# Output the primary access key of the storage account
#output "storage_account_access_key" {
#  value     = azurerm_storage_account.storage.primary_access_key
#  sensitive = true # Mark as sensitive to avoid logging this value
#}