variable "app_insights_name" {
  description = "The name of the Application Insights instance."
  type        = string
  validation {
    condition     = length(var.app_insights_name) > 0
    error_message = "The Application Insights name must not be an empty string."
  }
}

variable "location" {
  description = "The location where Application Insights will be created."
  type        = string
  validation {
    condition     = length(var.location) > 0
    error_message = "The location must not be an empty string."
  }
}

variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
  validation {
    condition     = length(var.resource_group_name) > 0
    error_message = "The resource group name must not be an empty string."
  }
}
