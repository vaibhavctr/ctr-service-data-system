variable "identity_name" {
  description = "The name of the User Assigned Managed Identity"
  type        = string
}

variable "location" {
  description = "The location where the User Assigned Identity will be created"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}
