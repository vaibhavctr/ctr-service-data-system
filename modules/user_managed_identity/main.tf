resource "azurerm_user_assigned_identity" "identity" {
  name                = var.identity_name
  location            = var.location
  resource_group_name = var.resource_group_name
 
  tags = {}
}
 
# Assign Contributor role to the User Assigned Managed Identity
resource "azurerm_role_assignment" "umi_contributor" {
  principal_id         = azurerm_user_assigned_identity.identity.principal_id # UAMI's Principal ID
  scope                = var.scope                                           # Scope for the role assignment
  role_definition_name = "Contributor"                                       # Role to assign
  depends_on           = [azurerm_user_assigned_identity.identity]           # Ensure dependency
}
