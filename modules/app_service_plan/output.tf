# Output the App Service Plan ID
output "app_service_plan_id" {
  description = "The ID of the App Service Plan"
  value       = azurerm_app_service_plan.app_service_plan.id
}

# Optional: Output the App Service Plan name
output "app_service_plan_name" {
  description = "The name of the App Service Plan"
  value       = azurerm_app_service_plan.app_service_plan.name
}