resource "azurerm_kusto_cluster" "adx_cluster" {
  name                = var.adx_cluster_name
  location            = var.location
  resource_group_name = var.resource_group_name

  sku {
    name     = var.sku_name
    capacity = var.capacity
  }

  enable_double_encryption = true  # Enable double encryption for the cluster
}

resource "azurerm_kusto_database" "adx_database" {
  name                = var.adx_database_name
  resource_group_name = var.resource_group_name
  location            = var.location
  cluster_name        = azurerm_kusto_cluster.adx_cluster.name  # Reference the Kusto cluster directly

  soft_delete_period  = "P365D"  # ISO 8601 format
  hot_cache_period    = "P7D"    # ISO 8601 format
}