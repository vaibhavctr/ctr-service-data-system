variable "eventhub_namespace_name" {
  description = "The name of the EventHub namespace"
  type        = string
}

variable "eventhub_name" {
  description = "The name of the EventHub"
  type        = string
}

variable "sku_name_eventhub" {
  description = "The SKU for the EventHub (e.g., Basic, Standard)"
  type        = string
}

variable "sku_capacity_eventhub" {
  description = "The capacity for the EventHub (e.g., 1, 2, etc. for Standard/Premium tiers)"
  type        = number
}

variable "partition_count" {
  description = "The number of partitions for the EventHub"
  type        = number
  default     = 2
}

variable "message_retention" {
  description = "The number of days to retain messages in the EventHub"
  type        = number
  default     = 7
}
variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The location where the resources will be deployed"
  type        = string
}