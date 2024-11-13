variable "scope" {
  description = "The scope of the role assignment, e.g., a resource group or subscription."
  type        = string
}

variable "role_definition_name" {
  description = "The role to assign, e.g., Contributor or Reader."
  type        = string
}

variable "principal_id" {
  description = "The object ID of the principal to assign the role to."
  type        = string
}