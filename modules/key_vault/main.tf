resource "azurerm_key_vault" "key_vault" {
  name                = var.key_vault_name
  location            = var.location
  resource_group_name = var.resource_group_name
  sku_name            = "standard"
  tenant_id           = var.tenant_id

  soft_delete_retention_days = 7

  network_acls {
    default_action = "Allow"
    bypass         = "AzureServices"
  }

  tags = {
    Environment = var.environment
  }
}

# Key Vault Access Policy for Key Permissions
resource "azurerm_key_vault_access_policy" "key_access_policy" {
  key_vault_id = azurerm_key_vault.key_vault.id
  tenant_id    = var.tenant_id
  object_id    = var.object_id # This should be the principal (user, app, or managed identity) needing access

  key_permissions = [
    "get",
    "list",
    "encrypt",
    "decrypt"
  ]
}

# Example secret resource (optional, can be removed if secrets aren't required)
resource "azurerm_key_vault_secret" "secret" {
  name         = var.secret_name
  value        = var.secret_value
  key_vault_id = azurerm_key_vault.key_vault.id
}