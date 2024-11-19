output "instrumentation_key" {
  description = "The instrumentation key of the Application Insights resource"
  value       = azurerm_application_insights.app_insights.instrumentation_key
}
