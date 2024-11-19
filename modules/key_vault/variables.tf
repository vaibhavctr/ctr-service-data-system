variable "key_vault_name" {
  description = "The name of the Key Vault"
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

variable "tenant_id" {
  description = "The tenant ID for Key Vault"
  type        = string
}

variable "environment" {
  description = "The environment (dev, prod, etc.)"
  type        = string
}
#variable "object_id" {
#  description = "The Object ID of the user, app, or managed identity needing access"
#  type        = string
#}
