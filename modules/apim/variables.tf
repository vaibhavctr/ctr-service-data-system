variable "api_management_name" {
  description = "The name of the API Management instance"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The location where the resources will be deployed"
  type        = string
}

variable "publisher_name" {
  description = "The publisher name for the API Management instance"
  type        = string
}

variable "publisher_email" {
  description = "The publisher email for the API Management instance"
  type        = string
}

variable "sku_name_apim" {
  description = "The SKU name for API Management (e.g., Developer, Standard, Premium)"
  type        = string
}

variable "sku_capacity_apim" {
  description = "The capacity for the API Management SKU (e.g., 1 for Developer or Standard)"
  type        = number
}

variable "user_assigned_identity_id" {
  description = "The ID of the User Assigned Managed Identity to be linked with APIM"
  type        = string
}

variable "environment" {
  description = "The environment tag (e.g., Dev, QA, Prod)"
  type        = string
}