variable "api_management_name" {
  description = "The name of the API Management instance"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group where APIM will be deployed"
  type        = string
}

variable "location" {
  description = "The Azure region where the APIM instance will be deployed"
  type        = string
}

variable "publisher_name" {
  description = "The name of the publisher for the APIM instance"
  type        = string
}

variable "publisher_email" {
  description = "The email of the publisher for the APIM instance"
  type        = string
}

variable "sku_name" {
  description = "The SKU for API Management (e.g., Developer, Standard)"
  type        = string
}

variable "user_assigned_identity_id" {
  description = "The ID of the User Assigned Managed Identity for APIM"
  type        = string
}

variable "environment" {
  description = "The environment tag (e.g., Dev, QA, Prod)"
  type        = string
}