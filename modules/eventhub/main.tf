# EventHub Namespace
resource "azurerm_eventhub_namespace" "eventhub_namespace" {
  name                = var.eventhub_namespace_name
  location            = var.location
  resource_group_name = var.resource_group_name

  sku = {
    name     = var.sku_name_eventhub  # e.g., Standard, Basic
    capacity = var.sku_capacity_eventhub  # Capacity (number of throughput units, for Standard/Premium tiers)
  }
}

# EventHub Instance
resource "azurerm_eventhub" "eventhub" {
  name                = var.eventhub_name
  namespace_name      = azurerm_eventhub_namespace.eventhub_namespace.name
  resource_group_name = var.resource_group_name
  partition_count     = var.partition_count
  message_retention   = var.message_retention
}