# output.tf

# Output for the App Service Plan ID
output "app_service_plan_id" {
  value = azurerm_app_service_plan.app_service_plan.id
}

# Output for the Storage Account Access Key
output "storage_account_access_key" {
  value = azurerm_storage_account.storage.primary_access_key
}

# Output for the Storage Account Name
output "storage_account_name" {
  value = azurerm_storage_account.storage.name
}