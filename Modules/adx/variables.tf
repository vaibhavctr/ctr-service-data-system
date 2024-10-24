variable "adx_cluster_name" {
  description = "The name of the Azure Data Explorer cluster"
  type        = string
}

variable "adx_database_name" {
  description = "The name of the Azure Data Explorer database"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "sku_name" {
  description = "SKU for the ADX cluster"
  type        = string
  default     = "Standard_D13_v2"
}

variable "capacity" {
  description = "Capacity for the ADX cluster"
  type        = number
  default     = 2
}