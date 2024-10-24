output "function_app_default_hostname" {
  description = "The default hostname of the Function App."
  value       = azurerm_function_app.function_app.default_hostname
}

output "function_app_id" {
  description = "The ID of the Function App."
  value       = azurerm_function_app.function_app.id
}