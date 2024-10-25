# Variables for App Service Plan
variable "app_service_plan_name" {
  description = "The name of the App Service Plan"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The Azure region to deploy the App Service Plan"
  type        = string
}

variable "sku_tier" {
  description = "The pricing tier for the App Service Plan (e.g., Free, Shared, Basic, Standard, Premium)"
  type        = string
}

variable "sku_size" {
  description = "The SKU size for the App Service Plan (e.g., Y1 for Dynamic tier)"
  type        = string
}

variable "environment" {
  description = "The environment tag (e.g., dev, test, prod)"
  type        = string
}