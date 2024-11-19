variable "identity_name" {
  description = "The name of the User Assigned Managed Identity"
  type        = string
}
 
variable "location" {
  description = "The location where the identity is created"
  type        = string
}
 
variable "resource_group_name" {
  description = "The name of the resource group where the identity resides"
  type        = string
}
 
variable "scope" {
  description = "The scope for the role assignment (e.g., a resource group or subscription)"
  type        = string
}