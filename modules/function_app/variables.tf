variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The location of the resources"
  type        = string
}

variable "storage_account_name" {
  description = "The name of the storage account to use for the Function App"
  type        = string
}

variable "storage_account_access_key" {
  description = "The access key for the storage account to use for the Function App"
  type        = string
}

variable "function_app_name" {
  description = "The name of the function app"
  type        = string
}

variable "package_url" {
  description = "The URL of the package to deploy"
  type        = string
}
variable "user_assigned_identity_id" {
  description = "The ID of the user-assigned managed identity to associate with the Function App"
  type        = string
}

variable "environment" {
  description = "The environment tag (dev, prod, etc.)"
  type        = string
}