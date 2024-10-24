variable "eventhub_namespace_name" {
  description = "The name of the EventHub namespace"
  type        = string
}

variable "eventhub_name" {
  description = "The name of the EventHub"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the EventHub resources"
  type        = string
}

variable "location" {
  description = "The Azure region where the EventHub resources will be deployed"
  type        = string
}

variable "sku" {
  description = "The SKU of the Event Hub Namespace"
  type        = string
  default     = "Standard"  # Set a default value if needed
}

variable "sku_tier" {
  description = "The tier for the EventHub namespace (e.g., Basic, Standard)"
  type        = string
  default     = "Standard"  # Set a default, if desired
}

variable "partition_count" {
  description = "The number of partitions for the EventHub"
  type        = number
  default     = 2  # Set a default value, can be customized
}

variable "message_retention" {
  description = "The number of days to retain messages in the EventHub"
  type        = number
  default     = 1  # Retain messages for 1 day by default, can be customized
}